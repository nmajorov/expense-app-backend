#!/usr/bin/env python

# -*- coding: utf-8 -*-
# Author: Nikolaj  Majorov <nikolaj@majorov.biz>

from subprocess import Popen, PIPE, STDOUT

import os
import shlex
import re
import sys
from datetime import datetime
import argparse


def call_git_describe(abbrev):
    try:
        p = Popen(['git', 'describe', '--abbrev=%d' % abbrev],
                  stdout=PIPE, stderr=PIPE)
        p.stderr.close()
        line = p.stdout.readlines()[0]
        return line.strip().decode("utf-8")

    except Exception:
        return None


def call_git_add():
    try:
        print("add files to git")
        p = Popen(['git', 'add', '.'],
                  stdout=PIPE, stderr=PIPE)
        p.stderr.close()
        lines = p.stdout.readlines()
        for line in lines:
            print(line.strip().decode("utf-8"))

    except Exception:
        return None


def call_git_commit(version):
    call_git_add()
    try:
        print("commit files to git")
        p = Popen(['git', 'commit', '-m \'release=%s \'' % version],
                  stdout=PIPE, stderr=PIPE)
        p.stderr.close()
        lines = p.stdout.readlines()
        for line in lines:
            print(line.strip().decode("utf-8"))

    except Exception:
        return None


def call_git_tag(version):
    print("tag version " + version)
    p = Popen(["git", 'tag', version, '-a', '-m \'release=%s \'' % version],
              stdout=PIPE, stderr=PIPE)
    p.stderr.close()
    lines = p.stdout.readlines()
    for line in lines:
        print(line.strip().decode("utf-8"))


def call_git_push():
    try:
        print("git push")
        p = Popen(['git', 'push', "--tags"],
                  stdout=PIPE, stderr=PIPE)
        p.stderr.close()
        lines = p.stdout.readlines()
        for line in lines:
            print(line.strip().decode("utf-8"))

    except Exception:
        return None


def check_branch():
    try:
        p = Popen(['git', 'branch', '--show-current'],
                  stdout=PIPE, stderr=PIPE)
        p.stderr.close()
        line = p.stdout.readlines()[0]
        return line.strip().decode("utf-8")

    except Exception:
        return None


def is_dirty():
    try:
        p = Popen(["git", "diff-index", "--name-only", "HEAD"],
                  stdout=PIPE, stderr=STDOUT)
        p.stderr.close()
        lines = p.stdout.readlines()
        return len(lines) > 0
    except Exception:
        return False


def upload_release(version):
    """
     upload release to my server
    """
    print("upload relese {0}".format(version))

    # try:
    cwd = os.getcwd()

    print("current dir: {0}".format(cwd))
    command = "scp  {0}/dist/rhone-{1}-py3-none-any.whl  \
         nmajorov@majorov.biz:/home/nmajorov/dwn/".format(cwd, version)
    command_splitted = shlex.split(command)
    process = Popen(command_splitted, cwd=str(cwd), stdout=PIPE, stderr=STDOUT)
    lines = process.stdout.readlines()
    for line in lines:
        print(line.strip().decode("utf-8"))
    # except Exception as err:
    #    print("upload error: {0}".format(err))


def read_release_version() -> str:
    cwd = os.getcwd()
    with open(os.path.join(cwd, "cmd/server/version.go")) as reader:
        line = reader.readline()
        version: str = ""
        while line != '':  # The EOF char is an empty string
            line = reader.readline()
            if "VERSION" in line:
                total_len = len(line)
                found_v = line.find("v")
                version_pre = line[found_v:(total_len)]
                # now remove "  char from version string
                chr_f_index = version_pre.find("\"")
                version = version_pre[0:chr_f_index]
    return version


def matching_version_rules(version) -> bool:
    """
     Python versioning descrabed here:
     https://www.python.org/dev/peps/pep-0386/
    """
    if version.find("v") < 0:
        return False

    labelPattern = re.compile(
        r'^v?([0-9]+)(\.[0-9]+)?(\.[0-9]+)?(-([0-9A-Za-z\-]+(\.[0-9A-Za-z\-]+)*))?(\+([0-9A-Za-z\-]+(\.[0-9A-Za-z\-]+)*))?')

    if labelPattern.search(version) is None:
        return False
    else:
        return True


def write_release_version(version):
    # print("write version called ..")
    newcontent = []

    # read file first
    f = open(os.path.join(os.path.dirname(
        __file__), "cmd/server/version.go"), "r")
    for line in f:
        # print("line: {0}", format(line))
        if "VERSION" in line:
            newcontent.append("const VERSION = \"{0}\" \n".format(version))
        elif "BUILD" in line:
            print("change build date to {0}".format(datetime.now()))
            newcontent.append(
                "BUILD = '{0}'\n".format(str(datetime.now())))

        else:
            newcontent.append(line)
    f.close()

    # write new file
    f = open(os.path.join(os.path.dirname(
        __file__), "cmd/server/version.go"), "w")
    f.writelines(newcontent)
    f.close()


def change_version(newversion, abbrev=7):
    if is_dirty():
        raise Exception("there is uncommitted file in repo")

    # First try to get the current version using “git describe”.

    gtVersion = call_git_describe(abbrev)
    # print("version  from git describe: " + gtVersion)

    if gtVersion is not None:
        gitTag = gtVersion[0:len(newversion)]
        # print("gitTag:{0} \n".format(gitTag))
        if gitTag == newversion:
            raise Exception("version is already tagged in git")

    # allow also same version rewrite for dev releases
    write_release_version(newversion)

    call_git_commit(newversion)
    call_git_tag(newversion)
    call_git_push()

    # upload_release(newversion)


def increase_version(version):
    """
    increate version number
    """

    verArray = version.split(".")
    print(verArray)

    pattern = re.compile("^([0-9]+)+$")
    for el in verArray:
        if not pattern.match(el):
            relaseStr = el
            verArray.remove(el)

    def bump(array):
        """
        bump version to next.
        examples:
        0.0.1 -> 0.0.2
        0.0.9 -> 0.1.0
        9.9.9 -> 10.0.0
        """
        print ("in bump array: {0}".format(array))
        dig = array.pop()
        if int(dig) < 9:
            array.append(str(int(dig) + 1))
        else:
            # print("array now: {}".format(array))
            if len(array) == 1:
                # last element is 9
                # print ("last element!!")
                last = array.pop()
                array.append(str(int(last) + 1))
                array.append(str(0))

                return array
            array = bump(array)
            # print("array now: {}".format(array))
            array.append(str(0))
        return array

    bunpedArray = bump(verArray)
   # bunpedArray.append(relaseStr)
    new_version = ".".join(bunpedArray)

    return new_version


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='set  release tag for rhone project')
    parser.add_argument('--version', type=str,
                        help='new version label to release \
                        if not set it will increase a current one')
    parser.add_argument('--bump', action="store_true",
                        help='bump version to next \
                        it will increase a current one')
    parser.add_argument('--upload', action="store_true",
                        help='ubload release from the dist')

    args = parser.parse_args()
    # print("args: {0}".format(args))
    if args.version:
        print("set new version for release: {0} ".format(args.version))
        if not matching_version_rules(args.version):
            print("\n ERROR: version {0} is not matching rules\n".format(args.version))
            sys.exit(1)
        branch_name = check_branch()
        if branch_name != "main":
            # allow only dev version be on other branch
            if "dev" in args.version:
                print("you have a dev release {0} on {1} branch".format(
                    args.version, branch_name))
            else:
                print("you should be on main branch")
                sys.exit(1)
        change_version(args.version)

    elif args.bump:
        cur_version = read_release_version()
        print("increase current version {0} for release".format(cur_version))
        # remove v before
        cv = cur_version[1:len(cur_version)]

        print("After removing v: {} \n ".format(cv))
        # keep alpha or beta additions
        additions = ""
        if cv.find("-") > 0:
            cvIndex = cv.find("-")
            additions = cv[cvIndex:len(cv)]
            cv = cv[0:cvIndex]
            print("After removing additions: {} \n ".format(cv))
        new_version = increase_version(cv)
        print("version now is: {0}".format(new_version))
        if len(additions) > 0:
            new_version = "v{0}{1}".format(new_version, additions)
        else:
            new_version = "v{0}".format(new_version)


        change_version(new_version)
    elif args.upload:
        cur_version = read_release_version()
        print("increase current version {0} to  server".format(cur_version))
        upload_release(cur_version)
    else:
        # print current version
        print("{0}".format(
            read_release_version()))

    # get_git_version()
