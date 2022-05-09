; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/mp2888.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/mp2888.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.mp2888_data = type { %struct.pmbus_driver_info, i32, i32, i32 }

@__initcall__kmod_mp2888__300_403_mp2888_driver_init6 = internal global ptr @mp2888_driver_init, section ".initcall6.init", align 4
@mp2888_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @mp2888_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mp2888_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mp2888_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mp2888_driver_exit = internal global ptr @mp2888_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [50 x i8] c"mp2888.author=Vadim Pasternak <vadimp@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [54 x i8] c"mp2888.description=PMBus driver for MPS MP2888 device\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [39 x i8] c"mp2888.file=drivers/hwmon/pmbus/mp2888\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [19 x i8] c"mp2888.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns305 = internal constant [23 x i8] c"mp2888.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mp2888\00", [25 x i8] zeroinitializer }, align 32
@mp2888_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mps,mp2888\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mp2888_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mp2888\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mp2888_info = internal constant { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 3, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], <{ i32, [31 x i32] }> <{ i32 1073803893, [31 x i32] zeroinitializer }>, [10 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], ptr @mp2888_read_byte_data, ptr @mp2888_read_word_data, ptr @mp2888_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@switch.table.mp2888_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 85, i32 97, i32 100, i32 50], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [33 x i64] [i64 31, i64 32, i64 49, i64 64, i64 66, i64 67, i64 68, i64 70, i64 72, i64 74, i64 75, i64 79, i64 81, i64 82, i64 83, i64 87, i64 89, i64 104, i64 106, i64 107, i64 136, i64 140, i64 150, i64 151, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 192]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 74, i64 81, i64 106]
@__sancov_gen_cov_switch_values.3 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"mp2888_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 394, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 396, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"mp2888_of_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 388, i32 49 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"mp2888_id\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 381, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"mp2888_info\00", align 1
@___asan_gen_.17 = private constant [32 x i8] c"../drivers/hwmon/pmbus/mp2888.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 322, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"switch.table.mp2888_probe\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_import_ns305, ptr @__UNIQUE_ID_license304, ptr @__exitcall_mp2888_driver_exit, ptr @__initcall__kmod_mp2888__300_403_mp2888_driver_init6, ptr @mp2888_driver_exit, ptr @mp2888_driver, ptr @.str, ptr @mp2888_of_match, ptr @mp2888_id, ptr @mp2888_info, ptr @switch.table.mp2888_probe], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2888_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2888_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2888_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2888_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mp2888_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2888_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mp2888_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mp2888_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @mp2888_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2888_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %call.i, ptr @mp2888_info, i32 492)
  %call.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i = icmp slt i32 %call.i25, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 1
  br i1 %cmp2.i, label %mp2888_identify_multiphase.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %1 = trunc i32 %call1.i to i8
  %conv.i = and i8 %1, 15
  %phases.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %phases.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %phases.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i)
  %cmp8.i = icmp ugt i8 %conv.i, 10
  br i1 %cmp8.i, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.if.end6_crit_edge

if.end4.i.if.end6_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mp2888_identify_multiphase.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not, label %mp2888_identify_multiphase.exit.if.end6_crit_edge, label %mp2888_identify_multiphase.exit.cleanup_crit_edge

mp2888_identify_multiphase.exit.cleanup_crit_edge: ; preds = %mp2888_identify_multiphase.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mp2888_identify_multiphase.exit.if.end6_crit_edge: ; preds = %mp2888_identify_multiphase.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %mp2888_identify_multiphase.exit.if.end6_crit_edge, %if.end4.i.if.end6_crit_edge
  %call.i26 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %if.end6.cleanup_crit_edge, label %if.end.i28

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i28:                                       ; preds = %if.end6
  %and.i = and i32 %call.i26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %3 = icmp ult i32 %and.i, 4
  br i1 %3, label %switch.lookup, label %if.end.i28.cleanup_crit_edge

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mp2888_probe, i32 0, i32 %and.i
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %curr_sense_gain6.i = getelementptr inbounds %struct.mp2888_data, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %curr_sense_gain6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.load, ptr %curr_sense_gain6.i, align 4
  %and7.i = lshr i32 %call.i26, 3
  %shr.i = and i32 %and7.i, 1
  %total_curr_resolution.i = getelementptr inbounds %struct.mp2888_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %total_curr_resolution.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i, ptr %total_curr_resolution.i, align 4
  %and8.i = lshr i32 %call.i26, 4
  %shr9.i = and i32 %and8.i, 1
  %phase_curr_resolution.i = getelementptr inbounds %struct.mp2888_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %phase_curr_resolution.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr9.i, ptr %phase_curr_resolution.i, align 4
  %call11 = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.i28.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %mp2888_identify_multiphase.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %switch.lookup ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %mp2888_identify_multiphase.exit.cleanup_crit_edge ], [ %call.i25, %if.end.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ], [ -22, %if.end.i28.cleanup_crit_edge ], [ %call.i26, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mp2888_read_byte_data(ptr nocapture noundef readnone %client, i32 noundef %page, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %cond = icmp eq i32 %reg, 32
  %. = select i1 %cond, i32 64, i32 -61
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2888_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #5
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 136, label %sw.bb
    i32 81, label %sw.bb4
    i32 140, label %sw.bb11
    i32 74, label %sw.bb25
    i32 150, label %entry.sw.bb41_crit_edge
    i32 151, label %entry.sw.bb41_crit_edge128
    i32 106, label %sw.bb55
    i32 79, label %entry.cleanup_crit_edge
    i32 82, label %entry.cleanup_crit_edge129
    i32 83, label %entry.cleanup_crit_edge130
    i32 89, label %entry.cleanup_crit_edge131
    i32 67, label %entry.cleanup_crit_edge132
    i32 66, label %entry.cleanup_crit_edge133
    i32 68, label %entry.cleanup_crit_edge134
    i32 64, label %entry.cleanup_crit_edge135
    i32 87, label %entry.cleanup_crit_edge136
    i32 72, label %entry.cleanup_crit_edge137
    i32 70, label %entry.cleanup_crit_edge138
    i32 49, label %entry.cleanup_crit_edge139
    i32 75, label %entry.cleanup_crit_edge140
    i32 104, label %entry.cleanup_crit_edge141
    i32 107, label %entry.cleanup_crit_edge142
    i32 160, label %entry.cleanup_crit_edge143
    i32 164, label %entry.cleanup_crit_edge144
    i32 161, label %entry.cleanup_crit_edge145
    i32 165, label %entry.cleanup_crit_edge146
    i32 162, label %entry.cleanup_crit_edge147
    i32 166, label %entry.cleanup_crit_edge148
    i32 163, label %entry.cleanup_crit_edge149
    i32 167, label %entry.cleanup_crit_edge150
    i32 192, label %entry.cleanup_crit_edge151
  ]

entry.cleanup_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge150:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge148:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge147:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge146:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.sw.bb41_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb41

entry.sw.bb41_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb41

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call1, 1023
  %and3 = shl nuw i32 %call1, 1
  %shl = and i32 %and3, -2048
  %or = or i32 %shl, %and
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  %mul = mul i32 %call6, 10
  %spec.select = select i1 %cmp7, i32 %call6, i32 %mul
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %phase)
  %cmp12.not = icmp eq i32 %phase, 255
  br i1 %cmp12.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call fastcc i32 @mp2888_read_phases(ptr noundef %client, ptr noundef %call, i32 noundef %page, i32 noundef %phase)
  br label %cleanup

if.end16:                                         ; preds = %sw.bb11
  %call18 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %and23 = and i32 %call18, 4095
  %total_curr_resolution = getelementptr inbounds %struct.mp2888_data, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %total_curr_resolution to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %total_curr_resolution, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  %mul24 = zext i1 %tobool.not to i32
  %cond = shl nuw nsw i32 %and23, %mul24
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %call27 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 74) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %sw.bb25.cleanup_crit_edge, label %if.end31

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %and32 = and i32 %call27, 1023
  %total_curr_resolution33 = getelementptr inbounds %struct.mp2888_data, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %total_curr_resolution33 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_curr_resolution33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool34.not = icmp eq i32 %4, 0
  %cond40.v = select i1 %tobool34.not, i32 2, i32 3
  %cond40 = shl nuw nsw i32 %and32, %cond40.v
  br label %cleanup

sw.bb41:                                          ; preds = %entry.sw.bb41_crit_edge, %entry.sw.bb41_crit_edge128
  %conv42 = trunc i32 %reg to i8
  %call43 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext %conv42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %sw.bb41.cleanup_crit_edge, label %if.end47

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  %total_curr_resolution48 = getelementptr inbounds %struct.mp2888_data, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %total_curr_resolution48 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_curr_resolution48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool49.not = icmp ne i32 %6, 0
  %mul51 = zext i1 %tobool49.not to i32
  %cond54 = shl nuw i32 %call43, %mul51
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  %call57 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 106) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %sw.bb55.cleanup_crit_edge, label %if.end61

sw.bb55.cleanup_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  %total_curr_resolution62 = getelementptr inbounds %struct.mp2888_data, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %total_curr_resolution62 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_curr_resolution62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool63.not = icmp eq i32 %8, 0
  %cond69.v = select i1 %tobool63.not, i32 1, i32 2
  %cond69 = shl i32 %call57, %cond69.v
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end61, %sw.bb55.cleanup_crit_edge, %if.end47, %sw.bb41.cleanup_crit_edge, %if.end31, %sw.bb25.cleanup_crit_edge, %if.end22, %if.end16.cleanup_crit_edge, %if.then14, %sw.bb4, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge129, %entry.cleanup_crit_edge130, %entry.cleanup_crit_edge131, %entry.cleanup_crit_edge132, %entry.cleanup_crit_edge133, %entry.cleanup_crit_edge134, %entry.cleanup_crit_edge135, %entry.cleanup_crit_edge136, %entry.cleanup_crit_edge137, %entry.cleanup_crit_edge138, %entry.cleanup_crit_edge139, %entry.cleanup_crit_edge140, %entry.cleanup_crit_edge141, %entry.cleanup_crit_edge142, %entry.cleanup_crit_edge143, %entry.cleanup_crit_edge144, %entry.cleanup_crit_edge145, %entry.cleanup_crit_edge146, %entry.cleanup_crit_edge147, %entry.cleanup_crit_edge148, %entry.cleanup_crit_edge149, %entry.cleanup_crit_edge150, %entry.cleanup_crit_edge151
  %retval.0 = phi i32 [ -61, %sw.default ], [ %call15, %if.then14 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %call27, %sw.bb25.cleanup_crit_edge ], [ %call43, %sw.bb41.cleanup_crit_edge ], [ %call57, %sw.bb55.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge129 ], [ -6, %entry.cleanup_crit_edge130 ], [ -6, %entry.cleanup_crit_edge131 ], [ -6, %entry.cleanup_crit_edge132 ], [ -6, %entry.cleanup_crit_edge133 ], [ -6, %entry.cleanup_crit_edge134 ], [ -6, %entry.cleanup_crit_edge135 ], [ -6, %entry.cleanup_crit_edge136 ], [ -6, %entry.cleanup_crit_edge137 ], [ -6, %entry.cleanup_crit_edge138 ], [ -6, %entry.cleanup_crit_edge139 ], [ -6, %entry.cleanup_crit_edge140 ], [ -6, %entry.cleanup_crit_edge141 ], [ -6, %entry.cleanup_crit_edge142 ], [ -6, %entry.cleanup_crit_edge143 ], [ -6, %entry.cleanup_crit_edge144 ], [ -6, %entry.cleanup_crit_edge145 ], [ -6, %entry.cleanup_crit_edge146 ], [ -6, %entry.cleanup_crit_edge147 ], [ -6, %entry.cleanup_crit_edge148 ], [ -6, %entry.cleanup_crit_edge149 ], [ -6, %entry.cleanup_crit_edge150 ], [ -6, %entry.cleanup_crit_edge151 ], [ %cond69, %if.end61 ], [ %cond54, %if.end47 ], [ %cond40, %if.end31 ], [ %cond, %if.end22 ], [ %or, %if.end ], [ %spec.select, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2888_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #5
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 81, label %sw.bb
    i32 74, label %sw.bb23
    i32 106, label %sw.bb67
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %word)
  %1 = icmp ult i16 %word, 5
  %conv = zext i16 %word to i32
  %add = add nuw nsw i32 %conv, 5
  %div2 = udiv i32 %add, 10
  %2 = tail call i32 @llvm.umin.i32(i32 %div2, i32 255)
  %3 = select i1 %1, i32 0, i32 %2
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %total_curr_resolution = getelementptr inbounds %struct.mp2888_data, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %total_curr_resolution to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_curr_resolution, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %conv36 = zext i16 %word to i32
  %. = select i1 %tobool.not, i32 2, i32 4
  %.154 = select i1 %tobool.not, i32 2, i32 3
  %add38 = add nuw nsw i32 %., %conv36
  %div39147 = lshr i32 %add38, %.154
  %6 = tail call i32 @llvm.umin.i32(i32 %div39147, i32 1023)
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %total_curr_resolution68 = getelementptr inbounds %struct.mp2888_data, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %total_curr_resolution68 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_curr_resolution68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool69.not = icmp eq i32 %8, 0
  %conv82 = zext i16 %word to i32
  %.155 = select i1 %tobool69.not, i32 1, i32 2
  %add84 = add nuw nsw i32 %.155, %conv82
  %div85144 = lshr i32 %add84, %.155
  %9 = tail call i32 @llvm.umin.i32(i32 %div85144, i32 1023)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb67, %sw.bb23, %sw.bb
  %word.addr.0.in = phi i32 [ %9, %sw.bb67 ], [ %6, %sw.bb23 ], [ %3, %sw.bb ]
  %word.addr.0 = trunc i32 %word.addr.0.in to i16
  %conv113 = trunc i32 %reg to i8
  %call114 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %conv113, i16 noundef zeroext %word.addr.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call114, %sw.epilog ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mp2888_read_phases(ptr noundef %client, ptr nocapture noundef readonly %data, i32 noundef %page, i32 noundef %phase) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %phase, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge137
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge138
    i32 4, label %entry.sw.bb3_crit_edge
    i32 5, label %entry.sw.bb3_crit_edge139
    i32 6, label %entry.sw.bb5_crit_edge
    i32 7, label %entry.sw.bb5_crit_edge140
    i32 8, label %entry.sw.bb7_crit_edge
    i32 9, label %entry.sw.bb7_crit_edge141
  ]

entry.sw.bb7_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb5_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb3_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb1_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge137:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge137
  %call.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 115) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge138
  %call.i26 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %sw.bb1.cleanup_crit_edge, label %if.end.i50

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i50:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %1 = and i32 %phase, 1
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge139
  %call.i53 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 117) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i54 = icmp slt i32 %call.i53, 0
  br i1 %cmp.i54, label %sw.bb3.cleanup_crit_edge, label %if.end.i77

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i77:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %2 = and i32 %phase, 1
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge140
  %call.i80 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 118) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp.i81 = icmp slt i32 %call.i80, 0
  br i1 %cmp.i81, label %sw.bb5.cleanup_crit_edge, label %if.end.i104

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i104:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %3 = and i32 %phase, 1
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge141
  %call.i107 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i108 = icmp slt i32 %call.i107, 0
  br i1 %cmp.i108, label %sw.bb7.cleanup_crit_edge, label %if.end.i131

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i131:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %4 = and i32 %phase, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i131, %if.end.i104, %if.end.i77, %if.end.i50, %sw.bb.cleanup.sink.split_crit_edge
  %phase.sink = phi i32 [ %1, %if.end.i50 ], [ %2, %if.end.i77 ], [ %3, %if.end.i104 ], [ %4, %if.end.i131 ], [ %phase, %sw.bb.cleanup.sink.split_crit_edge ]
  %call.i.sink136 = phi i32 [ %call.i26, %if.end.i50 ], [ %call.i53, %if.end.i77 ], [ %call.i80, %if.end.i104 ], [ %call.i107, %if.end.i131 ], [ %call.i, %sw.bb.cleanup.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase.sink)
  %tobool.not.not.i = icmp eq i32 %phase.sink, 0
  %shr44.i = lshr i32 %call.i.sink136, 8
  %spec.select.i = select i1 %tobool.not.not.i, i32 %call.i.sink136, i32 %shr44.i
  %mul.i.sink.in = and i32 %spec.select.i, 255
  %mul.i.sink = mul nuw nsw i32 %mul.i.sink.in, 100
  %sub.i = add nsw i32 %mul.i.sink, -9800
  %curr_sense_gain.i = getelementptr inbounds %struct.mp2888_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %curr_sense_gain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_sense_gain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9801, i32 %mul.i.sink)
  %cmp3.i116 = icmp ult i32 %mul.i.sink, 9801
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i117 = icmp sgt i32 %6, 0
  %cmp6.i118 = xor i1 %cmp3.i116, %cmp4.i117
  %add8.pn.v.v.i119 = select i1 %cmp6.i118, i32 2, i32 -2
  %add8.pn.v.i120 = sdiv i32 %6, %add8.pn.v.v.i119
  %add8.pn.i121 = add nsw i32 %sub.i, %add8.pn.v.i120
  %cond.i122 = sdiv i32 %add8.pn.i121, %6
  %phase_curr_resolution.i123 = getelementptr inbounds %struct.mp2888_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %phase_curr_resolution.i123 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phase_curr_resolution.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not.i124 = icmp ne i32 %8, 0
  %mul15.i125 = zext i1 %tobool13.not.i124 to i32
  %cond18.i126 = shl i32 %cond.i122, %mul15.i125
  %total_curr_resolution.i127 = getelementptr inbounds %struct.mp2888_data, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %total_curr_resolution.i127 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_curr_resolution.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not.i128 = icmp eq i32 %10, 0
  %cond25.v.i129 = select i1 %tobool19.not.i128, i32 2, i32 3
  %cond25.i130 = shl i32 %cond18.i126, %cond25.v.i129
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb7.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i26, %sw.bb1.cleanup_crit_edge ], [ %call.i53, %sw.bb3.cleanup_crit_edge ], [ %call.i80, %sw.bb5.cleanup_crit_edge ], [ %call.i107, %sw.bb7.cleanup_crit_edge ], [ %cond25.i130, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_mp2888__300_403_mp2888_driver_init6, !1, !"__initcall__kmod_mp2888__300_403_mp2888_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 403, i32 1}
!2 = !{ptr @__exitcall_mp2888_driver_exit, !1, !"__exitcall_mp2888_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 405, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 406, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 407, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns305, !11, !"__UNIQUE_ID_import_ns305", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 408, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 396, i32 11}
!14 = !{ptr @mp2888_driver, !15, !"mp2888_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 394, i32 26}
!16 = !{ptr @mp2888_info, !17, !"mp2888_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 322, i32 33}
!18 = !{ptr @mp2888_of_match, !19, !"mp2888_of_match", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 388, i32 49}
!20 = !{ptr @mp2888_id, !21, !"mp2888_id", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/mp2888.c", i32 381, i32 35}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
