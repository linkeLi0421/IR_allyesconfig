; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/falcon_boards.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/falcon_boards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.falcon_board_type = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@board_types = internal constant { [4 x %struct.falcon_board_type], [32 x i8] } { [4 x %struct.falcon_board_type] [%struct.falcon_board_type { i8 1, ptr @sfe4001_init, ptr @ef4_port_dummy_op_void, ptr @sfe4001_fini, ptr @tenxpress_set_id_led, ptr @sfe4001_check_hw }, %struct.falcon_board_type { i8 2, ptr @sfe4002_init, ptr @sfe4002_init_phy, ptr @ef4_fini_lm87, ptr @sfe4002_set_id_led, ptr @sfe4002_check_hw }, %struct.falcon_board_type { i8 3, ptr @sfe4003_init, ptr @sfe4003_init_phy, ptr @ef4_fini_lm87, ptr @sfe4003_set_id_led, ptr @sfe4003_check_hw }, %struct.falcon_board_type { i8 82, ptr @sfn4112f_init, ptr @sfn4112f_init_phy, ptr @ef4_fini_lm87, ptr @sfn4112f_set_id_led, ptr @sfn4112f_check_hw }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown board type %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sfe4001_hwmon_info = internal constant { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"max6647\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@dev_attr_phy_flash_cfg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phy_flash_cfg_show, ptr @phy_flash_cfg_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHY is powered on\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power-cycling PHY\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"waiting for DSP boot (attempt %d)...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timed out waiting for DSP boot\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_flash_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.sfe4001_fini = private unnamed_addr constant [13 x i8] c"sfe4001_fini\00", align 1
@sfe4002_hwmon_info = internal constant { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"lm87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 46, ptr null, ptr @sfe4002_lm87_channel, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sfe4002_lm87_regs = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"+\99,|-^.L/\D40\AC1\D42\AC3\E04\AC5O6?;\BB\1A\98<\A9\1B\8A9_:\007Z8\00\00", [55 x i8] zeroinitializer }, align 32
@sfe4002_lm87_channel = internal global { i8, [31 x i8] } { i8 3, [31 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"LM87 detected a hardware %s (status %02x:%02x)%s%s%s%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failure\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"problem\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"; board is overheating\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"; controller is overheating\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"; reached critical temperature\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"; electrical fault\00", [45 x i8] zeroinitializer }, align 32
@sfe4003_hwmon_info = internal constant { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"lm87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 46, ptr null, ptr @sfe4003_lm87_channel, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sfe4003_lm87_regs = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"+\7F,g-^.L/\D40\AC3\E04\AC5O6?9U:\00\00", [39 x i8] zeroinitializer }, align 32
@sfe4003_lm87_channel = internal global { i8, [31 x i8] } { i8 3, [31 x i8] zeroinitializer }, align 32
@sfn4112f_hwmon_info = internal constant { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"lm87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 46, ptr null, ptr @sfn4112f_lm87_channel, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sfn4112f_lm87_regs = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"+\99,|-^.L/\D40\AC3\E04\AC5O6?<\A9\1B\8A9K:\007Z8\00\00", [63 x i8] zeroinitializer }, align 32
@sfn4112f_lm87_channel = internal global { i8, [31 x i8] } { i8 3, [31 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 82]
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"board_types\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 706, i32 39 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 757, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"sfe4001_hwmon_info\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 442, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"dev_attr_phy_flash_cfg\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 490, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 301, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 327, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 350, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 399, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 361, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 405, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"sfe4002_hwmon_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 522, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"sfe4002_lm87_regs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 508, i32 17 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"sfe4002_lm87_channel\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 506, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 161, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"sfe4003_hwmon_info\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 653, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"sfe4003_lm87_regs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 643, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant [21 x i8] c"sfe4003_lm87_channel\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 641, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"sfn4112f_hwmon_info\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 591, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"sfn4112f_lm87_regs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 579, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"sfn4112f_lm87_channel\00", align 1
@___asan_gen_.98 = private constant [51 x i8] c"../drivers/net/ethernet/sfc/falcon/falcon_boards.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 577, i32 11 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @board_types, ptr @.str, ptr @sfe4001_hwmon_info, ptr @dev_attr_phy_flash_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sfe4002_hwmon_info, ptr @sfe4002_lm87_regs, ptr @sfe4002_lm87_channel, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sfe4003_hwmon_info, ptr @sfe4003_lm87_regs, ptr @sfe4003_lm87_channel, ptr @sfn4112f_hwmon_info, ptr @sfn4112f_lm87_regs, ptr @sfn4112f_lm87_channel], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_types to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfe4001_hwmon_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phy_flash_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfe4002_hwmon_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfe4002_lm87_regs to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfe4002_lm87_channel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfe4003_hwmon_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfe4003_lm87_regs to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfe4003_lm87_channel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfn4112f_hwmon_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfn4112f_lm87_regs to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfn4112f_lm87_channel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @falcon_probe_board(ptr nocapture noundef readonly %efx, i16 noundef zeroext %revision_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %board.i = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2
  %conv = zext i16 %revision_info to i32
  %2 = lshr i16 %revision_info, 8
  %3 = lshr i32 %conv, 4
  %and = and i32 %3, 15
  %major = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %major, align 4
  %and5 = and i32 %conv, 15
  %minor = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and5, ptr %minor, align 8
  %trunc = trunc i16 %2 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %for.inc.3 [
    i8 1, label %for.inc.thread
    i8 2, label %if.then.1
    i8 3, label %if.then.2
    i8 82, label %for.inc.3.thread
  ]

for.inc.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @board_types, ptr %board.i, align 8
  br label %cleanup

if.then.1:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds ([4 x %struct.falcon_board_type], ptr @board_types, i32 0, i32 1), ptr %board.i, align 8
  br label %cleanup

if.then.2:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds ([4 x %struct.falcon_board_type], ptr @board_types, i32 0, i32 2), ptr %board.i, align 8
  br label %cleanup

for.inc.3.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr getelementptr inbounds ([4 x %struct.falcon_board_type], ptr @board_types, i32 0, i32 3), ptr %board.i, align 8
  br label %cleanup

for.inc.3:                                        ; preds = %entry
  %11 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr.pr = load ptr, ptr %board.i, align 8
  %tobool.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool.not, label %do.body, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %for.inc.3
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body.cleanup_crit_edge, label %if.then16

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  %conv17 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %conv17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.3.thread, %if.then.2, %if.then.1, %for.inc.thread
  %retval.0 = phi i32 [ 0, %for.inc.3.cleanup_crit_edge ], [ -19, %if.then16 ], [ -19, %do.body.cleanup_crit_edge ], [ 0, %for.inc.3.thread ], [ 0, %if.then.1 ], [ 0, %for.inc.thread ], [ 0, %if.then.2 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfe4001_init(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %i2c_adap = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 3
  %call1 = tail call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull @sfe4001_hwmon_info) #5
  %hwmon_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %hwmon_client to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %hwmon_client, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext 11, i8 noundef zeroext 90) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.fail_hwmon_crit_edge

if.end.fail_hwmon_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_hwmon

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @i2c_new_dummy_device(ptr noundef %i2c_adap, i16 noundef zeroext 116) #5
  %ioexp_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %ioexp_client to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %ioexp_client, align 4
  %cmp.i56 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call11 to i32
  br label %fail_hwmon

if.end17:                                         ; preds = %if.end9
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %6 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_mode, align 16
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @falcon_stop_nic_stats(ptr noundef %efx) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %call21 = tail call fastcc i32 @sfe4001_poweron(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.fail_ioexp_crit_edge

if.end20.fail_ioexp_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_ioexp

if.end24:                                         ; preds = %if.end20
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call25 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_phy_flash_cfg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body, label %fail_on

do.body:                                          ; preds = %if.end24
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 8
  %and29 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body.cleanup_crit_edge, label %if.then31

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %12 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.1) #8
  br label %cleanup

fail_on:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nic_data.i, align 4
  %ioexp_client1.i = getelementptr inbounds %struct.falcon_nic_data, ptr %15, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %ioexp_client1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioexp_client1.i, align 4
  %hwmon_client3.i = getelementptr inbounds %struct.falcon_nic_data, ptr %15, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %hwmon_client3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwmon_client3.i, align 8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext -1) #5
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 7, i8 noundef zeroext -1) #5
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %call7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 2) #5
  br label %fail_ioexp

fail_ioexp:                                       ; preds = %fail_on, %if.end20.fail_ioexp_crit_edge
  %rc.0 = phi i32 [ %call21, %if.end20.fail_ioexp_crit_edge ], [ %call25, %fail_on ]
  %20 = ptrtoint ptr %ioexp_client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioexp_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %21) #5
  br label %fail_hwmon

fail_hwmon:                                       ; preds = %fail_ioexp, %if.then14, %if.end.fail_hwmon_crit_edge
  %rc.1 = phi i32 [ %call7, %if.end.fail_hwmon_crit_edge ], [ %5, %if.then14 ], [ %rc.0, %fail_ioexp ]
  %22 = ptrtoint ptr %hwmon_client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwmon_client, align 8
  tail call void @i2c_unregister_device(ptr noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_hwmon, %if.then31, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %rc.1, %fail_hwmon ], [ 0, %if.then31 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_port_dummy_op_void(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfe4001_fini(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.sfe4001_fini) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_phy_flash_cfg) #5
  %8 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nic_data.i, align 4
  %ioexp_client1.i = getelementptr inbounds %struct.falcon_nic_data, ptr %9, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %ioexp_client1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioexp_client1.i, align 4
  %hwmon_client3.i = getelementptr inbounds %struct.falcon_nic_data, ptr %9, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %hwmon_client3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwmon_client3.i, align 8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext -1) #5
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 7, i8 noundef zeroext -1) #5
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %call7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 2) #5
  %ioexp_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %ioexp_client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioexp_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #5
  %hwmon_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %hwmon_client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwmon_client, align 8
  tail call void @i2c_unregister_device(ptr noundef %17) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tenxpress_set_id_led(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfe4001_check_hw(ptr nocapture noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %xmac_poll_required = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %xmac_poll_required to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xmac_poll_required, align 8, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioexp_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %ioexp_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioexp_client, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %and = and i32 %call2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_data1, align 4
  %ioexp_client1.i = getelementptr inbounds %struct.falcon_nic_data, ptr %7, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %ioexp_client1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioexp_client1.i, align 4
  %hwmon_client3.i = getelementptr inbounds %struct.falcon_nic_data, ptr %7, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %hwmon_client3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwmon_client3.i, align 8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext -1) #5
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 7, i8 noundef zeroext -1) #5
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %call7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 2) #5
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %12 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %phy_mode, align 16
  %cond = select i1 %cmp, i32 -5, i32 -34
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfe4002_init(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ef4_init_lm87(ptr noundef %efx, ptr noundef nonnull @sfe4002_hwmon_info, ptr noundef nonnull @sfe4002_lm87_regs)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfe4002_init_phy(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @falcon_qt202x_set_led(ptr noundef %efx, i32 noundef 1, i32 noundef 3) #5
  tail call void @falcon_qt202x_set_led(ptr noundef %efx, i32 noundef 0, i32 noundef 11) #5
  tail call void @falcon_qt202x_set_led(ptr noundef %efx, i32 noundef 2, i32 noundef 4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef4_fini_lm87(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %hwmon_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %hwmon_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_client, align 8
  tail call void @i2c_unregister_device(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfe4002_set_id_led(ptr noundef %efx, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %cond = select i1 %cmp, i32 5, i32 4
  tail call void @falcon_qt202x_set_led(ptr noundef %efx, i32 noundef 2, i32 noundef %cond) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfe4002_check_hw(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %major = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %minor = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  %phi.sel = select i1 %cmp1, i32 -33, i32 -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i32 [ -1, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %call2 = tail call fastcc i32 @ef4_check_lm87(ptr noundef %efx, i32 noundef %6)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfe4003_init(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ef4_init_lm87(ptr noundef %efx, ptr noundef nonnull @sfe4003_hwmon_info, ptr noundef nonnull @sfe4003_lm87_regs)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfe4003_init_phy(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %minor = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %major = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @falcon_txc_set_gpio_dir(ptr noundef %efx, i32 noundef 11, i32 noundef 1) #5
  tail call void @falcon_txc_set_gpio_val(ptr noundef %efx, i32 noundef 11, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfe4003_set_id_led(ptr noundef %efx, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %minor = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %major = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 1
  %cond = zext i1 %cmp2 to i32
  tail call void @falcon_txc_set_gpio_val(ptr noundef %efx, i32 noundef 11, i32 noundef %cond) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfe4003_check_hw(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %major = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %minor = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp slt i32 %5, 3
  %phi.sel = select i1 %cmp1, i32 -33, i32 -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i32 [ -1, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %call2 = tail call fastcc i32 @ef4_check_lm87(ptr noundef %efx, i32 noundef %6)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfn4112f_init(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ef4_init_lm87(ptr noundef %efx, ptr noundef nonnull @sfn4112f_hwmon_info, ptr noundef nonnull @sfn4112f_lm87_regs)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfn4112f_init_phy(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @falcon_qt202x_set_led(ptr noundef %efx, i32 noundef 0, i32 noundef 10) #5
  tail call void @falcon_qt202x_set_led(ptr noundef %efx, i32 noundef 1, i32 noundef 9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfn4112f_set_id_led(ptr noundef %efx, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 1
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %switch.selectcmp2 = icmp eq i32 %mode, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 4, i32 %switch.select
  tail call void @falcon_qt202x_set_led(ptr noundef %efx, i32 noundef 1, i32 noundef %switch.select3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfn4112f_check_hw(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ef4_check_lm87(ptr noundef %efx, i32 noundef -73)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_stop_nic_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sfe4001_poweron(ptr nocapture noundef readonly %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %ioexp_client1 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %ioexp_client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioexp_client1, align 4
  %hwmon_client3 = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %hwmon_client3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmon_client3, align 8
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext -17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.fail_on_crit_edge

if.end7.fail_on_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.fail_on_crit_edge, label %if.end15

if.end11.fail_on_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call12)
  %cmp16.not = icmp eq i32 %call12, 255
  br i1 %cmp16.not, label %if.end15.if.end27_crit_edge, label %do.body

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.body:                                          ; preds = %if.end15
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body.do.end_crit_edge, label %if.then20

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body.do.end_crit_edge
  %call22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %do.end.fail_on_crit_edge

do.end.fail_on_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end15.if.end27_crit_edge
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %msg_enable48 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %net_dev52 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  br label %for.body

for.body:                                         ; preds = %for.cond62.9.for.body_crit_edge, %if.end27
  %i.0133 = phi i32 [ 0, %if.end27 ], [ %inc76, %for.cond62.9.for.body_crit_edge ]
  %10 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_mode, align 16
  %and30 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %spec.select = select i1 %tobool31.not, i8 -95, i8 -87
  %call36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %spec.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %for.body.fail_on_crit_edge

for.body.fail_on_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end39:                                         ; preds = %for.body
  tail call void @msleep(i32 noundef 10) #5
  %12 = and i8 %spec.select, -88
  %call43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body47, label %if.end39.fail_on_crit_edge

if.end39.fail_on_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

do.body47:                                        ; preds = %if.end39
  %13 = ptrtoint ptr %msg_enable48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable48, align 8
  %and49 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body47.do.end55_crit_edge, label %if.then51

do.body47.do.end55_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

if.then51:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %net_dev52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev52, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %i.0133) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body47.do.end55_crit_edge
  %17 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_mode, align 16
  %and57 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %for.body65.preheader, label %if.then59

for.body65.preheader:                             ; preds = %do.end55
  tail call void @msleep(i32 noundef 100) #5
  %call66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %for.body65.preheader.fail_on_crit_edge, label %if.end70

for.body65.preheader.fail_on_crit_edge:           ; preds = %for.body65.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.then59:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  %call60 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #5
  br label %cleanup

for.cond62:                                       ; preds = %if.end70
  tail call void @msleep(i32 noundef 100) #5
  %call66.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.1)
  %cmp67.1 = icmp slt i32 %call66.1, 0
  br i1 %cmp67.1, label %for.cond62.fail_on_crit_edge, label %if.end70.1

for.cond62.fail_on_crit_edge:                     ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.1:                                       ; preds = %for.cond62
  %and71.1 = and i32 %call66.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.1)
  %tobool72.not.1 = icmp eq i32 %and71.1, 0
  br i1 %tobool72.not.1, label %for.cond62.1, label %if.end70.1.cleanup_crit_edge

if.end70.1.cleanup_crit_edge:                     ; preds = %if.end70.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.1:                                     ; preds = %if.end70.1
  tail call void @msleep(i32 noundef 100) #5
  %call66.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.2)
  %cmp67.2 = icmp slt i32 %call66.2, 0
  br i1 %cmp67.2, label %for.cond62.1.fail_on_crit_edge, label %if.end70.2

for.cond62.1.fail_on_crit_edge:                   ; preds = %for.cond62.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.2:                                       ; preds = %for.cond62.1
  %and71.2 = and i32 %call66.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.2)
  %tobool72.not.2 = icmp eq i32 %and71.2, 0
  br i1 %tobool72.not.2, label %for.cond62.2, label %if.end70.2.cleanup_crit_edge

if.end70.2.cleanup_crit_edge:                     ; preds = %if.end70.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.2:                                     ; preds = %if.end70.2
  tail call void @msleep(i32 noundef 100) #5
  %call66.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.3)
  %cmp67.3 = icmp slt i32 %call66.3, 0
  br i1 %cmp67.3, label %for.cond62.2.fail_on_crit_edge, label %if.end70.3

for.cond62.2.fail_on_crit_edge:                   ; preds = %for.cond62.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.3:                                       ; preds = %for.cond62.2
  %and71.3 = and i32 %call66.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.3)
  %tobool72.not.3 = icmp eq i32 %and71.3, 0
  br i1 %tobool72.not.3, label %for.cond62.3, label %if.end70.3.cleanup_crit_edge

if.end70.3.cleanup_crit_edge:                     ; preds = %if.end70.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.3:                                     ; preds = %if.end70.3
  tail call void @msleep(i32 noundef 100) #5
  %call66.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.4)
  %cmp67.4 = icmp slt i32 %call66.4, 0
  br i1 %cmp67.4, label %for.cond62.3.fail_on_crit_edge, label %if.end70.4

for.cond62.3.fail_on_crit_edge:                   ; preds = %for.cond62.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.4:                                       ; preds = %for.cond62.3
  %and71.4 = and i32 %call66.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.4)
  %tobool72.not.4 = icmp eq i32 %and71.4, 0
  br i1 %tobool72.not.4, label %for.cond62.4, label %if.end70.4.cleanup_crit_edge

if.end70.4.cleanup_crit_edge:                     ; preds = %if.end70.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.4:                                     ; preds = %if.end70.4
  tail call void @msleep(i32 noundef 100) #5
  %call66.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.5)
  %cmp67.5 = icmp slt i32 %call66.5, 0
  br i1 %cmp67.5, label %for.cond62.4.fail_on_crit_edge, label %if.end70.5

for.cond62.4.fail_on_crit_edge:                   ; preds = %for.cond62.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.5:                                       ; preds = %for.cond62.4
  %and71.5 = and i32 %call66.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.5)
  %tobool72.not.5 = icmp eq i32 %and71.5, 0
  br i1 %tobool72.not.5, label %for.cond62.5, label %if.end70.5.cleanup_crit_edge

if.end70.5.cleanup_crit_edge:                     ; preds = %if.end70.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.5:                                     ; preds = %if.end70.5
  tail call void @msleep(i32 noundef 100) #5
  %call66.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.6)
  %cmp67.6 = icmp slt i32 %call66.6, 0
  br i1 %cmp67.6, label %for.cond62.5.fail_on_crit_edge, label %if.end70.6

for.cond62.5.fail_on_crit_edge:                   ; preds = %for.cond62.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.6:                                       ; preds = %for.cond62.5
  %and71.6 = and i32 %call66.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.6)
  %tobool72.not.6 = icmp eq i32 %and71.6, 0
  br i1 %tobool72.not.6, label %for.cond62.6, label %if.end70.6.cleanup_crit_edge

if.end70.6.cleanup_crit_edge:                     ; preds = %if.end70.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.6:                                     ; preds = %if.end70.6
  tail call void @msleep(i32 noundef 100) #5
  %call66.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.7)
  %cmp67.7 = icmp slt i32 %call66.7, 0
  br i1 %cmp67.7, label %for.cond62.6.fail_on_crit_edge, label %if.end70.7

for.cond62.6.fail_on_crit_edge:                   ; preds = %for.cond62.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.7:                                       ; preds = %for.cond62.6
  %and71.7 = and i32 %call66.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.7)
  %tobool72.not.7 = icmp eq i32 %and71.7, 0
  br i1 %tobool72.not.7, label %for.cond62.7, label %if.end70.7.cleanup_crit_edge

if.end70.7.cleanup_crit_edge:                     ; preds = %if.end70.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.7:                                     ; preds = %if.end70.7
  tail call void @msleep(i32 noundef 100) #5
  %call66.8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.8)
  %cmp67.8 = icmp slt i32 %call66.8, 0
  br i1 %cmp67.8, label %for.cond62.7.fail_on_crit_edge, label %if.end70.8

for.cond62.7.fail_on_crit_edge:                   ; preds = %for.cond62.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.8:                                       ; preds = %for.cond62.7
  %and71.8 = and i32 %call66.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.8)
  %tobool72.not.8 = icmp eq i32 %and71.8, 0
  br i1 %tobool72.not.8, label %for.cond62.8, label %if.end70.8.cleanup_crit_edge

if.end70.8.cleanup_crit_edge:                     ; preds = %if.end70.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.8:                                     ; preds = %if.end70.8
  tail call void @msleep(i32 noundef 100) #5
  %call66.9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.9)
  %cmp67.9 = icmp slt i32 %call66.9, 0
  br i1 %cmp67.9, label %for.cond62.8.fail_on_crit_edge, label %if.end70.9

for.cond62.8.fail_on_crit_edge:                   ; preds = %for.cond62.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.end70.9:                                       ; preds = %for.cond62.8
  %and71.9 = and i32 %call66.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.9)
  %tobool72.not.9 = icmp eq i32 %and71.9, 0
  br i1 %tobool72.not.9, label %for.cond62.9, label %if.end70.9.cleanup_crit_edge

if.end70.9.cleanup_crit_edge:                     ; preds = %if.end70.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond62.9:                                     ; preds = %if.end70.9
  %inc76 = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc76, 20
  br i1 %exitcond.not, label %do.body78, label %for.cond62.9.for.body_crit_edge

for.cond62.9.for.body_crit_edge:                  ; preds = %for.cond62.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end70:                                         ; preds = %for.body65.preheader
  %and71 = and i32 %call66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %for.cond62, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body78:                                        ; preds = %for.cond62.9
  %19 = ptrtoint ptr %msg_enable48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable48, align 8
  %and80 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body78.fail_on_crit_edge, label %if.then82

do.body78.fail_on_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_on

if.then82:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %net_dev52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev52, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.4) #8
  br label %fail_on

fail_on:                                          ; preds = %if.then82, %do.body78.fail_on_crit_edge, %for.cond62.8.fail_on_crit_edge, %for.cond62.7.fail_on_crit_edge, %for.cond62.6.fail_on_crit_edge, %for.cond62.5.fail_on_crit_edge, %for.cond62.4.fail_on_crit_edge, %for.cond62.3.fail_on_crit_edge, %for.cond62.2.fail_on_crit_edge, %for.cond62.1.fail_on_crit_edge, %for.cond62.fail_on_crit_edge, %for.body65.preheader.fail_on_crit_edge, %if.end39.fail_on_crit_edge, %for.body.fail_on_crit_edge, %do.end.fail_on_crit_edge, %if.end11.fail_on_crit_edge, %if.end7.fail_on_crit_edge
  %rc.0 = phi i32 [ %call8, %if.end7.fail_on_crit_edge ], [ %call12, %if.end11.fail_on_crit_edge ], [ %call22, %do.end.fail_on_crit_edge ], [ -110, %if.then82 ], [ -110, %do.body78.fail_on_crit_edge ], [ %call43, %if.end39.fail_on_crit_edge ], [ %call36, %for.body.fail_on_crit_edge ], [ %call66.9, %for.cond62.8.fail_on_crit_edge ], [ %call66.8, %for.cond62.7.fail_on_crit_edge ], [ %call66.7, %for.cond62.6.fail_on_crit_edge ], [ %call66.6, %for.cond62.5.fail_on_crit_edge ], [ %call66.5, %for.cond62.4.fail_on_crit_edge ], [ %call66.4, %for.cond62.3.fail_on_crit_edge ], [ %call66.3, %for.cond62.2.fail_on_crit_edge ], [ %call66.2, %for.cond62.1.fail_on_crit_edge ], [ %call66.1, %for.cond62.fail_on_crit_edge ], [ %call66, %for.body65.preheader.fail_on_crit_edge ]
  %23 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nic_data.i, align 4
  %ioexp_client1.i = getelementptr inbounds %struct.falcon_nic_data, ptr %24, i32 0, i32 2, i32 6
  %25 = ptrtoint ptr %ioexp_client1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioexp_client1.i, align 4
  %hwmon_client3.i = getelementptr inbounds %struct.falcon_nic_data, ptr %24, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %hwmon_client3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwmon_client3.i, align 8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 2, i8 noundef zeroext -1) #5
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 7, i8 noundef zeroext -1) #5
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %call7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 2) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_on, %if.end70.cleanup_crit_edge, %if.end70.9.cleanup_crit_edge, %if.end70.8.cleanup_crit_edge, %if.end70.7.cleanup_crit_edge, %if.end70.6.cleanup_crit_edge, %if.end70.5.cleanup_crit_edge, %if.end70.4.cleanup_crit_edge, %if.end70.3.cleanup_crit_edge, %if.end70.2.cleanup_crit_edge, %if.end70.1.cleanup_crit_edge, %if.then59, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail_on ], [ 0, %if.then59 ], [ %call4, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.end70.9.cleanup_crit_edge ], [ 0, %if.end70.8.cleanup_crit_edge ], [ 0, %if.end70.7.cleanup_crit_edge ], [ 0, %if.end70.6.cleanup_crit_edge ], [ 0, %if.end70.5.cleanup_crit_edge ], [ 0, %if.end70.4.cleanup_crit_edge ], [ 0, %if.end70.3.cleanup_crit_edge ], [ 0, %if.end70.2.cleanup_crit_edge ], [ 0, %if.end70.1.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_flash_cfg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 16
  %and = lshr i32 %3, 3
  %and.lobit = and i32 %and, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %and.lobit)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_flash_cfg_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #5
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp1 = icmp eq i8 %5, 48
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %and = and i32 %3, -9
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %new_mode.0 = phi i32 [ %and, %if.then ], [ 8, %lor.lhs.false.if.end_crit_edge ]
  %xor = xor i32 %new_mode.0, %3
  %and3 = and i32 %xor, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end28.thread46, label %if.else5

if.end28.thread46:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtnl_unlock() #5
  br label %13

if.else5:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp6.not = icmp eq i32 %7, 1
  br i1 %cmp6.not, label %lor.lhs.false8, label %if.else5.if.end28.thread_crit_edge

if.else5.if.end28.thread_crit_edge:               ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.thread

lor.lhs.false8:                                   ; preds = %if.else5
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else12, label %lor.lhs.false8.if.end28.thread_crit_edge

lor.lhs.false8.if.end28.thread_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.thread

if.else12:                                        ; preds = %lor.lhs.false8
  %12 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %new_mode.0, ptr %phy_mode, align 16
  %and14 = and i32 %new_mode.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else12.if.end17_crit_edge, label %if.then16

if.else12.if.end17_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @falcon_stop_nic_stats(ptr noundef %1) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.else12.if.end17_crit_edge
  %call18 = tail call fastcc i32 @sfe4001_poweron(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 @ef4_reconfigure_port(ptr noundef %1) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %err.0 = phi i32 [ %call18, %if.end17.if.end22_crit_edge ], [ %call21, %if.then20 ]
  br i1 %tobool15.not, label %if.then25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @falcon_start_nic_stats(ptr noundef %1) #5
  br label %if.end28

if.end28.thread:                                  ; preds = %lor.lhs.false8.if.end28.thread_crit_edge, %if.else5.if.end28.thread_crit_edge
  tail call void @rtnl_unlock() #5
  br label %14

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  tail call void @rtnl_unlock() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool29.not = icmp eq i32 %err.0, 0
  br i1 %tobool29.not, label %if.end28._crit_edge, label %if.end28._crit_edge49

if.end28._crit_edge49:                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %14

if.end28._crit_edge:                              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %13

13:                                               ; preds = %if.end28._crit_edge, %if.end28.thread46
  br label %14

14:                                               ; preds = %13, %if.end28._crit_edge49, %if.end28.thread
  %15 = phi i32 [ %count, %13 ], [ %err.0, %if.end28._crit_edge49 ], [ -16, %if.end28.thread ]
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_reconfigure_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_start_nic_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_init_lm87(ptr nocapture noundef readonly %efx, ptr noundef %info, ptr nocapture noundef readonly %reg_values) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %i2c_adap = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 3
  %call1 = tail call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef %info) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %call1, i8 noundef zeroext 65) #5
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %call1, i8 noundef zeroext 66) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %reg_values.addr.0.i = phi ptr [ %reg_values, %if.end ], [ %incdec.ptr1.i, %while.body.i.while.cond.i_crit_edge ]
  %3 = ptrtoint ptr %reg_values.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg_values.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %while.cond.i27.preheader, label %while.body.i

while.cond.i27.preheader:                         ; preds = %while.cond.i
  %call.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext 19, i8 noundef zeroext 95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool2.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool2.not.i31, label %while.cond.i27.1, label %while.cond.i27.preheader.err_crit_edge

while.cond.i27.preheader.err_crit_edge:           ; preds = %while.cond.i27.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i8, ptr %reg_values.addr.0.i, i32 1
  %incdec.ptr1.i = getelementptr i8, ptr %reg_values.addr.0.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext %4, i8 noundef zeroext %6) #5
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.err_crit_edge

while.body.i.err_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.cond.i27.1:                                 ; preds = %while.cond.i27.preheader
  %call.i30.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext 23, i8 noundef zeroext 95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.1)
  %tobool2.not.i31.1 = icmp eq i32 %call.i30.1, 0
  br i1 %tobool2.not.i31.1, label %while.cond.i27.2, label %while.cond.i27.1.err_crit_edge

while.cond.i27.1.err_crit_edge:                   ; preds = %while.cond.i27.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

while.cond.i27.2:                                 ; preds = %while.cond.i27.1
  %call.i30.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext 55, i8 noundef zeroext 90) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.2)
  %tobool2.not.i31.2 = icmp eq i32 %call.i30.2, 0
  br i1 %tobool2.not.i31.2, label %while.cond.i27.3, label %while.cond.i27.2.err_crit_edge

while.cond.i27.2.err_crit_edge:                   ; preds = %while.cond.i27.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

while.cond.i27.3:                                 ; preds = %while.cond.i27.2
  %call.i30.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext 56, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.3)
  %tobool2.not.i31.3 = icmp eq i32 %call.i30.3, 0
  br i1 %tobool2.not.i31.3, label %while.cond.i27.4, label %while.cond.i27.3.err_crit_edge

while.cond.i27.3.err_crit_edge:                   ; preds = %while.cond.i27.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

while.cond.i27.4:                                 ; preds = %while.cond.i27.3
  %call.i30.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext 20, i8 noundef zeroext 125) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.4)
  %tobool2.not.i31.4 = icmp eq i32 %call.i30.4, 0
  br i1 %tobool2.not.i31.4, label %while.cond.i27.5, label %while.cond.i27.4.err_crit_edge

while.cond.i27.4.err_crit_edge:                   ; preds = %while.cond.i27.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

while.cond.i27.5:                                 ; preds = %while.cond.i27.4
  %call.i30.5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call1, i8 noundef zeroext 24, i8 noundef zeroext 125) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.5)
  %tobool2.not.i31.5 = icmp eq i32 %call.i30.5, 0
  br i1 %tobool2.not.i31.5, label %if.end12, label %while.cond.i27.5.err_crit_edge

while.cond.i27.5.err_crit_edge:                   ; preds = %while.cond.i27.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end12:                                         ; preds = %while.cond.i27.5
  call void @__sanitizer_cov_trace_pc() #7
  %hwmon_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %hwmon_client to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %hwmon_client, align 8
  br label %cleanup

err:                                              ; preds = %while.cond.i27.5.err_crit_edge, %while.cond.i27.4.err_crit_edge, %while.cond.i27.3.err_crit_edge, %while.cond.i27.2.err_crit_edge, %while.cond.i27.1.err_crit_edge, %while.body.i.err_crit_edge, %while.cond.i27.preheader.err_crit_edge
  %rc.0 = phi i32 [ %call.i30, %while.cond.i27.preheader.err_crit_edge ], [ %call.i30.1, %while.cond.i27.1.err_crit_edge ], [ %call.i30.2, %while.cond.i27.2.err_crit_edge ], [ %call.i30.3, %while.cond.i27.3.err_crit_edge ], [ %call.i30.4, %while.cond.i27.4.err_crit_edge ], [ %call.i30.5, %while.cond.i27.5.err_crit_edge ], [ %call.i, %while.body.i.err_crit_edge ]
  tail call void @i2c_unregister_device(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end12, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %rc.0, %err ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_qt202x_set_led(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_check_lm87(ptr nocapture noundef readonly %efx, i32 noundef %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data.i, align 4
  %hwmon_client = getelementptr inbounds %struct.falcon_nic_data, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %hwmon_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_client, align 8
  %link_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_state, align 8, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %shl = shl i32 %call4, 8
  %or = or i32 %shl, %call1
  %and = and i32 %or, %mask
  %conv12 = trunc i32 %and to i16
  %and14 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end8.if.end26_crit_edge, label %if.then16

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then16:                                        ; preds = %if.end8
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then16.cleanup_crit_edge, label %if.end21

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %call17)
  %cmp22 = icmp ugt i32 %call17, 95
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.end8.if.end26_crit_edge
  %temp_crit.0.off0 = phi i1 [ false, %if.end8.if.end26_crit_edge ], [ %cmp22, %if.end21 ]
  %and28 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end40_crit_edge, label %if.then30

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then30:                                        ; preds = %if.end26
  %call31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then30.cleanup_crit_edge, label %if.end35

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %call31)
  %cmp36 = icmp ugt i32 %call31, 125
  %spec.select113 = select i1 %cmp36, i1 true, i1 %temp_crit.0.off0
  br label %if.end40

if.end40:                                         ; preds = %if.end35, %if.end26.if.end40_crit_edge
  %temp_crit.1.off0 = phi i1 [ %temp_crit.0.off0, %if.end26.if.end40_crit_edge ], [ %spec.select113, %if.end35 ]
  %and42 = and i32 %and, 65487
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43 = icmp ne i32 %and42, 0
  %spec.select114 = select i1 %temp_crit.1.off0, i1 true, i1 %tobool43
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv12)
  %tobool49.not = icmp eq i16 %conv12, 0
  br i1 %tobool49.not, label %if.end40.if.end74_crit_edge, label %do.body

if.end40.if.end74_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.body:                                          ; preds = %if.end40
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and51 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body.if.end74_crit_edge, label %if.then53

do.body.if.end74_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %cond = select i1 %spec.select114, ptr @.str.9, ptr @.str.10
  %and57 = and i32 %and, 255
  %conv13 = lshr i32 %and, 8
  %10 = and i32 %conv13, 255
  %cond62 = select i1 %tobool15.not, ptr @.str.12, ptr @.str.11
  %cond66 = select i1 %tobool29.not, ptr @.str.12, ptr @.str.13
  %cond69 = select i1 %temp_crit.1.off0, ptr @.str.14, ptr @.str.12
  %cond72 = select i1 %tobool43, ptr @.str.15, ptr @.str.12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond, i32 noundef %and57, i32 noundef %10, ptr noundef nonnull %cond62, ptr noundef nonnull %cond66, ptr noundef nonnull %cond69, ptr noundef nonnull %cond72) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then53, %do.body.if.end74_crit_edge, %if.end40.if.end74_crit_edge
  %cond77 = select i1 %spec.select114, i32 -34, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then30.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond77, %if.end74 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ], [ %call31, %if.then30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_txc_set_gpio_dir(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_txc_set_gpio_val(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 757, i32 3}
!2 = !{ptr @board_types, !3, !"board_types", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 706, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 490, i32 2}
!6 = !{ptr @sfe4001_hwmon_info, !7, !"sfe4001_hwmon_info", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 442, i32 36}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 301, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 327, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 350, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 399, i32 8}
!16 = !{ptr @dev_attr_phy_flash_cfg, !15, !"dev_attr_phy_flash_cfg", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 361, i32 22}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 405, i32 2}
!21 = !{ptr @__func__.sfe4001_fini, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"falcon_lm87_common_regs", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 78, i32 17}
!24 = !{ptr @sfe4002_hwmon_info, !25, !"sfe4002_hwmon_info", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 522, i32 36}
!26 = !{ptr @sfe4002_lm87_channel, !27, !"sfe4002_lm87_channel", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 506, i32 11}
!28 = !{ptr @sfe4002_lm87_regs, !29, !"sfe4002_lm87_regs", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 508, i32 17}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 161, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sfe4003_hwmon_info, !40, !"sfe4003_hwmon_info", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 653, i32 36}
!41 = !{ptr @sfe4003_lm87_channel, !42, !"sfe4003_lm87_channel", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 641, i32 11}
!43 = !{ptr @sfe4003_lm87_regs, !44, !"sfe4003_lm87_regs", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 643, i32 17}
!45 = !{ptr @sfn4112f_hwmon_info, !46, !"sfn4112f_hwmon_info", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 591, i32 36}
!47 = !{ptr @sfn4112f_lm87_channel, !48, !"sfn4112f_lm87_channel", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 577, i32 11}
!49 = !{ptr @sfn4112f_lm87_regs, !50, !"sfn4112f_lm87_regs", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/sfc/falcon/falcon_boards.c", i32 579, i32 17}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i8 0, i8 2}
