import React, { useState, useEffect } from "react";
import axios from "axios";

const ExpenseTracker = () => {
    const [expenses, setExpenses] = useState([]);
    const [form, setForm] = useState({ category: "", amount: "", date: "", description: "" });

    useEffect(() => {
        loadExpenses();
    }, []);

    const loadExpenses = async () => {
        const res = await axios.get("http://localhost:5000/expenses");
        setExpenses(res.data);
    };

    const addExpense = async (e) => {
        e.preventDefault();
        await axios.post("http://localhost:5000/add-expense", form);
        setForm({ category: "", amount: "", date: "", description: "" });
        loadExpenses();
    };

    const deleteExpense = async (id) => {
        await axios.delete(`http://localhost:5000/delete-expense/${id}`);
        loadExpenses();
    };

    return (
        <div>
            <h2>Medical Expense Tracker</h2>
            <form onSubmit={addExpense}>
                <input type="text" placeholder="Category" onChange={e => setForm({ ...form, category: e.target.value })} required />
                <input type="number" placeholder="Amount" onChange={e => setForm({ ...form, amount: e.target.value })} required />
                <input type="date" onChange={e => setForm({ ...form, date: e.target.value })} required />
                <input type="text" placeholder="Description" onChange={e => setForm({ ...form, description: e.target.value })} />
                <button type="submit">Add Expense</button>
            </form>

            <h3>Expense History</h3>
            <ul>
                {expenses.map(exp => (
                    <li key={exp._id}>
                        {exp.category} - ₹{exp.amount} on {exp.date}
                        <button onClick={() => deleteExpense(exp._id)}>❌ Delete</button>
                    </li>
                ))}
            </ul>
        </div>
    );
};

export default ExpenseTracker;
