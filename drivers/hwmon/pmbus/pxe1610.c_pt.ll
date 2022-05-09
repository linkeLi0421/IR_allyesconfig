; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/pxe1610.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/pxe1610.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_pxe1610__288_146_pxe1610_driver_init6 = internal global ptr @pxe1610_driver_init, section ".initcall6.init", align 4
@pxe1610_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pxe1610_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pxe1610_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pxe1610_driver_exit = internal global ptr @pxe1610_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [49 x i8] c"pxe1610.author=Vijay Khemka <vijaykhemka@fb.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [75 x i8] c"pxe1610.description=PMBus driver for Infineon PXE1610, PXE1110 and PXM1310\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"pxe1610.file=drivers/hwmon/pmbus/pxe1610\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"pxe1610.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [24 x i8] c"pxe1610.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pxe1610\00", [24 x i8] zeroinitializer }, align 32
@pxe1610_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pxe1610\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pxe1110\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pxm1310\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pxe1610_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read PMBUS_MFR_ID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxe1610_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/pxe1610.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxe1610_probe._entry_ptr = internal global ptr @pxe1610_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"XP\00", [29 x i8] zeroinitializer }, align 32
@pxe1610_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MFR_ID unrecognized\0A\00", [43 x i8] zeroinitializer }, align 32
@pxe1610_probe._entry_ptr.9 = internal global ptr @pxe1610_probe._entry.7, section ".printk_index", align 4
@pxe1610_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, i32, [29 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 3, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, i32, [29 x i32] }> <{ i32 62077, i32 62077, i32 62077, [29 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pxe1610_identify, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"pxe1610_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 138, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 140, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"pxe1610_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 129, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 112, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 115, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 116, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"pxe1610_info\00", align 1
@___asan_gen_.48 = private constant [33 x i8] c"../drivers/hwmon/pmbus/pxe1610.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 61, i32 33 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pxe1610_driver_exit, ptr @__initcall__kmod_pxe1610__288_146_pxe1610_driver_init6, ptr @pxe1610_driver_exit, ptr @pxe1610_probe._entry, ptr @pxe1610_probe._entry.7, ptr @pxe1610_probe._entry_ptr, ptr @pxe1610_probe._entry_ptr.9, ptr @pxe1610_driver, ptr @.str, ptr @pxe1610_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @pxe1610_info], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxe1610_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxe1610_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxe1610_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxe1610_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxe1610_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxe1610_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pxe1610_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxe1610_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pxe1610_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxe1610_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #6
  %and.i = and i32 %call.i.i, 19398656
  call void @__sanitizer_cov_trace_const_cmp4(i32 19398656, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 19398656
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %call2 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -103, ptr noundef nonnull %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp5.not = icmp eq i32 %call2, 2
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end4.do.end12_crit_edge

if.end4.do.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %buf, ptr noundef nonnull dereferenceable(2) @.str.6, i32 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.end14, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %if.end4.do.end12_crit_edge
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call16 = call ptr @devm_kmemdup(ptr noundef %dev15, ptr noundef nonnull @pxe1610_info, i32 noundef 492, i32 noundef 3264) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %do.end12 ], [ %call20, %if.end19 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxe1610_identify(ptr noundef %client, ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 32) #6
  br i1 %call, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.cleanup14_crit_edge, label %if.end

if.then.cleanup14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

if.end:                                           ; preds = %if.then
  %conv = and i32 %call1, 31
  %conv.off = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.off)
  %switch = icmp ult i32 %conv.off, 2
  br i1 %switch, label %for.inc.sink.split, label %if.end.cleanup14_crit_edge

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

if.then10:                                        ; preds = %if.end.2.if.then10_crit_edge, %if.end.1.if.then10_crit_edge
  %i.030.lcssa32.ph = phi i32 [ 1, %if.end.1.if.then10_crit_edge ], [ 2, %if.end.2.if.then10_crit_edge ]
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %i.030.lcssa32.ph, ptr %info, align 4
  br label %cleanup14

for.inc.sink.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 0
  %1 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %entry.for.inc_crit_edge
  %call.1 = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 1, i32 noundef 32) #6
  br i1 %call.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %call1.1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 1, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %if.then.1.cleanup14_crit_edge, label %if.end.1

if.then.1.cleanup14_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

if.end.1:                                         ; preds = %if.then.1
  %conv.1 = and i32 %call1.1, 31
  %conv.1.off = add nsw i32 %conv.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.1.off)
  %switch37 = icmp ult i32 %conv.1.off, 2
  br i1 %switch37, label %for.inc.1.sink.split, label %if.end.1.if.then10_crit_edge

if.end.1.if.then10_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

for.inc.1.sink.split:                             ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.1 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.1, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %for.inc.for.inc.1_crit_edge
  %call.2 = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 2, i32 noundef 32) #6
  br i1 %call.2, label %if.then.2, label %for.inc.1.cleanup14_crit_edge

for.inc.1.cleanup14_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

if.then.2:                                        ; preds = %for.inc.1
  %call1.2 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 2, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %if.then.2.cleanup14_crit_edge, label %if.end.2

if.then.2.cleanup14_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

if.end.2:                                         ; preds = %if.then.2
  %conv.2 = and i32 %call1.2, 31
  %3 = zext i32 %conv.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv.2, label %if.end.2.if.then10_crit_edge [
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb5.2
  ]

if.end.2.if.then10_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

sw.bb5.2:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.2 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %arrayidx7.2, align 4
  br label %cleanup14

sw.bb.2:                                          ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.2 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx.2, align 4
  br label %cleanup14

cleanup14:                                        ; preds = %sw.bb.2, %sw.bb5.2, %if.then.2.cleanup14_crit_edge, %for.inc.1.cleanup14_crit_edge, %if.then.1.cleanup14_crit_edge, %if.then10, %if.end.cleanup14_crit_edge, %if.then.cleanup14_crit_edge
  %retval.3 = phi i32 [ 0, %if.then10 ], [ -19, %if.end.cleanup14_crit_edge ], [ %call1, %if.then.cleanup14_crit_edge ], [ %call1.1, %if.then.1.cleanup14_crit_edge ], [ %call1.2, %if.then.2.cleanup14_crit_edge ], [ 0, %sw.bb.2 ], [ 0, %sw.bb5.2 ], [ 0, %for.inc.1.cleanup14_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pmbus_check_byte_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pxe1610__288_146_pxe1610_driver_init6, !1, !"__initcall__kmod_pxe1610__288_146_pxe1610_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 146, i32 1}
!2 = !{ptr @__exitcall_pxe1610_driver_exit, !1, !"__exitcall_pxe1610_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 148, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 149, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 150, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 151, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 140, i32 12}
!14 = !{ptr @pxe1610_driver, !15, !"pxe1610_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 138, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 112, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pxe1610_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pxe1610_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 115, i32 31}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 116, i32 3}
!28 = !{ptr @pxe1610_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pxe1610_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @pxe1610_info, !31, !"pxe1610_info", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 61, i32 33}
!32 = !{ptr @pxe1610_id, !33, !"pxe1610_id", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/pmbus/pxe1610.c", i32 129, i32 35}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
