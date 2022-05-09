; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/via_i2c.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/via_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+viafb_find_i2c_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_viafb_find_i2c_adapter\09\09\09\09"
module asm "\09.long\09__crc_viafb_find_i2c_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_viafb_find_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22viafb_find_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_viafb_find_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.via_i2c_stuff = type { i16, i16, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.viafb_dev = type { ptr, i32, ptr, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.via_port_cfg = type { i32, i32, i16, i8 }

@via_i2c_par = internal global { [5 x %struct.via_i2c_stuff], [1760 x i8] } zeroinitializer, align 32
@__kstrtab_viafb_find_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_viafb_find_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_viafb_find_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @viafb_find_i2c_adapter to i32), ptr @__kstrtab_viafb_find_i2c_adapter, ptr @__kstrtabns_viafb_find_i2c_adapter }, section "___ksymtab_gpl+viafb_find_i2c_adapter", align 4
@via_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @viafb_i2c_probe, ptr @viafb_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"viafb-i2c\00", [22 x i8] zeroinitializer }, align 32
@i2c_vdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@viafb_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013viafb: cannot create i2c bus %u:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viafb_i2c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/via/via_i2c.c\00", [62 x i8] zeroinitializer }, align 32
@viafb_i2c_probe._entry_ptr = internal global ptr @viafb_i2c_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"viafb i2c io_port idx 0x%02x\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@via_i2c_setsda._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013viafb_i2c: specify wrong i2c type.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"via_i2c_setsda\00", [17 x i8] zeroinitializer }, align 32
@via_i2c_setsda._entry_ptr = internal global ptr @via_i2c_setsda._entry, section ".printk_index", align 4
@via_i2c_setscl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"via_i2c_setscl\00", [17 x i8] zeroinitializer }, align 32
@via_i2c_setscl._entry_ptr = internal global ptr @via_i2c_setscl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"via_i2c_par\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 20, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"via_i2c_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 265, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 267, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"i2c_vdev\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 21, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 239, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 201, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 101, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [37 x i8] c"../drivers/video/fbdev/via/via_i2c.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 43, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_viafb_find_i2c_adapter, ptr @via_i2c_setscl._entry, ptr @via_i2c_setscl._entry_ptr, ptr @via_i2c_setsda._entry, ptr @via_i2c_setsda._entry_ptr, ptr @viafb_i2c_probe._entry, ptr @viafb_i2c_probe._entry_ptr, ptr @via_i2c_par, ptr @via_i2c_driver, ptr @.str, ptr @i2c_vdev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_i2c_par to i32), i32 7040, i32 8800, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_vdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_i2c_setsda._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_i2c_setscl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_i2c_readbyte(i8 noundef zeroext %adap, i8 noundef zeroext %slave_addr, i8 noundef zeroext %index, ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  %mm1 = alloca [1 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #6
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %idxprom = zext i8 %adap to i32
  %is_active = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_active, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pdata, align 1
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %arrayidx2 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %flags3 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags3, align 2
  %7 = lshr i8 %slave_addr, 1
  %conv4 = zext i8 %7 to i16
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %arrayidx2, align 4
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv4, ptr %msgs, align 4
  %10 = ptrtoint ptr %mm1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %index, ptr %mm1, align 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len, align 4
  %len11 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len11, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mm1, ptr %buf, align 4
  %buf14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdata, ptr %buf14, align 4
  %adapter = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %idxprom, i32 2
  %call = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp20 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp20, i32 -5, i32 %call
  %ret.0 = select i1 %cmp, i32 0, i32 %spec.store.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_i2c_writebyte(i8 noundef zeroext %adap, i8 noundef zeroext %slave_addr, i8 noundef zeroext %index, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [2 x i8], align 1
  %msgs = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg) #6
  %0 = getelementptr inbounds [2 x i8], ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %index, ptr %msg, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #6
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %idxprom = zext i8 %adap to i32
  %is_active = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %is_active, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %8 = lshr i8 %slave_addr, 1
  %conv1 = zext i8 %8 to i16
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %buf, align 4
  %adapter = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %idxprom, i32 2
  %call = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp6 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp6, i32 -5, i32 %call
  %ret.0 = select i1 %cmp, i32 0, i32 %spec.store.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_i2c_readbytes(i8 noundef zeroext %adap, i8 noundef zeroext %slave_addr, i8 noundef zeroext %index, ptr noundef %buff, i32 noundef %buff_len) local_unnamed_addr #0 align 64 {
entry:
  %mm1 = alloca [1 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mm1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #6
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %idxprom = zext i8 %adap to i32
  %is_active = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_active, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %arrayidx2 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %flags3 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %flags3, align 2
  %6 = lshr i8 %slave_addr, 1
  %conv4 = zext i8 %6 to i16
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv4, ptr %arrayidx2, align 4
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %msgs, align 4
  %9 = ptrtoint ptr %mm1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %index, ptr %mm1, align 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %conv10 = trunc i32 %buff_len to i16
  %len12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv10, ptr %len12, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mm1, ptr %buf, align 4
  %buf15 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %buf15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buff, ptr %buf15, align 4
  %adapter = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %idxprom, i32 2
  %call = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp21 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp21, i32 -5, i32 %call
  %ret.0 = select i1 %cmp, i32 0, i32 %spec.store.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mm1) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @viafb_find_i2c_adapter(i32 noundef %which) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %which, i32 2
  ret ptr %adapter
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_i2c_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @via_i2c_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_i2c_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @via_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_i2c_probe(ptr nocapture noundef readonly %platdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %platdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  store ptr %1, ptr @i2c_vdev, align 4
  %port_cfg = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_cfg, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %configs.021 = phi ptr [ %3, %entry ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.via_port_cfg, ptr %configs.021, i32 1
  %is_active = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 1
  %4 = ptrtoint ptr %is_active to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %is_active, align 2
  %5 = ptrtoint ptr %configs.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %configs.021, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %mode = getelementptr inbounds %struct.via_port_cfg, ptr %configs.021, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2.not = icmp eq i32 %8, 1
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %adapter = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 2
  %algo = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 3
  %setsda.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 3, i32 1
  %9 = ptrtoint ptr %setsda.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @via_i2c_setsda, ptr %setsda.i, align 4
  %setscl.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 3, i32 2
  %10 = ptrtoint ptr %setscl.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @via_i2c_setscl, ptr %setscl.i, align 8
  %getsda.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 3, i32 3
  %11 = ptrtoint ptr %getsda.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @via_i2c_getsda, ptr %getsda.i, align 4
  %getscl.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 3, i32 4
  %12 = ptrtoint ptr %getscl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @via_i2c_getscl, ptr %getscl.i, align 8
  %udelay.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 3, i32 7
  %13 = ptrtoint ptr %udelay.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %udelay.i, align 4
  %timeout.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 3, i32 8
  %14 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %timeout.i, align 8
  %15 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %configs.021, ptr %algo, align 8
  %name.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 2, i32 12
  %ioport_index.i = getelementptr inbounds %struct.via_port_cfg, ptr %configs.021, i32 0, i32 3
  %16 = ptrtoint ptr %ioport_index.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ioport_index.i, align 2
  %conv.i = zext i8 %17 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i) #6
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %adapter, align 8
  %class.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 2, i32 1
  %19 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %class.i, align 4
  %algo_data.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 2, i32 3
  %20 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %algo, ptr %algo_data.i, align 4
  %parent3.i = getelementptr [5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 %i.022, i32 2, i32 9, i32 1
  %21 = ptrtoint ptr %parent3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %parent3.i, align 8
  tail call void @via_i2c_setsda(ptr noundef %configs.021, i32 noundef 1) #6
  tail call void @via_i2c_setscl(ptr noundef %configs.021, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 4294960) #6
  %call4.i = tail call i32 @i2c_bit_add_bus(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp3 = icmp slt i32 %call4.i, 0
  br i1 %cmp3, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.022, i32 noundef %call4.i) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %is_active to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %is_active, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_i2c_remove(ptr nocapture noundef readnone %platdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_adapter(ptr noundef getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 0, i32 2)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i16, ptr getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 1, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.1 = icmp eq i16 %1, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_adapter(ptr noundef getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 1, i32 2)) #6
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %2 = load i16, ptr getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 2, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.2 = icmp eq i16 %2, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_adapter(ptr noundef getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 2, i32 2)) #6
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %3 = load i16, ptr getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 3, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.3 = icmp eq i16 %3, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_adapter(ptr noundef getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 3, i32 2)) #6
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %4 = load i16, ptr getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 4, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.4 = icmp eq i16 %4, 0
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_adapter(ptr noundef getelementptr inbounds ([5 x %struct.via_i2c_stuff], ptr @via_i2c_par, i32 0, i32 4, i32 2)) #6
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_i2c_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %0, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %io_port = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %io_port to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %io_port, align 4
  %ioport_index = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ioport_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %conv.i = zext i16 %2 to i32
  %add.i = or i32 %conv.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %4) #6, !srcloc !37
  %add4.i = add nuw nsw i32 %conv.i, -18874367
  %6 = inttoptr i32 %add4.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %8 = and i8 %7, -32
  %9 = or i8 %8, 16
  %val.0 = select i1 %tobool.not, i8 %8, i8 %9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end22 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = or i8 %val.0, 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = or i8 %val.0, 66
  br label %sw.epilog

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %sw.bb16, %sw.bb
  %val.1 = phi i8 [ %val.0, %do.end22 ], [ %14, %sw.bb16 ], [ %13, %sw.bb ]
  %15 = ptrtoint ptr %io_port to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %io_port, align 4
  %17 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ioport_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %conv.i36 = zext i16 %16 to i32
  %add.i37 = or i32 %conv.i36, -18874368
  %19 = inttoptr i32 %add.i37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %18) #6, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %add6.i = add nuw nsw i32 %conv.i36, -18874367
  %20 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %val.1) #6, !srcloc !37
  %21 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock27 = getelementptr inbounds %struct.viafb_dev, ptr %21, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock27, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_i2c_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %0, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %io_port = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %io_port to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %io_port, align 4
  %ioport_index = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ioport_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %conv.i = zext i16 %2 to i32
  %add.i = or i32 %conv.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %4) #6, !srcloc !37
  %add4.i = add nuw nsw i32 %conv.i, -18874367
  %6 = inttoptr i32 %add4.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %8 = and i8 %7, -48
  %9 = or i8 %8, 32
  %val.0 = select i1 %tobool.not, i8 %8, i8 %9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %11, label %do.end22 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = or i8 %val.0, 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = or i8 %val.0, -126
  br label %sw.epilog

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %sw.bb16, %sw.bb
  %val.1 = phi i8 [ %val.0, %do.end22 ], [ %14, %sw.bb16 ], [ %13, %sw.bb ]
  %15 = ptrtoint ptr %io_port to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %io_port, align 4
  %17 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ioport_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %conv.i36 = zext i16 %16 to i32
  %add.i37 = or i32 %conv.i36, -18874368
  %19 = inttoptr i32 %add.i37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %18) #6, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %add6.i = add nuw nsw i32 %conv.i36, -18874367
  %20 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %val.1) #6, !srcloc !37
  %21 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock27 = getelementptr inbounds %struct.viafb_dev, ptr %21, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock27, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_i2c_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %0, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp5 = icmp eq i32 %2, 2
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %io_port = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %io_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %io_port, align 4
  %ioport_index = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ioport_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %conv.i = zext i16 %4 to i32
  %add.i = or i32 %conv.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %6) #6, !srcloc !37
  %add4.i = add nuw nsw i32 %conv.i, -18874367
  %8 = inttoptr i32 %add4.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %and15.i = and i8 %9, -65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %and15.i) #6, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %io_port7 = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %io_port7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %io_port7, align 4
  %ioport_index8 = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %ioport_index8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ioport_index8, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %conv.i18 = zext i16 %11 to i32
  %add.i19 = or i32 %conv.i18, -18874368
  %14 = inttoptr i32 %add.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %13) #6, !srcloc !37
  %add4.i20 = add nuw nsw i32 %conv.i18, -18874367
  %15 = inttoptr i32 %add4.i20 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %17 = lshr i8 %16, 2
  %.lobit = and i8 %17, 1
  %18 = zext i8 %.lobit to i32
  %19 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock13 = getelementptr inbounds %struct.viafb_dev, ptr %19, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock13, i32 noundef %call2) #6
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_i2c_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %0, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp5 = icmp eq i32 %2, 2
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %io_port = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %io_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %io_port, align 4
  %ioport_index = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ioport_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %conv.i = zext i16 %4 to i32
  %add.i = or i32 %conv.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %6) #6, !srcloc !37
  %add4.i = add nuw nsw i32 %conv.i, -18874367
  %8 = inttoptr i32 %add4.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %and15.i = and i8 %9, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %and15.i) #6, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %io_port7 = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %io_port7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %io_port7, align 4
  %ioport_index8 = getelementptr inbounds %struct.via_port_cfg, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %ioport_index8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ioport_index8, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %conv.i18 = zext i16 %11 to i32
  %add.i19 = or i32 %conv.i18, -18874368
  %14 = inttoptr i32 %add.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %13) #6, !srcloc !37
  %add4.i20 = add nuw nsw i32 %conv.i18, -18874367
  %15 = inttoptr i32 %add4.i20 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %17 = lshr i8 %16, 3
  %.lobit = and i8 %17, 1
  %18 = zext i8 %.lobit to i32
  %19 = load ptr, ptr @i2c_vdev, align 4
  %reg_lock13 = getelementptr inbounds %struct.viafb_dev, ptr %19, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock13, i32 noundef %call2) #6
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_viafb_find_i2c_adapter, !1, !"__ksymtab_viafb_find_i2c_adapter", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 185, i32 1}
!2 = !{ptr @via_i2c_par, !3, !"via_i2c_par", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 20, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 267, i32 11}
!6 = !{ptr @via_i2c_driver, !7, !"via_i2c_driver", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 265, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 239, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @viafb_i2c_probe._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @viafb_i2c_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @i2c_vdev, !15, !"i2c_vdev", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 21, i32 26}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 201, i32 25}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 101, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @via_i2c_setsda._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @via_i2c_setsda._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/via/via_i2c.c", i32 43, i32 3}
!25 = !{ptr @via_i2c_setscl._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @via_i2c_setscl._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2154447878}
!37 = !{i64 4803229}
!38 = !{i64 4803624}
!39 = !{i64 2154448268}
!40 = !{i64 2154448644}
!41 = !{i64 2154448967}
!42 = !{i64 2154449460}
!43 = !{i64 2154449850}
!44 = !{i64 2154450085}
