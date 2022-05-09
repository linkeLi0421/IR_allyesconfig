; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ab8500_bmdata.c_pt.bc'
source_filename = "../drivers/power/supply/ab8500_bmdata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ab8500_maxim_parameters = type { i8, i32, i32, i32 }
%struct.ab8500_bm_capacity_levels = type { i32, i32, i32, i32, i32 }
%struct.ab8500_battery_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ab8500_bm_charger_parameters = type { i32, i32, i32, i32 }
%struct.ab8500_fg_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ab8500_bm_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_resistance_temp_table = type { i32, i32 }
%struct.power_supply_battery_ocv_table = type { i32, i32 }
%struct.ab8500_res_to_temp = type { i32, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@ab8500_maxi_params = internal constant { %struct.ab8500_maxim_parameters, [16 x i8] } { %struct.ab8500_maxim_parameters { i8 1, i32 910000, i32 10, i32 100000 }, [16 x i8] zeroinitializer }, align 32
@cap_levels = internal constant { %struct.ab8500_bm_capacity_levels, [44 x i8] } { %struct.ab8500_bm_capacity_levels { i32 2, i32 10, i32 70, i32 95, i32 100 }, [44 x i8] zeroinitializer }, align 32
@bat_type_thermistor_unknown = internal global { %struct.ab8500_battery_type, [48 x i8] } { %struct.ab8500_battery_type { i32 0, i32 0, i32 400, i32 4050, i32 60, i32 400, i32 4000, i32 200, i32 300, i32 4000, i32 15, ptr @temp_tbl }, [48 x i8] zeroinitializer }, align 32
@chg = internal constant { %struct.ab8500_bm_charger_parameters, [16 x i8] } { %struct.ab8500_bm_charger_parameters { i32 5500000, i32 1500000, i32 7500000, i32 1500000 }, [16 x i8] zeroinitializer }, align 32
@fg = internal constant { %struct.ab8500_fg_parameters, [32 x i8] } { %struct.ab8500_fg_parameters { i32 10, i32 100, i32 1, i32 5, i32 40, i32 60, i32 30, i32 30, i32 50000, i32 3100000, i32 2860, i32 2860, i32 15, i32 95, i8 1, i8 127, i8 112, i8 15, i8 2 }, [32 x i8] zeroinitializer }, align 32
@ab8500_bm_data = dso_local global { %struct.ab8500_bm_data, [44 x i8] } { %struct.ab8500_bm_data { ptr null, i32 0, i32 20, i32 120, i32 4, i32 4, i32 1, i32 4, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 100, i32 5, i32 120, i32 0, i32 34, ptr @ab8500_maxi_params, ptr @cap_levels, ptr @bat_type_thermistor_unknown, ptr @chg, ptr @fg }, [44 x i8] zeroinitializer }, align 32
@ab8500_bm_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot retrieve battery info\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_bm_of_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/power/supply/ab8500_bmdata.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_bm_of_probe._entry_ptr = internal global ptr @ab8500_bm_of_probe._entry, section ".printk_index", align 4
@temp_to_batres_tbl_thermistor = internal global { [7 x %struct.power_supply_resistance_temp_table], [40 x i8] } { [7 x %struct.power_supply_resistance_temp_table] [%struct.power_supply_resistance_temp_table { i32 40, i32 40 }, %struct.power_supply_resistance_temp_table { i32 30, i32 45 }, %struct.power_supply_resistance_temp_table { i32 20, i32 55 }, %struct.power_supply_resistance_temp_table { i32 10, i32 77 }, %struct.power_supply_resistance_temp_table { i32 0, i32 108 }, %struct.power_supply_resistance_temp_table { i32 -10, i32 158 }, %struct.power_supply_resistance_temp_table { i32 -20, i32 198 }], [40 x i8] zeroinitializer }, align 32
@ocv_cap_tbl = internal global { [24 x %struct.power_supply_battery_ocv_table], [32 x i8] } { [24 x %struct.power_supply_battery_ocv_table] [%struct.power_supply_battery_ocv_table { i32 4186000, i32 100 }, %struct.power_supply_battery_ocv_table { i32 4163000, i32 99 }, %struct.power_supply_battery_ocv_table { i32 4114000, i32 95 }, %struct.power_supply_battery_ocv_table { i32 4068000, i32 90 }, %struct.power_supply_battery_ocv_table { i32 3990000, i32 80 }, %struct.power_supply_battery_ocv_table { i32 3926000, i32 70 }, %struct.power_supply_battery_ocv_table { i32 3898000, i32 65 }, %struct.power_supply_battery_ocv_table { i32 3866000, i32 60 }, %struct.power_supply_battery_ocv_table { i32 3833000, i32 55 }, %struct.power_supply_battery_ocv_table { i32 3812000, i32 50 }, %struct.power_supply_battery_ocv_table { i32 3787000, i32 40 }, %struct.power_supply_battery_ocv_table { i32 3768000, i32 30 }, %struct.power_supply_battery_ocv_table { i32 3747000, i32 25 }, %struct.power_supply_battery_ocv_table { i32 3730000, i32 20 }, %struct.power_supply_battery_ocv_table { i32 3705000, i32 15 }, %struct.power_supply_battery_ocv_table { i32 3699000, i32 14 }, %struct.power_supply_battery_ocv_table { i32 3684000, i32 12 }, %struct.power_supply_battery_ocv_table { i32 3672000, i32 9 }, %struct.power_supply_battery_ocv_table { i32 3657000, i32 7 }, %struct.power_supply_battery_ocv_table { i32 3638000, i32 6 }, %struct.power_supply_battery_ocv_table { i32 3556000, i32 4 }, %struct.power_supply_battery_ocv_table { i32 3424000, i32 2 }, %struct.power_supply_battery_ocv_table { i32 3317000, i32 1 }, %struct.power_supply_battery_ocv_table { i32 3094000, i32 0 }], [32 x i8] zeroinitializer }, align 32
@temp_tbl = internal constant { [15 x %struct.ab8500_res_to_temp], [40 x i8] } { [15 x %struct.ab8500_res_to_temp] [%struct.ab8500_res_to_temp { i32 -5, i32 214834 }, %struct.ab8500_res_to_temp { i32 0, i32 162943 }, %struct.ab8500_res_to_temp { i32 5, i32 124820 }, %struct.ab8500_res_to_temp { i32 10, i32 96520 }, %struct.ab8500_res_to_temp { i32 15, i32 75306 }, %struct.ab8500_res_to_temp { i32 20, i32 59254 }, %struct.ab8500_res_to_temp { i32 25, i32 47000 }, %struct.ab8500_res_to_temp { i32 30, i32 37566 }, %struct.ab8500_res_to_temp { i32 35, i32 30245 }, %struct.ab8500_res_to_temp { i32 40, i32 24520 }, %struct.ab8500_res_to_temp { i32 45, i32 20010 }, %struct.ab8500_res_to_temp { i32 50, i32 16432 }, %struct.ab8500_res_to_temp { i32 55, i32 13576 }, %struct.ab8500_res_to_temp { i32 60, i32 11280 }, %struct.ab8500_res_to_temp { i32 65, i32 9425 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"ab8500_maxi_params\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 129, i32 45 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"cap_levels\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 99, i32 47 }
@___asan_gen_.11 = private unnamed_addr constant [28 x i8] c"bat_type_thermistor_unknown\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 84, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [4 x i8] c"chg\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 136, i32 50 }
@___asan_gen_.17 = private unnamed_addr constant [3 x i8] c"fg\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 107, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"ab8500_bm_data\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 144, i32 23 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 176, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [30 x i8] c"temp_to_batres_tbl_thermistor\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 73, i32 50 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"ocv_cap_tbl\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 19, i32 46 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"temp_tbl\00", align 1
@___asan_gen_.48 = private constant [40 x i8] c"../drivers/power/supply/ab8500_bmdata.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 50, i32 40 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @ab8500_bm_of_probe._entry, ptr @ab8500_bm_of_probe._entry_ptr, ptr @ab8500_maxi_params, ptr @cap_levels, ptr @bat_type_thermistor_unknown, ptr @chg, ptr @fg, ptr @ab8500_bm_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @temp_to_batres_tbl_thermistor, ptr @ocv_cap_tbl, ptr @temp_tbl], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_maxi_params to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap_levels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bat_type_thermistor_unknown to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_bm_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_bm_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_to_batres_tbl_thermistor to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocv_cap_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ab8500_bm_of_probe(ptr noundef %psy, ptr noundef %bm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @power_supply_get_battery_info(ptr noundef %psy, ptr noundef %bm) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev1 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %charge_full_design_uah = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %charge_full_design_uah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %charge_full_design_uah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %charge_full_design_uah to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 612000, ptr %charge_full_design_uah, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %voltage_min_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %voltage_min_design_uv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %voltage_min_design_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp slt i32 %6, 0
  br i1 %cmp7, label %if.end6.if.then11_crit_edge, label %lor.lhs.false

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  %voltage_max_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %voltage_max_design_uv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %voltage_max_design_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false9

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %overvoltage_limit_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %overvoltage_limit_uv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %overvoltage_limit_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10 = icmp slt i32 %10, 0
  br i1 %cmp10, label %lor.lhs.false9.if.then11_crit_edge, label %lor.lhs.false9.if.end15_crit_edge

lor.lhs.false9.if.end15_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

lor.lhs.false9.if.then11_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %11 = ptrtoint ptr %voltage_min_design_uv to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3700000, ptr %voltage_min_design_uv, align 4
  %voltage_max_design_uv13 = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %voltage_max_design_uv13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3700000, ptr %voltage_max_design_uv13, align 4
  %overvoltage_limit_uv14 = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %overvoltage_limit_uv14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4050000, ptr %overvoltage_limit_uv14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %lor.lhs.false9.if.end15_crit_edge
  %constant_charge_current_max_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %constant_charge_current_max_ua to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %constant_charge_current_max_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16 = icmp slt i32 %15, 0
  br i1 %cmp16, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %constant_charge_current_max_ua to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 400000, ptr %constant_charge_current_max_ua, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %constant_charge_voltage_max_uv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %constant_charge_voltage_max_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20 = icmp slt i32 %18, 0
  br i1 %cmp20, label %if.then21, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %constant_charge_voltage_max_uv to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4100000, ptr %constant_charge_voltage_max_uv, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %charge_term_current_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %charge_term_current_ua to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %charge_term_current_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %charge_term_current_ua to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 200000, ptr %charge_term_current_ua, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %factory_internal_resistance_uohm = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %factory_internal_resistance_uohm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %factory_internal_resistance_uohm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp28 = icmp slt i32 %24, 0
  br i1 %cmp28, label %if.end27.if.then31_crit_edge, label %lor.lhs.false29

if.end27.if.then31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

lor.lhs.false29:                                  ; preds = %if.end27
  %resist_table = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 23
  %25 = ptrtoint ptr %resist_table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resist_table, align 4
  %tobool30.not = icmp eq ptr %26, null
  br i1 %tobool30.not, label %lor.lhs.false29.if.then31_crit_edge, label %lor.lhs.false29.if.end34_crit_edge

lor.lhs.false29.if.end34_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

lor.lhs.false29.if.then31_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false29.if.then31_crit_edge, %if.end27.if.then31_crit_edge
  %27 = ptrtoint ptr %factory_internal_resistance_uohm to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 300000, ptr %factory_internal_resistance_uohm, align 4
  %resist_table33 = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 23
  %28 = ptrtoint ptr %resist_table33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @temp_to_batres_tbl_thermistor, ptr %resist_table33, align 4
  %resist_table_size = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %resist_table_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %resist_table_size, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %lor.lhs.false29.if.end34_crit_edge
  %ocv_table = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 21
  %30 = ptrtoint ptr %ocv_table to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ocv_table, align 4
  %tobool35.not = icmp eq ptr %31, null
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %ocv_temp = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %ocv_temp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 25, ptr %ocv_temp, align 4
  %33 = ptrtoint ptr %ocv_table to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ocv_cap_tbl, ptr %ocv_table, align 4
  %ocv_table_size = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 22
  %34 = ptrtoint ptr %ocv_table_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 24, ptr %ocv_table_size, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end34.if.end41_crit_edge
  %temp_min = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 19
  %35 = ptrtoint ptr %temp_min to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %temp_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %36)
  %cmp42 = icmp eq i32 %36, -2147483648
  br i1 %cmp42, label %if.then43, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %temp_min to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %temp_min, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %temp_max = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 20
  %38 = ptrtoint ptr %temp_max to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %temp_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %39)
  %cmp46 = icmp eq i32 %39, 2147483647
  br i1 %cmp46, label %if.then47, label %if.end45.if.end49_crit_edge

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %temp_max to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 48, ptr %temp_max, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  %temp_alert_min = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %temp_alert_min to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %temp_alert_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %42)
  %cmp50 = icmp eq i32 %42, -2147483648
  br i1 %cmp50, label %if.then51, label %if.end49.if.end53_crit_edge

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %temp_alert_min to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %temp_alert_min, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %temp_alert_max = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 18
  %44 = ptrtoint ptr %temp_alert_max to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %temp_alert_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %45)
  %cmp54 = icmp eq i32 %45, 2147483647
  br i1 %cmp54, label %if.then55, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %temp_alert_max to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 43, ptr %temp_alert_max, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  %temp_hysteresis = getelementptr inbounds %struct.ab8500_bm_data, ptr %bm, i32 0, i32 17
  %47 = ptrtoint ptr %temp_hysteresis to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %temp_hysteresis, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ab8500_bm_of_remove(ptr noundef %psy, ptr nocapture noundef readonly %bm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  tail call void @power_supply_put_battery_info(ptr noundef %psy, ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @ab8500_bm_data, !1, !"ab8500_bm_data", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 144, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 176, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ab8500_bm_of_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ab8500_bm_of_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @ab8500_maxi_params, !11, !"ab8500_maxi_params", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 129, i32 45}
!12 = !{ptr @cap_levels, !13, !"cap_levels", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 99, i32 47}
!14 = !{ptr @bat_type_thermistor_unknown, !15, !"bat_type_thermistor_unknown", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 84, i32 35}
!16 = !{ptr @temp_tbl, !17, !"temp_tbl", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 50, i32 40}
!18 = !{ptr @chg, !19, !"chg", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 136, i32 50}
!20 = !{ptr @fg, !21, !"fg", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 107, i32 42}
!22 = !{ptr @temp_to_batres_tbl_thermistor, !23, !"temp_to_batres_tbl_thermistor", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 73, i32 50}
!24 = !{ptr @ocv_cap_tbl, !25, !"ocv_cap_tbl", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/ab8500_bmdata.c", i32 19, i32 46}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
