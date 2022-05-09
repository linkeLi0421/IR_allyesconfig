; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/tenxpress.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/tenxpress.c"
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
%struct.tenxpress_phy_data = type { i32, i32, i32 }
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
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }

@falcon_sfx7101_phy_ops = dso_local constant { %struct.ef4_phy_operations, [40 x i8] } { %struct.ef4_phy_operations { ptr @tenxpress_phy_probe, ptr @tenxpress_phy_init, ptr @sfx7101_phy_fini, ptr @tenxpress_phy_remove, ptr @tenxpress_phy_reconfigure, ptr @tenxpress_phy_poll, ptr @tenxpress_get_link_ksettings, ptr @tenxpress_set_link_ksettings, ptr @sfx7101_set_npage_adv, ptr @ef4_mdio_test_alive, ptr @sfx7101_test_name, ptr @sfx7101_run_tests, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"appears to be plugged into a port that is not 10GBASE-T capable. The PHY supports 10GBASE-T ONLY, so no link can be established\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bist\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [23 x i8] c"falcon_sfx7101_phy_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 478, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 285, i32 4 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [47 x i8] c"../drivers/net/ethernet/sfc/falcon/tenxpress.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 412, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @falcon_sfx7101_phy_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_sfx7101_phy_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tenxpress_set_id_led(ptr nocapture noundef readonly %efx, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %switch.selectcmp2 = icmp eq i32 %mode, 0
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
  %6 = select i1 %switch.selectcmp, i16 81, i16 128
  %conv2.i = select i1 %switch.selectcmp2, i16 162, i16 %6
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16375, i16 noundef zeroext %conv2.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tenxpress_phy_probe(ptr nocapture noundef %efx) #0 align 64 {
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
  %phy_mode2 = getelementptr inbounds %struct.tenxpress_phy_data, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %phy_mode2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %phy_mode2, align 4
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %5 = ptrtoint ptr %mmds to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 154, ptr %mmds, align 4
  %mode_support = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 2
  %6 = ptrtoint ptr %mode_support to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %mode_support, align 8
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %7 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 67338296, ptr %loopback_modes, align 8
  %link_advertising = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 80
  %8 = ptrtoint ptr %link_advertising to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4288, ptr %link_advertising, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tenxpress_phy_init(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %board.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board.i, align 8
  %init_phy = getelementptr inbounds %struct.falcon_board_type, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %init_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_phy, align 4
  tail call void %5(ptr noundef %efx) #5
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %6 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_mode, align 16
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ef4_mdio_wait_reset_mmds(ptr noundef %efx, i32 noundef 154) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @ef4_mdio_check_mmds(ptr noundef %efx, i32 noundef 154) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_write.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %8 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_write.i.i, align 4
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev.i.i, align 4
  %12 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 3, i16 noundef zeroext -10233, i16 noundef zeroext 8) #5
  %14 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdio.i.i, align 8
  %call.i2.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i.i, i32 noundef %15, i32 noundef 1, i16 noundef zeroext -16377, i32 noundef 8, i1 noundef zeroext true) #5
  %16 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_write.i.i, align 4
  %18 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i.i, align 4
  %20 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i.i, align 8
  %call.i6.i = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef 1, i16 noundef zeroext -16375, i16 noundef zeroext 128) #5
  %wanted_fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %22 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wanted_fc, align 8
  tail call void @ef4_link_set_wanted_fc(ptr noundef %efx, i8 noundef zeroext %23) #5
  tail call void @ef4_mdio_an_reconfigure(ptr noundef %efx) #5
  %call12 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 20) #5
  %call13 = tail call i32 @falcon_reset_xaui(ptr noundef %efx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %if.then.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfx7101_phy_fini(ptr nocapture noundef readonly %efx) #0 align 64 {
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
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16384, i16 noundef zeroext 256) #5
  %call = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 20) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tenxpress_phy_remove(ptr nocapture noundef %efx) #0 align 64 {
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
define internal i32 @tenxpress_phy_reconfigure(ptr noundef %efx) #0 align 64 {
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
  %and = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %phy_mode5 = getelementptr inbounds %struct.tenxpress_phy_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy_mode5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_mode5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp ne i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %6 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %cmp6, %land.rhs ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %shl = shl nuw i32 1, %8
  %conv = sext i32 %shl to i64
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %9 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %loopback_modes, align 8
  %and8 = and i64 %10, -66600960
  %and9 = and i64 %and8, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %land.end.lor.rhs_crit_edge, label %land.lhs.true

land.end.lor.rhs_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %land.end
  %loopback_mode11 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %11 = ptrtoint ptr %loopback_mode11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %loopback_mode11, align 4
  %shl12 = shl nuw i32 1, %12
  %conv13 = sext i32 %shl12 to i64
  %and17 = and i64 %and8, %conv13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.then31_crit_edge, label %land.lhs.true.lor.rhs_crit_edge

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %land.end.lor.rhs_crit_edge
  %loopback_mode21 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %13 = ptrtoint ptr %loopback_mode21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %loopback_mode21, align 4
  %shl22 = shl nuw i32 1, %14
  %xor = xor i32 %shl22, %shl
  %and23 = and i32 %xor, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24 = icmp ne i32 %and23, 0
  %brmerge = select i1 %tobool24, i1 true, i1 %6
  br i1 %brmerge, label %lor.rhs.if.then31_crit_edge, label %lor.rhs.if.end33_crit_edge

lor.rhs.if.end33_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

lor.rhs.if.then31_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

if.then31:                                        ; preds = %lor.rhs.if.then31_crit_edge, %land.lhs.true.if.then31_crit_edge
  %call = tail call fastcc i32 @tenxpress_special_reset(ptr noundef %efx)
  %call32 = tail call i32 @falcon_reset_xaui(ptr noundef %efx) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %lor.rhs.if.end33_crit_edge
  %15 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_mode, align 16
  %and.i = lshr i32 %16, 1
  %and.lobit.i = and i32 %and.i, 1
  tail call void @ef4_mdio_set_mmds_lpower(ptr noundef %efx, i32 noundef %and.lobit.i, i32 noundef 154) #5
  tail call void @ef4_mdio_transmit_disable(ptr noundef %efx) #5
  tail call void @ef4_mdio_phy_reconfigure(ptr noundef %efx) #5
  %loopback_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %17 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %loopback_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %18)
  %cmp.i = icmp eq i32 %18, 15
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %19 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i.i, i32 noundef %20, i32 noundef 4, i16 noundef zeroext -16374, i32 noundef 256, i1 noundef zeroext %cmp.i) #5
  tail call void @ef4_mdio_an_reconfigure(ptr noundef %efx) #5
  %21 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %loopback_mode.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %1, align 4
  %24 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_mode, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %25, %if.end33 ], [ %3, %entry.cleanup_crit_edge ]
  %phy_mode37 = getelementptr inbounds %struct.tenxpress_phy_data, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %phy_mode37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %phy_mode37, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tenxpress_phy_poll(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %link_state, align 8
  %old_state.sroa.0.0.extract.shift = lshr i64 %1, 56
  %old_state.sroa.0.0.extract.trunc = trunc i64 %old_state.sroa.0.0.extract.shift to i8
  %old_state.sroa.5.0.extract.shift = lshr i64 %1, 48
  %old_state.sroa.5.0.extract.trunc = trunc i64 %old_state.sroa.5.0.extract.shift to i8
  %old_state.sroa.6.0.extract.shift = lshr i64 %1, 40
  %old_state.sroa.6.0.extract.trunc = trunc i64 %old_state.sroa.6.0.extract.shift to i8
  %old_state.sroa.720.0.extract.trunc = trunc i64 %1 to i32
  %call.i = tail call zeroext i1 @ef4_mdio_links_ok(ptr noundef %efx, i32 noundef 26) #5
  %frombool = zext i1 %call.i to i8
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %link_state, align 8
  %speed = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 3
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10000, ptr %speed, align 4
  %fd = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 1
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fd, align 1
  %call4 = tail call zeroext i8 @ef4_mdio_get_pause(ptr noundef %efx) #5
  %fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 2
  %5 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call4, ptr %fc, align 2
  %6 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_state, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %phy_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %8 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_data.i, align 4
  br i1 %tobool.not, label %if.else.i, label %entry.if.end9.i_crit_edge

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.else.i:                                        ; preds = %entry
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %10 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdio_read.i.i, align 8
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %12 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i.i, align 4
  %14 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 %11(ptr noundef %13, i32 noundef %15, i32 noundef 7, i16 noundef zeroext 1) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i.sfx7101_check_bad_lp.exit_crit_edge, label %if.end.i

if.else.i.sfx7101_check_bad_lp.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sfx7101_check_bad_lp.exit

if.end.i:                                         ; preds = %if.else.i
  %and3.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then7.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %bad_lp_tries.i = getelementptr inbounds %struct.tenxpress_phy_data, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %bad_lp_tries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bad_lp_tries.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %bad_lp_tries.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %bad_lp.0.off0.i = phi i1 [ true, %if.then7.i ], [ false, %if.end.i.if.end9.i_crit_edge ], [ false, %entry.if.end9.i_crit_edge ]
  %bad_lp_tries10.i = getelementptr inbounds %struct.tenxpress_phy_data, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %bad_lp_tries10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bad_lp_tries10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not.i = icmp eq i32 %19, 0
  br i1 %tobool11.not.i, label %if.end9.i.sfx7101_check_bad_lp.exit_crit_edge, label %if.end13.i

if.end9.i.sfx7101_check_bad_lp.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sfx7101_check_bad_lp.exit

if.end13.i:                                       ; preds = %if.end9.i
  %bad_lp.0.off0.not.i = xor i1 %bad_lp.0.off0.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp.i = icmp eq i32 %19, 5
  %or.cond.i = select i1 %bad_lp.0.off0.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %if.then16.i, label %if.end13.i.sfx7101_check_bad_lp.exit_crit_edge

if.end13.i.sfx7101_check_bad_lp.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sfx7101_check_bad_lp.exit

if.then16.i:                                      ; preds = %if.end13.i
  %mdio.i50.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i51.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %20 = ptrtoint ptr %mdio_read.i51.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio_read.i51.i, align 8
  %net_dev.i52.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %22 = ptrtoint ptr %net_dev.i52.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev.i52.i, align 4
  %24 = ptrtoint ptr %mdio.i50.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mdio.i50.i, align 8
  %call.i53.i = tail call i32 %21(ptr noundef %23, i32 noundef %25, i32 noundef 1, i16 noundef zeroext -16375) #5
  br i1 %bad_lp.0.off0.i, label %if.else21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %and18.i = and i32 %call.i53.i, -193
  %or.i = or i32 %and18.i, 128
  br label %if.end27.i

if.else21.i:                                      ; preds = %if.then16.i
  %or22.i = or i32 %call.i53.i, 192
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %26 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable.i, align 8
  %and23.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else21.i.if.end27.i_crit_edge, label %if.then25.i

if.else21.i.if.end27.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %net_dev.i52.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev.i52.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.else21.i.if.end27.i_crit_edge, %if.then20.i
  %reg.0.i = phi i32 [ %or22.i, %if.then25.i ], [ %or22.i, %if.else21.i.if.end27.i_crit_edge ], [ %or.i, %if.then20.i ]
  %mdio_write.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %30 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i.i, align 4
  %32 = ptrtoint ptr %net_dev.i52.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev.i52.i, align 4
  %34 = ptrtoint ptr %mdio.i50.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mdio.i50.i, align 8
  %conv2.i.i = trunc i32 %reg.0.i to i16
  %call.i56.i = tail call i32 %31(ptr noundef %33, i32 noundef %35, i32 noundef 1, i16 noundef zeroext -16375, i16 noundef zeroext %conv2.i.i) #5
  %conv.i = zext i1 %bad_lp.0.off0.i to i32
  %36 = ptrtoint ptr %bad_lp_tries10.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i, ptr %bad_lp_tries10.i, align 4
  br label %sfx7101_check_bad_lp.exit

sfx7101_check_bad_lp.exit:                        ; preds = %if.end27.i, %if.end13.i.sfx7101_check_bad_lp.exit_crit_edge, %if.end9.i.sfx7101_check_bad_lp.exit_crit_edge, %if.else.i.sfx7101_check_bad_lp.exit_crit_edge
  %37 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %link_state, align 4, !range !17
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %old_state.sroa.0.0.extract.trunc)
  %cmp.i19 = icmp eq i8 %38, %old_state.sroa.0.0.extract.trunc
  br i1 %cmp.i19, label %land.lhs.true.i, label %sfx7101_check_bad_lp.exit.ef4_link_state_equal.exit_crit_edge

sfx7101_check_bad_lp.exit.ef4_link_state_equal.exit_crit_edge: ; preds = %sfx7101_check_bad_lp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef4_link_state_equal.exit

land.lhs.true.i:                                  ; preds = %sfx7101_check_bad_lp.exit
  %39 = ptrtoint ptr %fd to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fd, align 1, !range !17
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %old_state.sroa.5.0.extract.trunc)
  %cmp10.i = icmp eq i8 %40, %old_state.sroa.5.0.extract.trunc
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.ef4_link_state_equal.exit_crit_edge

land.lhs.true.i.ef4_link_state_equal.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef4_link_state_equal.exit

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fc, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %old_state.sroa.6.0.extract.trunc)
  %cmp16.i = icmp eq i8 %42, %old_state.sroa.6.0.extract.trunc
  br i1 %cmp16.i, label %land.rhs.i, label %land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge

land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef4_link_state_equal.exit

land.rhs.i:                                       ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %old_state.sroa.720.0.extract.trunc)
  %cmp19.i = icmp ne i32 %44, %old_state.sroa.720.0.extract.trunc
  br label %ef4_link_state_equal.exit

ef4_link_state_equal.exit:                        ; preds = %land.rhs.i, %land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge, %land.lhs.true.i.ef4_link_state_equal.exit_crit_edge, %sfx7101_check_bad_lp.exit.ef4_link_state_equal.exit_crit_edge
  %45 = phi i1 [ true, %land.lhs.true12.i.ef4_link_state_equal.exit_crit_edge ], [ true, %land.lhs.true.i.ef4_link_state_equal.exit_crit_edge ], [ true, %sfx7101_check_bad_lp.exit.ef4_link_state_equal.exit_crit_edge ], [ %cmp19.i, %land.rhs.i ]
  ret i1 %45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tenxpress_get_link_ksettings(ptr noundef %efx, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 8
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 7, i16 noundef zeroext 32) #5
  %and = and i32 %call.i, 4096
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 8
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 8
  %call.i24 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 7, i16 noundef zeroext 33) #5
  %and2 = shl i32 %call.i24, 1
  %12 = and i32 %and2, 4096
  tail call void @mdio45_ethtool_ksettings_get_npage(ptr noundef %mdio.i, ptr noundef %cmd, i32 noundef %and, i32 noundef %12) #5
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %13 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %14
  %conv = sext i32 %shl to i64
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %15 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %loopback_modes, align 8
  %and8 = and i64 %16, -66600960
  %and9 = and i64 %and8, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %entry.if.end12_crit_edge, label %if.then11

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10000, ptr %speed, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tenxpress_set_link_ksettings(ptr noundef %efx, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @ef4_mdio_set_link_ksettings(ptr noundef %efx, ptr noundef %cmd) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfx7101_set_npage_adv(ptr noundef %efx, i32 noundef %advertising) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %advertising, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %0 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %1, i32 noundef 7, i16 noundef zeroext 32, i32 noundef 4096, i1 noundef zeroext %tobool) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_test_alive(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sfx7101_test_name(ptr nocapture noundef readnone %efx, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  %.str.1. = select i1 %cmp, ptr @.str.1, ptr null
  ret ptr %.str.1.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfx7101_run_tests(ptr noundef %efx, ptr nocapture noundef writeonly %results, i32 noundef %flags) #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @tenxpress_special_reset(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool1.not, i32 1, i32 -1
  %0 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %results, align 4
  tail call void @ef4_mdio_an_reconfigure(ptr noundef %efx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_wait_reset_mmds(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_check_mmds(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_link_set_wanted_fc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_an_reconfigure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_reset_xaui(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_set_flag(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tenxpress_special_reset(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @falcon_stop_nic_stats(ptr noundef %efx) #5
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 8
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16384) #5
  %mdio_write.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 8
  %12 = trunc i32 %call.i to i16
  %conv2.i = or i16 %12, -32768
  %call.i22 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext -16384, i16 noundef zeroext %conv2.i) #5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.023 = phi i32 [ 200, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.023, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %call1 = tail call i32 @ef4_mdio_wait_reset_mmds(ptr noundef %efx, i32 noundef 154) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %while.end.out_crit_edge, label %if.end

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdio_write.i, align 4
  %16 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev.i, align 4
  %18 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdio.i, align 8
  %call.i.i = tail call i32 %15(ptr noundef %17, i32 noundef %19, i32 noundef 3, i16 noundef zeroext -10233, i16 noundef zeroext 8) #5
  %20 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i, align 8
  %call.i2.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %21, i32 noundef 1, i16 noundef zeroext -16377, i32 noundef 8, i1 noundef zeroext true) #5
  %22 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdio_write.i, align 4
  %24 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev.i, align 4
  %26 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mdio.i, align 8
  %call.i6.i = tail call i32 %23(ptr noundef %25, i32 noundef %27, i32 noundef 1, i16 noundef zeroext -16375, i16 noundef zeroext 128) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  br label %out

out:                                              ; preds = %if.end, %while.end.out_crit_edge
  %rc.0 = phi i32 [ %call1, %while.end.out_crit_edge ], [ 0, %if.end ]
  tail call void @falcon_start_nic_stats(ptr noundef %efx) #5
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_transmit_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_phy_reconfigure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_stop_nic_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_start_nic_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_set_mmds_lpower(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ef4_mdio_get_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ef4_mdio_links_ok(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio45_ethtool_ksettings_get_npage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
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

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @falcon_sfx7101_phy_ops, !1, !"falcon_sfx7101_phy_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/tenxpress.c", i32 478, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/tenxpress.c", i32 285, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/tenxpress.c", i32 412, i32 2}
!6 = distinct !{null, !7, !"sfx7101_test_names", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/tenxpress.c", i32 411, i32 26}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
