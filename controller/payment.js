const express = require('express')
const router = express.Router()
const mailer = require.main.require('./controller/mailer')
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

            adminModel.getbybookingid(booking_id,table,(results)=>{
                if(table == 'transport_bookings')
                {
                    const mailbody = `
                    
                            <p>Your Transport booking details </p>
                            <hr>
                            <table style='border:1px solid black;' >
                            <tr>
                              <td>Pickup:</td>
                              <td>${results[0]['pickup']}</td>
                            </tr>
                            <tr>
                              <td>Dropoff:</td>
                              <td>${results[0]['dropoff']}</td>
                            </tr>
                            <tr>
                              <td>Price:</td>
                              <td>${results[0]['price']} RM</td>
                            </tr>
                            <tr>
                              <td>Time:</td>
                              <td>${results[0]['time']}</td>
                            </tr>
                            <tr>
                              <td>Direction:</td>
                              <td>${results[0]['direction']}</td>
                            </tr>
                            <tr>
                              <td>Booking Date:</td>
                              <td> ${results[0]['booking_date']}</td>
                            </tr>
                            <tr>
                              <td>Persons:</td>
                              <td>${results[0]['no_persons']}</td>
                            </tr>
                          </table>
                            <p>Thanks,</p>
                            <p>Morey Travel</p>
                        `;
                    mailer.mailSender( req.session.user_email,"Booking details", mailbody);
                    res.redirect('/booking')
                }
                else
                {
                  const mailbody = `
                    
                        <p>Your Hotel booking details </p>
                        <hr>
                        <table style='border:1px solid black;' >
                        <tr>
                          <td>Checkin Date:</td>
                          <td>${results[0]['checkin_date']}</td>
                        </tr>
                        <tr>
                          <td>Checkout Date:</td>
                          <td>${results[0]['checkout_date']}</td>
                        </tr>
                        <tr>
                          <td>Location:</td>
                          <td>${results[0]['location']} RM</td>
                        </tr>
                        <tr>
                          <td>Phone:</td>
                          <td>${results[0]['phone']}</td>
                        </tr>
                        <tr>
                          <td>Price:</td>
                          <td>${results[0]['price']}</td>
                        </tr>
                      </table>
                        <p>Thanks,</p>
                        <p>Morey Travel</p>
                    `;
                    mailer.mailSender( req.session.user_email,"Booking details", mailbody);
                    res.redirect('/booking')
                }
            })
            
        })
    }
    else res.redirect('/login')
})
module.exports = router