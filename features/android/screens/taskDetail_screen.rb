require 'calabash-android/abase'

class TaskDetailScreen< Calabash::ABase
	include GoBike::AndroidHelpers

  def trait
    "* marked:'New Tasks'"
  end

	def requestTask
		"* marked:'REQUEST TASK'"
	end

	def pickedUpCustomer
		"* marked:'PICKED UP CUSTOMER'"
	end

	def droppedOff
		"* marked:'DROPPED OFF'"
	end

  def fareField
    "* id:'task_fare'"
  end

  def discountField
    "* id:'task_discount'"
  end

  def tipField
    "* id:'task_tip'"
  end

  def typeField
    "* id:'task_type'"
  end

  def bikerField
    "* id:'trip_biker'"
  end

  def amountField
    "* id:'collect_amount'"
  end

	def note_field
		"* id:'note_to_biker'"
	end

	def checkInfo(fareValue,discountValue,tipValue,typeValue,bikerValue,amountValue)
		getAmountThai(fareField,fareValue)
		getAmountThai(discountField,discountValue)
		getAmountThai(tipField,tipValue)
		checkValue(typeField,typeValue)
		checkValue(bikerField,bikerValue)
		getAmountThai(amountField,amountValue)
	end

	def checkNote(note)
		checkValue(note_field,note)
	end

	def touchRequestTask
		touch(requestTask)
	end

	def touchPickedUpCustomer
		touch(pickedUpCustomer)
	end

	def touchDroppedOff
		touch(droppedOff)
	end

end
