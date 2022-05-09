; ModuleID = '/llk/IR_all_yes/drivers/power/supply/test_power.c_pt.bc'
source_filename = "../drivers/power/supply/test_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.battery_property_map = type { i32, ptr }

@__initcall__kmod_test_power__172_232_test_power_init6 = internal global ptr @test_power_init, section ".initcall6.init", align 4
@ac_online = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@usb_online = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@battery_status = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@test_power_supplies = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@test_power_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: 'changed' event sent, sleeping for 10 seconds...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_power_exit\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/power/supply/test_power.c\00", [62 x i8] zeroinitializer }, align 32
@test_power_exit._entry_ptr = internal global ptr @test_power_exit._entry, section ".printk_index", align 4
@module_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__exitcall_test_power_exit = internal global ptr @test_power_exit, section ".exitcall.exit", align 4
@__param_str_ac_online = internal constant [21 x i8] c"test_power.ac_online\00", align 1
@param_ops_ac_online = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_ac_online, ptr @param_get_ac_online, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_ac_online = internal constant %struct.kernel_param { ptr @__param_str_ac_online, ptr null, ptr @param_ops_ac_online, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @ac_online } }, section "__param", align 4
@__UNIQUE_ID_ac_onlinetype173 = internal constant [40 x i8] c"test_power.parmtype=ac_online:ac_online\00", section ".modinfo", align 1
@__UNIQUE_ID_ac_online174 = internal constant [53 x i8] c"test_power.parm=ac_online:AC charging state <on|off>\00", section ".modinfo", align 1
@__param_str_usb_online = internal constant [22 x i8] c"test_power.usb_online\00", align 1
@param_ops_usb_online = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_usb_online, ptr @param_get_usb_online, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_usb_online = internal constant %struct.kernel_param { ptr @__param_str_usb_online, ptr null, ptr @param_ops_usb_online, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @usb_online } }, section "__param", align 4
@__UNIQUE_ID_usb_onlinetype175 = internal constant [42 x i8] c"test_power.parmtype=usb_online:usb_online\00", section ".modinfo", align 1
@__UNIQUE_ID_usb_online176 = internal constant [55 x i8] c"test_power.parm=usb_online:USB charging state <on|off>\00", section ".modinfo", align 1
@__param_str_battery_status = internal constant [26 x i8] c"test_power.battery_status\00", align 1
@param_ops_battery_status = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_status, ptr @param_get_battery_status, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_battery_status = internal constant %struct.kernel_param { ptr @__param_str_battery_status, ptr null, ptr @param_ops_battery_status, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_status } }, section "__param", align 4
@__UNIQUE_ID_battery_statustype177 = internal constant [50 x i8] c"test_power.parmtype=battery_status:battery_status\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_status178 = internal constant [87 x i8] c"test_power.parm=battery_status:battery status <charging|discharging|not-charging|full>\00", section ".modinfo", align 1
@__param_str_battery_present = internal constant [27 x i8] c"test_power.battery_present\00", align 1
@param_ops_battery_present = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_present, ptr @param_get_battery_present, ptr null }, [16 x i8] zeroinitializer }, align 32
@battery_present = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_battery_present = internal constant %struct.kernel_param { ptr @__param_str_battery_present, ptr null, ptr @param_ops_battery_present, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_present } }, section "__param", align 4
@__UNIQUE_ID_battery_presenttype179 = internal constant [52 x i8] c"test_power.parmtype=battery_present:battery_present\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_present180 = internal constant [96 x i8] c"test_power.parm=battery_present:battery presence state <good|overheat|dead|overvoltage|failure>\00", section ".modinfo", align 1
@__param_str_battery_technology = internal constant [30 x i8] c"test_power.battery_technology\00", align 1
@param_ops_battery_technology = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_technology, ptr @param_get_battery_technology, ptr null }, [16 x i8] zeroinitializer }, align 32
@battery_technology = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_battery_technology = internal constant %struct.kernel_param { ptr @__param_str_battery_technology, ptr null, ptr @param_ops_battery_technology, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_technology } }, section "__param", align 4
@__UNIQUE_ID_battery_technologytype181 = internal constant [58 x i8] c"test_power.parmtype=battery_technology:battery_technology\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_technology182 = internal constant [86 x i8] c"test_power.parm=battery_technology:battery technology <NiMH|LION|LIPO|LiFe|NiCd|LiMn>\00", section ".modinfo", align 1
@__param_str_battery_health = internal constant [26 x i8] c"test_power.battery_health\00", align 1
@param_ops_battery_health = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_health, ptr @param_get_battery_health, ptr null }, [16 x i8] zeroinitializer }, align 32
@battery_health = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_battery_health = internal constant %struct.kernel_param { ptr @__param_str_battery_health, ptr null, ptr @param_ops_battery_health, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_health } }, section "__param", align 4
@__UNIQUE_ID_battery_healthtype183 = internal constant [50 x i8] c"test_power.parmtype=battery_health:battery_health\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_health184 = internal constant [93 x i8] c"test_power.parm=battery_health:battery health state <good|overheat|dead|overvoltage|failure>\00", section ".modinfo", align 1
@__param_str_battery_capacity = internal constant [28 x i8] c"test_power.battery_capacity\00", align 1
@param_ops_battery_capacity = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_capacity, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@battery_capacity = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_battery_capacity = internal constant %struct.kernel_param { ptr @__param_str_battery_capacity, ptr null, ptr @param_ops_battery_capacity, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_capacity } }, section "__param", align 4
@__UNIQUE_ID_battery_capacitytype185 = internal constant [54 x i8] c"test_power.parmtype=battery_capacity:battery_capacity\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_capacity186 = internal constant [63 x i8] c"test_power.parm=battery_capacity:battery capacity (percentage)\00", section ".modinfo", align 1
@__param_str_battery_voltage = internal constant [27 x i8] c"test_power.battery_voltage\00", align 1
@param_ops_battery_voltage = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_voltage, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@battery_voltage = internal global { i32, [28 x i8] } { i32 3300, [28 x i8] zeroinitializer }, align 32
@__param_battery_voltage = internal constant %struct.kernel_param { ptr @__param_str_battery_voltage, ptr null, ptr @param_ops_battery_voltage, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_voltage } }, section "__param", align 4
@__UNIQUE_ID_battery_voltagetype187 = internal constant [52 x i8] c"test_power.parmtype=battery_voltage:battery_voltage\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_voltage188 = internal constant [61 x i8] c"test_power.parm=battery_voltage:battery voltage (millivolts)\00", section ".modinfo", align 1
@__param_str_battery_charge_counter = internal constant [34 x i8] c"test_power.battery_charge_counter\00", align 1
@param_ops_battery_charge_counter = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_charge_counter, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@battery_charge_counter = internal global { i32, [28 x i8] } { i32 -1000, [28 x i8] zeroinitializer }, align 32
@__param_battery_charge_counter = internal constant %struct.kernel_param { ptr @__param_str_battery_charge_counter, ptr null, ptr @param_ops_battery_charge_counter, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_charge_counter } }, section "__param", align 4
@__UNIQUE_ID_battery_charge_countertype189 = internal constant [66 x i8] c"test_power.parmtype=battery_charge_counter:battery_charge_counter\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_charge_counter190 = internal constant [82 x i8] c"test_power.parm=battery_charge_counter:battery charge counter (microampere-hours)\00", section ".modinfo", align 1
@__param_str_battery_current = internal constant [27 x i8] c"test_power.battery_current\00", align 1
@param_ops_battery_current = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_battery_current, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@battery_current = internal global { i32, [28 x i8] } { i32 -1600, [28 x i8] zeroinitializer }, align 32
@__param_battery_current = internal constant %struct.kernel_param { ptr @__param_str_battery_current, ptr null, ptr @param_ops_battery_current, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @battery_current } }, section "__param", align 4
@__UNIQUE_ID_battery_currenttype191 = internal constant [52 x i8] c"test_power.parmtype=battery_current:battery_current\00", section ".modinfo", align 1
@__UNIQUE_ID_battery_current192 = internal constant [62 x i8] c"test_power.parm=battery_current:battery current (milliampere)\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [55 x i8] c"test_power.description=Power supply driver for testing\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [59 x i8] c"test_power.author=Anton Vorontsov <cbouatmailru@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [48 x i8] c"test_power.file=drivers/power/supply/test_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [23 x i8] c"test_power.license=GPL\00", section ".modinfo", align 1
@test_power_desc = internal constant { [3 x %struct.power_supply_desc], [36 x i8] } { [3 x %struct.power_supply_desc] [%struct.power_supply_desc { ptr @.str.5, i32 3, ptr null, i32 0, ptr @test_power_ac_props, i32 1, ptr @test_power_get_ac_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.power_supply_desc { ptr @.str.6, i32 1, ptr null, i32 0, ptr @test_power_battery_props, i32 20, ptr @test_power_get_battery_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.power_supply_desc { ptr @.str.7, i32 4, ptr null, i32 0, ptr @test_power_ac_props, i32 1, ptr @test_power_get_usb_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@test_power_configs = internal constant { [3 x %struct.power_supply_config], [56 x i8] } { [3 x %struct.power_supply_config] [%struct.power_supply_config { ptr null, ptr null, ptr null, ptr null, ptr @test_power_ac_supplied_to, i32 1 }, %struct.power_supply_config zeroinitializer, %struct.power_supply_config { ptr null, ptr null, ptr null, ptr null, ptr @test_power_ac_supplied_to, i32 1 }], [56 x i8] zeroinitializer }, align 32
@test_power_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: failed to register %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_power_init\00", [16 x i8] zeroinitializer }, align 32
@test_power_init._entry_ptr = internal global ptr @test_power_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"test_ac\00", [24 x i8] zeroinitializer }, align 32
@test_power_ac_props = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_battery\00", [19 x i8] zeroinitializer }, align 32
@test_power_battery_props = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 6, i32 22, i32 24, i32 26, i32 28, i32 47, i32 51, i32 61, i32 62, i32 73, i32 74, i32 75, i32 52, i32 12, i32 18, i32 17], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"test_usb\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Test battery\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Linux\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@test_power_get_battery_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: some properties deliberately report errors.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"test_power_get_battery_property\00", [32 x i8] zeroinitializer }, align 32
@test_power_get_battery_property._entry_ptr = internal global ptr @test_power_get_battery_property._entry, section ".printk_index", align 4
@test_power_ac_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@map_ac_online = internal constant { [3 x %struct.battery_property_map], [40 x i8] } { [3 x %struct.battery_property_map] [%struct.battery_property_map { i32 0, ptr @.str.13 }, %struct.battery_property_map { i32 1, ptr @.str.14 }, %struct.battery_property_map { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@map_status = internal constant { [5 x %struct.battery_property_map], [56 x i8] } { [5 x %struct.battery_property_map] [%struct.battery_property_map { i32 1, ptr @.str.17 }, %struct.battery_property_map { i32 2, ptr @.str.18 }, %struct.battery_property_map { i32 3, ptr @.str.19 }, %struct.battery_property_map { i32 4, ptr @.str.20 }, %struct.battery_property_map { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"charging\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"discharging\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not-charging\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@map_present = internal constant { [3 x %struct.battery_property_map], [40 x i8] } { [3 x %struct.battery_property_map] [%struct.battery_property_map { i32 0, ptr @.str.21 }, %struct.battery_property_map { i32 1, ptr @.str.22 }, %struct.battery_property_map { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@map_technology = internal constant { [7 x %struct.battery_property_map], [40 x i8] } { [7 x %struct.battery_property_map] [%struct.battery_property_map { i32 1, ptr @.str.23 }, %struct.battery_property_map { i32 2, ptr @.str.24 }, %struct.battery_property_map { i32 3, ptr @.str.25 }, %struct.battery_property_map { i32 4, ptr @.str.26 }, %struct.battery_property_map { i32 5, ptr @.str.27 }, %struct.battery_property_map { i32 6, ptr @.str.28 }, %struct.battery_property_map { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NiMH\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LION\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LIPO\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LiFe\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NiCd\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LiMn\00", [27 x i8] zeroinitializer }, align 32
@map_health = internal constant { [6 x %struct.battery_property_map], [48 x i8] } { [6 x %struct.battery_property_map] [%struct.battery_property_map { i32 1, ptr @.str.29 }, %struct.battery_property_map { i32 2, ptr @.str.30 }, %struct.battery_property_map { i32 3, ptr @.str.31 }, %struct.battery_property_map { i32 4, ptr @.str.32 }, %struct.battery_property_map { i32 5, ptr @.str.33 }, %struct.battery_property_map { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"good\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overheat\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dead\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"overvoltage\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failure\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 12, i64 17, i64 18, i64 22, i64 24, i64 26, i64 28, i64 47, i64 51, i64 52, i64 61, i64 62, i64 73, i64 74, i64 75]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"ac_online\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 28, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"usb_online\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 29, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"battery_status\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 30, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"test_power_supplies\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 165, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 244, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"module_initialized\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"param_ops_ac_online\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 492, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"param_ops_usb_online\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 497, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"param_ops_battery_status\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 502, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"param_ops_battery_present\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 507, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"battery_present\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 32, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"param_ops_battery_technology\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 512, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"battery_technology\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 33, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"param_ops_battery_health\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 517, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"battery_health\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 31, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"param_ops_battery_capacity\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 522, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"battery_capacity\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 34, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"param_ops_battery_voltage\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 527, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"battery_voltage\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 35, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [33 x i8] c"param_ops_battery_charge_counter\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 532, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"battery_charge_counter\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 36, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [26 x i8] c"param_ops_battery_current\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 537, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"battery_current\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 37, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"test_power_desc\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 167, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"test_power_configs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 191, i32 41 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 218, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 169, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"test_power_ac_props\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 134, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 176, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"test_power_battery_props\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 138, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 183, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 75, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 78, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 81, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 127, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"test_power_ac_supplied_to\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 161, i32 14 }
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"map_ac_online\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 263, i32 36 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 264, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 265, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 355, i32 25 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 356, i32 42 }
@___asan_gen_.183 = private unnamed_addr constant [11 x i8] c"map_status\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 269, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 270, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 271, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 272, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 273, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"map_present\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 286, i32 36 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 287, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 288, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"map_technology\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 292, i32 36 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 293, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 294, i32 34 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 295, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 296, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 297, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 298, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant [11 x i8] c"map_health\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 277, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 278, i32 40 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 279, i32 40 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 280, i32 40 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 281, i32 40 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 282, i32 40 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [37 x i8] c"../drivers/power/supply/test_power.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 437, i32 23 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_ac_online174, ptr @__UNIQUE_ID_ac_onlinetype173, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_battery_capacity186, ptr @__UNIQUE_ID_battery_capacitytype185, ptr @__UNIQUE_ID_battery_charge_counter190, ptr @__UNIQUE_ID_battery_charge_countertype189, ptr @__UNIQUE_ID_battery_current192, ptr @__UNIQUE_ID_battery_currenttype191, ptr @__UNIQUE_ID_battery_health184, ptr @__UNIQUE_ID_battery_healthtype183, ptr @__UNIQUE_ID_battery_present180, ptr @__UNIQUE_ID_battery_presenttype179, ptr @__UNIQUE_ID_battery_status178, ptr @__UNIQUE_ID_battery_statustype177, ptr @__UNIQUE_ID_battery_technology182, ptr @__UNIQUE_ID_battery_technologytype181, ptr @__UNIQUE_ID_battery_voltage188, ptr @__UNIQUE_ID_battery_voltagetype187, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__UNIQUE_ID_usb_online176, ptr @__UNIQUE_ID_usb_onlinetype175, ptr @__exitcall_test_power_exit, ptr @__initcall__kmod_test_power__172_232_test_power_init6, ptr @__param_ac_online, ptr @__param_battery_capacity, ptr @__param_battery_charge_counter, ptr @__param_battery_current, ptr @__param_battery_health, ptr @__param_battery_present, ptr @__param_battery_status, ptr @__param_battery_technology, ptr @__param_battery_voltage, ptr @__param_usb_online, ptr @test_power_exit, ptr @test_power_exit._entry, ptr @test_power_exit._entry_ptr, ptr @test_power_get_battery_property._entry, ptr @test_power_get_battery_property._entry_ptr, ptr @test_power_init._entry, ptr @test_power_init._entry_ptr, ptr @ac_online, ptr @usb_online, ptr @battery_status, ptr @test_power_supplies, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @module_initialized, ptr @param_ops_ac_online, ptr @param_ops_usb_online, ptr @param_ops_battery_status, ptr @param_ops_battery_present, ptr @battery_present, ptr @param_ops_battery_technology, ptr @battery_technology, ptr @param_ops_battery_health, ptr @battery_health, ptr @param_ops_battery_capacity, ptr @battery_capacity, ptr @param_ops_battery_voltage, ptr @battery_voltage, ptr @param_ops_battery_charge_counter, ptr @battery_charge_counter, ptr @param_ops_battery_current, ptr @battery_current, ptr @test_power_desc, ptr @test_power_configs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @test_power_ac_props, ptr @.str.6, ptr @test_power_battery_props, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @test_power_ac_supplied_to, ptr @map_ac_online, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @map_status, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @map_present, ptr @.str.21, ptr @.str.22, ptr @map_technology, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @map_health, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_supplies to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_ac_online to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_usb_online to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_present to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_present to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_technology to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_technology to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_health to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_health to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_capacity to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_capacity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_voltage to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_voltage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_charge_counter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_charge_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_battery_current to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_desc to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_configs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_ac_props to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_battery_props to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_get_battery_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_power_ac_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_ac_online to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_status to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_present to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_technology to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_health to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_power_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.power_supply_desc], ptr @test_power_desc, i32 0, i32 %i.028
  %arrayidx4 = getelementptr [3 x %struct.power_supply_config], ptr @test_power_configs, i32 0, i32 %i.028
  %call = tail call ptr @power_supply_register(ptr noundef null, ptr noundef %arrayidx, ptr noundef %arrayidx4) #11
  %arrayidx5 = getelementptr [3 x ptr], ptr @test_power_supplies, i32 0, i32 %i.028
  %0 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %arrayidx5, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end10, label %for.inc

do.end10:                                         ; preds = %for.body
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %2) #14
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %cmp1530.not = icmp eq i32 %i.028, 0
  br i1 %cmp1530.not, label %do.end10.cleanup_crit_edge, label %do.end10.while.body_crit_edge

do.end10.while.body_crit_edge:                    ; preds = %do.end10
  br label %while.body

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @module_initialized, align 1
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end10.while.body_crit_edge
  %dec31.in = phi i32 [ %dec31, %while.body.while.body_crit_edge ], [ %i.028, %do.end10.while.body_crit_edge ]
  %dec31 = add nsw i32 %dec31.in, -1
  %arrayidx16 = getelementptr [3 x ptr], ptr @test_power_supplies, i32 0, i32 %dec31
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  tail call void @power_supply_unregister(ptr noundef %7) #11
  %cmp15 = icmp sgt i32 %dec31.in, 1
  br i1 %cmp15, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.end, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %5, %do.end10.cleanup_crit_edge ], [ %5, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_power_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @ac_online, align 4
  store i32 0, ptr @usb_online, align 4
  store i32 2, ptr @battery_status, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr @test_power_supplies, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @power_supply_changed(ptr noundef %1) #11
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end:                                           ; preds = %for.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  tail call void @msleep(i32 noundef 10000) #11
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %do.end
  %i.114 = phi i32 [ 0, %do.end ], [ %inc6, %for.body3.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [3 x ptr], ptr @test_power_supplies, i32 0, i32 %i.114
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #11
  %inc6 = add nuw nsw i32 %i.114, 1
  %exitcond15.not = icmp eq i32 %inc6, 3
  br i1 %exitcond15.not, label %for.end7, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.end7:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @module_initialized, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_power_get_ac_property(ptr nocapture noundef readnone %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @ac_online, align 4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %val, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_power_get_battery_property(ptr nocapture noundef readnone %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %do.end [
    i32 73, label %sw.bb
    i32 74, label %sw.bb1
    i32 75, label %sw.bb2
    i32 0, label %sw.bb3
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 6, label %sw.bb7
    i32 51, label %sw.bb8
    i32 47, label %entry.sw.bb9_crit_edge
    i32 26, label %entry.sw.bb9_crit_edge31
    i32 28, label %sw.bb10
    i32 22, label %entry.sw.bb11_crit_edge
    i32 24, label %entry.sw.bb11_crit_edge32
    i32 61, label %entry.sw.bb12_crit_edge
    i32 62, label %entry.sw.bb12_crit_edge33
    i32 52, label %sw.bb13
    i32 12, label %sw.bb14
    i32 18, label %entry.sw.bb15_crit_edge
    i32 17, label %entry.sw.bb15_crit_edge34
  ]

entry.sw.bb15_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

entry.sw.bb12_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

entry.sw.bb11_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

entry.sw.bb9_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.8, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.9, ptr %val, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %val, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load i32, ptr @battery_status, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %val, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load i32, ptr @battery_health, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load i32, ptr @battery_present, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load i32, ptr @battery_technology, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %val, align 4
  br label %return

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge31
  %14 = load i32, ptr @battery_capacity, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = load i32, ptr @battery_charge_counter, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  br label %return

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge32
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %val, align 4
  br label %return

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge33
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3600, ptr %val, align 4
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 26, ptr %val, align 4
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %21 = load i32, ptr @battery_voltage, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  br label %return

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge34
  %23 = load i32, ptr @battery_current, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #14
  br label %return

return:                                           ; preds = %do.end, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb15 ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_power_get_usb_property(ptr nocapture noundef readnone %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @usb_online, align 4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %val, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_ac_online(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ac_online, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #11
  %call.i = call ptr @strncpy(ptr noundef nonnull %buf.i, ptr noundef %key, i32 noundef 256) #11
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %buf.i, i32 0, i32 255
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  %call2.i = call i32 @strnlen(ptr noundef nonnull %buf.i, i32 noundef 256) #15
  %sub.i = add i32 %call2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.map_get_value.exit_crit_edge, label %if.end.i

entry.map_get_value.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.i = icmp eq i8 %3, 10
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3.i, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.then6.i, %if.end.i.while.body.i_crit_edge
  %call12.i = call i32 @strncasecmp(ptr noundef nonnull @.str.13, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %while.body.i.if.then15.i_crit_edge, label %if.end16.i

while.body.i.if.then15.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end16.i.if.then15.i_crit_edge, %while.body.i.if.then15.i_crit_edge
  %map.addr.027.i.lcssa = phi ptr [ @map_ac_online, %while.body.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.battery_property_map], ptr @map_ac_online, i32 0, i32 1), %if.end16.i.if.then15.i_crit_edge ]
  %5 = ptrtoint ptr %map.addr.027.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map.addr.027.i.lcssa, align 4
  br label %map_get_value.exit

if.end16.i:                                       ; preds = %while.body.i
  %call12.i.1 = call i32 @strncasecmp(ptr noundef nonnull @.str.14, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.1)
  %cmp13.i.1 = icmp eq i32 %call12.i.1, 0
  br i1 %cmp13.i.1, label %if.end16.i.if.then15.i_crit_edge, label %if.end16.i.map_get_value.exit_crit_edge

if.end16.i.map_get_value.exit_crit_edge:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end16.i.if.then15.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

map_get_value.exit:                               ; preds = %if.end16.i.map_get_value.exit_crit_edge, %if.then15.i, %entry.map_get_value.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then15.i ], [ %0, %entry.map_get_value.exit_crit_edge ], [ %0, %if.end16.i.map_get_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #11
  store i32 %retval.0.i, ptr @ac_online, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %map_get_value.exit.signal_power_supply_changed.exit_crit_edge

map_get_value.exit.signal_power_supply_changed.exit_crit_edge: ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_power_supply_changed.exit

if.then.i:                                        ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr @test_power_supplies, align 4
  call void @power_supply_changed(ptr noundef %7) #11
  br label %signal_power_supply_changed.exit

signal_power_supply_changed.exit:                 ; preds = %if.then.i, %map_get_value.exit.signal_power_supply_changed.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_ac_online(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ac_online, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %0, label %while.cond.i.1 [
    i32 0, label %entry.map_get_key.exit_crit_edge
    i32 1, label %entry.map_get_key.exit.loopexit_crit_edge
  ]

entry.map_get_key.exit.loopexit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

entry.map_get_key.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit

while.cond.i.1:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

map_get_key.exit.loopexit:                        ; preds = %while.cond.i.1, %entry.map_get_key.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.16, %while.cond.i.1 ], [ @.str.14, %entry.map_get_key.exit.loopexit_crit_edge ]
  br label %map_get_key.exit

map_get_key.exit:                                 ; preds = %map_get_key.exit.loopexit, %entry.map_get_key.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %entry.map_get_key.exit_crit_edge ], [ %retval.0.i.ph, %map_get_key.exit.loopexit ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_usb_online(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @usb_online, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #11
  %call.i = call ptr @strncpy(ptr noundef nonnull %buf.i, ptr noundef %key, i32 noundef 256) #11
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %buf.i, i32 0, i32 255
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  %call2.i = call i32 @strnlen(ptr noundef nonnull %buf.i, i32 noundef 256) #15
  %sub.i = add i32 %call2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.map_get_value.exit_crit_edge, label %if.end.i

entry.map_get_value.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.i = icmp eq i8 %3, 10
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3.i, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.then6.i, %if.end.i.while.body.i_crit_edge
  %call12.i = call i32 @strncasecmp(ptr noundef nonnull @.str.13, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %while.body.i.if.then15.i_crit_edge, label %if.end16.i

while.body.i.if.then15.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end16.i.if.then15.i_crit_edge, %while.body.i.if.then15.i_crit_edge
  %map.addr.027.i.lcssa = phi ptr [ @map_ac_online, %while.body.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.battery_property_map], ptr @map_ac_online, i32 0, i32 1), %if.end16.i.if.then15.i_crit_edge ]
  %5 = ptrtoint ptr %map.addr.027.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map.addr.027.i.lcssa, align 4
  br label %map_get_value.exit

if.end16.i:                                       ; preds = %while.body.i
  %call12.i.1 = call i32 @strncasecmp(ptr noundef nonnull @.str.14, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.1)
  %cmp13.i.1 = icmp eq i32 %call12.i.1, 0
  br i1 %cmp13.i.1, label %if.end16.i.if.then15.i_crit_edge, label %if.end16.i.map_get_value.exit_crit_edge

if.end16.i.map_get_value.exit_crit_edge:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end16.i.if.then15.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

map_get_value.exit:                               ; preds = %if.end16.i.map_get_value.exit_crit_edge, %if.then15.i, %entry.map_get_value.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then15.i ], [ %0, %entry.map_get_value.exit_crit_edge ], [ %0, %if.end16.i.map_get_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #11
  store i32 %retval.0.i, ptr @usb_online, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %map_get_value.exit.signal_power_supply_changed.exit_crit_edge

map_get_value.exit.signal_power_supply_changed.exit_crit_edge: ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_power_supply_changed.exit

if.then.i:                                        ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 2), align 4
  call void @power_supply_changed(ptr noundef %7) #11
  br label %signal_power_supply_changed.exit

signal_power_supply_changed.exit:                 ; preds = %if.then.i, %map_get_value.exit.signal_power_supply_changed.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_usb_online(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @usb_online, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %0, label %while.cond.i.1 [
    i32 0, label %entry.map_get_key.exit_crit_edge
    i32 1, label %entry.map_get_key.exit.loopexit_crit_edge
  ]

entry.map_get_key.exit.loopexit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

entry.map_get_key.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit

while.cond.i.1:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

map_get_key.exit.loopexit:                        ; preds = %while.cond.i.1, %entry.map_get_key.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.16, %while.cond.i.1 ], [ @.str.14, %entry.map_get_key.exit.loopexit_crit_edge ]
  br label %map_get_key.exit

map_get_key.exit:                                 ; preds = %map_get_key.exit.loopexit, %entry.map_get_key.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %entry.map_get_key.exit_crit_edge ], [ %retval.0.i.ph, %map_get_key.exit.loopexit ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_status(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_status, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #11
  %call.i = call ptr @strncpy(ptr noundef nonnull %buf.i, ptr noundef %key, i32 noundef 256) #11
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %buf.i, i32 0, i32 255
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  %call2.i = call i32 @strnlen(ptr noundef nonnull %buf.i, i32 noundef 256) #15
  %sub.i = add i32 %call2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.map_get_value.exit_crit_edge, label %if.end.i

entry.map_get_value.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.i = icmp eq i8 %3, 10
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3.i, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.then6.i, %if.end.i.while.body.i_crit_edge
  %call12.i = call i32 @strncasecmp(ptr noundef nonnull @.str.17, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %while.body.i.if.then15.i_crit_edge, label %if.end16.i

while.body.i.if.then15.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end16.i.2.if.then15.i_crit_edge, %if.end16.i.1.if.then15.i_crit_edge, %if.end16.i.if.then15.i_crit_edge, %while.body.i.if.then15.i_crit_edge
  %map.addr.027.i.lcssa = phi ptr [ @map_status, %while.body.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.battery_property_map], ptr @map_status, i32 0, i32 1), %if.end16.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.battery_property_map], ptr @map_status, i32 0, i32 2), %if.end16.i.1.if.then15.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.battery_property_map], ptr @map_status, i32 0, i32 3), %if.end16.i.2.if.then15.i_crit_edge ]
  %5 = ptrtoint ptr %map.addr.027.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map.addr.027.i.lcssa, align 4
  br label %map_get_value.exit

if.end16.i:                                       ; preds = %while.body.i
  %call12.i.1 = call i32 @strncasecmp(ptr noundef nonnull @.str.18, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.1)
  %cmp13.i.1 = icmp eq i32 %call12.i.1, 0
  br i1 %cmp13.i.1, label %if.end16.i.if.then15.i_crit_edge, label %if.end16.i.1

if.end16.i.if.then15.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.1:                                     ; preds = %if.end16.i
  %call12.i.2 = call i32 @strncasecmp(ptr noundef nonnull @.str.19, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.2)
  %cmp13.i.2 = icmp eq i32 %call12.i.2, 0
  br i1 %cmp13.i.2, label %if.end16.i.1.if.then15.i_crit_edge, label %if.end16.i.2

if.end16.i.1.if.then15.i_crit_edge:               ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.2:                                     ; preds = %if.end16.i.1
  %call12.i.3 = call i32 @strncasecmp(ptr noundef nonnull @.str.20, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.3)
  %cmp13.i.3 = icmp eq i32 %call12.i.3, 0
  br i1 %cmp13.i.3, label %if.end16.i.2.if.then15.i_crit_edge, label %if.end16.i.2.map_get_value.exit_crit_edge

if.end16.i.2.map_get_value.exit_crit_edge:        ; preds = %if.end16.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end16.i.2.if.then15.i_crit_edge:               ; preds = %if.end16.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

map_get_value.exit:                               ; preds = %if.end16.i.2.map_get_value.exit_crit_edge, %if.then15.i, %entry.map_get_value.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then15.i ], [ %0, %entry.map_get_value.exit_crit_edge ], [ %0, %if.end16.i.2.map_get_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #11
  store i32 %retval.0.i, ptr @battery_status, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %map_get_value.exit.signal_power_supply_changed.exit_crit_edge

map_get_value.exit.signal_power_supply_changed.exit_crit_edge: ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_power_supply_changed.exit

if.then.i:                                        ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 1), align 4
  call void @power_supply_changed(ptr noundef %7) #11
  br label %signal_power_supply_changed.exit

signal_power_supply_changed.exit:                 ; preds = %if.then.i, %map_get_value.exit.signal_power_supply_changed.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_battery_status(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_status, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %0, label %while.cond.i.1 [
    i32 0, label %entry.map_get_key.exit_crit_edge
    i32 1, label %entry.map_get_key.exit.loopexit_crit_edge
  ]

entry.map_get_key.exit.loopexit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

entry.map_get_key.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit

while.cond.i.1:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

map_get_key.exit.loopexit:                        ; preds = %while.cond.i.1, %entry.map_get_key.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.16, %while.cond.i.1 ], [ @.str.14, %entry.map_get_key.exit.loopexit_crit_edge ]
  br label %map_get_key.exit

map_get_key.exit:                                 ; preds = %map_get_key.exit.loopexit, %entry.map_get_key.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %entry.map_get_key.exit_crit_edge ], [ %retval.0.i.ph, %map_get_key.exit.loopexit ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_present(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_present, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #11
  %call.i = call ptr @strncpy(ptr noundef nonnull %buf.i, ptr noundef %key, i32 noundef 256) #11
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %buf.i, i32 0, i32 255
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  %call2.i = call i32 @strnlen(ptr noundef nonnull %buf.i, i32 noundef 256) #15
  %sub.i = add i32 %call2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.map_get_value.exit_crit_edge, label %if.end.i

entry.map_get_value.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.i = icmp eq i8 %3, 10
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3.i, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.then6.i, %if.end.i.while.body.i_crit_edge
  %call12.i = call i32 @strncasecmp(ptr noundef nonnull @.str.21, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %while.body.i.if.then15.i_crit_edge, label %if.end16.i

while.body.i.if.then15.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end16.i.if.then15.i_crit_edge, %while.body.i.if.then15.i_crit_edge
  %map.addr.027.i.lcssa = phi ptr [ @map_present, %while.body.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.battery_property_map], ptr @map_present, i32 0, i32 1), %if.end16.i.if.then15.i_crit_edge ]
  %5 = ptrtoint ptr %map.addr.027.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map.addr.027.i.lcssa, align 4
  br label %map_get_value.exit

if.end16.i:                                       ; preds = %while.body.i
  %call12.i.1 = call i32 @strncasecmp(ptr noundef nonnull @.str.22, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.1)
  %cmp13.i.1 = icmp eq i32 %call12.i.1, 0
  br i1 %cmp13.i.1, label %if.end16.i.if.then15.i_crit_edge, label %if.end16.i.map_get_value.exit_crit_edge

if.end16.i.map_get_value.exit_crit_edge:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end16.i.if.then15.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

map_get_value.exit:                               ; preds = %if.end16.i.map_get_value.exit_crit_edge, %if.then15.i, %entry.map_get_value.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then15.i ], [ %0, %entry.map_get_value.exit_crit_edge ], [ %0, %if.end16.i.map_get_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #11
  store i32 %retval.0.i, ptr @battery_present, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %map_get_value.exit.signal_power_supply_changed.exit_crit_edge

map_get_value.exit.signal_power_supply_changed.exit_crit_edge: ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_power_supply_changed.exit

if.then.i:                                        ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr @test_power_supplies, align 4
  call void @power_supply_changed(ptr noundef %7) #11
  br label %signal_power_supply_changed.exit

signal_power_supply_changed.exit:                 ; preds = %if.then.i, %map_get_value.exit.signal_power_supply_changed.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_battery_present(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_present, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %0, label %while.cond.i.1 [
    i32 0, label %entry.map_get_key.exit_crit_edge
    i32 1, label %entry.map_get_key.exit.loopexit_crit_edge
  ]

entry.map_get_key.exit.loopexit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

entry.map_get_key.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit

while.cond.i.1:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

map_get_key.exit.loopexit:                        ; preds = %while.cond.i.1, %entry.map_get_key.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.16, %while.cond.i.1 ], [ @.str.14, %entry.map_get_key.exit.loopexit_crit_edge ]
  br label %map_get_key.exit

map_get_key.exit:                                 ; preds = %map_get_key.exit.loopexit, %entry.map_get_key.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %entry.map_get_key.exit_crit_edge ], [ %retval.0.i.ph, %map_get_key.exit.loopexit ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_technology(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_technology, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #11
  %call.i = call ptr @strncpy(ptr noundef nonnull %buf.i, ptr noundef %key, i32 noundef 256) #11
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %buf.i, i32 0, i32 255
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  %call2.i = call i32 @strnlen(ptr noundef nonnull %buf.i, i32 noundef 256) #15
  %sub.i = add i32 %call2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.map_get_value.exit_crit_edge, label %if.end.i

entry.map_get_value.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.i = icmp eq i8 %3, 10
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3.i, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.then6.i, %if.end.i.while.body.i_crit_edge
  %call12.i = call i32 @strncasecmp(ptr noundef nonnull @.str.23, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %while.body.i.if.then15.i_crit_edge, label %if.end16.i

while.body.i.if.then15.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end16.i.4.if.then15.i_crit_edge, %if.end16.i.3.if.then15.i_crit_edge, %if.end16.i.2.if.then15.i_crit_edge, %if.end16.i.1.if.then15.i_crit_edge, %if.end16.i.if.then15.i_crit_edge, %while.body.i.if.then15.i_crit_edge
  %map.addr.027.i.lcssa = phi ptr [ @map_technology, %while.body.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.battery_property_map], ptr @map_technology, i32 0, i32 1), %if.end16.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.battery_property_map], ptr @map_technology, i32 0, i32 2), %if.end16.i.1.if.then15.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.battery_property_map], ptr @map_technology, i32 0, i32 3), %if.end16.i.2.if.then15.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.battery_property_map], ptr @map_technology, i32 0, i32 4), %if.end16.i.3.if.then15.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.battery_property_map], ptr @map_technology, i32 0, i32 5), %if.end16.i.4.if.then15.i_crit_edge ]
  %5 = ptrtoint ptr %map.addr.027.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map.addr.027.i.lcssa, align 4
  br label %map_get_value.exit

if.end16.i:                                       ; preds = %while.body.i
  %call12.i.1 = call i32 @strncasecmp(ptr noundef nonnull @.str.24, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.1)
  %cmp13.i.1 = icmp eq i32 %call12.i.1, 0
  br i1 %cmp13.i.1, label %if.end16.i.if.then15.i_crit_edge, label %if.end16.i.1

if.end16.i.if.then15.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.1:                                     ; preds = %if.end16.i
  %call12.i.2 = call i32 @strncasecmp(ptr noundef nonnull @.str.25, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.2)
  %cmp13.i.2 = icmp eq i32 %call12.i.2, 0
  br i1 %cmp13.i.2, label %if.end16.i.1.if.then15.i_crit_edge, label %if.end16.i.2

if.end16.i.1.if.then15.i_crit_edge:               ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.2:                                     ; preds = %if.end16.i.1
  %call12.i.3 = call i32 @strncasecmp(ptr noundef nonnull @.str.26, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.3)
  %cmp13.i.3 = icmp eq i32 %call12.i.3, 0
  br i1 %cmp13.i.3, label %if.end16.i.2.if.then15.i_crit_edge, label %if.end16.i.3

if.end16.i.2.if.then15.i_crit_edge:               ; preds = %if.end16.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.3:                                     ; preds = %if.end16.i.2
  %call12.i.4 = call i32 @strncasecmp(ptr noundef nonnull @.str.27, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.4)
  %cmp13.i.4 = icmp eq i32 %call12.i.4, 0
  br i1 %cmp13.i.4, label %if.end16.i.3.if.then15.i_crit_edge, label %if.end16.i.4

if.end16.i.3.if.then15.i_crit_edge:               ; preds = %if.end16.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.4:                                     ; preds = %if.end16.i.3
  %call12.i.5 = call i32 @strncasecmp(ptr noundef nonnull @.str.28, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.5)
  %cmp13.i.5 = icmp eq i32 %call12.i.5, 0
  br i1 %cmp13.i.5, label %if.end16.i.4.if.then15.i_crit_edge, label %if.end16.i.4.map_get_value.exit_crit_edge

if.end16.i.4.map_get_value.exit_crit_edge:        ; preds = %if.end16.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end16.i.4.if.then15.i_crit_edge:               ; preds = %if.end16.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

map_get_value.exit:                               ; preds = %if.end16.i.4.map_get_value.exit_crit_edge, %if.then15.i, %entry.map_get_value.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then15.i ], [ %0, %entry.map_get_value.exit_crit_edge ], [ %0, %if.end16.i.4.map_get_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #11
  store i32 %retval.0.i, ptr @battery_technology, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %map_get_value.exit.signal_power_supply_changed.exit_crit_edge

map_get_value.exit.signal_power_supply_changed.exit_crit_edge: ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_power_supply_changed.exit

if.then.i:                                        ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 1), align 4
  call void @power_supply_changed(ptr noundef %7) #11
  br label %signal_power_supply_changed.exit

signal_power_supply_changed.exit:                 ; preds = %if.then.i, %map_get_value.exit.signal_power_supply_changed.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_battery_technology(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_technology, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %0, label %while.cond.i.1 [
    i32 0, label %entry.map_get_key.exit_crit_edge
    i32 1, label %entry.map_get_key.exit.loopexit_crit_edge
  ]

entry.map_get_key.exit.loopexit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

entry.map_get_key.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit

while.cond.i.1:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

map_get_key.exit.loopexit:                        ; preds = %while.cond.i.1, %entry.map_get_key.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.16, %while.cond.i.1 ], [ @.str.14, %entry.map_get_key.exit.loopexit_crit_edge ]
  br label %map_get_key.exit

map_get_key.exit:                                 ; preds = %map_get_key.exit.loopexit, %entry.map_get_key.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %entry.map_get_key.exit_crit_edge ], [ %retval.0.i.ph, %map_get_key.exit.loopexit ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_health(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_health, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #11
  %call.i = call ptr @strncpy(ptr noundef nonnull %buf.i, ptr noundef %key, i32 noundef 256) #11
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr %buf.i, i32 0, i32 255
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  %call2.i = call i32 @strnlen(ptr noundef nonnull %buf.i, i32 noundef 256) #15
  %sub.i = add i32 %call2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.map_get_value.exit_crit_edge, label %if.end.i

entry.map_get_value.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr [256 x i8], ptr %buf.i, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.i = icmp eq i8 %3, 10
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3.i, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.then6.i, %if.end.i.while.body.i_crit_edge
  %call12.i = call i32 @strncasecmp(ptr noundef nonnull @.str.29, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %while.body.i.if.then15.i_crit_edge, label %if.end16.i

while.body.i.if.then15.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end16.i.3.if.then15.i_crit_edge, %if.end16.i.2.if.then15.i_crit_edge, %if.end16.i.1.if.then15.i_crit_edge, %if.end16.i.if.then15.i_crit_edge, %while.body.i.if.then15.i_crit_edge
  %map.addr.027.i.lcssa = phi ptr [ @map_health, %while.body.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.battery_property_map], ptr @map_health, i32 0, i32 1), %if.end16.i.if.then15.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.battery_property_map], ptr @map_health, i32 0, i32 2), %if.end16.i.1.if.then15.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.battery_property_map], ptr @map_health, i32 0, i32 3), %if.end16.i.2.if.then15.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.battery_property_map], ptr @map_health, i32 0, i32 4), %if.end16.i.3.if.then15.i_crit_edge ]
  %5 = ptrtoint ptr %map.addr.027.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map.addr.027.i.lcssa, align 4
  br label %map_get_value.exit

if.end16.i:                                       ; preds = %while.body.i
  %call12.i.1 = call i32 @strncasecmp(ptr noundef nonnull @.str.30, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.1)
  %cmp13.i.1 = icmp eq i32 %call12.i.1, 0
  br i1 %cmp13.i.1, label %if.end16.i.if.then15.i_crit_edge, label %if.end16.i.1

if.end16.i.if.then15.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.1:                                     ; preds = %if.end16.i
  %call12.i.2 = call i32 @strncasecmp(ptr noundef nonnull @.str.31, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.2)
  %cmp13.i.2 = icmp eq i32 %call12.i.2, 0
  br i1 %cmp13.i.2, label %if.end16.i.1.if.then15.i_crit_edge, label %if.end16.i.2

if.end16.i.1.if.then15.i_crit_edge:               ; preds = %if.end16.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.2:                                     ; preds = %if.end16.i.1
  %call12.i.3 = call i32 @strncasecmp(ptr noundef nonnull @.str.32, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.3)
  %cmp13.i.3 = icmp eq i32 %call12.i.3, 0
  br i1 %cmp13.i.3, label %if.end16.i.2.if.then15.i_crit_edge, label %if.end16.i.3

if.end16.i.2.if.then15.i_crit_edge:               ; preds = %if.end16.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end16.i.3:                                     ; preds = %if.end16.i.2
  %call12.i.4 = call i32 @strncasecmp(ptr noundef nonnull @.str.33, ptr noundef nonnull %buf.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.4)
  %cmp13.i.4 = icmp eq i32 %call12.i.4, 0
  br i1 %cmp13.i.4, label %if.end16.i.3.if.then15.i_crit_edge, label %if.end16.i.3.map_get_value.exit_crit_edge

if.end16.i.3.map_get_value.exit_crit_edge:        ; preds = %if.end16.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_value.exit

if.end16.i.3.if.then15.i_crit_edge:               ; preds = %if.end16.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

map_get_value.exit:                               ; preds = %if.end16.i.3.map_get_value.exit_crit_edge, %if.then15.i, %entry.map_get_value.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then15.i ], [ %0, %entry.map_get_value.exit_crit_edge ], [ %0, %if.end16.i.3.map_get_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #11
  store i32 %retval.0.i, ptr @battery_health, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %map_get_value.exit.signal_power_supply_changed.exit_crit_edge

map_get_value.exit.signal_power_supply_changed.exit_crit_edge: ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_power_supply_changed.exit

if.then.i:                                        ; preds = %map_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 1), align 4
  call void @power_supply_changed(ptr noundef %7) #11
  br label %signal_power_supply_changed.exit

signal_power_supply_changed.exit:                 ; preds = %if.then.i, %map_get_value.exit.signal_power_supply_changed.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_battery_health(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @battery_health, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %0, label %while.cond.i.1 [
    i32 0, label %entry.map_get_key.exit_crit_edge
    i32 1, label %entry.map_get_key.exit.loopexit_crit_edge
  ]

entry.map_get_key.exit.loopexit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

entry.map_get_key.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit

while.cond.i.1:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_get_key.exit.loopexit

map_get_key.exit.loopexit:                        ; preds = %while.cond.i.1, %entry.map_get_key.exit.loopexit_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.16, %while.cond.i.1 ], [ @.str.14, %entry.map_get_key.exit.loopexit_crit_edge ]
  br label %map_get_key.exit

map_get_key.exit:                                 ; preds = %map_get_key.exit.loopexit, %entry.map_get_key.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %entry.map_get_key.exit_crit_edge ], [ %retval.0.i.ph, %map_get_key.exit.loopexit ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_capacity(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !216
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %key, ptr noundef nonnull @.str.34, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  store i32 %2, ptr @battery_capacity, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 1), align 4
  call void @power_supply_changed(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_voltage(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !216
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %key, ptr noundef nonnull @.str.34, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  store i32 %2, ptr @battery_voltage, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 1), align 4
  call void @power_supply_changed(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_charge_counter(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !216
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %key, ptr noundef nonnull @.str.34, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  store i32 %2, ptr @battery_charge_counter, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 1), align 4
  call void @power_supply_changed(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_battery_current(ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %kp) #5 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !216
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %key, ptr noundef nonnull @.str.34, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  store i32 %2, ptr @battery_current, align 4
  %.b1.i = load i1, ptr @module_initialized, align 1
  br i1 %.b1.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @test_power_supplies, i32 0, i32 1), align 4
  call void @power_supply_changed(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !64, !66, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !128, !130, !132, !134, !136, !138, !139, !141, !143, !145, !147, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !188, !190, !192, !193, !195, !197, !198, !200, !202, !203, !205}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @__initcall__kmod_test_power__172_232_test_power_init6, !1, !"__initcall__kmod_test_power__172_232_test_power_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/test_power.c", i32 232, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/power/supply/test_power.c", i32 244, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @test_power_exit._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @test_power_exit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__exitcall_test_power_exit, !9, !"__exitcall_test_power_exit", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/test_power.c", i32 253, i32 1}
!10 = !{ptr @__param_ac_online, !11, !"__param_ac_online", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/test_power.c", i32 554, i32 1}
!12 = !{ptr @__UNIQUE_ID_ac_onlinetype173, !11, !"__UNIQUE_ID_ac_onlinetype173", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ac_online174, !14, !"__UNIQUE_ID_ac_online174", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/test_power.c", i32 555, i32 1}
!15 = !{ptr @__param_usb_online, !16, !"__param_usb_online", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/test_power.c", i32 557, i32 1}
!17 = !{ptr @__UNIQUE_ID_usb_onlinetype175, !16, !"__UNIQUE_ID_usb_onlinetype175", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_usb_online176, !19, !"__UNIQUE_ID_usb_online176", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/test_power.c", i32 558, i32 1}
!20 = !{ptr @__param_battery_status, !21, !"__param_battery_status", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/test_power.c", i32 560, i32 1}
!22 = !{ptr @__UNIQUE_ID_battery_statustype177, !21, !"__UNIQUE_ID_battery_statustype177", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_battery_status178, !24, !"__UNIQUE_ID_battery_status178", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/test_power.c", i32 561, i32 1}
!25 = !{ptr @__param_battery_present, !26, !"__param_battery_present", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/test_power.c", i32 564, i32 1}
!27 = !{ptr @__UNIQUE_ID_battery_presenttype179, !26, !"__UNIQUE_ID_battery_presenttype179", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_battery_present180, !29, !"__UNIQUE_ID_battery_present180", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/test_power.c", i32 565, i32 1}
!30 = !{ptr @__param_battery_technology, !31, !"__param_battery_technology", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/test_power.c", i32 568, i32 1}
!32 = !{ptr @__UNIQUE_ID_battery_technologytype181, !31, !"__UNIQUE_ID_battery_technologytype181", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_battery_technology182, !34, !"__UNIQUE_ID_battery_technology182", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/test_power.c", i32 569, i32 1}
!35 = !{ptr @__param_battery_health, !36, !"__param_battery_health", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/test_power.c", i32 572, i32 1}
!37 = !{ptr @__UNIQUE_ID_battery_healthtype183, !36, !"__UNIQUE_ID_battery_healthtype183", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_battery_health184, !39, !"__UNIQUE_ID_battery_health184", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/test_power.c", i32 573, i32 1}
!40 = !{ptr @__param_battery_capacity, !41, !"__param_battery_capacity", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/test_power.c", i32 576, i32 1}
!42 = !{ptr @__UNIQUE_ID_battery_capacitytype185, !41, !"__UNIQUE_ID_battery_capacitytype185", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_battery_capacity186, !44, !"__UNIQUE_ID_battery_capacity186", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/test_power.c", i32 577, i32 1}
!45 = !{ptr @__param_battery_voltage, !46, !"__param_battery_voltage", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/test_power.c", i32 579, i32 1}
!47 = !{ptr @__UNIQUE_ID_battery_voltagetype187, !46, !"__UNIQUE_ID_battery_voltagetype187", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_battery_voltage188, !49, !"__UNIQUE_ID_battery_voltage188", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/test_power.c", i32 580, i32 1}
!50 = !{ptr @__param_battery_charge_counter, !51, !"__param_battery_charge_counter", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/test_power.c", i32 582, i32 1}
!52 = !{ptr @__UNIQUE_ID_battery_charge_countertype189, !51, !"__UNIQUE_ID_battery_charge_countertype189", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_battery_charge_counter190, !54, !"__UNIQUE_ID_battery_charge_counter190", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/test_power.c", i32 583, i32 1}
!55 = !{ptr @__param_battery_current, !56, !"__param_battery_current", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/test_power.c", i32 586, i32 1}
!57 = !{ptr @__UNIQUE_ID_battery_currenttype191, !56, !"__UNIQUE_ID_battery_currenttype191", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_battery_current192, !59, !"__UNIQUE_ID_battery_current192", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/test_power.c", i32 587, i32 1}
!60 = !{ptr @__UNIQUE_ID_description193, !61, !"__UNIQUE_ID_description193", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/test_power.c", i32 589, i32 1}
!62 = !{ptr @__UNIQUE_ID_author194, !63, !"__UNIQUE_ID_author194", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/test_power.c", i32 590, i32 1}
!64 = !{ptr @__UNIQUE_ID_file195, !65, !"__UNIQUE_ID_file195", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/test_power.c", i32 591, i32 1}
!66 = !{ptr @__UNIQUE_ID_license196, !65, !"__UNIQUE_ID_license196", i1 false, i1 false}
!67 = distinct !{null, !68, !"module_initialized", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/test_power.c", i32 39, i32 13}
!69 = !{ptr @test_power_supplies, !70, !"test_power_supplies", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/test_power.c", i32 165, i32 29}
!71 = !{ptr @.str.3, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/test_power.c", i32 218, i32 4}
!73 = !{ptr @.str.4, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @test_power_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @test_power_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.5, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/test_power.c", i32 169, i32 11}
!78 = !{ptr @.str.6, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/test_power.c", i32 176, i32 11}
!80 = !{ptr @.str.7, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/test_power.c", i32 183, i32 11}
!82 = !{ptr @test_power_desc, !83, !"test_power_desc", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/test_power.c", i32 167, i32 39}
!84 = !{ptr @test_power_ac_props, !85, !"test_power_ac_props", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/test_power.c", i32 134, i32 35}
!86 = !{ptr @test_power_battery_props, !87, !"test_power_battery_props", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/test_power.c", i32 138, i32 35}
!88 = !{ptr @.str.8, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/test_power.c", i32 75, i32 17}
!90 = !{ptr @.str.9, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/test_power.c", i32 78, i32 17}
!92 = !{ptr @.str.10, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/test_power.c", i32 81, i32 17}
!94 = !{ptr @.str.11, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/test_power.c", i32 127, i32 3}
!96 = !{ptr @.str.12, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @test_power_get_battery_property._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @test_power_get_battery_property._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @test_power_configs, !100, !"test_power_configs", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/test_power.c", i32 191, i32 41}
!101 = !{ptr @test_power_ac_supplied_to, !102, !"test_power_ac_supplied_to", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/test_power.c", i32 161, i32 14}
!103 = !{ptr @ac_online, !104, !"ac_online", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/test_power.c", i32 28, i32 12}
!105 = !{ptr @usb_online, !106, !"usb_online", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/test_power.c", i32 29, i32 12}
!107 = !{ptr @battery_status, !108, !"battery_status", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/test_power.c", i32 30, i32 12}
!109 = !{ptr @__param_str_ac_online, !11, !"__param_str_ac_online", i1 false, i1 false}
!110 = !{ptr @param_ops_ac_online, !111, !"param_ops_ac_online", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/test_power.c", i32 492, i32 38}
!112 = !{ptr @.str.13, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/test_power.c", i32 264, i32 8}
!114 = !{ptr @.str.14, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/test_power.c", i32 265, i32 8}
!116 = !{ptr @map_ac_online, !117, !"map_ac_online", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/test_power.c", i32 263, i32 36}
!118 = !{ptr @.str.15, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/test_power.c", i32 355, i32 25}
!120 = !{ptr @.str.16, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/test_power.c", i32 356, i32 42}
!122 = !{ptr @__param_str_usb_online, !16, !"__param_str_usb_online", i1 false, i1 false}
!123 = !{ptr @param_ops_usb_online, !124, !"param_ops_usb_online", i1 false, i1 false}
!124 = !{!"../drivers/power/supply/test_power.c", i32 497, i32 38}
!125 = !{ptr @__param_str_battery_status, !21, !"__param_str_battery_status", i1 false, i1 false}
!126 = !{ptr @param_ops_battery_status, !127, !"param_ops_battery_status", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/test_power.c", i32 502, i32 38}
!128 = !{ptr @.str.17, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/test_power.c", i32 270, i32 38}
!130 = !{ptr @.str.18, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/test_power.c", i32 271, i32 38}
!132 = !{ptr @.str.19, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/test_power.c", i32 272, i32 38}
!134 = !{ptr @.str.20, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/test_power.c", i32 273, i32 38}
!136 = !{ptr @map_status, !137, !"map_status", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/test_power.c", i32 269, i32 36}
!138 = !{ptr @__param_str_battery_present, !26, !"__param_str_battery_present", i1 false, i1 false}
!139 = !{ptr @param_ops_battery_present, !140, !"param_ops_battery_present", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/test_power.c", i32 507, i32 38}
!141 = !{ptr @.str.21, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/test_power.c", i32 287, i32 8}
!143 = !{ptr @.str.22, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/test_power.c", i32 288, i32 8}
!145 = !{ptr @map_present, !146, !"map_present", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/test_power.c", i32 286, i32 36}
!147 = !{ptr @battery_present, !148, !"battery_present", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/test_power.c", i32 32, i32 12}
!149 = !{ptr @__param_str_battery_technology, !31, !"__param_str_battery_technology", i1 false, i1 false}
!150 = !{ptr @param_ops_battery_technology, !151, !"param_ops_battery_technology", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/test_power.c", i32 512, i32 38}
!152 = !{ptr @.str.23, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/test_power.c", i32 293, i32 34}
!154 = !{ptr @.str.24, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/power/supply/test_power.c", i32 294, i32 34}
!156 = !{ptr @.str.25, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/test_power.c", i32 295, i32 34}
!158 = !{ptr @.str.26, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/power/supply/test_power.c", i32 296, i32 34}
!160 = !{ptr @.str.27, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/test_power.c", i32 297, i32 34}
!162 = !{ptr @.str.28, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/test_power.c", i32 298, i32 34}
!164 = !{ptr @map_technology, !165, !"map_technology", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/test_power.c", i32 292, i32 36}
!166 = !{ptr @battery_technology, !167, !"battery_technology", i1 false, i1 false}
!167 = !{!"../drivers/power/supply/test_power.c", i32 33, i32 12}
!168 = !{ptr @__param_str_battery_health, !36, !"__param_str_battery_health", i1 false, i1 false}
!169 = !{ptr @param_ops_battery_health, !170, !"param_ops_battery_health", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/test_power.c", i32 517, i32 38}
!171 = !{ptr @.str.29, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/power/supply/test_power.c", i32 278, i32 40}
!173 = !{ptr @.str.30, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/test_power.c", i32 279, i32 40}
!175 = !{ptr @.str.31, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/power/supply/test_power.c", i32 280, i32 40}
!177 = !{ptr @.str.32, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/power/supply/test_power.c", i32 281, i32 40}
!179 = !{ptr @.str.33, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/power/supply/test_power.c", i32 282, i32 40}
!181 = !{ptr @map_health, !182, !"map_health", i1 false, i1 false}
!182 = !{!"../drivers/power/supply/test_power.c", i32 277, i32 36}
!183 = !{ptr @battery_health, !184, !"battery_health", i1 false, i1 false}
!184 = !{!"../drivers/power/supply/test_power.c", i32 31, i32 12}
!185 = !{ptr @__param_str_battery_capacity, !41, !"__param_str_battery_capacity", i1 false, i1 false}
!186 = !{ptr @param_ops_battery_capacity, !187, !"param_ops_battery_capacity", i1 false, i1 false}
!187 = !{!"../drivers/power/supply/test_power.c", i32 522, i32 38}
!188 = !{ptr @.str.34, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/test_power.c", i32 437, i32 23}
!190 = !{ptr @battery_capacity, !191, !"battery_capacity", i1 false, i1 false}
!191 = !{!"../drivers/power/supply/test_power.c", i32 34, i32 12}
!192 = !{ptr @__param_str_battery_voltage, !46, !"__param_str_battery_voltage", i1 false, i1 false}
!193 = !{ptr @param_ops_battery_voltage, !194, !"param_ops_battery_voltage", i1 false, i1 false}
!194 = !{!"../drivers/power/supply/test_power.c", i32 527, i32 38}
!195 = !{ptr @battery_voltage, !196, !"battery_voltage", i1 false, i1 false}
!196 = !{!"../drivers/power/supply/test_power.c", i32 35, i32 12}
!197 = !{ptr @__param_str_battery_charge_counter, !51, !"__param_str_battery_charge_counter", i1 false, i1 false}
!198 = !{ptr @param_ops_battery_charge_counter, !199, !"param_ops_battery_charge_counter", i1 false, i1 false}
!199 = !{!"../drivers/power/supply/test_power.c", i32 532, i32 38}
!200 = !{ptr @battery_charge_counter, !201, !"battery_charge_counter", i1 false, i1 false}
!201 = !{!"../drivers/power/supply/test_power.c", i32 36, i32 12}
!202 = !{ptr @__param_str_battery_current, !56, !"__param_str_battery_current", i1 false, i1 false}
!203 = !{ptr @param_ops_battery_current, !204, !"param_ops_battery_current", i1 false, i1 false}
!204 = !{!"../drivers/power/supply/test_power.c", i32 537, i32 38}
!205 = !{ptr @battery_current, !206, !"battery_current", i1 false, i1 false}
!206 = !{!"../drivers/power/supply/test_power.c", i32 37, i32 12}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{!"auto-init"}
