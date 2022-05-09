; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/txc43128_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/txc43128_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ef4_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.txc43128_data = type { i32, i32, i32 }
%struct.falcon_nic_data = type { ptr, ptr, %struct.falcon_board, [49 x i64], i32, i8, %struct.timer_list, %struct.falcon_spi_device, %struct.falcon_spi_device, %struct.mutex, %struct.mutex, i8 }
%struct.falcon_board = type { ptr, i32, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.falcon_spi_device = type { i32, i32, i32, i8, i8, i32, i32 }
%struct.falcon_board_type = type { i8, ptr, ptr, ptr, ptr, ptr }

@falcon_txc_phy_ops = dso_local constant { %struct.ef4_phy_operations, [40 x i8] } { %struct.ef4_phy_operations { ptr @txc43128_phy_probe, ptr @txc43128_phy_init, ptr @txc43128_phy_fini, ptr @txc43128_phy_remove, ptr @txc43128_phy_reconfigure, ptr @txc43128_phy_poll, ptr @txc43128_get_link_ksettings, ptr @ef4_mdio_set_link_ksettings, ptr null, ptr @ef4_mdio_test_alive, ptr @txc43128_test_name, ptr @txc43128_run_tests, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TXC43128: reset timed out!\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TXC43128: BIST error. Lane %d had %d errs\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TXC43128: BIST error. Lane %d got 0 frames\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TXC43128: BIST pass\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TXC43128 Logic reset timed out!\0A\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bist\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"falcon_txc_phy_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 546, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 200, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 245, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 251, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 258, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 425, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [50 x i8] c"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 513, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @falcon_txc_phy_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_txc_phy_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @falcon_txc_set_gpio_val(ptr noundef %efx, i32 noundef %pin, i32 noundef %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %pin
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %0 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %1, i32 noundef 4, i16 noundef zeroext -15546, i32 noundef %shl, i1 noundef zeroext %tobool) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @falcon_txc_set_gpio_dir(ptr noundef %efx, i32 noundef %pin, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %pin
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool = icmp ne i32 %dir, 0
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %0 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %1, i32 noundef 4, i16 noundef zeroext -15544, i32 noundef %shl, i1 noundef zeroext %tobool) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txc43128_phy_probe(ptr nocapture noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %phy_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %1 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %phy_data1, align 4
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 16
  %phy_mode2 = getelementptr inbounds %struct.txc43128_data, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %phy_mode2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %phy_mode2, align 4
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %5 = ptrtoint ptr %mmds to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 26, ptr %mmds, align 4
  %mode_support = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 2
  %6 = ptrtoint ptr %mode_support to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %mode_support, align 8
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %7 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 67305528, ptr %loopback_modes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txc43128_phy_init(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ef4_mdio_reset_mmd(ptr noundef %efx, i32 noundef 1, i32 noundef 50, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.body.i_crit_edge, label %if.end.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @ef4_mdio_check_mmds(ptr noundef %efx, i32 noundef 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.do.body.i_crit_edge, label %if.end

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %rc.0.i = phi i32 [ %call.i, %entry.do.body.i_crit_edge ], [ %call1.i, %if.end.i.do.body.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then5.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = tail call fastcc i32 @txc_bist(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @txc_apply_defaults(ptr noundef %efx)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then5.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ], [ %rc.0.i, %if.then5.i ], [ %rc.0.i, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @txc43128_phy_fini(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_write.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28670, i16 noundef zeroext 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @txc43128_phy_remove(ptr nocapture noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %phy_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txc43128_phy_reconfigure(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 4
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 16
  %phy_mode2 = getelementptr inbounds %struct.txc43128_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy_mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_mode2, align 4
  %xor = xor i32 %5, %3
  %loopback_mode = getelementptr inbounds %struct.txc43128_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %7
  %loopback_mode3 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %8 = ptrtoint ptr %loopback_mode3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %loopback_mode3, align 4
  %shl4 = shl nuw i32 1, %9
  %xor5 = xor i32 %shl4, %shl
  %and = and i32 %xor5, 67305472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %3, 1
  %and9 = and i32 %and8, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @ef4_mdio_reset_mmd(ptr noundef %efx, i32 noundef 1, i32 noundef 50, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.do.body.i_crit_edge, label %if.end.i

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @ef4_mdio_check_mmds(ptr noundef %efx, i32 noundef 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.txc_reset_phy.exit_crit_edge

if.end.i.txc_reset_phy.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txc_reset_phy.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.txc_reset_phy.exit_crit_edge, label %if.then5.i

do.body.i.txc_reset_phy.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txc_reset_phy.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %12 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str) #9
  br label %txc_reset_phy.exit

txc_reset_phy.exit:                               ; preds = %if.then5.i, %do.body.i.txc_reset_phy.exit_crit_edge, %if.end.i.txc_reset_phy.exit_crit_edge
  tail call fastcc void @txc_apply_defaults(ptr noundef %efx)
  %call11 = tail call i32 @falcon_reset_xaui(ptr noundef %efx) #5
  %and12 = and i32 %xor, -2
  br label %if.end

if.end:                                           ; preds = %txc_reset_phy.exit, %entry.if.end_crit_edge
  %mode_change.0 = phi i32 [ %and12, %txc_reset_phy.exit ], [ %xor, %entry.if.end_crit_edge ]
  tail call void @ef4_mdio_transmit_disable(ptr noundef %efx) #5
  tail call void @ef4_mdio_phy_reconfigure(ptr noundef %efx) #5
  %and13 = and i32 %mode_change.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end16.thread

if.end16.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_mode, align 16
  %and.i43 = lshr i32 %15, 1
  %and.lobit.i = and i32 %and.i43, 1
  tail call void @ef4_mdio_set_mmds_lpower(ptr noundef %efx, i32 noundef %and.lobit.i, i32 noundef 26) #5
  %mdio.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %16 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i.i.i, align 8
  %net_dev.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %18 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i.i.i, align 4
  %20 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i.i.i, align 8
  %call.i.i.i = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef 3, i16 noundef zeroext -16380) #5
  %22 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_mode, align 16
  %and.i.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and1.i.i = and i32 %call.i.i.i, 65439
  %masksel.i.i = select i1 %tobool.not.i.i, i32 0, i32 96
  %ctl.0.i.i = or i32 %masksel.i.i, %and1.i.i
  %mdio_write.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %24 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i.i.i, align 4
  %26 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev.i.i.i, align 4
  %28 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio.i.i.i, align 8
  %conv2.i.i.i = trunc i32 %ctl.0.i.i to i16
  %call.i10.i.i = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 3, i16 noundef zeroext -16380, i16 noundef zeroext %conv2.i.i.i) #5
  %30 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_read.i.i.i, align 8
  %32 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev.i.i.i, align 4
  %34 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mdio.i.i.i, align 8
  %call.i.i10.i = tail call i32 %31(ptr noundef %33, i32 noundef %35, i32 noundef 4, i16 noundef zeroext -16380) #5
  %36 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_mode, align 16
  %and.i12.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  %and1.i14.i = and i32 %call.i.i10.i, 65439
  %masksel.i15.i = select i1 %tobool.not.i13.i, i32 0, i32 96
  %ctl.0.i16.i = or i32 %masksel.i15.i, %and1.i14.i
  %38 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdio_write.i.i.i, align 4
  %40 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev.i.i.i, align 4
  %42 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mdio.i.i.i, align 8
  %conv2.i.i18.i = trunc i32 %ctl.0.i16.i to i16
  %call.i10.i19.i = tail call i32 %39(ptr noundef %41, i32 noundef %43, i32 noundef 4, i16 noundef zeroext -16380, i16 noundef zeroext %conv2.i.i18.i) #5
  %44 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdio_read.i.i.i, align 8
  %46 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev.i.i.i, align 4
  %48 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mdio.i.i.i, align 8
  %call.i.i23.i = tail call i32 %45(ptr noundef %47, i32 noundef %49, i32 noundef 1, i16 noundef zeroext -16320) #5
  %50 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdio_read.i.i.i, align 8
  %52 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net_dev.i.i.i, align 4
  %54 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mdio.i.i.i, align 8
  %call.i22.i.i = tail call i32 %51(ptr noundef %53, i32 noundef %55, i32 noundef 1, i16 noundef zeroext -16315) #5
  %56 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phy_mode, align 16
  %and.i25.i = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.not.i26.i = icmp eq i32 %and.i25.i, 0
  %and2.i.i = and i32 %call.i.i23.i, 4095
  %and4.i.i = and i32 %call.i22.i.i, 4095
  %masksel.i27.i = select i1 %tobool.not.i26.i, i32 0, i32 61440
  %txctl.0.i.i = or i32 %masksel.i27.i, %and2.i.i
  %rxctl.0.i.i = or i32 %masksel.i27.i, %and4.i.i
  %58 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mdio_write.i.i.i, align 4
  %60 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev.i.i.i, align 4
  %62 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mdio.i.i.i, align 8
  %conv2.i.i29.i = trunc i32 %txctl.0.i.i to i16
  %call.i25.i.i = tail call i32 %59(ptr noundef %61, i32 noundef %63, i32 noundef 1, i16 noundef zeroext -16320, i16 noundef zeroext %conv2.i.i29.i) #5
  %64 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mdio_write.i.i.i, align 4
  %66 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev.i.i.i, align 4
  %68 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mdio.i.i.i, align 8
  %conv2.i29.i.i = trunc i32 %rxctl.0.i.i to i16
  %call.i30.i.i = tail call i32 %65(ptr noundef %67, i32 noundef %69, i32 noundef 1, i16 noundef zeroext -16315, i16 noundef zeroext %conv2.i29.i.i) #5
  %70 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdio_read.i.i.i, align 8
  %72 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %net_dev.i.i.i, align 4
  %74 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mdio.i.i.i, align 8
  %call.i.i33.i = tail call i32 %71(ptr noundef %73, i32 noundef %75, i32 noundef 4, i16 noundef zeroext -16320) #5
  %76 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mdio_read.i.i.i, align 8
  %78 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net_dev.i.i.i, align 4
  %80 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mdio.i.i.i, align 8
  %call.i22.i34.i = tail call i32 %77(ptr noundef %79, i32 noundef %81, i32 noundef 4, i16 noundef zeroext -16315) #5
  %82 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %phy_mode, align 16
  %and.i36.i = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool.not.i37.i = icmp eq i32 %and.i36.i, 0
  %and2.i38.i = and i32 %call.i.i33.i, 4095
  %and4.i39.i = and i32 %call.i22.i34.i, 4095
  %masksel.i40.i = select i1 %tobool.not.i37.i, i32 0, i32 61440
  %txctl.0.i41.i = or i32 %masksel.i40.i, %and2.i38.i
  %rxctl.0.i42.i = or i32 %masksel.i40.i, %and4.i39.i
  %84 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mdio_write.i.i.i, align 4
  %86 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net_dev.i.i.i, align 4
  %88 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mdio.i.i.i, align 8
  %conv2.i.i44.i = trunc i32 %txctl.0.i41.i to i16
  %call.i25.i45.i = tail call i32 %85(ptr noundef %87, i32 noundef %89, i32 noundef 4, i16 noundef zeroext -16320, i16 noundef zeroext %conv2.i.i44.i) #5
  %90 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mdio_write.i.i.i, align 4
  %92 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net_dev.i.i.i, align 4
  %94 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mdio.i.i.i, align 8
  %conv2.i29.i46.i = trunc i32 %rxctl.0.i42.i to i16
  %call.i30.i47.i = tail call i32 %91(ptr noundef %93, i32 noundef %95, i32 noundef 4, i16 noundef zeroext -16315, i16 noundef zeroext %conv2.i29.i46.i) #5
  br label %if.then19

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_change.0)
  %tobool18.not = icmp eq i32 %mode_change.0, 0
  %or.cond = select i1 %tobool.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.end16.if.end20_crit_edge, label %if.end16.if.then19_crit_edge

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end16.if.then19_crit_edge, %if.end16.thread
  %mdio.i.i.i44 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i.i45 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %96 = ptrtoint ptr %mdio_read.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mdio_read.i.i.i45, align 8
  %net_dev.i.i.i46 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %98 = ptrtoint ptr %net_dev.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %net_dev.i.i.i46, align 4
  %100 = ptrtoint ptr %mdio.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mdio.i.i.i44, align 8
  %call.i.i.i47 = tail call i32 %97(ptr noundef %99, i32 noundef %101, i32 noundef 3, i16 noundef zeroext -16380) #5
  %mdio_write.i.i.i48 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %102 = ptrtoint ptr %mdio_write.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mdio_write.i.i.i48, align 4
  %104 = ptrtoint ptr %net_dev.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %net_dev.i.i.i46, align 4
  %106 = ptrtoint ptr %mdio.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mdio.i.i.i44, align 8
  %108 = trunc i32 %call.i.i.i47 to i16
  %conv2.i.i.i49 = or i16 %108, 16384
  %call.i3.i.i = tail call i32 %103(ptr noundef %105, i32 noundef %107, i32 noundef 3, i16 noundef zeroext -16380, i16 noundef zeroext %conv2.i.i.i49) #5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then19
  %dec8.i.i = phi i32 [ 49, %if.then19 ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %109 = ptrtoint ptr %mdio_read.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mdio_read.i.i.i45, align 8
  %111 = ptrtoint ptr %net_dev.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %net_dev.i.i.i46, align 4
  %113 = ptrtoint ptr %mdio.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mdio.i.i.i44, align 8
  %call.i7.i.i = tail call i32 %110(ptr noundef %112, i32 noundef %114, i32 noundef 3, i16 noundef zeroext -16380) #5
  %and.i.i50 = and i32 %call.i7.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool2.not.i.i = icmp eq i32 %and.i.i50, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i.if.end20_crit_edge, label %if.end.i.i

while.body.i.i.if.end20_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748) #5
  %dec.i.i = add nsw i32 %dec8.i.i, -1
  %tobool.not.i.i51 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i51, label %do.body.critedge.i.i, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

do.body.critedge.i.i:                             ; preds = %if.end.i.i
  %msg_enable.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %116 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msg_enable.i.i, align 8
  %and5.i.i = and i32 %117, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.body.critedge.i.i.if.end20_crit_edge, label %if.then7.i.i

do.body.critedge.i.i.if.end20_crit_edge:          ; preds = %do.body.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then7.i.i:                                     ; preds = %do.body.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %net_dev.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %net_dev.i.i.i46, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %119, ptr noundef nonnull @.str.4) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then7.i.i, %do.body.critedge.i.i.if.end20_crit_edge, %while.body.i.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %120 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %phy_mode, align 16
  %122 = ptrtoint ptr %phy_mode2 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %phy_mode2, align 4
  %123 = ptrtoint ptr %loopback_mode3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %loopback_mode3, align 4
  %125 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %loopback_mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @txc43128_phy_poll(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 4
  %link_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_state, align 8, !range !25
  %call.i = tail call zeroext i1 @ef4_mdio_links_ok(ptr noundef %efx, i32 noundef 26) #5
  %frombool3 = zext i1 %call.i to i8
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool3, ptr %link_state, align 8
  %speed = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 3
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10000, ptr %speed, align 4
  %fd = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 1
  %6 = ptrtoint ptr %fd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fd, align 1
  %wanted_fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %7 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wanted_fc, align 8
  %fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 2
  %9 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %fc, align 2
  br i1 %call.i, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %10 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %loopback_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %1, align 4
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %add.neg = add i32 %14, -500
  %sub = sub i32 %add.neg, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp11 = icmp sgt i32 %sub, -1
  br i1 %cmp11, label %if.then12, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %1, align 4
  %mdio.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %19 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdio_read.i.i.i, align 8
  %net_dev.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %21 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i.i.i, align 4
  %23 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mdio.i.i.i, align 8
  %call.i.i.i = tail call i32 %20(ptr noundef %22, i32 noundef %24, i32 noundef 3, i16 noundef zeroext -16380) #5
  %mdio_write.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %25 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_write.i.i.i, align 4
  %27 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev.i.i.i, align 4
  %29 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdio.i.i.i, align 8
  %31 = trunc i32 %call.i.i.i to i16
  %conv2.i.i.i = or i16 %31, 16384
  %call.i3.i.i = tail call i32 %26(ptr noundef %28, i32 noundef %30, i32 noundef 3, i16 noundef zeroext -16380, i16 noundef zeroext %conv2.i.i.i) #5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then12
  %dec8.i.i = phi i32 [ 49, %if.then12 ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio_read.i.i.i, align 8
  %34 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev.i.i.i, align 4
  %36 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mdio.i.i.i, align 8
  %call.i7.i.i = tail call i32 %33(ptr noundef %35, i32 noundef %37, i32 noundef 3, i16 noundef zeroext -16380) #5
  %and.i.i = and i32 %call.i7.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i.if.end14_crit_edge, label %if.end.i.i

while.body.i.i.if.end14_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #5
  %dec.i.i = add nsw i32 %dec8.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.critedge.i.i, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

do.body.critedge.i.i:                             ; preds = %if.end.i.i
  %msg_enable.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %39 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i.i, align 8
  %and5.i.i = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.body.critedge.i.i.if.end14_crit_edge, label %if.then7.i.i

do.body.critedge.i.i.if.end14_crit_edge:          ; preds = %do.body.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then7.i.i:                                     ; preds = %do.body.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %42, ptr noundef nonnull @.str.4) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then7.i.i, %do.body.critedge.i.i.if.end14_crit_edge, %while.body.i.i.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.then
  %43 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %link_state, align 8, !range !25
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %3)
  %cmp20 = icmp ne i8 %44, %3
  ret i1 %cmp20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @txc43128_get_link_ksettings(ptr noundef %efx, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  tail call void @mdio45_ethtool_ksettings_get_npage(ptr noundef %mdio, ptr noundef %cmd, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_test_alive(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @txc43128_test_name(ptr nocapture noundef readnone %efx, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  %.str.5. = select i1 %cmp, ptr @.str.5, ptr null
  ret ptr %.str.5.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txc43128_run_tests(ptr noundef %efx, ptr nocapture noundef writeonly %results, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @ef4_mdio_reset_mmd(ptr noundef %efx, i32 noundef 1, i32 noundef 50, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.body.i_crit_edge, label %if.end.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @ef4_mdio_check_mmds(ptr noundef %efx, i32 noundef 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.do.body.i_crit_edge, label %if.end2

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %rc.0.i = phi i32 [ %call.i, %if.end.do.body.i_crit_edge ], [ %call1.i, %if.end.i.do.body.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then5.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end2:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call fastcc i32 @txc_bist(ptr noundef %efx)
  tail call fastcc void @txc_apply_defaults(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %cond = select i1 %tobool4.not, i32 1, i32 -1
  %4 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %results, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then5.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ %rc.0.i, %if.then5.i ], [ %rc.0.i, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_set_flag(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @txc_bist(ptr nocapture noundef readonly %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 8
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 3, i16 noundef zeroext -15537) #5
  %mdio_write.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i.i, align 4
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i.i, align 8
  %12 = trunc i32 %call.i.i to i16
  %conv2.i.i = or i16 %12, 1024
  %call.i3.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 3, i16 noundef zeroext -15537, i16 noundef zeroext %conv2.i.i) #5
  %13 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio_write.i.i, align 4
  %15 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev.i.i, align 4
  %17 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdio.i.i, align 8
  %call.i7.i = tail call i32 %14(ptr noundef %16, i32 noundef %18, i32 noundef 3, i16 noundef zeroext -15744, i16 noundef zeroext 0) #5
  %19 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdio_write.i.i, align 4
  %21 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i.i, align 4
  %23 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mdio.i.i, align 8
  %call.i11.i = tail call i32 %20(ptr noundef %22, i32 noundef %24, i32 noundef 3, i16 noundef zeroext -15744, i16 noundef zeroext 8192) #5
  %25 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_write.i.i, align 4
  %27 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev.i.i, align 4
  %29 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdio.i.i, align 8
  %call.i15.i = tail call i32 %26(ptr noundef %28, i32 noundef %30, i32 noundef 3, i16 noundef zeroext -15744, i16 noundef zeroext -24576) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 10737400) #5
  %32 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio_write.i.i, align 4
  %34 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev.i.i, align 4
  %36 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mdio.i.i, align 8
  %call.i19.i = tail call i32 %33(ptr noundef %35, i32 noundef %37, i32 noundef 3, i16 noundef zeroext -15744, i16 noundef zeroext 24576) #5
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %while.body.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  br label %for.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %38 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdio_read.i.i, align 8
  %40 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev.i.i, align 4
  %42 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mdio.i.i, align 8
  %call.i23.i = tail call i32 %39(ptr noundef %41, i32 noundef %43, i32 noundef 3, i16 noundef zeroext -15744) #5
  %and.i = and i32 %call.i23.i, 16384
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %for.cond.preheader.i
  %rc.044.i = phi i32 [ 0, %for.cond.preheader.i ], [ %rc.2.i, %if.end24.i.for.body.i_crit_edge ]
  %lane.042.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdio_read.i.i, align 8
  %46 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev.i.i, align 4
  %48 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mdio.i.i, align 8
  %50 = trunc i32 %lane.042.i to i16
  %conv.i.i = add i16 %50, -15738
  %call.i27.i = tail call i32 %45(ptr noundef %47, i32 noundef %49, i32 noundef 3, i16 noundef zeroext %conv.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp6.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %cmp6.not.i, label %for.body.i.if.end10.i_crit_edge, label %do.body.i

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

do.body.i:                                        ; preds = %for.body.i
  %51 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable.i, align 8
  %and7.i = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %do.body.i.if.end10.i_crit_edge, label %if.then9.i

do.body.i.if.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.1, i32 noundef %lane.042.i, i32 noundef %call.i27.i) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %do.body.i.if.end10.i_crit_edge, %for.body.i.if.end10.i_crit_edge
  %rc.1.i = phi i32 [ %rc.044.i, %for.body.i.if.end10.i_crit_edge ], [ -5, %if.then9.i ], [ -5, %do.body.i.if.end10.i_crit_edge ]
  %55 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdio_read.i.i, align 8
  %57 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev.i.i, align 4
  %59 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mdio.i.i, align 8
  %conv.i31.i = add i16 %50, -15742
  %call.i32.i = tail call i32 %56(ptr noundef %58, i32 noundef %60, i32 noundef 3, i16 noundef zeroext %conv.i31.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp13.i = icmp eq i32 %call.i32.i, 0
  br i1 %cmp13.i, label %do.body15.i, label %if.end10.i.if.end24.i_crit_edge

if.end10.i.if.end24.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.body15.i:                                      ; preds = %if.end10.i
  %61 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable.i, align 8
  %and17.i = and i32 %62, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body15.i.if.end24.i_crit_edge, label %if.then19.i

do.body15.i.if.end24.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then19.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.2, i32 noundef %lane.042.i) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %do.body15.i.if.end24.i_crit_edge, %if.end10.i.if.end24.i_crit_edge
  %rc.2.i = phi i32 [ %rc.1.i, %if.end10.i.if.end24.i_crit_edge ], [ -5, %if.then19.i ], [ -5, %do.body15.i.if.end24.i_crit_edge ]
  %inc.i = add nuw nsw i32 %lane.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %cmp25.i = icmp eq i32 %rc.2.i, 0
  br i1 %cmp25.i, label %do.body27.i, label %for.end.i.txc_bist_one.exit_crit_edge

for.end.i.txc_bist_one.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txc_bist_one.exit

do.body27.i:                                      ; preds = %for.end.i
  %65 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable.i, align 8
  %and29.i = and i32 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body27.i.txc_bist_one.exit_crit_edge, label %if.then31.i

do.body27.i.txc_bist_one.exit_crit_edge:          ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txc_bist_one.exit

if.then31.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %68, ptr noundef nonnull @.str.3) #9
  br label %txc_bist_one.exit

txc_bist_one.exit:                                ; preds = %if.then31.i, %do.body27.i.txc_bist_one.exit_crit_edge, %for.end.i.txc_bist_one.exit_crit_edge
  %69 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdio_write.i.i, align 4
  %71 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev.i.i, align 4
  %73 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mdio.i.i, align 8
  %call.i36.i = tail call i32 %70(ptr noundef %72, i32 noundef %74, i32 noundef 3, i16 noundef zeroext -15744, i16 noundef zeroext 0) #5
  %75 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mdio_write.i.i, align 4
  %77 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net_dev.i.i, align 4
  %79 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mdio.i.i, align 8
  %conv2.i40.i = and i16 %12, -1025
  %call.i41.i = tail call i32 %76(ptr noundef %78, i32 noundef %80, i32 noundef 3, i16 noundef zeroext -15537, i16 noundef zeroext %conv2.i40.i) #5
  ret i32 %rc.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txc_apply_defaults(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_write.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 4, i16 noundef zeroext -16317, i16 noundef zeroext 0) #5
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 8
  %call.i18 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 4, i16 noundef zeroext -16316, i16 noundef zeroext 0) #5
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev.i, align 4
  %16 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mdio.i, align 8
  %call.i22 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 4, i16 noundef zeroext -16319, i16 noundef zeroext -14136) #5
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev.i, align 4
  %22 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mdio.i, align 8
  %call.i26 = tail call i32 %19(ptr noundef %21, i32 noundef %23, i32 noundef 4, i16 noundef zeroext -16318, i16 noundef zeroext -14136) #5
  %24 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i, align 4
  %26 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev.i, align 4
  %28 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio.i, align 8
  %call.i30 = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 1, i16 noundef zeroext -16317, i16 noundef zeroext 4112) #5
  %30 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i, align 4
  %32 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev.i, align 4
  %34 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mdio.i, align 8
  %call.i34 = tail call i32 %31(ptr noundef %33, i32 noundef %35, i32 noundef 1, i16 noundef zeroext -16316, i16 noundef zeroext 4112) #5
  %36 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_write.i, align 4
  %38 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev.i, align 4
  %40 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mdio.i, align 8
  %call.i38 = tail call i32 %37(ptr noundef %39, i32 noundef %41, i32 noundef 1, i16 noundef zeroext -16319, i16 noundef zeroext 24672) #5
  %42 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdio_write.i, align 4
  %44 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev.i, align 4
  %46 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mdio.i, align 8
  %call.i42 = tail call i32 %43(ptr noundef %45, i32 noundef %47, i32 noundef 1, i16 noundef zeroext -16318, i16 noundef zeroext 24672) #5
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %48 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdio_read.i, align 8
  %50 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev.i, align 4
  %52 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mdio.i, align 8
  %call.i45 = tail call i32 %49(ptr noundef %51, i32 noundef %53, i32 noundef 4, i16 noundef zeroext -15552) #5
  %54 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdio_write.i, align 4
  %56 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev.i, align 4
  %58 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mdio.i, align 8
  %60 = trunc i32 %call.i45 to i16
  %conv2.i = and i16 %60, -24577
  %call.i49 = tail call i32 %55(ptr noundef %57, i32 noundef %59, i32 noundef 4, i16 noundef zeroext -15552, i16 noundef zeroext %conv2.i) #5
  %61 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdio_read.i, align 8
  %63 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net_dev.i, align 4
  %65 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mdio.i, align 8
  %call.i.i.i = tail call i32 %62(ptr noundef %64, i32 noundef %66, i32 noundef 3, i16 noundef zeroext -16380) #5
  %67 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdio_write.i, align 4
  %69 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_dev.i, align 4
  %71 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mdio.i, align 8
  %73 = trunc i32 %call.i.i.i to i16
  %conv2.i.i.i = or i16 %73, 16384
  %call.i3.i.i = tail call i32 %68(ptr noundef %70, i32 noundef %72, i32 noundef 3, i16 noundef zeroext -16380, i16 noundef zeroext %conv2.i.i.i) #5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry
  %dec8.i.i = phi i32 [ 49, %entry ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %74 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mdio_read.i, align 8
  %76 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net_dev.i, align 4
  %78 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mdio.i, align 8
  %call.i7.i.i = tail call i32 %75(ptr noundef %77, i32 noundef %79, i32 noundef 3, i16 noundef zeroext -16380) #5
  %and.i.i = and i32 %call.i7.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %while.body.i.i.txc_reset_logic.exit_crit_edge, label %if.end.i.i

while.body.i.i.txc_reset_logic.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txc_reset_logic.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748) #5
  %dec.i.i = add nsw i32 %dec8.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.critedge.i.i, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

do.body.critedge.i.i:                             ; preds = %if.end.i.i
  %msg_enable.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %81 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable.i.i, align 8
  %and5.i.i = and i32 %82, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.body.critedge.i.i.txc_reset_logic.exit_crit_edge, label %if.then7.i.i

do.body.critedge.i.i.txc_reset_logic.exit_crit_edge: ; preds = %do.body.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %txc_reset_logic.exit

if.then7.i.i:                                     ; preds = %do.body.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %84, ptr noundef nonnull @.str.4) #9
  br label %txc_reset_logic.exit

txc_reset_logic.exit:                             ; preds = %if.then7.i.i, %do.body.critedge.i.i.txc_reset_logic.exit_crit_edge, %while.body.i.i.txc_reset_logic.exit_crit_edge
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %85 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nic_data.i, align 4
  %board.i = getelementptr inbounds %struct.falcon_nic_data, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %board.i, align 8
  %init_phy = getelementptr inbounds %struct.falcon_board_type, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %init_phy to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_phy, align 4
  tail call void %90(ptr noundef %efx) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_reset_mmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_check_mmds(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_reset_xaui(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_transmit_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_phy_reconfigure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_set_mmds_lpower(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ef4_mdio_links_ok(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio45_ethtool_ksettings_get_npage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @falcon_txc_phy_ops, !1, !"falcon_txc_phy_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 546, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 200, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 245, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 251, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 258, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 425, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 513, i32 2}
!14 = distinct !{null, !15, !"txc43128_test_names", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/falcon/txc43128_phy.c", i32 512, i32 26}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
