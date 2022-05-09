; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/mp2975.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/mp2975.c"
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
%struct.mp2975_data = type { %struct.pmbus_driver_info, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }

@__initcall__kmod_mp2975__294_764_mp2975_driver_init6 = internal global ptr @mp2975_driver_init, section ".initcall6.init", align 4
@mp2975_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @mp2975_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mp2975_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mp2975_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mp2975_driver_exit = internal global ptr @mp2975_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [50 x i8] c"mp2975.author=Vadim Pasternak <vadimp@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [54 x i8] c"mp2975.description=PMBus driver for MPS MP2975 device\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"mp2975.file=drivers/hwmon/pmbus/mp2975\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [19 x i8] c"mp2975.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns299 = internal constant [23 x i8] c"mp2975.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mp2975\00", [25 x i8] zeroinitializer }, align 32
@mp2975_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mps,mp2975\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mp2975_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mp2975\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mp2975_info = internal constant { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ i32, [31 x i32] }> <{ i32 1073803901, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr @mp2975_read_byte_data, ptr @mp2975_read_word_data, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@switch.table.mp2975_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 50, i32 85, i32 97], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [26 x i64] [i64 24, i64 32, i64 64, i64 66, i64 67, i64 68, i64 70, i64 72, i64 74, i64 75, i64 79, i64 82, i64 83, i64 85, i64 87, i64 88, i64 89, i64 91, i64 93, i64 104, i64 106, i64 107, i64 139, i64 140, i64 275, i64 283]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.5 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"mp2975_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 755, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 757, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"mp2975_of_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 749, i32 49 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"mp2975_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 742, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"mp2975_info\00", align 1
@___asan_gen_.20 = private constant [32 x i8] c"../drivers/hwmon/pmbus/mp2975.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 662, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"switch.table.mp2975_probe\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_import_ns299, ptr @__UNIQUE_ID_license298, ptr @__exitcall_mp2975_driver_exit, ptr @__initcall__kmod_mp2975__294_764_mp2975_driver_init6, ptr @mp2975_driver_exit, ptr @mp2975_driver, ptr @.str, ptr @mp2975_of_match, ptr @mp2975_id, ptr @mp2975_info, ptr @switch.table.mp2975_probe], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2975_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2975_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2975_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2975_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mp2975_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2975_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mp2975_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mp2975_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @mp2975_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2975_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 552, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %call.i, ptr @mp2975_info, i32 492)
  %call.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i = icmp slt i32 %call.i81, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %mp2975_identify_multiphase_rail2.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mp2975_identify_multiphase_rail2.exit:            ; preds = %if.end.i
  %and.i = and i32 %call1.i, 7
  %1 = tail call i32 @llvm.umin.i32(i32 %and.i, i32 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %mp2975_identify_multiphase_rail2.exit.if.end12_crit_edge, label %if.then7

mp2975_identify_multiphase_rail2.exit.if.end12_crit_edge: ; preds = %mp2975_identify_multiphase_rail2.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %mp2975_identify_multiphase_rail2.exit
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %call.i, align 4
  %conv = trunc i32 %1 to i8
  %arrayidx = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx11 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1073754196, ptr %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %mp2975_identify_multiphase_rail2.exit.if.end12_crit_edge
  %call.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %if.end12.cleanup_crit_edge, label %if.end.i86

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i86:                                       ; preds = %if.end12
  %call1.i84 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i84)
  %cmp2.i85 = icmp slt i32 %call1.i84, 1
  br i1 %cmp2.i85, label %mp2975_identify_multiphase.exit, label %if.end4.i87

if.end4.i87:                                      ; preds = %if.end.i86
  %5 = trunc i32 %call1.i84 to i8
  %conv.i = and i8 %5, 15
  %phases.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %phases.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %phases.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i)
  %cmp8.i = icmp ugt i8 %conv.i, 8
  br i1 %cmp8.i, label %if.end4.i87.cleanup_crit_edge, label %if.end11.i

if.end4.i87.cleanup_crit_edge:                    ; preds = %if.end4.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.i:                                       ; preds = %if.end4.i87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp7.not.i.i = icmp eq i8 %conv.i, 0
  br i1 %cmp7.not.i.i, label %if.end11.i.mp2975_set_phase_rail1.exit.i_crit_edge, label %if.end11.i.for.body.i.i_crit_edge

if.end11.i.for.body.i.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body.i.i

if.end11.i.mp2975_set_phase_rail1.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mp2975_set_phase_rail1.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end11.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end11.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 %i.08.i.i
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %arrayidx2.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %8 = ptrtoint ptr %phases.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %phases.i, align 4
  %conv.i.i = zext i8 %9 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mp2975_set_phase_rail1.exit.i_crit_edge

for.body.i.i.mp2975_set_phase_rail1.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mp2975_set_phase_rail1.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

mp2975_set_phase_rail1.exit.i:                    ; preds = %for.body.i.i.mp2975_set_phase_rail1.exit.i_crit_edge, %if.end11.i.mp2975_set_phase_rail1.exit.i_crit_edge
  %10 = ptrtoint ptr %phases.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phases.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp15.i = icmp ugt i8 %11, 4
  %conv14.i = zext i8 %11 to i32
  %sub.i = sub nsw i32 8, %conv14.i
  %cond.i = select i1 %cmp15.i, i32 %sub.i, i32 4
  %arrayidx18.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %conv19.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv19.i)
  %cmp23.not.i = icmp slt i32 %cond.i, %conv19.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp23.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp.not3.i.i = icmp slt i32 %cond.i, 1
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %cmp.not3.i.i
  br i1 %or.cond3.i, label %mp2975_set_phase_rail1.exit.i.if.end16_crit_edge, label %for.body.i2.i

mp2975_set_phase_rail1.exit.i.if.end16_crit_edge: ; preds = %mp2975_set_phase_rail1.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i:                                    ; preds = %mp2975_set_phase_rail1.exit.i
  %arrayidx.i.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp.not.i.not.i = icmp sgt i32 %cond.i, 1
  br i1 %cmp.not.i.not.i, label %for.body.i2.i.1, label %for.body.i2.i.if.end16_crit_edge

for.body.i2.i.if.end16_crit_edge:                 ; preds = %for.body.i2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i.1:                                  ; preds = %for.body.i2.i
  %arrayidx.i.i.1 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %arrayidx.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i)
  %cmp.not.i.not.i.1.not = icmp eq i32 %cond.i, 2
  br i1 %cmp.not.i.not.i.1.not, label %for.body.i2.i.1.if.end16_crit_edge, label %for.body.i2.i.2

for.body.i2.i.1.if.end16_crit_edge:               ; preds = %for.body.i2.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i.2:                                  ; preds = %for.body.i2.i.1
  %arrayidx.i.i.2 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 5
  %16 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %arrayidx.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i)
  %cmp.not.i.not.i.2 = icmp sgt i32 %cond.i, 3
  br i1 %cmp.not.i.not.i.2, label %for.body.i2.i.3, label %for.body.i2.i.2.if.end16_crit_edge

for.body.i2.i.2.if.end16_crit_edge:               ; preds = %for.body.i2.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i.3:                                  ; preds = %for.body.i2.i.2
  %arrayidx.i.i.3 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %arrayidx.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cond.i)
  %cmp.not.i.not.i.3.not = icmp eq i32 %cond.i, 4
  br i1 %cmp.not.i.not.i.3.not, label %for.body.i2.i.3.if.end16_crit_edge, label %for.body.i2.i.4

for.body.i2.i.3.if.end16_crit_edge:               ; preds = %for.body.i2.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i.4:                                  ; preds = %for.body.i2.i.3
  %arrayidx.i.i.4 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %arrayidx.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.i)
  %cmp.not.i.not.i.4 = icmp sgt i32 %cond.i, 5
  br i1 %cmp.not.i.not.i.4, label %for.body.i2.i.5, label %for.body.i2.i.4.if.end16_crit_edge

for.body.i2.i.4.if.end16_crit_edge:               ; preds = %for.body.i2.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i.5:                                  ; preds = %for.body.i2.i.4
  %arrayidx.i.i.5 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %arrayidx.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cond.i)
  %cmp.not.i.not.i.5.not = icmp eq i32 %cond.i, 6
  br i1 %cmp.not.i.not.i.5.not, label %for.body.i2.i.5.if.end16_crit_edge, label %for.body.i2.i.6

for.body.i2.i.5.if.end16_crit_edge:               ; preds = %for.body.i2.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i.6:                                  ; preds = %for.body.i2.i.5
  %arrayidx.i.i.6 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %arrayidx.i.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cond.i)
  %cmp.not.i.not.i.6 = icmp sgt i32 %cond.i, 7
  br i1 %cmp.not.i.not.i.6, label %for.body.i2.i.7, label %for.body.i2.i.6.if.end16_crit_edge

for.body.i2.i.6.if.end16_crit_edge:               ; preds = %for.body.i2.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.i2.i.7:                                  ; preds = %for.body.i2.i.6
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i.7 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 8, i32 0
  %21 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %arrayidx.i.i.7, align 4
  br label %if.end16

mp2975_identify_multiphase.exit:                  ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool14.not = icmp eq i32 %call1.i84, 0
  br i1 %tobool14.not, label %mp2975_identify_multiphase.exit.if.end16_crit_edge, label %mp2975_identify_multiphase.exit.cleanup_crit_edge

mp2975_identify_multiphase.exit.cleanup_crit_edge: ; preds = %mp2975_identify_multiphase.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mp2975_identify_multiphase.exit.if.end16_crit_edge: ; preds = %mp2975_identify_multiphase.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %mp2975_identify_multiphase.exit.if.end16_crit_edge, %for.body.i2.i.7, %for.body.i2.i.6.if.end16_crit_edge, %for.body.i2.i.5.if.end16_crit_edge, %for.body.i2.i.4.if.end16_crit_edge, %for.body.i2.i.3.if.end16_crit_edge, %for.body.i2.i.2.if.end16_crit_edge, %for.body.i2.i.1.if.end16_crit_edge, %for.body.i2.i.if.end16_crit_edge, %mp2975_set_phase_rail1.exit.i.if.end16_crit_edge
  %call.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %if.end16.cleanup_crit_edge, label %if.end.i92

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i92:                                       ; preds = %if.end16
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i91 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i91, label %if.end.i92.cleanup_crit_edge, label %if.end.i.i

if.end.i92.cleanup_crit_edge:                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i92
  %and.i.i = and i32 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i93 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %arrayidx.i.i93, align 4
  br label %if.end4.i95

if.else.i.i:                                      ; preds = %if.end.i.i
  %and4.i.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %arrayidx13.i.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 3, i32 0
  br i1 %tobool5.not.i.i, label %if.else11.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx13.i.i, align 4
  br label %if.end4.i95

if.else11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %arrayidx13.i.i, align 4
  br label %if.end4.i95

if.end4.i95:                                      ; preds = %if.else11.i.i, %if.then6.i.i, %if.then2.i.i
  %.sink.i.i = phi i32 [ 10, %if.then2.i.i ], [ 10, %if.else11.i.i ], [ 5, %if.then6.i.i ]
  %arrayidx3.i.i = getelementptr %struct.mp2975_data, ptr %call.i, i32 0, i32 2, i32 0
  %25 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i.i, ptr %arrayidx3.i.i, align 4
  %arrayidx.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i94 = icmp eq i8 %27, 0
  br i1 %tobool.not.i94, label %if.end4.i95.if.end21_crit_edge, label %if.then5.i

if.end4.i95.if.end21_crit_edge:                   ; preds = %if.end4.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then5.i:                                       ; preds = %if.end4.i95
  %call.i17.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i18.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i18.i, label %if.then5.i.cleanup_crit_edge, label %if.end.i21.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i21.i:                                     ; preds = %if.then5.i
  %and.i19.i = and i32 %call.i17.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.else.i27.i, label %if.then2.i23.i

if.then2.i23.i:                                   ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i22.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %arrayidx.i22.i, align 4
  br label %cleanup.sink.split.i32.i

if.else.i27.i:                                    ; preds = %if.end.i21.i
  %and4.i24.i = and i32 %call.i17.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i24.i)
  %tobool5.not.i25.i = icmp eq i32 %and4.i24.i, 0
  %arrayidx13.i26.i = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 3, i32 1
  br i1 %tobool5.not.i25.i, label %if.else11.i29.i, label %if.then6.i28.i

if.then6.i28.i:                                   ; preds = %if.else.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %arrayidx13.i26.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx13.i26.i, align 4
  br label %cleanup.sink.split.i32.i

if.else11.i29.i:                                  ; preds = %if.else.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %arrayidx13.i26.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %arrayidx13.i26.i, align 4
  br label %cleanup.sink.split.i32.i

cleanup.sink.split.i32.i:                         ; preds = %if.else11.i29.i, %if.then6.i28.i, %if.then2.i23.i
  %.sink.i30.i = phi i32 [ 10, %if.then2.i23.i ], [ 10, %if.else11.i29.i ], [ 5, %if.then6.i28.i ]
  %arrayidx3.i31.i = getelementptr %struct.mp2975_data, ptr %call.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx3.i31.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i30.i, ptr %arrayidx3.i31.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %cleanup.sink.split.i32.i, %if.end4.i95.if.end21_crit_edge
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp32.i = icmp sgt i32 %33, 0
  br i1 %cmp32.i, label %if.end21.for.body.i_crit_edge, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %conv.i97 = trunc i32 %i.033.i to i8
  %call.i98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp1.i = icmp slt i32 %call.i98, 0
  br i1 %cmp1.i, label %for.body.i.cleanup_crit_edge, label %if.end.i99

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i99:                                       ; preds = %for.body.i
  %call3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 104) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i99.cleanup_crit_edge, label %if.end7.i

if.end.i99.cleanup_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i99
  %and.i100 = lshr i32 %call3.i, 12
  %shr.i = and i32 %and.i100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %.not = icmp eq i32 %shr.i, 3
  br i1 %.not, label %if.end7.i.for.inc.i_crit_edge, label %switch.lookup

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

switch.lookup:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mp2975_probe, i32 0, i32 %shr.i
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %switch.lookup, %if.end7.i.for.inc.i_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 100, %if.end7.i.for.inc.i_crit_edge ]
  %arrayidx.i101 = getelementptr %struct.mp2975_data, ptr %call.i, i32 0, i32 8, i32 %i.033.i
  %35 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %arrayidx.i101, align 4
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i, align 4
  %cmp.i102 = icmp slt i32 %inc.i, %37
  br i1 %cmp.i102, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end25_crit_edge

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end25:                                         ; preds = %for.inc.i.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %call.i104 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp.i105 = icmp slt i32 %call.i104, 0
  br i1 %cmp.i105, label %if.end25.cleanup_crit_edge, label %if.end.i108

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i108:                                      ; preds = %if.end25
  %call1.i106 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %cmp2.i107 = icmp slt i32 %call1.i106, 0
  br i1 %cmp2.i107, label %if.end.i108.cleanup_crit_edge, label %if.end4.i109

if.end.i108.cleanup_crit_edge:                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i109:                                     ; preds = %if.end.i108
  %38 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.i.i, align 4
  %mul.i = mul i32 %39, %call1.i106
  %vref.i = getelementptr inbounds %struct.mp2975_data, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %vref.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.i, ptr %vref.i, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp7.i = icmp eq i32 %42, 2
  br i1 %cmp7.i, label %if.then8.i, label %if.end4.i109.if.end29_crit_edge

if.end4.i109.if.end29_crit_edge:                  ; preds = %if.end4.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then8.i:                                       ; preds = %if.end4.i109
  %call9.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -93) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then8.i.cleanup_crit_edge, label %if.end12.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14.i = getelementptr %struct.mp2975_data, ptr %call.i, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx14.i, align 4
  %mul15.i = mul i32 %44, %call9.i
  %arrayidx17.i = getelementptr %struct.mp2975_data, ptr %call.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul15.i, ptr %arrayidx17.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end12.i, %if.end4.i109.if.end29_crit_edge
  %call30 = tail call fastcc i32 @mp2975_vout_ov_scale_get(ptr noundef %client, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %call35 = tail call fastcc i32 @mp2975_vout_per_rail_config_get(ptr noundef %client, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.end.i108.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end.i99.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.end.i92.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %mp2975_identify_multiphase.exit.cleanup_crit_edge, %if.end4.i87.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i84, %mp2975_identify_multiphase.exit.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i81, %if.end.cleanup_crit_edge ], [ -22, %if.end4.i87.cleanup_crit_edge ], [ %call.i82, %if.end12.cleanup_crit_edge ], [ %call.i.i, %if.end.i92.cleanup_crit_edge ], [ %call.i17.i, %if.then5.i.cleanup_crit_edge ], [ %call.i89, %if.end16.cleanup_crit_edge ], [ %call9.i, %if.then8.i.cleanup_crit_edge ], [ %call1.i106, %if.end.i108.cleanup_crit_edge ], [ %call.i104, %if.end25.cleanup_crit_edge ], [ %call.i98, %for.body.i.cleanup_crit_edge ], [ %call3.i, %if.end.i99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mp2975_vout_ov_scale_get(ptr noundef %client, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 10, i32 5
  %and9 = and i32 %call5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, i32 1, i32 2
  %mul = mul nuw nsw i32 %cond11, %cond
  %vout_scale = getelementptr inbounds %struct.mp2975_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %vout_scale to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mul, ptr %vout_scale, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mp2975_vout_per_rail_config_get(ptr noundef %client, ptr nocapture noundef %data, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp80 = icmp sgt i32 %1, 0
  br i1 %cmp80, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %vout_scale = getelementptr inbounds %struct.mp2975_data, ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %conv = trunc i32 %i.081 to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = lshr i32 %call.i, 3
  %shr.i = and i32 %and.i, 7
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.end.i.cleanup_crit_edge [
    i32 1, label %if.end.i.if.end8_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb4.i
  ]

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %sw.bb4.i, %sw.bb1.i, %if.end.i.if.end8_crit_edge
  %.sink.i = phi i32 [ 220, %sw.bb1.i ], [ 400, %sw.bb4.i ], [ 140, %if.end.i.if.end8_crit_edge ]
  %arrayidx.i = getelementptr %struct.mp2975_data, ptr %data, i32 0, i32 4, i32 %i.081
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %arrayidx.i, align 4
  %call.i63 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i64, label %if.end8.cleanup_crit_edge, label %if.end.i67

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i67:                                       ; preds = %if.end8
  %arrayidx.i65 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 %i.081
  %4 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i65, align 4
  %and.i66 = and i32 %call.i63, 511
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %5, label %if.end.i67.if.end13_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb8.i.i
  ]

if.end.i67.if.end13_crit_edge:                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

sw.bb.i.i:                                        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %cmp.i.not.i = icmp eq i32 %and.i66, 0
  br i1 %cmp.i.not.i, label %sw.bb.i.i.if.end13_crit_edge, label %if.then.i.i

sw.bb.i.i.if.end13_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = mul nuw nsw i32 %and.i66, 5
  %add.i.i = add nuw nsw i32 %7, 245
  br label %if.end13

sw.bb1.i.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %cmp2.i.not.i = icmp eq i32 %and.i66, 0
  br i1 %cmp2.i.not.i, label %sw.bb1.i.i.if.end13_crit_edge, label %if.then3.i.i

sw.bb1.i.i.if.end13_crit_edge:                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then3.i.i:                                     ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = mul nuw nsw i32 %and.i66, 10
  %add6.i.i = add nuw nsw i32 %8, 490
  br label %if.end13

sw.bb8.i.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %cmp9.i.not.i = icmp eq i32 %and.i66, 0
  br i1 %cmp9.i.not.i, label %sw.bb8.i.i.if.end13_crit_edge, label %if.then10.i.i

sw.bb8.i.i.if.end13_crit_edge:                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10.i.i:                                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = mul nuw nsw i32 %and.i66, 10
  %add13.i.i = add nuw nsw i32 %9, 190
  br label %if.end13

if.end13:                                         ; preds = %if.then10.i.i, %sw.bb8.i.i.if.end13_crit_edge, %if.then3.i.i, %sw.bb1.i.i.if.end13_crit_edge, %if.then.i.i, %sw.bb.i.i.if.end13_crit_edge, %if.end.i67.if.end13_crit_edge
  %retval.0.i.i = phi i32 [ %add13.i.i, %if.then10.i.i ], [ %add6.i.i, %if.then3.i.i ], [ %add.i.i, %if.then.i.i ], [ -22, %if.end.i67.if.end13_crit_edge ], [ 0, %sw.bb8.i.i.if.end13_crit_edge ], [ 0, %sw.bb1.i.i.if.end13_crit_edge ], [ 0, %sw.bb.i.i.if.end13_crit_edge ]
  %arrayidx2.i = getelementptr %struct.mp2975_data, ptr %data, i32 0, i32 5, i32 %i.081
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %arrayidx2.i, align 4
  %call.i69 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %and.i71 = and i32 %call.i69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i = icmp eq i32 %and.i71, 0
  %arrayidx3.i = getelementptr %struct.mp2975_data, ptr %data, i32 0, i32 7, i32 %i.081
  %..i = select i1 %tobool.not.i, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %..i, ptr %arrayidx3.i, align 4
  %arrayidx = getelementptr %struct.mp2975_data, ptr %data, i32 0, i32 3, i32 %i.081
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %vout_scale to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vout_scale, align 4
  %mul = mul i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp20 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp20, i32 5, i32 -5
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 10
  %add29 = add i32 %cond, %13
  %arrayidx30 = getelementptr %struct.mp2975_data, ptr %data, i32 0, i32 6, i32 %i.081
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add29, ptr %arrayidx30, align 4
  %inc = add nuw nsw i32 %i.081, 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i69, %if.end13.cleanup_crit_edge ], [ %call.i63, %if.end8.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mp2975_read_byte_data(ptr nocapture noundef readnone %client, i32 noundef %page, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %cond = icmp eq i32 %reg, 32
  %. = select i1 %cond, i32 64, i32 -61
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2975_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #5
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %reg, label %sw.default [
    i32 79, label %sw.bb
    i32 85, label %sw.bb2
    i32 64, label %sw.bb16
    i32 68, label %sw.bb32
    i32 139, label %sw.bb63
    i32 275, label %sw.bb77
    i32 283, label %sw.bb102
    i32 140, label %sw.bb127
    i32 82, label %entry.cleanup_crit_edge
    i32 83, label %entry.cleanup_crit_edge243
    i32 88, label %entry.cleanup_crit_edge244
    i32 89, label %entry.cleanup_crit_edge245
    i32 67, label %entry.cleanup_crit_edge246
    i32 66, label %entry.cleanup_crit_edge247
    i32 87, label %entry.cleanup_crit_edge248
    i32 91, label %entry.cleanup_crit_edge249
    i32 72, label %entry.cleanup_crit_edge250
    i32 93, label %entry.cleanup_crit_edge251
    i32 74, label %entry.cleanup_crit_edge252
    i32 70, label %entry.cleanup_crit_edge253
    i32 75, label %entry.cleanup_crit_edge254
    i32 104, label %entry.cleanup_crit_edge255
    i32 106, label %entry.cleanup_crit_edge256
    i32 107, label %entry.cleanup_crit_edge257
  ]

entry.cleanup_crit_edge257:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge256:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge255:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge254:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge253:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge252:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge251:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge250:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge249:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge248:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge247:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge246:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge245:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge244:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge243:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 79) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %and.i = select i1 %cmp.i, i32 255, i32 -1
  %cond.i = and i32 %and.i, %call.i
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %call.i218 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext 85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp.i219 = icmp sgt i32 %call.i218, 0
  %and.i220 = select i1 %cmp.i219, i32 255, i32 -1
  %cond.i221 = and i32 %and.i220, %call.i218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i221)
  %cmp = icmp slt i32 %cond.i221, 0
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i221)
  %cmp7.not = icmp eq i32 %cond.i221, 0
  %add = add nuw i32 %cond.i221, 4
  %div13 = sdiv i32 %add, 8
  %cond = select i1 %cmp7.not, i32 0, i32 %div13
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %call.i222 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp.i223 = icmp sgt i32 %call.i222, 0
  %and.i224 = select i1 %cmp.i223, i32 7, i32 -1
  %cond.i225 = and i32 %and.i224, %call.i222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i225)
  %cmp18 = icmp slt i32 %cond.i225, 0
  br i1 %cmp18, label %sw.bb16.cleanup_crit_edge, label %if.end21

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.mp2975_data, ptr %call, i32 0, i32 5, i32 %page
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = mul i32 %cond.i225, 50
  %mul = add i32 %3, 50
  %add23 = add i32 %mul, %2
  %arrayidx24 = getelementptr %struct.mp2975_data, ptr %call, i32 0, i32 6, i32 %page
  %4 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx24, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %add23, i32 %5)
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %call.i226 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp.i227 = icmp sgt i32 %call.i226, 0
  %and.i228 = select i1 %cmp.i227, i32 7, i32 -1
  %cond.i229 = and i32 %and.i228, %call.i226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i229)
  %cmp34 = icmp slt i32 %cond.i229, 0
  br i1 %cmp34, label %sw.bb32.cleanup_crit_edge, label %if.end37

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39 = getelementptr %struct.mp2975_data, ptr %call, i32 0, i32 3, i32 %page
  %7 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx39, align 4
  %mul40 = mul i32 %8, 10
  %.neg = mul i32 %cond.i229, -50
  %mul42.neg = add i32 %.neg, -50
  %vout_scale = getelementptr inbounds %struct.mp2975_data, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %vout_scale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vout_scale, align 4
  %mul43.neg = mul i32 %10, %mul42.neg
  %sub44 = add i32 %mul43.neg, %mul40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44)
  %cmp47 = icmp sgt i32 %sub44, 0
  %cond62.in.v = select i1 %cmp47, i32 5, i32 -5
  %cond62.in = add i32 %cond62.in.v, %sub44
  %cond62 = sdiv i32 %cond62.in, 10
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  %call.i230 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -117) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %cmp.i231 = icmp sgt i32 %call.i230, 0
  %and.i232 = select i1 %cmp.i231, i32 4095, i32 -1
  %cond.i233 = and i32 %and.i232, %call.i230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i233)
  %cmp66 = icmp slt i32 %cond.i233, 0
  br i1 %cmp66, label %sw.bb63.cleanup_crit_edge, label %if.end69

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %sw.bb63
  %arrayidx70 = getelementptr %struct.mp2975_data, ptr %call, i32 0, i32 7, i32 %page
  %11 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp71 = icmp eq i32 %12, 2
  br i1 %cmp71, label %if.then73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx74 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 3, i32 %page
  %13 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx74, align 4
  %call75 = tail call fastcc i32 @mp2975_vid2direct(i32 noundef %14, i32 noundef %cond.i233)
  br label %cleanup

sw.bb77:                                          ; preds = %entry
  %call.i234 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -111) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %cmp.i235 = icmp sgt i32 %call.i234, 0
  %and.i236 = select i1 %cmp.i235, i32 8191, i32 -1
  %cond.i237 = and i32 %and.i236, %call.i234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i237)
  %cmp79 = icmp slt i32 %cond.i237, 0
  br i1 %cmp79, label %sw.bb77.cleanup_crit_edge, label %if.end82

sw.bb77.cleanup_crit_edge:                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82:                                         ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i237)
  %cmp86.not = icmp eq i32 %cond.i237, 0
  %add94 = add nuw i32 %cond.i237, 2
  %div95 = sdiv i32 %add94, 4
  %cond101 = select i1 %cmp86.not, i32 0, i32 %div95
  br label %cleanup

sw.bb102:                                         ; preds = %entry
  %call.i238 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp.i239 = icmp sgt i32 %call.i238, 0
  %and.i240 = select i1 %cmp.i239, i32 8191, i32 -1
  %cond.i241 = and i32 %and.i240, %call.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i241)
  %cmp104 = icmp slt i32 %cond.i241, 0
  br i1 %cmp104, label %sw.bb102.cleanup_crit_edge, label %if.end107

sw.bb102.cleanup_crit_edge:                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end107:                                        ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i241)
  %cmp111.not = icmp eq i32 %cond.i241, 0
  %add119 = add nuw i32 %cond.i241, 2
  %div120 = sdiv i32 %add119, 4
  %cond126 = select i1 %cmp111.not, i32 0, i32 %div120
  br label %cleanup

sw.bb127:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %tobool.not.i = icmp eq i32 %page, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb127
  %15 = zext i32 %phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %phase, label %if.then.i.cleanup_crit_edge [
    i32 0, label %if.then.i.sw.bb.i_crit_edge
    i32 1, label %if.then.i.sw.bb.i_crit_edge258
    i32 2, label %if.then.i.sw.bb1.i_crit_edge
    i32 3, label %if.then.i.sw.bb1.i_crit_edge259
    i32 4, label %if.then.i.sw.bb3.i_crit_edge
    i32 5, label %if.then.i.sw.bb3.i_crit_edge260
  ]

if.then.i.sw.bb3.i_crit_edge260:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.then.i.sw.bb3.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.then.i.sw.bb1.i_crit_edge259:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.then.i.sw.bb1.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.then.i.sw.bb.i_crit_edge258:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge258
  %call.i.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -123) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb.i
  %call3.i.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then.i.sw.bb1.i_crit_edge, %if.then.i.sw.bb1.i_crit_edge259
  %call.i54.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -122) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp.i55.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp.i55.i, label %sw.bb1.i.cleanup_crit_edge, label %if.end.i58.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i58.i:                                     ; preds = %sw.bb1.i
  %call3.i56.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i56.i)
  %cmp4.i57.i = icmp slt i32 %call3.i56.i, 0
  br i1 %cmp4.i57.i, label %if.end.i58.i.cleanup_crit_edge, label %if.end6.i78.i

if.end.i58.i.cleanup_crit_edge:                   ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i78.i:                                    ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = and i32 %phase, 1
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %if.then.i.sw.bb3.i_crit_edge, %if.then.i.sw.bb3.i_crit_edge260
  %call.i81.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp.i82.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp.i82.i, label %sw.bb3.i.cleanup_crit_edge, label %if.end.i85.i

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i85.i:                                     ; preds = %sw.bb3.i
  %call3.i83.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i83.i)
  %cmp4.i84.i = icmp slt i32 %call3.i83.i, 0
  br i1 %cmp4.i84.i, label %if.end.i85.i.cleanup_crit_edge, label %if.end6.i105.i

if.end.i85.i.cleanup_crit_edge:                   ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i105.i:                                   ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = and i32 %phase, 1
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %sw.bb127
  %18 = zext i32 %phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %phase, label %if.else.i.cleanup_crit_edge [
    i32 0, label %if.else.i.sw.bb5.i_crit_edge
    i32 1, label %if.else.i.sw.bb5.i_crit_edge261
    i32 2, label %if.else.i.sw.bb7.i_crit_edge
    i32 3, label %if.else.i.sw.bb7.i_crit_edge262
    i32 4, label %if.else.i.sw.bb9.i_crit_edge
    i32 5, label %if.else.i.sw.bb9.i_crit_edge263
    i32 6, label %if.else.i.sw.bb11.i_crit_edge
    i32 7, label %if.else.i.sw.bb11.i_crit_edge264
    i32 8, label %if.else.i.sw.bb13.i_crit_edge
    i32 9, label %if.else.i.sw.bb13.i_crit_edge265
    i32 10, label %if.else.i.sw.bb15.i_crit_edge
    i32 11, label %if.else.i.sw.bb15.i_crit_edge266
  ]

if.else.i.sw.bb15.i_crit_edge266:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15.i

if.else.i.sw.bb15.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15.i

if.else.i.sw.bb13.i_crit_edge265:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.else.i.sw.bb13.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.else.i.sw.bb11.i_crit_edge264:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

if.else.i.sw.bb11.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

if.else.i.sw.bb9.i_crit_edge263:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.else.i.sw.bb9.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.else.i.sw.bb7.i_crit_edge262:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.else.i.sw.bb7.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.else.i.sw.bb5.i_crit_edge261:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.else.i.sw.bb5.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.else.i.sw.bb5.i_crit_edge, %if.else.i.sw.bb5.i_crit_edge261
  %call.i108.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %cmp.i109.i = icmp slt i32 %call.i108.i, 0
  br i1 %cmp.i109.i, label %sw.bb5.i.cleanup_crit_edge, label %if.end.i112.i

sw.bb5.i.cleanup_crit_edge:                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i112.i:                                    ; preds = %sw.bb5.i
  %call3.i110.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i110.i)
  %cmp4.i111.i = icmp slt i32 %call3.i110.i, 0
  br i1 %cmp4.i111.i, label %if.end.i112.i.cleanup_crit_edge, label %if.end.i112.i.cleanup.sink.split.i_crit_edge

if.end.i112.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i112.i.cleanup_crit_edge:                  ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.else.i.sw.bb7.i_crit_edge, %if.else.i.sw.bb7.i_crit_edge262
  %call.i135.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -125) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %cmp.i136.i = icmp slt i32 %call.i135.i, 0
  br i1 %cmp.i136.i, label %sw.bb7.i.cleanup_crit_edge, label %if.end.i139.i

sw.bb7.i.cleanup_crit_edge:                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i139.i:                                    ; preds = %sw.bb7.i
  %call3.i137.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i137.i)
  %cmp4.i138.i = icmp slt i32 %call3.i137.i, 0
  br i1 %cmp4.i138.i, label %if.end.i139.i.cleanup_crit_edge, label %if.end6.i159.i

if.end.i139.i.cleanup_crit_edge:                  ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i159.i:                                   ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = and i32 %phase, 1
  br label %cleanup.sink.split.i

sw.bb9.i:                                         ; preds = %if.else.i.sw.bb9.i_crit_edge, %if.else.i.sw.bb9.i_crit_edge263
  %call.i162.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -124) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i)
  %cmp.i163.i = icmp slt i32 %call.i162.i, 0
  br i1 %cmp.i163.i, label %sw.bb9.i.cleanup_crit_edge, label %if.end.i166.i

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i166.i:                                    ; preds = %sw.bb9.i
  %call3.i164.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i164.i)
  %cmp4.i165.i = icmp slt i32 %call3.i164.i, 0
  br i1 %cmp4.i165.i, label %if.end.i166.i.cleanup_crit_edge, label %if.end6.i186.i

if.end.i166.i.cleanup_crit_edge:                  ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i186.i:                                   ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = and i32 %phase, 1
  br label %cleanup.sink.split.i

sw.bb11.i:                                        ; preds = %if.else.i.sw.bb11.i_crit_edge, %if.else.i.sw.bb11.i_crit_edge264
  %call.i189.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -123) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189.i)
  %cmp.i190.i = icmp slt i32 %call.i189.i, 0
  br i1 %cmp.i190.i, label %sw.bb11.i.cleanup_crit_edge, label %if.end.i193.i

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i193.i:                                    ; preds = %sw.bb11.i
  %call3.i191.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i191.i)
  %cmp4.i192.i = icmp slt i32 %call3.i191.i, 0
  br i1 %cmp4.i192.i, label %if.end.i193.i.cleanup_crit_edge, label %if.end6.i213.i

if.end.i193.i.cleanup_crit_edge:                  ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i213.i:                                   ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = and i32 %phase, 1
  br label %cleanup.sink.split.i

sw.bb13.i:                                        ; preds = %if.else.i.sw.bb13.i_crit_edge, %if.else.i.sw.bb13.i_crit_edge265
  %call.i216.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -122) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216.i)
  %cmp.i217.i = icmp slt i32 %call.i216.i, 0
  br i1 %cmp.i217.i, label %sw.bb13.i.cleanup_crit_edge, label %if.end.i220.i

sw.bb13.i.cleanup_crit_edge:                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i220.i:                                    ; preds = %sw.bb13.i
  %call3.i218.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i218.i)
  %cmp4.i219.i = icmp slt i32 %call3.i218.i, 0
  br i1 %cmp4.i219.i, label %if.end.i220.i.cleanup_crit_edge, label %if.end6.i240.i

if.end.i220.i.cleanup_crit_edge:                  ; preds = %if.end.i220.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i240.i:                                   ; preds = %if.end.i220.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i32 %phase, 1
  br label %cleanup.sink.split.i

sw.bb15.i:                                        ; preds = %if.else.i.sw.bb15.i_crit_edge, %if.else.i.sw.bb15.i_crit_edge266
  %call.i243.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.i)
  %cmp.i244.i = icmp slt i32 %call.i243.i, 0
  br i1 %cmp.i244.i, label %sw.bb15.i.cleanup_crit_edge, label %if.end.i247.i

sw.bb15.i.cleanup_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i247.i:                                    ; preds = %sw.bb15.i
  %call3.i245.i = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef %phase, i8 noundef zeroext -116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i245.i)
  %cmp4.i246.i = icmp slt i32 %call3.i245.i, 0
  br i1 %cmp4.i246.i, label %if.end.i247.i.cleanup_crit_edge, label %if.end6.i267.i

if.end.i247.i.cleanup_crit_edge:                  ; preds = %if.end.i247.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i267.i:                                   ; preds = %if.end.i247.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = and i32 %phase, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i267.i, %if.end6.i240.i, %if.end6.i213.i, %if.end6.i186.i, %if.end6.i159.i, %if.end.i112.i.cleanup.sink.split.i_crit_edge, %if.end6.i105.i, %if.end6.i78.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink = phi i32 [ %23, %if.end6.i267.i ], [ %22, %if.end6.i240.i ], [ %21, %if.end6.i213.i ], [ %20, %if.end6.i186.i ], [ %19, %if.end6.i159.i ], [ %17, %if.end6.i105.i ], [ %16, %if.end6.i78.i ], [ %phase, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ %phase, %if.end.i112.i.cleanup.sink.split.i_crit_edge ]
  %call.i243.i.sink242 = phi i32 [ %call.i243.i, %if.end6.i267.i ], [ %call.i216.i, %if.end6.i240.i ], [ %call.i189.i, %if.end6.i213.i ], [ %call.i162.i, %if.end6.i186.i ], [ %call.i135.i, %if.end6.i159.i ], [ %call.i81.i, %if.end6.i105.i ], [ %call.i54.i, %if.end6.i78.i ], [ %call.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ %call.i108.i, %if.end.i112.i.cleanup.sink.split.i_crit_edge ]
  %call3.i.sink.i = phi i32 [ %call3.i245.i, %if.end6.i267.i ], [ %call3.i218.i, %if.end6.i240.i ], [ %call3.i191.i, %if.end6.i213.i ], [ %call3.i164.i, %if.end6.i186.i ], [ %call3.i137.i, %if.end6.i159.i ], [ %call3.i83.i, %if.end6.i105.i ], [ %call3.i56.i, %if.end6.i78.i ], [ %call3.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ %call3.i110.i, %if.end.i112.i.cleanup.sink.split.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %tobool.not.not.i248.i = icmp eq i32 %.sink, 0
  %shr58.i249.i = lshr i32 %call.i243.i.sink242, 8
  %spec.select.i250.i = select i1 %tobool.not.not.i248.i, i32 %call.i243.i.sink242, i32 %shr58.i249.i
  %mul.i.sink.in.i = and i32 %spec.select.i250.i, 255
  %mul.i.sink.i = mul nuw nsw i32 %mul.i.sink.in.i, 100
  %sub.i.i = add nsw i32 %mul.i.sink.i, -9800
  %arrayidx.i.i = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 1, i32 %page
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %25 to i32
  %div57.i.i = lshr i32 %conv.i.i, 1
  %add7.i.i = add nuw i32 %div57.i.i, %call3.i.sink.i
  %div9.i.i = sdiv i32 %add7.i.i, %conv.i.i
  %arrayidx12.i.i = getelementptr %struct.mp2975_data, ptr %call, i32 0, i32 8, i32 %page
  %26 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9801, i32 %mul.i.sink.i)
  %cmp14.i260.i = icmp ult i32 %mul.i.sink.i, 9801
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp16.i261.i = icmp sgt i32 %27, 0
  %cmp18.i262.i = xor i1 %cmp14.i260.i, %cmp16.i261.i
  %add21.pn.v.v.i263.i = select i1 %cmp18.i262.i, i32 2, i32 -2
  %add21.pn.v.i264.i = sdiv i32 %27, %add21.pn.v.v.i263.i
  %add21.pn.i265.i = add nsw i32 %sub.i.i, %add21.pn.v.i264.i
  %cond.i266.i = sdiv i32 %add21.pn.i265.i, %27
  %28 = tail call i32 @llvm.smax.i32(i32 %div9.i.i, i32 %cond.i266.i) #5
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %cleanup.sink.split.i, %if.end.i247.i.cleanup_crit_edge, %sw.bb15.i.cleanup_crit_edge, %if.end.i220.i.cleanup_crit_edge, %sw.bb13.i.cleanup_crit_edge, %if.end.i193.i.cleanup_crit_edge, %sw.bb11.i.cleanup_crit_edge, %if.end.i166.i.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge, %if.end.i139.i.cleanup_crit_edge, %sw.bb7.i.cleanup_crit_edge, %if.end.i112.i.cleanup_crit_edge, %sw.bb5.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end.i85.i.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %if.end.i58.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end107, %sw.bb102.cleanup_crit_edge, %if.end82, %sw.bb77.cleanup_crit_edge, %if.then73, %if.end69.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %if.end37, %sw.bb32.cleanup_crit_edge, %if.end21, %sw.bb16.cleanup_crit_edge, %if.end, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge243, %entry.cleanup_crit_edge244, %entry.cleanup_crit_edge245, %entry.cleanup_crit_edge246, %entry.cleanup_crit_edge247, %entry.cleanup_crit_edge248, %entry.cleanup_crit_edge249, %entry.cleanup_crit_edge250, %entry.cleanup_crit_edge251, %entry.cleanup_crit_edge252, %entry.cleanup_crit_edge253, %entry.cleanup_crit_edge254, %entry.cleanup_crit_edge255, %entry.cleanup_crit_edge256, %entry.cleanup_crit_edge257
  %retval.0 = phi i32 [ -61, %sw.default ], [ %cond.i221, %sw.bb2.cleanup_crit_edge ], [ %cond.i225, %sw.bb16.cleanup_crit_edge ], [ %cond.i229, %sw.bb32.cleanup_crit_edge ], [ %cond.i233, %sw.bb63.cleanup_crit_edge ], [ %cond.i237, %sw.bb77.cleanup_crit_edge ], [ %cond.i241, %sw.bb102.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge243 ], [ -6, %entry.cleanup_crit_edge244 ], [ -6, %entry.cleanup_crit_edge245 ], [ -6, %entry.cleanup_crit_edge246 ], [ -6, %entry.cleanup_crit_edge247 ], [ -6, %entry.cleanup_crit_edge248 ], [ -6, %entry.cleanup_crit_edge249 ], [ -6, %entry.cleanup_crit_edge250 ], [ -6, %entry.cleanup_crit_edge251 ], [ -6, %entry.cleanup_crit_edge252 ], [ -6, %entry.cleanup_crit_edge253 ], [ -6, %entry.cleanup_crit_edge254 ], [ -6, %entry.cleanup_crit_edge255 ], [ -6, %entry.cleanup_crit_edge256 ], [ -6, %entry.cleanup_crit_edge257 ], [ %cond126, %if.end107 ], [ %cond101, %if.end82 ], [ %call75, %if.then73 ], [ %cond.i233, %if.end69.cleanup_crit_edge ], [ %cond62, %if.end37 ], [ %6, %if.end21 ], [ %cond, %if.end ], [ %cond.i, %sw.bb ], [ -61, %if.then.i.cleanup_crit_edge ], [ -61, %if.else.i.cleanup_crit_edge ], [ %call.i.i, %sw.bb.i.cleanup_crit_edge ], [ %call3.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call.i54.i, %sw.bb1.i.cleanup_crit_edge ], [ %call3.i56.i, %if.end.i58.i.cleanup_crit_edge ], [ %call.i81.i, %sw.bb3.i.cleanup_crit_edge ], [ %call3.i83.i, %if.end.i85.i.cleanup_crit_edge ], [ %call.i108.i, %sw.bb5.i.cleanup_crit_edge ], [ %call3.i110.i, %if.end.i112.i.cleanup_crit_edge ], [ %call.i135.i, %sw.bb7.i.cleanup_crit_edge ], [ %call3.i137.i, %if.end.i139.i.cleanup_crit_edge ], [ %call.i162.i, %sw.bb9.i.cleanup_crit_edge ], [ %call3.i164.i, %if.end.i166.i.cleanup_crit_edge ], [ %call.i189.i, %sw.bb11.i.cleanup_crit_edge ], [ %call3.i191.i, %if.end.i193.i.cleanup_crit_edge ], [ %call.i216.i, %sw.bb13.i.cleanup_crit_edge ], [ %call3.i218.i, %if.end.i220.i.cleanup_crit_edge ], [ %call.i243.i, %sw.bb15.i.cleanup_crit_edge ], [ %call3.i245.i, %if.end.i247.i.cleanup_crit_edge ], [ %28, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mp2975_vid2direct(i32 noundef %vrf, i32 noundef %val) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %vrf to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %vrf, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp sgt i32 %val, 0
  br i1 %cmp, label %if.then, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %1 = mul i32 %val, 5
  %add = add i32 %1, 245
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2 = icmp sgt i32 %val, 0
  br i1 %cmp2, label %if.then3, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = mul i32 %val, 10
  %add6 = add i32 %2, 490
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp9 = icmp sgt i32 %val, 0
  br i1 %cmp9, label %if.then10, label %sw.bb8.return_crit_edge

sw.bb8.return_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then10:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %3 = mul i32 %val, 10
  %add13 = add i32 %3, 190
  br label %return

return:                                           ; preds = %if.then10, %sw.bb8.return_crit_edge, %if.then3, %sw.bb1.return_crit_edge, %if.then, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add13, %if.then10 ], [ %add6, %if.then3 ], [ %add, %if.then ], [ -22, %entry.return_crit_edge ], [ 0, %sw.bb8.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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

!0 = !{ptr @__initcall__kmod_mp2975__294_764_mp2975_driver_init6, !1, !"__initcall__kmod_mp2975__294_764_mp2975_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 764, i32 1}
!2 = !{ptr @__exitcall_mp2975_driver_exit, !1, !"__exitcall_mp2975_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 766, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 767, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 768, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns299, !11, !"__UNIQUE_ID_import_ns299", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 769, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 757, i32 11}
!14 = !{ptr @mp2975_driver, !15, !"mp2975_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 755, i32 26}
!16 = !{ptr @mp2975_info, !17, !"mp2975_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 662, i32 33}
!18 = !{ptr @mp2975_of_match, !19, !"mp2975_of_match", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 749, i32 49}
!20 = !{ptr @mp2975_id, !21, !"mp2975_id", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/mp2975.c", i32 742, i32 35}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
