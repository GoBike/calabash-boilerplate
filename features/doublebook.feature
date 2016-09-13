@doublebook
Feature: Double Book feature
As a Customer
I want to Booking
So that I can check Double Booking

	Scenario: As a on map screen, I bookin continue 100 times
#		Given I am on the Passenger screen by login in as email "customera76@gmail.com" with password "taipower"
		Given I am on the Passenger screen by login in as email "testdemo5@gmail.com" with password "taipower2"
    	Then I wait for progress
    	Then I wait for 15 seconds
    	When I touch Pick Up
    	Then I search location in as "Thailand Cultural MRT" with selected "Thailand Cultural MRT Station"
#    	Then I search location in as "National Stadium" with selected "National Stadium"
    	When I touch Drop Off
    	Then I search location in as "central rama" with selected "Central rama 9"
#		Then I search location in as "Si Lom" with selected "Si Lom"
        Then I wait for progress
        Then I press "Skip"
    	Then I should see text containing "(25"
    	When I enter booking by note in as "Test Go Ride 2" ,Tip in as 0 Baht and promo code in as ""
    	When I touch BOOK BIKER Button
    	Then I wait for progress
    	Then I wait for 3 seconds
    	Then I should be see Finding biker
    	# 1
	   	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 2
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 3
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 4
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 5
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 6
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 7
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 8
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 9
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 10
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 11
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 12
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 13
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 14
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 15
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 16
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 17
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 18
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 19
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 20
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 20
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 21
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 22
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 23
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 24
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 25
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 26
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 27
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 28
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 29
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 30
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 31
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 32
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 33
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 34
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 35
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 36
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 37
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 38
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 39
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 40
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 41
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 42
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 43
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 44
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 45
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 46
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 47
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 48
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 49
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 50
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 51
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 52
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 53
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 54
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 55
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 56
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 57
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 58
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 59
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 60
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 61
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 62
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 63
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 64
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 65
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 66
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 67
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 68
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 69
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 70
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 71
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 72
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 73
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 74
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 75
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 76
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 77
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 78
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 79
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 80
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 81
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 82
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 83
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 84
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 85
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 86
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 87
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 88
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 89
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 90
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 91
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 92
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 93
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 94
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 95
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 96
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 97
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 98
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 99
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 100
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 101
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 102
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 103
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 104
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 105
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 106
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 107
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 108
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 109
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 110
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 111
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 112
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 113
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 114
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 115
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 116
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 117
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 118
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 119
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 120
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 121
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 122
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 123
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 124
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 125
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 126
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 127
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 128
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 129
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 130
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 131
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 132
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 133
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 134
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 135
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 136
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 137
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 138
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 139
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 140
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 141
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 142
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 143
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 144
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 145
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 146
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 147
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 148
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 149
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 150
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 151
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 152
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 153
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 154
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 155
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 156
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 157
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 158
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 159
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 160
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 161
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 162
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 163
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 164
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 165
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 166
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 167
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 168
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 169
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 170
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 171
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
		# 172
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 173
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 174
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 175
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 176
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 177
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 178
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 179
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 180
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 181
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 182
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 183
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 184
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 185
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 186
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 187
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 188
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 189
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 190
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 191
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 192
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 193
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 194
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 195
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 196
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 197
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 198
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 199
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 200
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 201
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 202
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 203
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 204
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 205
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 206
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 207
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 208
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 209
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 210
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 211
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 212
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 213
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 214
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 215
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 216
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 217
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 218
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 219
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 220
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 221
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 222
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 223
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 224
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 225
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 226
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 227
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 228
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 229
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 230
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 231
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 232
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 233
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 234
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 235
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 236
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 237
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 238
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 239
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 240
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 241
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 242
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 243
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 244
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 245
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 246
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 247
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 248
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 249
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 250
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 251
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 252
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 253
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 254
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 255
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 256
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 257
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 258
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 259
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 260
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 261
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 262
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 263
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 264
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 265
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 266
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 267
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 268
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 269
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 270
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 271
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 272
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 273
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 274
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 275
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 276
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 277
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 278
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 279
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 280
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 281
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 282
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 283
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 284
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 285
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 286
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 287
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 288
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 289
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 290
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 291
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 292
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 293
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 294
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 295
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 296
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 297
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 298
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 299
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
    	# 300
    	Then I wait up to 250 seconds to see "FIND AGAIN"
    	Then I press "FIND AGAIN"
        # 301
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 302
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 303
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 304
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 305
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 306
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 307
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 308
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 309
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 310
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 311
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 312
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 313
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 314
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 315
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 316
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 317
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 318
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 319
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 320
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 321
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 322
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 323
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 324
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 325
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 326
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 327
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 328
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 328
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 329
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 330
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 331
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 332
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 333
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 334
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 335
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 336
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 337
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 338
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 339
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 340
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 341
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 342
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 343
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 344
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 345
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 346
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 347
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 348
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 349
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"
        # 350
        Then I wait up to 250 seconds to see "FIND AGAIN"
        Then I press "FIND AGAIN"