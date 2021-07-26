const express = require('express')
const router = express.Router()
const adminModel = require.main.require('./models/adminModel')
router.get('/:price/:booking_id/:table',(req,res)=>{
    if(req.session.user_id)
    {
        var taka = req.params.price
        var booking_id = req.params.booking_id
        var table = req.params.table
        res.render('payment',{'price': taka, 'b_id':booking_id , 'table':table})
    }
    else res.redirect('/login')
})
router.post('/:price/:booking_id/:table',(req,res)=>{
    if(req.session.user_id)
    {
        var booking_id = req.params.booking_id
        var table = req.params.table
        adminModel.updateinfo(booking_id,table,'paid',(status)=>{
            res.redirect('/booking')
        })
    }
    else res.redirect('/login')
})
module.exports = router