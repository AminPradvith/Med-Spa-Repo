trigger ServiceAppointmentTrigger on ServiceAppointment (before update,before insert) {
    
    list<ServiceAppointment> listSA= new list<ServiceAppointment>();
    for (ServiceAppointment sa : Trigger.new) {
        listSA.add(sa);
       
    }
    
    if(!listSA.isEmpty()){
        AppointmentvalidationHandler.validateServiceAppointment(listSA);
    }
}