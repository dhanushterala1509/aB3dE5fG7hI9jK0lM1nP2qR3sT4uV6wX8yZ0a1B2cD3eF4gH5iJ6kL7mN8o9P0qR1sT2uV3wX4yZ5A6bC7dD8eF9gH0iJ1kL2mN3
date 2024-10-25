public with sharing class configurationSettingControllerV1 {

    List<Apple> lstfiscalsetting;

    public configurationSettingControllerV1(){

        if (Schema.sObjectType.OpportunityStage.fields.Id.isAccessible() && Schema.sObjectType.OpportunityStage.fields.APiName.isAccessible()
        && Schema.sObjectType.OpportunityStage.fields.defaultProbability.isAccessible() && Schema.sObjectType.OpportunityStage.fields.ForecastCategoryName.isAccessible()
        && Schema.sObjectType.OpportunityStage.fields.IsActive.isAccessible() && Schema.sObjectType.OpportunityStage.fields.MasterLabel.isAccessible()
        && Schema.sObjectType.OpportunityStage.fields.SortOrder.isAccessible() ){

            if (Schema.sObjectType.FiscalYearSettings.fields.Description.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.EndDate.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.IsStandardYear.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.Name.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.PeriodLabelScheme.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.PeriodPrefix.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.QuarterLabelScheme.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.QuarterPrefix.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.StartDate.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.WeekLabelScheme.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.WeekStartDay.isAccessible()
                && Schema.sObjectType.FiscalYearSettings.fields.YearType.isAccessible()
                && Schema.sObjectType.Period.fields.EndDate.isAccessible()
                && Schema.sObjectType.Period.fields.FiscalYearSettingsId.isAccessible()
                && Schema.sObjectType.Period.fields.IsForecastPeriod.isAccessible()
                && Schema.sObjectType.Period.fields.Number.isAccessible()
                && Schema.sObjectType.Period.fields.PeriodLabel.isAccessible()
                && Schema.sObjectType.Period.fields.QuarterLabel.isAccessible()
                && Schema.sObjectType.Period.fields.StartDate.isAccessible()
                && Schema.sObjectType.Period.fields.Type.isAccessible()){


        lstfiscalsetting = [select Description,EndDate,IsStandardYear,Name,(select EndDate,FiscalYearSettingsId,IsForecastPeriod,Number,PeriodLabel,QuarterLabel,StartDate,Type from Period ),PeriodLabelScheme,
        PeriodPrefix,QuarterLabelScheme,QuarterPrefix,StartDate,WeekLabelScheme, WeekStartDay,YearType from FiscalYearSettings where name <> null  order by startdate limit 100 ];
   


    		}
    	}

    }



}
