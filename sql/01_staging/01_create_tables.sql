
CREATE TABLE STAGING.STG_ATTENDANCE_FSM (
	TIME_PERIOD VARCHAR,
	TIME_IDENTIFIER VARCHAR,
	GEOGRAPHIC_LEVEL VARCHAR,
	COUNTRY_CODE VARCHAR,
	COUNTRY_NAME VARCHAR,
	REGION_CODE VARCHAR,
	REGION_NAME VARCHAR,
	NEW_LA_CODE VARCHAR,
	LA_NAME VARCHAR COMMENT 'Local Authority name',
	OLD_LA_CODE VARCHAR,
	SCHOOL_TYPE VARCHAR COMMENT 'School Type',
	DISADVANTAGE_CODE VARCHAR COMMENT 'Free school meal eligibility',
	PRESENT_SESSIONS VARCHAR COMMENT 'Sessions marked as attending (including late before registers closed)',
	APPROVED_EDUCATIONAL_ACTIVITY VARCHAR COMMENT 'Sessions marked as approved educational activity',
	OVERALL_ATTENDANCE VARCHAR COMMENT 'Sessions marked at attending (including approved educational activity)',
	OVERALL_ABSENCE VARCHAR COMMENT 'Sessions marked as absence',
	AUTHORISED_ABSENCE VARCHAR COMMENT 'Sessions marked as authorised absence',
	UNAUTHORISED_ABSENCE VARCHAR COMMENT 'Sessions marked as unauthorised absence',
	LATE_SESSIONS VARCHAR COMMENT 'Sessions marked as late',
	POSSIBLE_SESSIONS VARCHAR COMMENT 'Total possible sessions',
	REASON_PRESENT_AM VARCHAR COMMENT 'Morning sessions',
	REASON_PRESENT_PM VARCHAR COMMENT 'Afternoon sessions',
	REASON_PRESENT VARCHAR COMMENT 'Sessions marked as attending (excluding late before registers closed)',
	REASON_L_PRESENT_LATE_BEFORE_REGISTERS_CLOSED VARCHAR COMMENT 'Sessions marked as late before registers closed',
	REASON_I_AUTHORISED_ILLNESS VARCHAR COMMENT 'Sessions marked as authorised illness',
	REASON_M_AUTHORISED_MEDICAL_DENTAL VARCHAR COMMENT 'Sessions marked as authorised medical or dental appointments',
	REASON_R_AUTHORISED_RELIGIOUS_OBSERVANCE VARCHAR COMMENT 'Sessions marked as authorised  religious observance',
	REASON_S_AUTHORISED_STUDY_LEAVE VARCHAR COMMENT 'Sessions marked as authorised study leave',
	REASON_T_AUTHORISED_GRT_ABSENCE VARCHAR COMMENT 'Sessions marked as authorised traveller absence',
	REASON_H_AUTHORISED_HOLIDAY VARCHAR COMMENT 'Sessions marked as authorised holiday',
	REASON_E_AUTHORISED_EXCLUDED VARCHAR COMMENT 'Sessions marked as authorised excluded',
	REASON_C_AUTHORISED_OTHER VARCHAR COMMENT 'Sessions marked as authorised other',
	REASON_B_AEA_EDUCATION_OFF_SITE VARCHAR COMMENT 'Sessions marked as approved education off site',
	REASON_D_AEA_DUAL_REGISTRATION VARCHAR COMMENT 'Sessions marked as dual registration',
	REASON_J_AEA_INTERVIEW VARCHAR COMMENT 'Sessions marked as approved interview',
	REASON_P_AEA_APPROVED_SPORTING_ACTIVITY VARCHAR COMMENT 'Sessions marked as approved sporting activity',
	REASON_V_AEA_EDUCATIONAL_VISIT_TRIP VARCHAR COMMENT 'Sessions marked as approved educational visit or trip',
	REASON_W_AEA_WORK_EXPERIENCE VARCHAR COMMENT 'Sessions marked as approved work experience',
	REASON_G_UNAUTHORISED_HOLIDAY VARCHAR COMMENT 'Sessions marked as unauthorised holiday',
	REASON_U_UNAUTHORISED_LATE_AFTER_REGISTERS_CLOSED VARCHAR COMMENT 'Sessions marked as unauthorised late after registers closed',
	REASON_O_OTHER_UNAUTHORISED VARCHAR COMMENT 'Sessions marked as unauthorised other',
	REASON_N_NO_REASON_YET VARCHAR COMMENT 'Sessions marked as no reason yet',
	REASON_X_NOT_ATTENDING_COVID_NON_COMPULSORY VARCHAR COMMENT 'Sessions marked as not attending due to covid circumstances',
	ATTENDANCE_PERC VARCHAR COMMENT 'Attendance rate',
	OVERALL_ABSENCE_PERC VARCHAR COMMENT 'Overall absence rate',
	AUTHORISED_ABSENCE_PERC VARCHAR COMMENT 'Authorised absence rate',
	UNAUTHORISED_ABSENCE_PERC VARCHAR COMMENT 'Unauthorised absence rate',
	ILLNESS_PERC VARCHAR COMMENT 'Authorised illness absence rate',
	APPOINTMENTS_PERC VARCHAR COMMENT 'Authorised appointments absence rate',
	UNAUTH_HOL_PERC VARCHAR COMMENT 'Unauthorised holiday absence rate',
	UNAUTH_OTH_PERC VARCHAR COMMENT 'Unauthorised other absence rate',
	UNAUTH_LATE_REGISTERS_CLOSED_PERC VARCHAR COMMENT 'Unauthorised late absence rate',
	UNAUTH_NOT_YET_PERC VARCHAR COMMENT 'Unauthorised no reason yet absence rate',
	AUTH_RELIGIOUS_PERC VARCHAR COMMENT 'Authorised religious observance absence rate',
	AUTH_STUDY_PERC VARCHAR COMMENT 'Authorised study leave absence rate',
	AUTH_GRT_PERC VARCHAR COMMENT 'Authorised traveller absence rate',
	AUTH_HOLIDAY_PERC VARCHAR COMMENT 'Authorised holiday rate',
	AUTH_EXCLUDED_PERC VARCHAR COMMENT 'Authorised exclusions absence rate',
	AUTH_OTHER_PERC VARCHAR COMMENT 'Authorised other absence rate',
	COVID_NON_COMPULSORY_PERC VARCHAR COMMENT 'Authorised not attending due to covid circumstances rate',
	PA_PERC VARCHAR COMMENT 'Persistent absence rate',
	ACADEMIC_YEAR VARCHAR
);
