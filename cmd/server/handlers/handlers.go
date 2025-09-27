package handlers

import (
	"encoding/json"
	"io/ioutil"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
	"github.com/nmajorov/expense-app-backend/cmd/server/persistence"
	"github.com/nmajorov/expense-app-backend/logger"
	"github.com/nmajorov/expense-app-backend/model"
)

type ReportHandler struct {
	db *persistence.SqlLayer
}

func NewReportHandler(db *persistence.SqlLayer) *ReportHandler {
	return &ReportHandler{db: db}
}

// @Summary Create a new report
// @Description Create a new report
// @Tags reports
// @Accept  x-www-form-urlencoded
// @Produce  json
// @Param   name  formData    string  true  "Report name"
// @Success 201 {object} model.Report
// @Router /reports [post]
func (h *ReportHandler) CreateReportHandler(w http.ResponseWriter, r *http.Request) {
	body, err := ioutil.ReadAll(r.Body)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	defer r.Body.Close()

	name := string(body)

	logger.AppLogger.Debugf("Create report: %v", name)

	if err := h.db.AddReport(name); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusCreated)
}

// @Summary Get all reports
// @Description Get all reports
// @Tags reports
// @Produce  json
// @Success 200 {array} model.Report
// @Router /reports [get]
func (h *ReportHandler) GetReportsHandler(w http.ResponseWriter, r *http.Request) {
	reports, err := h.db.GetReports()
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	json.NewEncoder(w).Encode(reports)
}

// @Summary Get a report by ID
// @Description Get a report by ID
// @Tags reports
// @Produce  json
// @Param   id  path    int  true  "Report ID"
// @Success 200 {object} model.Report
// @Router /reports/{id} [get]
func (h *ReportHandler) GetReportHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id, err := strconv.ParseInt(vars["id"], 10, 64)
	if err != nil {
		http.Error(w, "Invalid report ID", http.StatusBadRequest)
		return
	}

	report, err := h.db.GetReport(id)
	if err != nil {
		http.Error(w, "Report not found", http.StatusNotFound)
		return
	}

	json.NewEncoder(w).Encode(report)
}

// @Summary Update a report
// @Description Update a report
// @Tags reports
// @Accept  json
// @Produce  json
// @Param   id      path    int           true  "Report ID"
// @Param   report  body    model.Report  true  "Report to update"
// @Success 200 {object} model.Report
// @Router /reports/{id} [put]
func (h *ReportHandler) UpdateReportHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id, err := strconv.ParseInt(vars["id"], 10, 64)
	if err != nil {
		http.Error(w, "Invalid report ID", http.StatusBadRequest)
		return
	}

	var report model.Report
	if err := json.NewDecoder(r.Body).Decode(&report); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	report.ID = id
	if err := h.db.UpdateReport(&report); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	json.NewEncoder(w).Encode(report)
}

// @Summary Delete a report
// @Description Delete a report
// @Tags reports
// @Param   id  path    int  true  "Report ID"
// @Success 204 "No Content"
// @Router /reports/{id} [delete]
func (h *ReportHandler) DeleteReportHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id, err := strconv.ParseInt(vars["id"], 10, 64)
	if err != nil {
		http.Error(w, "Invalid report ID", http.StatusBadRequest)
		return
	}

	if err := h.db.DeleteReport(id); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusNoContent)
}

type ExpenseHandler struct {
	db *persistence.SqlLayer
}

func NewExpenseHandler(db *persistence.SqlLayer) *ExpenseHandler {
	return &ExpenseHandler{db: db}
}

// @Summary Create a new expense
// @Description Create a new expense
// @Tags expenses
// @Accept  json
// @Produce  json
// @Param   expense  body    model.Expense  true  "Expense to create"
// @Success 201 {object} model.Expense
// @Router /expenses [post]
func (h *ExpenseHandler) CreateExpenseHandler(w http.ResponseWriter, r *http.Request) {
	var expense model.Expense
	if err := json.NewDecoder(r.Body).Decode(&expense); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	if err := h.db.AddExpense(&expense); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusCreated)
	json.NewEncoder(w).Encode(expense)
}

// @Summary Get all expenses
// @Description Get all expenses
// @Tags expenses
// @Produce  json
// @Success 200 {array} model.Expense
// @Router /expenses [get]
func (h *ExpenseHandler) GetExpensesHandler(w http.ResponseWriter, r *http.Request) {
	expenses, err := h.db.GetExpenses()
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	json.NewEncoder(w).Encode(expenses)
}

// @Summary Get an expense by ID
// @Description Get an expense by ID
// @Tags expenses
// @Produce  json
// @Param   id  path    int  true  "Expense ID"
// @Success 200 {object} model.Expense
// @Router /expenses/{id} [get]
func (h *ExpenseHandler) GetExpenseHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id, err := strconv.ParseInt(vars["id"], 10, 64)
	if err != nil {
		http.Error(w, "Invalid expense ID", http.StatusBadRequest)
		return
	}

	expense, err := h.db.GetExpense(id)
	if err != nil {
		http.Error(w, "Expense not found", http.StatusNotFound)
		return
	}

	json.NewEncoder(w).Encode(expense)
}

// @Summary Update an expense
// @Description Update an expense
// @Tags expenses
// @Accept  json
// @Produce  json
// @Param   id      path    int           true  "Expense ID"
// @Param   expense  body    model.Expense  true  "Expense to update"
// @Success 200 {object} model.Expense
// @Router /expenses/{id} [put]
func (h *ExpenseHandler) UpdateExpenseHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id, err := strconv.ParseInt(vars["id"], 10, 64)
	if err != nil {
		http.Error(w, "Invalid expense ID", http.StatusBadRequest)
		return
	}

	var expense model.Expense
	if err := json.NewDecoder(r.Body).Decode(&expense); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	expense.ID = id
	if err := h.db.UpdateExpense(&expense); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	json.NewEncoder(w).Encode(expense)
}

// @Summary Delete an expense
// @Description Delete an expense
// @Tags expenses
// @Param   id  path    int  true  "Expense ID"
// @Success 204 "No Content"
// @Router /expenses/{id} [delete]
func (h *ExpenseHandler) DeleteExpenseHandler(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id, err := strconv.ParseInt(vars["id"], 10, 64)
	if err != nil {
		http.Error(w, "Invalid expense ID", http.StatusBadRequest)
		return
	}

	if err := h.db.DeleteExpense(id); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.WriteHeader(http.StatusNoContent)
}
