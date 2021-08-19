const nodemailer = require('nodemailer');
module.exports = {
    mailSender:function(email , subject, body)
	{
		
	  // create reusable transporter object using the default SMTP transport
	  let transporter = nodemailer.createTransport({
		host: 'smtp.gmail.com',
		port: 587,
		secure: false, // true for 465, false for other ports
		requireTLS: true,
		auth: {
			user: 'morey.travel@gmail.com', // generated ethereal user
			pass: 'morey.1234'  // generated ethereal password
		},
		// tls:{
		//   rejectUnauthorized:false
		// }
	  });
	
	  // setup email data with unicode symbols
	  let mailOptions = {
		  from: '"Morey Travel" <morey.travel@gmail.com>', // sender address
		  to: email, // list of receivers
		  subject: subject, // Subject line
		  text: '', // plain text body
		  html: body // html body
	  };
	
	  // send mail with defined transport object
	  transporter.sendMail(mailOptions, (error, info) => {
		  if (error) {
			  return console.log(error);
		  }
		  console.log('Message sent: %s', info.messageId);   
		  console.log('Preview URL: %s', nodemailer.getTestMessageUrl(info));
	
		  res.render('contact', {msg:'Email has been sent'});
	  });
	}
}