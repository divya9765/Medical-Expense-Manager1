// Update Expense
app.put('/update-expense/:id', async (req, res) => {
    try {
        const { category, amount, date, description } = req.body;
        await Expense.findByIdAndUpdate(req.params.id, { category, amount, date, description });
        res.json({ message: "Expense updated successfully!" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Delete Expense
app.delete('/delete-expense/:id', async (req, res) => {
    try {
        await Expense.findByIdAndDelete(req.params.id);
        res.json({ message: "Expense deleted successfully!" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});
