; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/qt202x_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/qt202x_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ef4_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.qt202x_phy_data = type { i32, i8, i32, i32 }
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
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }

@falcon_qt202x_phy_ops = dso_local constant { %struct.ef4_phy_operations, [40 x i8] } { %struct.ef4_phy_operations { ptr @qt202x_phy_probe, ptr @qt202x_phy_init, ptr @ef4_port_dummy_op_void, ptr @qt202x_phy_remove, ptr @qt202x_phy_reconfigure, ptr @qt202x_phy_poll, ptr @qt202x_phy_get_link_ksettings, ptr @ef4_mdio_set_link_ksettings, ptr null, ptr @ef4_mdio_test_alive, ptr null, ptr null, ptr @qt202x_phy_get_module_eeprom, ptr @qt202x_phy_get_module_info }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PHY init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PHY ID reg %x (OUI %06x model %02x revision %x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY reset timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@qt2025c_wait_reset.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qt2025c_wait_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/sfc/falcon/qt202x_phy.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bashing QT2025C microcontroller\0A\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"If an SFP+ direct attach cable is connected, please check that it complies with the SFP+ specification\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"QT2025C firmware %xr%d v%d.%d.%d.%d [20%02d-%02d-%02d]\0A\00", [40 x i8] zeroinitializer }, align 32
@qt2025c_select_phy_mode.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qt2025c_select_phy_mode\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Switching PHY to mode 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"PHY microcontroller reset during mode switch timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@qt2025c_bug17190_workaround.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.5, ptr @.str.13, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qt2025c_bug17190_workaround\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bashing QT2025C PMA/PMD\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"falcon_qt202x_phy_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 481, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 364, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 369, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 335, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 148, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 93, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 169, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 236, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 297, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [48 x i8] c"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 203, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @falcon_qt202x_phy_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @falcon_qt202x_phy_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @falcon_qt202x_set_led(ptr nocapture noundef readonly %p, i32 noundef %led, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %p, i32 0, i32 78
  %mdio_write.i = getelementptr inbounds %struct.ef4_nic, ptr %p, i32 0, i32 78, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %p, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 8
  %6 = trunc i32 %led to i16
  %conv.i = add i16 %6, -12282
  %conv2.i = trunc i32 %mode to i16
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv2.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt202x_phy_probe(ptr nocapture noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #8
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
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call7.i.i, align 8
  %bug17190_in_bad_state = getelementptr inbounds %struct.qt202x_phy_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %bug17190_in_bad_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bug17190_in_bad_state, align 4
  %bug17190_timer = getelementptr inbounds %struct.qt202x_phy_data, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %bug17190_timer to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bug17190_timer, align 8
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %7 = ptrtoint ptr %mmds to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 26, ptr %mmds, align 4
  %mode_support = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 2
  %8 = ptrtoint ptr %mode_support to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %mode_support, align 8
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %9 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 67305528, ptr %loopback_modes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt202x_phy_init(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 75
  %0 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.i = icmp eq i32 %1, 9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @qt2025c_wait_reset(ptr noundef %efx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i.do.body.i_crit_edge, label %if.then.i.if.end3_crit_edge

if.then.i.if.end3_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %call3.i = tail call i32 @ef4_mdio_reset_mmd(ptr noundef %efx, i32 noundef 4, i32 noundef 50, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.else.i.do.body.i_crit_edge, label %if.else.i.if.end3_crit_edge

if.else.i.if.end3_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %rc.0.i = phi i32 [ %call.i, %if.then.i.do.body.i_crit_edge ], [ %call3.i, %if.else.i.do.body.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.body_crit_edge, label %if.then9.i

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #9
  br label %do.body

do.body:                                          ; preds = %if.then9.i, %do.body.i.do.body_crit_edge
  %6 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable.i, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end3:                                          ; preds = %if.else.i.if.end3_crit_edge, %if.then.i.if.end3_crit_edge
  tail call void @msleep(i32 noundef 250) #5
  %nic_data.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %10 = ptrtoint ptr %nic_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nic_data.i.i, align 4
  %board.i.i = getelementptr inbounds %struct.falcon_nic_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board.i.i, align 8
  %init_phy.i = getelementptr inbounds %struct.falcon_board_type, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %init_phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_phy.i, align 4
  tail call void %15(ptr noundef %efx) #5
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %16 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i.i, align 8
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %18 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i.i, align 4
  %20 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef 4, i16 noundef zeroext 3) #5
  %22 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdio_read.i.i, align 8
  %24 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev.i.i, align 4
  %26 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mdio.i.i, align 8
  %call.i4.i = tail call i32 %23(ptr noundef %25, i32 noundef %27, i32 noundef 4, i16 noundef zeroext 2) #5
  %msg_enable6 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %28 = ptrtoint ptr %msg_enable6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable6, align 8
  %and7 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end3.do.end16_crit_edge, label %if.then9

if.end3.do.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl i32 %call.i4.i, 16
  %conv4.i = and i32 %call.i.i, 65535
  %or.i = or i32 %shl.i, %conv4.i
  %30 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev.i.i, align 4
  %call11 = tail call i32 @ef4_mdio_id_oui(i32 noundef %or.i) #5
  %shr.i = lshr i32 %call.i.i, 4
  %and.i31 = and i32 %shr.i, 63
  %and.i32 = and i32 %call.i.i, 15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %31, ptr noundef nonnull @.str.1, i32 noundef %or.i, i32 noundef %call11, i32 noundef %and.i31, i32 noundef %and.i32) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then9, %if.end3.do.end16_crit_edge
  %32 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %33)
  %cmp = icmp eq i32 %33, 9
  br i1 %cmp, label %if.then17, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %do.end16
  %phy_data1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %34 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_data1.i, align 4
  %36 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_read.i.i, align 8
  %38 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev.i.i, align 4
  %40 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mdio.i.i, align 8
  %call.i.i36 = tail call i32 %37(ptr noundef %39, i32 noundef %41, i32 noundef 3, i16 noundef zeroext -10256) #5
  %42 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdio_read.i.i, align 8
  %44 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev.i.i, align 4
  %46 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mdio.i.i, align 8
  %call.i.1.i = tail call i32 %43(ptr noundef %45, i32 noundef %47, i32 noundef 3, i16 noundef zeroext -10255) #5
  %48 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdio_read.i.i, align 8
  %50 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev.i.i, align 4
  %52 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mdio.i.i, align 8
  %call.i.2.i = tail call i32 %49(ptr noundef %51, i32 noundef %53, i32 noundef 3, i16 noundef zeroext -10254) #5
  %54 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdio_read.i.i, align 8
  %56 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev.i.i, align 4
  %58 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mdio.i.i, align 8
  %call.i.3.i = tail call i32 %55(ptr noundef %57, i32 noundef %59, i32 noundef 3, i16 noundef zeroext -10253) #5
  %60 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mdio_read.i.i, align 8
  %62 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net_dev.i.i, align 4
  %64 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mdio.i.i, align 8
  %call.i.4.i = tail call i32 %61(ptr noundef %63, i32 noundef %65, i32 noundef 3, i16 noundef zeroext -10252) #5
  %66 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdio_read.i.i, align 8
  %68 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net_dev.i.i, align 4
  %70 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mdio.i.i, align 8
  %call.i.5.i = tail call i32 %67(ptr noundef %69, i32 noundef %71, i32 noundef 3, i16 noundef zeroext -10251) #5
  %72 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mdio_read.i.i, align 8
  %74 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net_dev.i.i, align 4
  %76 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mdio.i.i, align 8
  %call.i.6.i = tail call i32 %73(ptr noundef %75, i32 noundef %77, i32 noundef 3, i16 noundef zeroext -10250) #5
  %78 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mdio_read.i.i, align 8
  %80 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %net_dev.i.i, align 4
  %82 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mdio.i.i, align 8
  %call.i.7.i = tail call i32 %79(ptr noundef %81, i32 noundef %83, i32 noundef 3, i16 noundef zeroext -10249) #5
  %84 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mdio_read.i.i, align 8
  %86 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net_dev.i.i, align 4
  %88 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mdio.i.i, align 8
  %call.i.8.i = tail call i32 %85(ptr noundef %87, i32 noundef %89, i32 noundef 3, i16 noundef zeroext -10248) #5
  %90 = ptrtoint ptr %msg_enable6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable6, align 8
  %and.i38 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  br i1 %tobool.not.i39, label %entry.do.end_crit_edge.i, label %if.then.i42

entry.do.end_crit_edge.i:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = and i32 %call.i.3.i, 255
  %.pre49.i = and i32 %call.i.4.i, 255
  %.pre50.i = and i32 %call.i.5.i, 255
  br label %qt2025c_firmware_id.exit

if.then.i42:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net_dev.i.i, align 4
  %conv3.i = shl i32 %call.i.i36, 8
  %shl.i40 = and i32 %conv3.i, 65280
  %conv5.i = and i32 %call.i.1.i, 255
  %or.i41 = or i32 %conv5.i, %shl.i40
  %conv7.i = and i32 %call.i.2.i, 255
  %conv9.i = and i32 %call.i.3.i, 255
  %94 = lshr i32 %conv9.i, 4
  %and12.i = and i32 %call.i.3.i, 15
  %conv14.i = and i32 %call.i.4.i, 255
  %conv16.i = and i32 %call.i.5.i, 255
  %conv18.i = and i32 %call.i.6.i, 255
  %conv20.i = and i32 %call.i.7.i, 255
  %conv22.i = and i32 %call.i.8.i, 255
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %93, ptr noundef nonnull @.str.8, i32 noundef %or.i41, i32 noundef %conv7.i, i32 noundef %94, i32 noundef %and12.i, i32 noundef %conv14.i, i32 noundef %conv16.i, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i) #9
  br label %qt2025c_firmware_id.exit

qt2025c_firmware_id.exit:                         ; preds = %if.then.i42, %entry.do.end_crit_edge.i
  %conv37.pre-phi.i = phi i32 [ %.pre50.i, %entry.do.end_crit_edge.i ], [ %conv16.i, %if.then.i42 ]
  %conv33.pre-phi.i = phi i32 [ %.pre49.i, %entry.do.end_crit_edge.i ], [ %conv14.i, %if.then.i42 ]
  %conv24.pre-phi.i = phi i32 [ %.pre.i, %entry.do.end_crit_edge.i ], [ %conv9.i, %if.then.i42 ]
  %and25.i = shl nuw nsw i32 %conv24.pre-phi.i, 20
  %shl26.i = and i32 %and25.i, 251658240
  %and29.i = shl nuw nsw i32 %conv24.pre-phi.i, 16
  %shl30.i = and i32 %and29.i, 983040
  %or31.i = or i32 %shl26.i, %shl30.i
  %shl34.i = shl nuw nsw i32 %conv33.pre-phi.i, 8
  %or35.i = or i32 %or31.i, %shl34.i
  %or38.i = or i32 %or35.i, %conv37.pre-phi.i
  %firmware_ver.i = getelementptr inbounds %struct.qt202x_phy_data, ptr %35, i32 0, i32 3
  %95 = ptrtoint ptr %firmware_ver.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or38.i, ptr %firmware_ver.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %qt2025c_firmware_id.exit, %do.end16.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %if.then2 ], [ %rc.0.i, %do.body.cleanup_crit_edge ], [ 0, %qt2025c_firmware_id.exit ], [ 0, %do.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_port_dummy_op_void(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt202x_phy_remove(ptr nocapture noundef %efx) #0 align 64 {
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
define internal i32 @qt202x_phy_reconfigure(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 4
  %phy_type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 75
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @qt2025c_select_phy_mode(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup25_crit_edge

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

if.end:                                           ; preds = %if.then
  %mdio = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %4 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio, align 8
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %6 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_mode, align 16
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %lor.lhs.false8, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false8:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %10 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %loopback_mode, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %13 = icmp eq i32 %12, 16
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false8, %if.end.lor.end_crit_edge
  %14 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %13, %lor.lhs.false8 ]
  %call12 = tail call i32 @mdio_set_flag(ptr noundef %mdio, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -15607, i32 noundef 8192, i1 noundef zeroext %14) #5
  br label %if.end22

if.else:                                          ; preds = %entry
  %phy_mode13 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %15 = ptrtoint ptr %phy_mode13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_mode13, align 16
  %and14 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

land.lhs.true:                                    ; preds = %if.else
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %and17 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end21_crit_edge, label %if.else.i

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.else.i:                                        ; preds = %land.lhs.true
  %call3.i = tail call i32 @ef4_mdio_reset_mmd(ptr noundef %efx, i32 noundef 4, i32 noundef 50, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.body.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 250) #5
  %nic_data.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %19 = ptrtoint ptr %nic_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nic_data.i.i, align 4
  %board.i.i = getelementptr inbounds %struct.falcon_nic_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board.i.i, align 8
  %init_phy.i = getelementptr inbounds %struct.falcon_board_type, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %init_phy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_phy.i, align 4
  tail call void %24(ptr noundef %efx) #5
  br label %if.end21

do.body.i:                                        ; preds = %if.else.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %25 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end21_crit_edge, label %if.then9.i

do.body.i.if.end21_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %27 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then9.i, %do.body.i.if.end21_crit_edge, %if.end7.i, %land.lhs.true.if.end21_crit_edge, %if.else.if.end21_crit_edge
  tail call void @ef4_mdio_transmit_disable(ptr noundef %efx) #5
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %lor.end
  tail call void @ef4_mdio_phy_reconfigure(ptr noundef %efx) #5
  %phy_mode23 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %29 = ptrtoint ptr %phy_mode23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phy_mode23, align 16
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %1, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %if.end22, %if.then.cleanup25_crit_edge
  %retval.1 = phi i32 [ 0, %if.end22 ], [ %call, %if.then.cleanup25_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @qt202x_phy_poll(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_state, align 8, !range !37
  %call.i = tail call zeroext i1 @ef4_mdio_links_ok(ptr noundef %efx, i32 noundef 26) #5
  %frombool4 = zext i1 %call.i to i8
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool4, ptr %link_state, align 8
  %speed = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 3
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10000, ptr %speed, align 4
  %fd = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 1
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fd, align 1
  %wanted_fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %5 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wanted_fc, align 8
  %fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81, i32 2
  %7 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %fc, align 2
  %phy_type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 75
  %8 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp = icmp eq i32 %9, 9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @qt2025c_bug17190_workaround(ptr noundef %efx)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_state, align 8, !range !37
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %1)
  %cmp13 = icmp ne i8 %11, %1
  ret i1 %cmp13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt202x_phy_get_link_ksettings(ptr noundef %efx, ptr noundef %cmd) #0 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt202x_phy_get_module_eeprom(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %ee, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 75
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp eq i32 %1, 9
  %. = select i1 %cmp, i32 3, i32 1
  %.16 = select i1 %cmp, i32 53248, i32 32775
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp117.not = icmp eq i32 %3, 0
  br i1 %cmp117.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %i.018, %.16
  %add2 = add i32 %add, %5
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 8
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 8
  %conv.i = trunc i32 %add2 to i16
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef %., i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %conv = trunc i32 %call.i to i8
  %arrayidx = getelementptr i8, ptr %data, i32 %i.018
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.018, 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %cmp1 = icmp ult i32 %inc, %14
  br i1 %cmp1, label %if.end5.for.body_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qt202x_phy_get_module_info(ptr nocapture noundef readnone %efx, ptr nocapture noundef writeonly %modinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %1 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %eeprom_len, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_id_oui(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qt2025c_wait_reset(ptr nocapture noundef readonly %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 500
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %1 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdio_read.i.i, align 8
  %3 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev.i.i, align 4
  %5 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mdio.i.i, align 8
  %call.i30.i = tail call i32 %2(ptr noundef %4, i32 noundef %6, i32 noundef 3, i16 noundef zeroext -10258) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %cmp31.i = icmp slt i32 %call.i30.i, 0
  br i1 %cmp31.i, label %entry.cleanup_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call.i33.i = phi i32 [ %call.i.i, %cleanup.i.if.end.i_crit_edge ], [ %call.i30.i, %entry.if.end.i_crit_edge ]
  %old_counter.032.i = phi i32 [ %old_counter.1.i, %cleanup.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %and.i = and i32 %call.i33.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_counter.032.i)
  %cmp1.i = icmp eq i32 %old_counter.032.i, 0
  br i1 %cmp1.i, label %if.end.i.if.end6.i_crit_edge, label %if.else.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %old_counter.032.i)
  %cmp3.not.i = icmp eq i32 %and.i, %old_counter.032.i
  br i1 %cmp3.not.i, label %if.else.i.if.end6.i_crit_edge, label %if.end

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %old_counter.1.i = phi i32 [ %old_counter.032.i, %if.else.i.if.end6.i_crit_edge ], [ %and.i, %if.end.i.if.end6.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp7.i = icmp slt i32 %sub.i, 0
  br i1 %cmp7.i, label %do.body.i, label %cleanup.i

do.body.i:                                        ; preds = %if.end6.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 8
  %and9.i = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.cleanup.sink.split_crit_edge

do.body.i.cleanup.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.i:                                        ; preds = %if.end6.i
  tail call void @msleep(i32 noundef 100) #5
  %10 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdio_read.i.i, align 8
  %12 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i.i, align 4
  %14 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 %11(ptr noundef %13, i32 noundef %15, i32 noundef 3, i16 noundef zeroext -10258) #5
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i32 = add i32 %16, 250
  %17 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdio_read.i.i, align 8
  %19 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev.i.i, align 4
  %21 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mdio.i.i, align 8
  %call.i10.i = tail call i32 %18(ptr noundef %20, i32 noundef %22, i32 noundef 3, i16 noundef zeroext -10243) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp11.i = icmp slt i32 %call.i10.i, 0
  br i1 %cmp11.i, label %if.end.qt2025c_wait_fw_status_good.exit_crit_edge, label %if.end.if.end.i37_crit_edge

if.end.if.end.i37_crit_edge:                      ; preds = %if.end
  br label %if.end.i37

if.end.qt2025c_wait_fw_status_good.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %qt2025c_wait_fw_status_good.exit

if.end.i37:                                       ; preds = %if.end6.i41.if.end.i37_crit_edge, %if.end.if.end.i37_crit_edge
  %call.i12.i = phi i32 [ %call.i.i39, %if.end6.i41.if.end.i37_crit_edge ], [ %call.i10.i, %if.end.if.end.i37_crit_edge ]
  %and.i36 = and i32 %call.i12.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %cmp1.not.i = icmp eq i32 %and.i36, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i37.cleanup_crit_edge

if.end.i37.cleanup_crit_edge:                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i38 = sub i32 %add.i32, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i38)
  %cmp4.i = icmp slt i32 %sub.i38, 0
  br i1 %cmp4.i, label %if.end3.i.do.body_crit_edge, label %if.end6.i41

if.end3.i.do.body_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end6.i41:                                      ; preds = %if.end3.i
  tail call void @msleep(i32 noundef 100) #5
  %24 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_read.i.i, align 8
  %26 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev.i.i, align 4
  %28 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio.i.i, align 8
  %call.i.i39 = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 3, i16 noundef zeroext -10243) #5
  %cmp.i40 = icmp slt i32 %call.i.i39, 0
  br i1 %cmp.i40, label %if.end6.i41.qt2025c_wait_fw_status_good.exit_crit_edge, label %if.end6.i41.if.end.i37_crit_edge

if.end6.i41.if.end.i37_crit_edge:                 ; preds = %if.end6.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i37

if.end6.i41.qt2025c_wait_fw_status_good.exit_crit_edge: ; preds = %if.end6.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %qt2025c_wait_fw_status_good.exit

qt2025c_wait_fw_status_good.exit:                 ; preds = %if.end6.i41.qt2025c_wait_fw_status_good.exit_crit_edge, %if.end.qt2025c_wait_fw_status_good.exit_crit_edge
  %retval.0.i42 = phi i32 [ %call.i10.i, %if.end.qt2025c_wait_fw_status_good.exit_crit_edge ], [ %call.i.i39, %if.end6.i41.qt2025c_wait_fw_status_good.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i42)
  %cmp2 = icmp eq i32 %retval.0.i42, -110
  br i1 %cmp2, label %qt2025c_wait_fw_status_good.exit.do.body_crit_edge, label %qt2025c_wait_fw_status_good.exit.cleanup_crit_edge

qt2025c_wait_fw_status_good.exit.cleanup_crit_edge: ; preds = %qt2025c_wait_fw_status_good.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

qt2025c_wait_fw_status_good.exit.do.body_crit_edge: ; preds = %qt2025c_wait_fw_status_good.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %qt2025c_wait_fw_status_good.exit.do.body_crit_edge, %if.end3.i.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 8
  %and = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.body5

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt2025c_wait_reset.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt2025c_wait_reset, %if.then10)) #5
          to label %do.end14 [label %if.then10], !srcloc !38

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qt2025c_wait_reset.__UNIQUE_ID_ddebug523, ptr noundef %33, ptr noundef nonnull @.str.6) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body5, %do.body.do.end14_crit_edge
  %mdio_write.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %34 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdio_write.i.i, align 4
  %36 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev.i.i, align 4
  %38 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mdio.i.i, align 8
  %call.i.i46 = tail call i32 %35(ptr noundef %37, i32 noundef %39, i32 noundef 3, i16 noundef zeroext -6060, i16 noundef zeroext 192) #5
  %40 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdio_write.i.i, align 4
  %42 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev.i.i, align 4
  %44 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mdio.i.i, align 8
  %call.i5.i = tail call i32 %41(ptr noundef %43, i32 noundef %45, i32 noundef 3, i16 noundef zeroext -6060, i16 noundef zeroext 64) #5
  tail call void @msleep(i32 noundef 50) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add.i47 = add i32 %46, 500
  %47 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdio_read.i.i, align 8
  %49 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev.i.i, align 4
  %51 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mdio.i.i, align 8
  %call.i30.i51 = tail call i32 %48(ptr noundef %50, i32 noundef %52, i32 noundef 3, i16 noundef zeroext -10258) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i51)
  %cmp31.i52 = icmp slt i32 %call.i30.i51, 0
  br i1 %cmp31.i52, label %do.end14.cleanup_crit_edge, label %do.end14.if.end.i57_crit_edge

do.end14.if.end.i57_crit_edge:                    ; preds = %do.end14
  br label %if.end.i57

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i57:                                       ; preds = %cleanup.i71.if.end.i57_crit_edge, %do.end14.if.end.i57_crit_edge
  %call.i33.i53 = phi i32 [ %call.i.i69, %cleanup.i71.if.end.i57_crit_edge ], [ %call.i30.i51, %do.end14.if.end.i57_crit_edge ]
  %old_counter.032.i54 = phi i32 [ %old_counter.1.i60, %cleanup.i71.if.end.i57_crit_edge ], [ 0, %do.end14.if.end.i57_crit_edge ]
  %and.i55 = and i32 %call.i33.i53, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_counter.032.i54)
  %cmp1.i56 = icmp eq i32 %old_counter.032.i54, 0
  br i1 %cmp1.i56, label %if.end.i57.if.end6.i63_crit_edge, label %if.else.i59

if.end.i57.if.end6.i63_crit_edge:                 ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i63

if.else.i59:                                      ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i55, i32 %old_counter.032.i54)
  %cmp3.not.i58 = icmp eq i32 %and.i55, %old_counter.032.i54
  br i1 %cmp3.not.i58, label %if.else.i59.if.end6.i63_crit_edge, label %if.end18

if.else.i59.if.end6.i63_crit_edge:                ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i63

if.end6.i63:                                      ; preds = %if.else.i59.if.end6.i63_crit_edge, %if.end.i57.if.end6.i63_crit_edge
  %old_counter.1.i60 = phi i32 [ %old_counter.032.i54, %if.else.i59.if.end6.i63_crit_edge ], [ %and.i55, %if.end.i57.if.end6.i63_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub.i61 = sub i32 %add.i47, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i61)
  %cmp7.i62 = icmp slt i32 %sub.i61, 0
  br i1 %cmp7.i62, label %do.body.i67, label %cleanup.i71

do.body.i67:                                      ; preds = %if.end6.i63
  %54 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_enable, align 8
  %and9.i65 = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i65)
  %tobool.not.i66 = icmp eq i32 %and9.i65, 0
  br i1 %tobool.not.i66, label %do.body.i67.cleanup_crit_edge, label %do.body.i67.cleanup.sink.split_crit_edge

do.body.i67.cleanup.sink.split_crit_edge:         ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body.i67.cleanup_crit_edge:                    ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.i71:                                      ; preds = %if.end6.i63
  tail call void @msleep(i32 noundef 100) #5
  %56 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mdio_read.i.i, align 8
  %58 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev.i.i, align 4
  %60 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mdio.i.i, align 8
  %call.i.i69 = tail call i32 %57(ptr noundef %59, i32 noundef %61, i32 noundef 3, i16 noundef zeroext -10258) #5
  %cmp.i70 = icmp slt i32 %call.i.i69, 0
  br i1 %cmp.i70, label %cleanup.i71.cleanup_crit_edge, label %cleanup.i71.if.end.i57_crit_edge

cleanup.i71.if.end.i57_crit_edge:                 ; preds = %cleanup.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i57

cleanup.i71.cleanup_crit_edge:                    ; preds = %cleanup.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.else.i59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add.i74 = add i32 %62, 250
  %63 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdio_read.i.i, align 8
  %65 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_dev.i.i, align 4
  %67 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mdio.i.i, align 8
  %call.i10.i78 = tail call i32 %64(ptr noundef %66, i32 noundef %68, i32 noundef 3, i16 noundef zeroext -10243) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i78)
  %cmp11.i79 = icmp slt i32 %call.i10.i78, 0
  br i1 %cmp11.i79, label %if.end18.cleanup_crit_edge, label %if.end18.if.end.i83_crit_edge

if.end18.if.end.i83_crit_edge:                    ; preds = %if.end18
  br label %if.end.i83

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i83:                                       ; preds = %if.end6.i89.if.end.i83_crit_edge, %if.end18.if.end.i83_crit_edge
  %call.i12.i80 = phi i32 [ %call.i.i87, %if.end6.i89.if.end.i83_crit_edge ], [ %call.i10.i78, %if.end18.if.end.i83_crit_edge ]
  %and.i81 = and i32 %call.i12.i80, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %cmp1.not.i82 = icmp eq i32 %and.i81, 0
  br i1 %cmp1.not.i82, label %if.end3.i86, label %if.end.i83.cleanup_crit_edge

if.end.i83.cleanup_crit_edge:                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i86:                                      ; preds = %if.end.i83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub.i84 = sub i32 %add.i74, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i84)
  %cmp4.i85 = icmp slt i32 %sub.i84, 0
  br i1 %cmp4.i85, label %if.end3.i86.cleanup_crit_edge, label %if.end6.i89

if.end3.i86.cleanup_crit_edge:                    ; preds = %if.end3.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i89:                                      ; preds = %if.end3.i86
  tail call void @msleep(i32 noundef 100) #5
  %70 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdio_read.i.i, align 8
  %72 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %net_dev.i.i, align 4
  %74 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mdio.i.i, align 8
  %call.i.i87 = tail call i32 %71(ptr noundef %73, i32 noundef %75, i32 noundef 3, i16 noundef zeroext -10243) #5
  %cmp.i88 = icmp slt i32 %call.i.i87, 0
  br i1 %cmp.i88, label %if.end6.i89.cleanup_crit_edge, label %if.end6.i89.if.end.i83_crit_edge

if.end6.i89.if.end.i83_crit_edge:                 ; preds = %if.end6.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i83

if.end6.i89.cleanup_crit_edge:                    ; preds = %if.end6.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body.i67.cleanup.sink.split_crit_edge, %do.body.i.cleanup.sink.split_crit_edge
  %76 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.7) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.i89.cleanup_crit_edge, %if.end3.i86.cleanup_crit_edge, %if.end.i83.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %cleanup.i71.cleanup_crit_edge, %do.body.i67.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %qt2025c_wait_fw_status_good.exit.cleanup_crit_edge, %if.end.i37.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i42, %qt2025c_wait_fw_status_good.exit.cleanup_crit_edge ], [ %call.i10.i78, %if.end18.cleanup_crit_edge ], [ %call.i30.i, %entry.cleanup_crit_edge ], [ -110, %do.body.i.cleanup_crit_edge ], [ %call.i30.i51, %do.end14.cleanup_crit_edge ], [ -110, %do.body.i67.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ %call.i.i87, %if.end6.i89.cleanup_crit_edge ], [ -110, %if.end3.i86.cleanup_crit_edge ], [ 0, %if.end.i83.cleanup_crit_edge ], [ %call.i.i69, %cleanup.i71.cleanup_crit_edge ], [ 0, %if.end.i37.cleanup_crit_edge ], [ %call.i.i, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_mdio_reset_mmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qt2025c_select_phy_mode(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 4
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %2 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data.i, align 4
  %firmware_ver = getelementptr inbounds %struct.qt202x_phy_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %firmware_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %firmware_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554688, i32 %5)
  %cmp = icmp ult i32 %5, 33554688
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %6 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %loopback_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %8 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i, align 8
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 1, i16 noundef zeroext -15591) #5
  %and = and i32 %call.i, 56
  %conv4 = select i1 %cmp2, i32 56, i32 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv4)
  %cmp5 = icmp eq i32 %and, %conv4
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 8
  %and9 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %do.body.do.end21_crit_edge, label %do.body11

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt2025c_select_phy_mode.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt2025c_select_phy_mode, %if.then16)) #5
          to label %do.end21 [label %if.then16], !srcloc !38

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qt2025c_select_phy_mode.__UNIQUE_ID_ddebug525, ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %conv4) #5
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body11, %do.body.do.end21_crit_edge
  %mdio_write.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev.i, align 4
  %22 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mdio.i, align 8
  %call.i103 = tail call i32 %19(ptr noundef %21, i32 noundef %23, i32 noundef 1, i16 noundef zeroext -15616, i16 noundef zeroext 0) #5
  %major = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22 = icmp eq i32 %25, 0
  br i1 %cmp22, label %land.lhs.true, label %do.end21.if.else_crit_edge

do.end21.if.else_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %do.end21
  %minor = getelementptr inbounds %struct.falcon_nic_data, ptr %3, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp24 = icmp slt i32 %27, 2
  br i1 %cmp24, label %if.then26, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then26:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdio_write.i, align 4
  %30 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev.i, align 4
  %32 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mdio.i, align 8
  %call.i107 = tail call i32 %29(ptr noundef %31, i32 noundef %33, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 17560) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then26
  %i.0212 = phi i32 [ 0, %if.then26 ], [ %inc, %for.body.for.body_crit_edge ]
  %34 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdio_write.i, align 4
  %36 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev.i, align 4
  %38 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mdio.i, align 8
  %call.i111 = tail call i32 %35(ptr noundef %37, i32 noundef %39, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 17544) #5
  %40 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdio_write.i, align 4
  %42 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev.i, align 4
  %44 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mdio.i, align 8
  %call.i115 = tail call i32 %41(ptr noundef %43, i32 noundef %45, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 17536) #5
  %46 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mdio_write.i, align 4
  %48 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev.i, align 4
  %50 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mdio.i, align 8
  %call.i119 = tail call i32 %47(ptr noundef %49, i32 noundef %51, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 17552) #5
  %52 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdio_write.i, align 4
  %54 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net_dev.i, align 4
  %56 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mdio.i, align 8
  %call.i123 = tail call i32 %53(ptr noundef %55, i32 noundef %57, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 17560) #5
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond213.not = icmp eq i32 %inc, 9
  br i1 %exitcond213.not, label %for.body.if.end36_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end21.if.else_crit_edge
  %58 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mdio_write.i, align 4
  %60 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev.i, align 4
  %62 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mdio.i, align 8
  %call.i127 = tail call i32 %59(ptr noundef %61, i32 noundef %63, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 2336) #5
  %64 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mdio_write.i, align 4
  %66 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev.i, align 4
  %68 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mdio.i, align 8
  %call.i131 = tail call i32 %65(ptr noundef %67, i32 noundef %69, i32 noundef 1, i16 noundef zeroext -12280, i16 noundef zeroext 4) #5
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %if.else
  %i.1211 = phi i32 [ 0, %if.else ], [ %inc34, %for.body32.for.body32_crit_edge ]
  %70 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdio_write.i, align 4
  %72 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %net_dev.i, align 4
  %74 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mdio.i, align 8
  %call.i135 = tail call i32 %71(ptr noundef %73, i32 noundef %75, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 2304) #5
  %76 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mdio_write.i, align 4
  %78 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net_dev.i, align 4
  %80 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mdio.i, align 8
  %call.i139 = tail call i32 %77(ptr noundef %79, i32 noundef %81, i32 noundef 1, i16 noundef zeroext -12280, i16 noundef zeroext 5) #5
  %82 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdio_write.i, align 4
  %84 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %net_dev.i, align 4
  %86 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mdio.i, align 8
  %call.i143 = tail call i32 %83(ptr noundef %85, i32 noundef %87, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 2336) #5
  %88 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mdio_write.i, align 4
  %90 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %net_dev.i, align 4
  %92 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mdio.i, align 8
  %call.i147 = tail call i32 %89(ptr noundef %91, i32 noundef %93, i32 noundef 1, i16 noundef zeroext -12280, i16 noundef zeroext 4) #5
  %inc34 = add nuw nsw i32 %i.1211, 1
  %exitcond.not = icmp eq i32 %inc34, 9
  br i1 %exitcond.not, label %for.end35, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32

for.end35:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mdio_write.i, align 4
  %96 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net_dev.i, align 4
  %98 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mdio.i, align 8
  %call.i151 = tail call i32 %95(ptr noundef %97, i32 noundef %99, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 18688) #5
  br label %if.end36

if.end36:                                         ; preds = %for.end35, %for.body.if.end36_crit_edge
  %100 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mdio_write.i, align 4
  %102 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %net_dev.i, align 4
  %104 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mdio.i, align 8
  %call.i155 = tail call i32 %101(ptr noundef %103, i32 noundef %105, i32 noundef 1, i16 noundef zeroext -15613, i16 noundef zeroext 18688) #5
  %106 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mdio_write.i, align 4
  %108 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %net_dev.i, align 4
  %110 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mdio.i, align 8
  %call.i159 = tail call i32 %107(ptr noundef %109, i32 noundef %111, i32 noundef 1, i16 noundef zeroext -15614, i16 noundef zeroext 4) #5
  %112 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mdio_write.i, align 4
  %114 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %net_dev.i, align 4
  %116 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mdio.i, align 8
  %call.i163 = tail call i32 %113(ptr noundef %115, i32 noundef %117, i32 noundef 1, i16 noundef zeroext -15594, i16 noundef zeroext 19) #5
  %118 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mdio_write.i, align 4
  %120 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %net_dev.i, align 4
  %122 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mdio.i, align 8
  %call.i167 = tail call i32 %119(ptr noundef %121, i32 noundef %123, i32 noundef 1, i16 noundef zeroext -15592, i16 noundef zeroext 84) #5
  %124 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mdio_write.i, align 4
  %126 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %net_dev.i, align 4
  %128 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mdio.i, align 8
  %conv2.i = trunc i32 %conv4 to i16
  %call.i171 = tail call i32 %125(ptr noundef %127, i32 noundef %129, i32 noundef 1, i16 noundef zeroext -15591, i16 noundef zeroext %conv2.i) #5
  %130 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mdio_write.i, align 4
  %132 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %net_dev.i, align 4
  %134 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mdio.i, align 8
  %call.i175 = tail call i32 %131(ptr noundef %133, i32 noundef %135, i32 noundef 1, i16 noundef zeroext -15590, i16 noundef zeroext 152) #5
  %136 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mdio_write.i, align 4
  %138 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %net_dev.i, align 4
  %140 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mdio.i, align 8
  %call.i179 = tail call i32 %137(ptr noundef %139, i32 noundef %141, i32 noundef 3, i16 noundef zeroext 38, i16 noundef zeroext 3584) #5
  %142 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mdio_write.i, align 4
  %144 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %net_dev.i, align 4
  %146 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mdio.i, align 8
  %call.i183 = tail call i32 %143(ptr noundef %145, i32 noundef %147, i32 noundef 3, i16 noundef zeroext 39, i16 noundef zeroext 19) #5
  %148 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mdio_write.i, align 4
  %150 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %net_dev.i, align 4
  %152 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mdio.i, align 8
  %call.i187 = tail call i32 %149(ptr noundef %151, i32 noundef %153, i32 noundef 3, i16 noundef zeroext 40, i16 noundef zeroext -23256) #5
  %154 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mdio_write.i, align 4
  %156 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %net_dev.i, align 4
  %158 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mdio.i, align 8
  %call.i191 = tail call i32 %155(ptr noundef %157, i32 noundef %159, i32 noundef 1, i16 noundef zeroext -12282, i16 noundef zeroext 10) #5
  %160 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mdio_write.i, align 4
  %162 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %net_dev.i, align 4
  %164 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mdio.i, align 8
  %call.i195 = tail call i32 %161(ptr noundef %163, i32 noundef %165, i32 noundef 1, i16 noundef zeroext -12281, i16 noundef zeroext 9) #5
  %166 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mdio_write.i, align 4
  %168 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %net_dev.i, align 4
  %170 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mdio.i, align 8
  %call.i199 = tail call i32 %167(ptr noundef %169, i32 noundef %171, i32 noundef 1, i16 noundef zeroext -12280, i16 noundef zeroext 4) #5
  %172 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mdio_write.i, align 4
  %174 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %net_dev.i, align 4
  %176 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mdio.i, align 8
  %call.i203 = tail call i32 %173(ptr noundef %175, i32 noundef %177, i32 noundef 1, i16 noundef zeroext -15593, i16 noundef zeroext 255) #5
  %178 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mdio.i, align 8
  %call.i205 = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %179, i32 noundef 1, i16 noundef zeroext -15615, i32 noundef 64, i1 noundef zeroext false) #5
  %180 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mdio_write.i, align 4
  %182 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %net_dev.i, align 4
  %184 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %mdio.i, align 8
  %call.i209 = tail call i32 %181(ptr noundef %183, i32 noundef %185, i32 noundef 1, i16 noundef zeroext -15616, i16 noundef zeroext 2) #5
  tail call void @msleep(i32 noundef 20) #5
  %186 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mdio_write.i, align 4
  %188 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %net_dev.i, align 4
  %190 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %mdio.i, align 8
  %call.i.i = tail call i32 %187(ptr noundef %189, i32 noundef %191, i32 noundef 3, i16 noundef zeroext -6060, i16 noundef zeroext 192) #5
  %192 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mdio_write.i, align 4
  %194 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %net_dev.i, align 4
  %196 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mdio.i, align 8
  %call.i5.i = tail call i32 %193(ptr noundef %195, i32 noundef %197, i32 noundef 3, i16 noundef zeroext -6060, i16 noundef zeroext 64) #5
  tail call void @msleep(i32 noundef 50) #5
  %call38 = tail call fastcc i32 @qt2025c_wait_reset(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.body42, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body42:                                        ; preds = %if.end36
  %198 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %msg_enable, align 8
  %and44 = and i32 %199, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.cleanup_crit_edge, label %if.then46

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  %200 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %201, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body42.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call38, %if.then46 ], [ %call38, %do.body42.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_set_flag(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_transmit_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_mdio_phy_reconfigure(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qt2025c_bug17190_workaround(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 4
  %link_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_state, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @ef4_mdio_links_ok(ptr noundef %efx, i32 noundef 18) #5
  br i1 %call, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %bug17190_in_bad_state = getelementptr inbounds %struct.qt202x_phy_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bug17190_in_bad_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bug17190_in_bad_state, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bug17190_in_bad_state2 = getelementptr inbounds %struct.qt202x_phy_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bug17190_in_bad_state2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bug17190_in_bad_state2, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %bug17190_in_bad_state2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bug17190_in_bad_state2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 200
  %bug17190_timer = getelementptr inbounds %struct.qt202x_phy_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %bug17190_timer to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %bug17190_timer, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %bug17190_timer7 = getelementptr inbounds %struct.qt202x_phy_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %bug17190_timer7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bug17190_timer7, align 4
  %sub = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.body, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end6
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.do.end20_crit_edge, label %do.body11

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qt2025c_bug17190_workaround.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt2025c_bug17190_workaround, %if.then16)) #5
          to label %do.end20 [label %if.then16], !srcloc !38

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %15 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qt2025c_bug17190_workaround.__UNIQUE_ID_ddebug524, ptr noundef %16, ptr noundef nonnull @.str.13) #5
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11, %do.body.do.end20_crit_edge
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %17 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %18, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 1, i1 noundef zeroext true) #5
  tail call void @msleep(i32 noundef 100) #5
  %19 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i, align 8
  %call.i36 = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %20, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 1, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add21 = add i32 %21, 200
  %22 = ptrtoint ptr %bug17190_timer7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add21, ptr %bug17190_timer7, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end6.cleanup_crit_edge, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ef4_mdio_links_ok(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio45_ethtool_ksettings_get_npage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @falcon_qt202x_phy_ops, !1, !"falcon_qt202x_phy_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 481, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 364, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 369, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 335, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 148, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @qt2025c_wait_reset.__UNIQUE_ID_ddebug523, !9, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 93, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 169, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 236, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qt2025c_select_phy_mode.__UNIQUE_ID_ddebug525, !19, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 297, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/qt202x_phy.c", i32 203, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qt2025c_bug17190_workaround.__UNIQUE_ID_ddebug524, !25, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{i64 2148213581, i64 2148213586, i64 2148213599, i64 2148213643, i64 2148213677, i64 2148213698}
