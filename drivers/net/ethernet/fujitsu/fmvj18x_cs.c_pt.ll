; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/fujitsu/fmvj18x_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/fujitsu/fmvj18x_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description345 = internal constant [69 x i8] c"fmvj18x_cs.description=fmvj18x and compatible PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [56 x i8] c"fmvj18x_cs.file=drivers/net/ethernet/fujitsu/fmvj18x_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [23 x i8] c"fmvj18x_cs.license=GPL\00", section ".modinfo", align 1
@__param_str_sram_config = internal constant [23 x i8] c"fmvj18x_cs.sram_config\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sram_config = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sram_config = internal constant %struct.kernel_param { ptr @__param_str_sram_config, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @sram_config } }, section "__param", align 4
@__UNIQUE_ID_sram_configtype348 = internal constant [36 x i8] c"fmvj18x_cs.parmtype=sram_config:int\00", section ".modinfo", align 1
@__initcall__kmod_fmvj18x_cs__353_711_fmvj18x_cs_driver_init6 = internal global ptr @fmvj18x_cs_driver_init, section ".initcall6.init", align 4
@fmvj18x_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @fmvj18x_probe, ptr @fmvj18x_detach, ptr @fmvj18x_suspend, ptr @fmvj18x_resume, ptr null, ptr @fmvj18x_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_fmvj18x_cs_driver_exit = internal global ptr @fmvj18x_cs_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fmvj18x_cs\00", [21 x i8] zeroinitializer }, align 32
@fmvj18x_ids = internal constant { [26 x %struct.pcmcia_device_id], [344 x i8] } { [26 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 4, i16 4, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1384941764, i32 1962483289, i32 0, i32 0], [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1403999598, i32 -2021680862, i32 0, i32 0], [4 x ptr] [ptr @.str.68, ptr @.str.69, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -193041306, i32 -2021680862, i32 0, i32 0], [4 x ptr] [ptr @.str.70, ptr @.str.69, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1860543448, i32 1538208219, i32 0, i32 0], [4 x ptr] [ptr @.str.71, ptr @.str.72, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1860543448, i32 1057261406, i32 0, i32 0], [4 x ptr] [ptr @.str.71, ptr @.str.73, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1203433080, i32 311663522, i32 0, i32 0], [4 x ptr] [ptr @.str.74, ptr @.str.26, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -185321143, i32 2000228596, i32 0, i32 0], [4 x ptr] [ptr @.str.75, ptr @.str.76, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1930474182, i32 123717558, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.78, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1930474182, i32 -1127267354, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.79, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2050945513, i32 -650037658, i32 0, i32 0], [4 x ptr] [ptr @.str.80, ptr @.str.81, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 514757749, i32 -1885278608, i32 0, i32 0], [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 514757749, i32 1988344986, i32 0, i32 0], [4 x ptr] [ptr @.str.82, ptr @.str.84, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1490616034, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.85, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 630846548, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.86, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1891629606, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.87, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1870102400, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.88, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 514757749, i32 -643220499, i32 0, i32 0], [4 x ptr] [ptr @.str.82, ptr @.str.89, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 417270688, i32 -2095378332, i32 0, i32 0], [4 x ptr] [ptr @.str.90, ptr @.str.27, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 261, i16 3338, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 261, i16 3594, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 3585, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 2565, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 2821, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 50, i16 4353, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [344 x i8] zeroinitializer }, align 32
@fmvj18x_probe.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fmvj18x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/fujitsu/fmvj18x_cs.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fmvj18x_attach()\0A\00", [46 x i8] zeroinitializer }, align 32
@fjn_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @fjn_open, ptr @fjn_close, ptr @fjn_start_xmit, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fjn_config, ptr null, ptr null, ptr @fjn_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@fjn_open.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fjn_open\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fjn_open('%s').\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fmvj18x_cs: fjn_open('%s').\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fjn_reset.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fjn_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fjn_reset() called\0A\00", [44 x i8] zeroinitializer }, align 32
@fjn_close.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fjn_close\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fjn_close('%s').\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fmvj18x_cs: fjn_close('%s').\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Attempting to send a large packet (%d bytes)\0A\00", [50 x i8] zeroinitializer }, align 32
@fjn_start_xmit.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fjn_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Transmitting a packet of length %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"transmit timed out with status %04x, %s?\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ conflict\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"network cable problem\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"timeout registers: %04x %04x %04x %04x %04x %04x %04x %04x.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.9\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCMCIA 0x%lx\00", [19 x i8] zeroinitializer }, align 32
@fmvj18x_config.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fmvj18x_config\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fmvj18x_config\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FMV-J182\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TDK LAK-CD021\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LA501\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PK-UG-J001\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Panasonic\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"C-NET(PC)C\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Access/CARD\00", [20 x i8] zeroinitializer }, align 32
@fmvj18x_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015fmvj18x_cs: unable to read hardware net address\0A\00", [45 x i8] zeroinitializer }, align 32
@fmvj18x_config._entry_ptr = internal global ptr @fmvj18x_config._entry, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FMV-J181\00", [23 x i8] zeroinitializer }, align 32
@fmvj18x_config._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.22, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015fmvj18x_cs: register_netdev() failed\0A\00", [56 x i8] zeroinitializer }, align 32
@fmvj18x_config._entry_ptr.35 = internal global ptr @fmvj18x_config._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s, sram %s, port %#3lx, irq %d, hw_addr %pM\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4K TX*2\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8K TX*2\00", [24 x i8] zeroinitializer }, align 32
@mfc_try_io_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015fmvj18x_cs: out of resource for serial\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mfc_try_io_port\00", [16 x i8] zeroinitializer }, align 32
@mfc_try_io_port._entry_ptr = internal global ptr @mfc_try_io_port._entry, section ".printk_index", align 4
@fjn_interrupt.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fjn_interrupt\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: interrupt, rx_status %02x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fmvj18x_cs: %s: interrupt, rx_status %02x.\0A\00", [52 x i8] zeroinitializer }, align 32
@fjn_interrupt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"               tx_status %02x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fmvj18x_cs:                tx_status %02x.\0A\00", [52 x i8] zeroinitializer }, align 32
@fjn_interrupt.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.46, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: exiting interrupt,\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fmvj18x_cs: %s: exiting interrupt,\0A\00", [60 x i8] zeroinitializer }, align 32
@fjn_interrupt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.48, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"    tx_status %02x, rx_status %02x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fmvj18x_cs:     tx_status %02x, rx_status %02x.\0A\00", [47 x i8] zeroinitializer }, align 32
@fjn_rx.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fjn_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: in rx_packet(), rx_status %02x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fmvj18x_cs: %s: in rx_packet(), rx_status %02x.\0A\00", [47 x i8] zeroinitializer }, align 32
@fjn_rx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Rxing packet mode %02x status %04x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"The FMV-18x claimed a very large packet, size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@fjn_rx.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.55, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Rxed packet of length %d: \00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fmvj18x_cs: %s: Rxed packet of length %d: \00", [53 x i8] zeroinitializer }, align 32
@fjn_rx.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.57, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fmvj18x_cs:  %02x\00", [46 x i8] zeroinitializer }, align 32
@fjn_rx.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.59, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fmvj18x_cs: .\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@fmvj18x_release.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fmvj18x_release\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fmvj18x_release\0A\00", [47 x i8] zeroinitializer }, align 32
@fmvj18x_detach.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fmvj18x_detach\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fmvj18x_detach\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EAGLE Technology\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NE200 ETHERNET LAN MBH10302 04\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Eiger Labs,Inc\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EPX-10BT PC Card Ethernet 10BT\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Eiger labs,Inc.\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FUJITSU\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LAN Card(FMV-J182)\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MBH10308\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FUJITSU TOWA\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HITACHI\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HT-4840-11\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NextComK.K.\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NC5310B Ver1.0       \00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NC5310 Ver1.0        \00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RATOC System Inc.\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"10BASE_T CARD R280\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDK\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LAC-CD02x\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LAC-CF010\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CONTEC Co.,Ltd.\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCMCIA LAN MBH10304  ES\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCMCIA MBH10302\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UBKK,V2.0\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GlobalNetworker 3410/3412\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 4, i64 16, i64 50, i64 261, i64 49153]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 16, i64 3338, i64 3594, i64 18453]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 4099]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 704]
@__sancov_gen_cov_switch_values.94 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"sram_config\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 71, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"fmvj18x_cs_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 702, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 704, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"fmvj18x_ids\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 672, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 237, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"fjn_netdev_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 221, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1055, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1068, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 885, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1094, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 826, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 831, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 782, i32 24 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 785, i32 7 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 785, i32 24 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 786, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1050, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1052, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 339, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 464, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 478, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 480, i32 15 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 482, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 484, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 486, i32 15 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 495, i32 14 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 500, i32 6 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 512, i32 14 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 520, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 525, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 526, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 526, i32 45 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 291, i32 6 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 738, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 739, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 759, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 760, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 963, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 969, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 989, i32 22 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1009, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1012, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1013, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 603, i32 21 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 636, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 269, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 674, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 675, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 676, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 677, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 678, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 679, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 680, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 681, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 682, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 683, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 684, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 685, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 686, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 687, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 688, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 689, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 690, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.381 = private constant [45 x i8] c"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 691, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__UNIQUE_ID_sram_configtype348, ptr @__exitcall_fmvj18x_cs_driver_exit, ptr @__initcall__kmod_fmvj18x_cs__353_711_fmvj18x_cs_driver_init6, ptr @__param_sram_config, ptr @fmvj18x_config._entry, ptr @fmvj18x_config._entry.33, ptr @fmvj18x_config._entry_ptr, ptr @fmvj18x_config._entry_ptr.35, ptr @fmvj18x_cs_driver_exit, ptr @mfc_try_io_port._entry, ptr @mfc_try_io_port._entry_ptr, ptr @sram_config, ptr @fmvj18x_cs_driver, ptr @.str, ptr @fmvj18x_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fjn_netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmvj18x_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmvj18x_ids to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fjn_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmvj18x_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmvj18x_config._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_try_io_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fmvj18x_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @fmvj18x_cs_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fmvj18x_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @fmvj18x_cs_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fmvj18x_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fmvj18x_probe.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fmvj18x_probe, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fmvj18x_probe.__UNIQUE_ID_ddebug349, ptr noundef %dev3, ptr noundef nonnull @.str.3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 32, i32 noundef 1, i32 noundef 1) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %priv, align 8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %add.ptr.i, align 4
  %base = getelementptr i8, ptr %call4, i32 2332
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %base, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %end, align 4
  %6 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 16
  store i32 %or, ptr %flags, align 4
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %9 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config_flags, align 4
  %or11 = or i32 %10, 1
  store i32 %or11, ptr %config_flags, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fjn_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %12 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %call12 = tail call fastcc i32 @fmvj18x_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fmvj18x_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fmvj18x_detach.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fmvj18x_detach, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fmvj18x_detach.__UNIQUE_ID_ddebug350, ptr noundef %dev3, ptr noundef nonnull @.str.65) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #11
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fmvj18x_release.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fmvj18x_detach, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !204

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev5.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fmvj18x_release.__UNIQUE_ID_ddebug352, ptr noundef %dev5.i, ptr noundef nonnull @.str.63) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %base.i = getelementptr i8, ptr %3, i32 2332
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %do.end.i.fmvj18x_release.exit_crit_edge, label %if.then6.i

do.end.i.fmvj18x_release.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fmvj18x_release.exit

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %base.i, align 4
  tail call void @iounmap(ptr noundef nonnull %5) #11
  br label %fmvj18x_release.exit

fmvj18x_release.exit:                             ; preds = %if.then6.i, %do.end.i.fmvj18x_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #11
  tail call void @free_netdev(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fmvj18x_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fmvj18x_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call fastcc void @fjn_reset(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fmvj18x_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  %buggybuf = alloca [32 x i8], align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !205
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buggybuf) #11
  %3 = call ptr @memset(ptr %buggybuf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #11
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %9 = call ptr @memset(ptr %addr, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fmvj18x_config.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fmvj18x_config, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fmvj18x_config.__UNIQUE_ID_ddebug351, ptr noundef %dev4, ptr noundef nonnull @.str.23) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 14
  %10 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %io_lines, align 4
  %call5 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext 34, ptr noundef nonnull %buf) #11
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else58, label %if.then7

if.then7:                                         ; preds = %do.end
  %call8 = call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @fmvj18x_ioprobe, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end10, label %if.then7.failed_crit_edge

if.then7.failed_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end10:                                         ; preds = %if.then7
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %13 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %manf_id, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %sw.default [
    i16 261, label %sw.bb
    i16 16, label %sw.bb25
    i16 50, label %sw.bb31
    i16 -16383, label %if.end10.if.end75_crit_edge
    i16 4, label %sw.bb38
  ]

if.end10.if.end75_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

sw.bb:                                            ; preds = %if.end10
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %16 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %card_id, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %17, label %sw.bb.if.end75_crit_edge [
    i16 18453, label %sw.bb.if.then23_crit_edge
    i16 3338, label %sw.bb.if.then23_crit_edge441
    i16 3594, label %sw.bb.if.then23_crit_edge442
  ]

sw.bb.if.then23_crit_edge442:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

sw.bb.if.then23_crit_edge441:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

sw.bb.if.then23_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

sw.bb.if.end75_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then23:                                        ; preds = %sw.bb.if.then23_crit_edge, %sw.bb.if.then23_crit_edge441, %sw.bb.if.then23_crit_edge442
  %config_base = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %19 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2048, ptr %config_base, align 8
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %20 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 71, ptr %config_index, align 4
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %end = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %end, align 4
  br label %if.end75

sw.bb25:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %config_base26 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %24 = ptrtoint ptr %config_base26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2048, ptr %config_base26, align 8
  %config_index27 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %25 = ptrtoint ptr %config_index27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 71, ptr %config_index27, align 4
  %arrayidx29 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx29, align 4
  %end30 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %end30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %end30, align 4
  br label %if.end75

sw.bb31:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %config_base32 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %29 = ptrtoint ptr %config_base32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2048, ptr %config_base32, align 8
  %config_index33 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %30 = ptrtoint ptr %config_index33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 71, ptr %config_index33, align 4
  %arrayidx35 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx35, align 4
  %end36 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %end36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %end36, align 4
  br label %if.end75

sw.bb38:                                          ; preds = %if.end10
  %config_base39 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %34 = ptrtoint ptr %config_base39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %config_base39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4064, i32 %35)
  %cmp40 = icmp eq i32 %35, 4064
  br i1 %cmp40, label %sw.bb38.if.end75_crit_edge, label %if.else

sw.bb38.if.end75_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else:                                          ; preds = %sw.bb38
  %card_id43 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %36 = ptrtoint ptr %card_id43 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %card_id43, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %37, label %if.else54 [
    i16 4, label %if.else.if.end75_crit_edge
    i16 4099, label %if.else.if.end75_crit_edge443
  ]

if.else.if.end75_crit_edge443:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else58:                                        ; preds = %do.end
  %manf_id59 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %39 = ptrtoint ptr %manf_id59 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %manf_id59, align 4
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %40, label %sw.default72 [
    i16 4, label %sw.bb61
    i16 704, label %if.end75.thread
  ]

sw.bb61:                                          ; preds = %if.else58
  %card_id62 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %42 = ptrtoint ptr %card_id62 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %card_id62, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4099, i16 %43)
  %cmp64 = icmp eq i16 %43, 4099
  %config_index67 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %config_index67 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32, ptr %config_index67, align 4
  br label %if.end75

if.else68:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %config_index67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %config_index67, align 4
  br label %if.end75

sw.default72:                                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #13
  %config_index73 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %46 = ptrtoint ptr %config_index73 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %config_index73, align 4
  br label %if.end75

if.end75:                                         ; preds = %sw.default72, %if.else68, %if.then66, %sw.default, %if.else54, %if.else.if.end75_crit_edge, %if.else.if.end75_crit_edge443, %sw.bb38.if.end75_crit_edge, %sw.bb31, %sw.bb25, %if.then23, %sw.bb.if.end75_crit_edge, %if.end10.if.end75_crit_edge
  %cmp144 = phi i1 [ true, %sw.default72 ], [ true, %if.else68 ], [ false, %if.then66 ], [ false, %sw.bb25 ], [ false, %sw.bb31 ], [ false, %sw.default ], [ false, %if.then23 ], [ false, %if.else54 ], [ false, %sw.bb.if.end75_crit_edge ], [ false, %if.end10.if.end75_crit_edge ], [ true, %sw.bb38.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge443 ]
  %cmp164 = phi i1 [ false, %sw.default72 ], [ false, %if.else68 ], [ false, %if.then66 ], [ false, %sw.bb25 ], [ false, %sw.bb31 ], [ true, %sw.default ], [ false, %if.then23 ], [ false, %if.else54 ], [ false, %sw.bb.if.end75_crit_edge ], [ false, %if.end10.if.end75_crit_edge ], [ false, %sw.bb38.if.end75_crit_edge ], [ true, %if.else.if.end75_crit_edge ], [ true, %if.else.if.end75_crit_edge443 ]
  %cmp178 = phi i1 [ false, %sw.default72 ], [ false, %if.else68 ], [ false, %if.then66 ], [ false, %sw.bb25 ], [ false, %sw.bb31 ], [ false, %sw.default ], [ true, %if.then23 ], [ false, %if.else54 ], [ true, %sw.bb.if.end75_crit_edge ], [ false, %if.end10.if.end75_crit_edge ], [ false, %sw.bb38.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge443 ]
  %cmp182 = phi i1 [ false, %sw.default72 ], [ false, %if.else68 ], [ false, %if.then66 ], [ false, %sw.bb25 ], [ false, %sw.bb31 ], [ false, %sw.default ], [ false, %if.then23 ], [ true, %if.else54 ], [ false, %sw.bb.if.end75_crit_edge ], [ false, %if.end10.if.end75_crit_edge ], [ false, %sw.bb38.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge443 ]
  %cmp186 = phi i1 [ false, %sw.default72 ], [ false, %if.else68 ], [ false, %if.then66 ], [ true, %sw.bb25 ], [ false, %sw.bb31 ], [ false, %sw.default ], [ false, %if.then23 ], [ false, %if.else54 ], [ false, %sw.bb.if.end75_crit_edge ], [ false, %if.end10.if.end75_crit_edge ], [ false, %sw.bb38.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge443 ]
  %cmp190 = phi i1 [ false, %sw.default72 ], [ false, %if.else68 ], [ false, %if.then66 ], [ false, %sw.bb25 ], [ true, %sw.bb31 ], [ false, %sw.default ], [ false, %if.then23 ], [ false, %if.else54 ], [ false, %sw.bb.if.end75_crit_edge ], [ false, %if.end10.if.end75_crit_edge ], [ false, %sw.bb38.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge ], [ false, %if.else.if.end75_crit_edge443 ]
  %cardtype.0 = phi i32 [ 0, %sw.default72 ], [ 0, %if.else68 ], [ 6, %if.then66 ], [ 7, %sw.bb25 ], [ 8, %sw.bb31 ], [ 1, %sw.default ], [ 2, %if.then23 ], [ 4, %if.else54 ], [ 2, %sw.bb.if.end75_crit_edge ], [ 3, %if.end10.if.end75_crit_edge ], [ 0, %sw.bb38.if.end75_crit_edge ], [ 1, %if.else.if.end75_crit_edge ], [ 1, %if.else.if.end75_crit_edge443 ]
  %resource76 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %arrayidx77 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx77, align 4
  %end78 = getelementptr inbounds %struct.resource, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %end78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %end78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp79.not = icmp eq i32 %50, 0
  br i1 %cmp79.not, label %if.else96, label %if.end75.if.then81_crit_edge

if.end75.if.then81_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

if.end75.thread:                                  ; preds = %if.else58
  %resource76384 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %arrayidx77385 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %arrayidx77385 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx77385, align 4
  %end78386 = getelementptr inbounds %struct.resource, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %end78386 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end78386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp79.not387 = icmp eq i32 %54, 0
  br i1 %cmp79.not387, label %if.then90, label %if.end75.thread.if.then81_crit_edge

if.end75.thread.if.then81_crit_edge:              ; preds = %if.end75.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

if.then81:                                        ; preds = %if.end75.thread.if.then81_crit_edge, %if.end75.if.then81_crit_edge
  %55 = phi ptr [ %52, %if.end75.thread.if.then81_crit_edge ], [ %48, %if.end75.if.then81_crit_edge ]
  %arrayidx77414 = phi ptr [ %arrayidx77385, %if.end75.thread.if.then81_crit_edge ], [ %arrayidx77, %if.end75.if.then81_crit_edge ]
  %resource76411 = phi ptr [ %resource76384, %if.end75.thread.if.then81_crit_edge ], [ %resource76, %if.end75.if.then81_crit_edge ]
  %cardtype.0408 = phi i32 [ 5, %if.end75.thread.if.then81_crit_edge ], [ %cardtype.0, %if.end75.if.then81_crit_edge ]
  %cmp190405 = phi i1 [ false, %if.end75.thread.if.then81_crit_edge ], [ %cmp190, %if.end75.if.then81_crit_edge ]
  %cmp186402 = phi i1 [ false, %if.end75.thread.if.then81_crit_edge ], [ %cmp186, %if.end75.if.then81_crit_edge ]
  %cmp182399 = phi i1 [ false, %if.end75.thread.if.then81_crit_edge ], [ %cmp182, %if.end75.if.then81_crit_edge ]
  %cmp178396 = phi i1 [ false, %if.end75.thread.if.then81_crit_edge ], [ %cmp178, %if.end75.if.then81_crit_edge ]
  %cmp164393 = phi i1 [ false, %if.end75.thread.if.then81_crit_edge ], [ %cmp164, %if.end75.if.then81_crit_edge ]
  %cmp144390 = phi i1 [ false, %if.end75.thread.if.then81_crit_edge ], [ %cmp144, %if.end75.if.then81_crit_edge ]
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1016, ptr %55, align 4
  %57 = ptrtoint ptr %arrayidx77414 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx77414, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp7.i = icmp eq i32 %60, 0
  br i1 %cmp7.i, label %if.then.i, label %if.then81.if.end.i_crit_edge

if.then81.if.end.i_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.cond.i:                                       ; preds = %if.end.i
  %61 = ptrtoint ptr %arrayidx77414 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx77414, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 760, ptr %62, align 4
  %64 = load ptr, ptr %arrayidx77414, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp7.1.i = icmp eq i32 %66, 0
  br i1 %cmp7.1.i, label %if.then.1.i, label %for.cond.i.if.end.1.i_crit_edge

for.cond.i.if.end.1.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.1.i = getelementptr inbounds %struct.resource, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %end.1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %end.1.i, align 4
  %call.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.cond.i.if.end.1.i_crit_edge
  %call10.1.i = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1.i)
  %cmp11.1.i = icmp eq i32 %call10.1.i, 0
  br i1 %cmp11.1.i, label %if.end.1.i.if.end102_crit_edge, label %for.cond.1.i

if.end.1.i.if.end102_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

for.cond.1.i:                                     ; preds = %if.end.1.i
  %68 = ptrtoint ptr %arrayidx77414 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx77414, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1000, ptr %69, align 4
  %71 = load ptr, ptr %arrayidx77414, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp7.2.i = icmp eq i32 %73, 0
  br i1 %cmp7.2.i, label %if.then.2.i, label %for.cond.1.i.if.end.2.i_crit_edge

for.cond.1.i.if.end.2.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.2.i = getelementptr inbounds %struct.resource, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %end.2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %end.2.i, align 4
  %call.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %for.cond.1.i.if.end.2.i_crit_edge
  %call10.2.i = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2.i)
  %cmp11.2.i = icmp eq i32 %call10.2.i, 0
  br i1 %cmp11.2.i, label %if.end.2.i.if.end102_crit_edge, label %for.cond.2.i

if.end.2.i.if.end102_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

for.cond.2.i:                                     ; preds = %if.end.2.i
  %75 = ptrtoint ptr %arrayidx77414 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx77414, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 744, ptr %76, align 4
  %78 = load ptr, ptr %arrayidx77414, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp7.3.i = icmp eq i32 %80, 0
  br i1 %cmp7.3.i, label %if.then.3.i, label %for.cond.2.i.if.end.3.i_crit_edge

for.cond.2.i.if.end.3.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.3.i = getelementptr inbounds %struct.resource, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %end.3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %end.3.i, align 4
  %call.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %for.cond.2.i.if.end.3.i_crit_edge
  %call10.3.i = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3.i)
  %cmp11.3.i = icmp eq i32 %call10.3.i, 0
  br i1 %cmp11.3.i, label %if.end.3.i.if.end102_crit_edge, label %for.cond.3.i

if.end.3.i.if.end102_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

for.cond.3.i:                                     ; preds = %if.end.3.i
  %82 = ptrtoint ptr %arrayidx77414 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx77414, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %83, align 4
  %85 = load ptr, ptr %arrayidx77414, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp7.4.i = icmp eq i32 %87, 0
  br i1 %cmp7.4.i, label %if.then.4.i, label %for.cond.3.i.mfc_try_io_port.exit_crit_edge

for.cond.3.i.mfc_try_io_port.exit_crit_edge:      ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mfc_try_io_port.exit

if.then.4.i:                                      ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.4.i = getelementptr inbounds %struct.resource, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %end.4.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %end.4.i, align 4
  %call.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %mfc_try_io_port.exit

if.then.i:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  %end.i = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 1
  %89 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %end.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then81.if.end.i_crit_edge
  %call10.i = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end.i.if.end102_crit_edge, label %for.cond.i

if.end.i.if.end102_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

mfc_try_io_port.exit:                             ; preds = %if.then.4.i, %for.cond.3.i.mfc_try_io_port.exit_crit_edge
  %call10.4.i = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.4.i)
  %cmp83.not = icmp eq i32 %call10.4.i, 0
  br i1 %cmp83.not, label %mfc_try_io_port.exit.if.end102_crit_edge, label %mfc_try_io_port.exit.failed_crit_edge

mfc_try_io_port.exit.failed_crit_edge:            ; preds = %mfc_try_io_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

mfc_try_io_port.exit.if.end102_crit_edge:         ; preds = %mfc_try_io_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then90:                                        ; preds = %if.end75.thread
  %90 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %resource76384, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 768, ptr %91, align 4
  %call.i352 = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %cmp1.i = icmp eq i32 %call.i352, 0
  br i1 %cmp1.i, label %if.then90.ungermann_try_io_port.exit.thread_crit_edge, label %for.cond.i354

if.then90.ungermann_try_io_port.exit.thread_crit_edge: ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %ungermann_try_io_port.exit.thread

for.cond.i354:                                    ; preds = %if.then90
  %93 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %resource76384, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 800, ptr %94, align 4
  %call.1.i353 = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i353)
  %cmp1.1.i = icmp eq i32 %call.1.i353, 0
  br i1 %cmp1.1.i, label %for.cond.i354.ungermann_try_io_port.exit.thread_crit_edge, label %for.cond.1.i356

for.cond.i354.ungermann_try_io_port.exit.thread_crit_edge: ; preds = %for.cond.i354
  call void @__sanitizer_cov_trace_pc() #13
  br label %ungermann_try_io_port.exit.thread

for.cond.1.i356:                                  ; preds = %for.cond.i354
  %96 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %resource76384, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 832, ptr %97, align 4
  %call.2.i355 = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i355)
  %cmp1.2.i = icmp eq i32 %call.2.i355, 0
  br i1 %cmp1.2.i, label %for.cond.1.i356.ungermann_try_io_port.exit.thread_crit_edge, label %for.cond.2.i358

for.cond.1.i356.ungermann_try_io_port.exit.thread_crit_edge: ; preds = %for.cond.1.i356
  call void @__sanitizer_cov_trace_pc() #13
  br label %ungermann_try_io_port.exit.thread

for.cond.2.i358:                                  ; preds = %for.cond.1.i356
  %99 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %resource76384, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 864, ptr %100, align 4
  %call.3.i357 = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i357)
  %cmp1.3.i = icmp eq i32 %call.3.i357, 0
  br i1 %cmp1.3.i, label %for.cond.2.i358.ungermann_try_io_port.exit.thread_crit_edge, label %for.cond.3.i360

for.cond.2.i358.ungermann_try_io_port.exit.thread_crit_edge: ; preds = %for.cond.2.i358
  call void @__sanitizer_cov_trace_pc() #13
  br label %ungermann_try_io_port.exit.thread

for.cond.3.i360:                                  ; preds = %for.cond.2.i358
  %102 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %resource76384, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 896, ptr %103, align 4
  %call.4.i359 = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i359)
  %cmp1.4.i = icmp eq i32 %call.4.i359, 0
  br i1 %cmp1.4.i, label %for.cond.3.i360.ungermann_try_io_port.exit.thread_crit_edge, label %for.cond.4.i

for.cond.3.i360.ungermann_try_io_port.exit.thread_crit_edge: ; preds = %for.cond.3.i360
  call void @__sanitizer_cov_trace_pc() #13
  br label %ungermann_try_io_port.exit.thread

for.cond.4.i:                                     ; preds = %for.cond.3.i360
  %105 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %resource76384, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 928, ptr %106, align 4
  %call.5.i = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp1.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp1.5.i, label %for.cond.4.i.ungermann_try_io_port.exit.thread_crit_edge, label %for.cond.5.i

for.cond.4.i.ungermann_try_io_port.exit.thread_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ungermann_try_io_port.exit.thread

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %108 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %resource76384, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 960, ptr %109, align 4
  %call.6.i = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp1.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp1.6.i, label %for.cond.5.i.ungermann_try_io_port.exit.thread_crit_edge, label %for.cond.5.i.failed_crit_edge

for.cond.5.i.failed_crit_edge:                    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

for.cond.5.i.ungermann_try_io_port.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ungermann_try_io_port.exit.thread

ungermann_try_io_port.exit.thread:                ; preds = %for.cond.5.i.ungermann_try_io_port.exit.thread_crit_edge, %for.cond.4.i.ungermann_try_io_port.exit.thread_crit_edge, %for.cond.3.i360.ungermann_try_io_port.exit.thread_crit_edge, %for.cond.2.i358.ungermann_try_io_port.exit.thread_crit_edge, %for.cond.1.i356.ungermann_try_io_port.exit.thread_crit_edge, %for.cond.i354.ungermann_try_io_port.exit.thread_crit_edge, %if.then90.ungermann_try_io_port.exit.thread_crit_edge
  %111 = ptrtoint ptr %resource76384 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %resource76384, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %and.i = lshr i32 %114, 3
  %shr.i = and i32 %and.i, 28
  %or.i = or i32 %shr.i, 34
  %config_index.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %115 = ptrtoint ptr %config_index.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i, ptr %config_index.i, align 4
  br label %if.end102

if.else96:                                        ; preds = %if.end75
  %call97 = call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.else96.if.end102_crit_edge, label %if.else96.failed_crit_edge

if.else96.failed_crit_edge:                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.else96.if.end102_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.end102:                                        ; preds = %if.else96.if.end102_crit_edge, %ungermann_try_io_port.exit.thread, %mfc_try_io_port.exit.if.end102_crit_edge, %if.end.i.if.end102_crit_edge, %if.end.3.i.if.end102_crit_edge, %if.end.2.i.if.end102_crit_edge, %if.end.1.i.if.end102_crit_edge
  %arrayidx77413 = phi ptr [ %arrayidx77, %if.else96.if.end102_crit_edge ], [ %arrayidx77414, %mfc_try_io_port.exit.if.end102_crit_edge ], [ %arrayidx77385, %ungermann_try_io_port.exit.thread ], [ %arrayidx77414, %if.end.i.if.end102_crit_edge ], [ %arrayidx77414, %if.end.1.i.if.end102_crit_edge ], [ %arrayidx77414, %if.end.2.i.if.end102_crit_edge ], [ %arrayidx77414, %if.end.3.i.if.end102_crit_edge ]
  %resource76410 = phi ptr [ %resource76, %if.else96.if.end102_crit_edge ], [ %resource76411, %mfc_try_io_port.exit.if.end102_crit_edge ], [ %resource76384, %ungermann_try_io_port.exit.thread ], [ %resource76411, %if.end.i.if.end102_crit_edge ], [ %resource76411, %if.end.1.i.if.end102_crit_edge ], [ %resource76411, %if.end.2.i.if.end102_crit_edge ], [ %resource76411, %if.end.3.i.if.end102_crit_edge ]
  %cardtype.0407 = phi i32 [ %cardtype.0, %if.else96.if.end102_crit_edge ], [ %cardtype.0408, %mfc_try_io_port.exit.if.end102_crit_edge ], [ 5, %ungermann_try_io_port.exit.thread ], [ %cardtype.0408, %if.end.i.if.end102_crit_edge ], [ %cardtype.0408, %if.end.1.i.if.end102_crit_edge ], [ %cardtype.0408, %if.end.2.i.if.end102_crit_edge ], [ %cardtype.0408, %if.end.3.i.if.end102_crit_edge ]
  %cmp190404 = phi i1 [ %cmp190, %if.else96.if.end102_crit_edge ], [ %cmp190405, %mfc_try_io_port.exit.if.end102_crit_edge ], [ false, %ungermann_try_io_port.exit.thread ], [ %cmp190405, %if.end.i.if.end102_crit_edge ], [ %cmp190405, %if.end.1.i.if.end102_crit_edge ], [ %cmp190405, %if.end.2.i.if.end102_crit_edge ], [ %cmp190405, %if.end.3.i.if.end102_crit_edge ]
  %cmp186401 = phi i1 [ %cmp186, %if.else96.if.end102_crit_edge ], [ %cmp186402, %mfc_try_io_port.exit.if.end102_crit_edge ], [ false, %ungermann_try_io_port.exit.thread ], [ %cmp186402, %if.end.i.if.end102_crit_edge ], [ %cmp186402, %if.end.1.i.if.end102_crit_edge ], [ %cmp186402, %if.end.2.i.if.end102_crit_edge ], [ %cmp186402, %if.end.3.i.if.end102_crit_edge ]
  %cmp182398 = phi i1 [ %cmp182, %if.else96.if.end102_crit_edge ], [ %cmp182399, %mfc_try_io_port.exit.if.end102_crit_edge ], [ false, %ungermann_try_io_port.exit.thread ], [ %cmp182399, %if.end.i.if.end102_crit_edge ], [ %cmp182399, %if.end.1.i.if.end102_crit_edge ], [ %cmp182399, %if.end.2.i.if.end102_crit_edge ], [ %cmp182399, %if.end.3.i.if.end102_crit_edge ]
  %cmp178395 = phi i1 [ %cmp178, %if.else96.if.end102_crit_edge ], [ %cmp178396, %mfc_try_io_port.exit.if.end102_crit_edge ], [ false, %ungermann_try_io_port.exit.thread ], [ %cmp178396, %if.end.i.if.end102_crit_edge ], [ %cmp178396, %if.end.1.i.if.end102_crit_edge ], [ %cmp178396, %if.end.2.i.if.end102_crit_edge ], [ %cmp178396, %if.end.3.i.if.end102_crit_edge ]
  %cmp164392 = phi i1 [ %cmp164, %if.else96.if.end102_crit_edge ], [ %cmp164393, %mfc_try_io_port.exit.if.end102_crit_edge ], [ false, %ungermann_try_io_port.exit.thread ], [ %cmp164393, %if.end.i.if.end102_crit_edge ], [ %cmp164393, %if.end.1.i.if.end102_crit_edge ], [ %cmp164393, %if.end.2.i.if.end102_crit_edge ], [ %cmp164393, %if.end.3.i.if.end102_crit_edge ]
  %cmp144389 = phi i1 [ %cmp144, %if.else96.if.end102_crit_edge ], [ %cmp144390, %mfc_try_io_port.exit.if.end102_crit_edge ], [ false, %ungermann_try_io_port.exit.thread ], [ %cmp144390, %if.end.i.if.end102_crit_edge ], [ %cmp144390, %if.end.1.i.if.end102_crit_edge ], [ %cmp144390, %if.end.2.i.if.end102_crit_edge ], [ %cmp144390, %if.end.3.i.if.end102_crit_edge ]
  %call103 = call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @fjn_interrupt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.failed_crit_edge

if.end102.failed_crit_edge:                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end106:                                        ; preds = %if.end102
  %call107 = call i32 @pcmcia_enable_device(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.failed_crit_edge

if.end106.failed_crit_edge:                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end110:                                        ; preds = %if.end106
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %116 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %irq, align 8
  %irq111 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %118 = ptrtoint ptr %irq111 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %irq111, align 4
  %119 = ptrtoint ptr %resource76410 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %resource76410, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %123 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %base_addr, align 32
  %124 = ptrtoint ptr %arrayidx77413 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx77413, align 4
  %end.i363 = getelementptr inbounds %struct.resource, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %end.i363 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %end.i363, align 4
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %125, align 4
  %sub.i = add i32 %127, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %129)
  %cmp117.not = icmp eq i32 %sub.i, %129
  br i1 %cmp117.not, label %if.end110.if.end125_crit_edge, label %if.then119

if.end110.if.end125_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then119:                                       ; preds = %if.end110
  %130 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 3
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 33, ptr %flags.i, align 4
  %135 = load ptr, ptr %arrayidx.i, align 4
  %end.i364 = getelementptr inbounds %struct.resource, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %end.i364 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %end.i364, align 4
  %137 = load ptr, ptr %arrayidx.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %137, align 4
  %139 = load ptr, ptr %arrayidx.i, align 4
  %call7.i = call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %139, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp.not.i, label %if.end.i365, label %if.then119.failed_crit_edge

if.then119.failed_crit_edge:                      ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end.i365:                                      ; preds = %if.then119
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %141, i32 0, i32 1
  %144 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %143
  %add.i.i = add i32 %sub.i.i, %145
  %call14.i = call ptr @ioremap(i32 noundef %143, i32 noundef %add.i.i) #11
  %base.i = getelementptr i8, ptr %131, i32 2332
  %146 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call14.i, ptr %base.i, align 4
  %cmp16.i = icmp eq ptr %call14.i, null
  br i1 %cmp16.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end.i365
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %131, ptr noundef nonnull @.str.61) #14
  br label %failed

if.end18.i:                                       ; preds = %if.end.i365
  %147 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i, align 4
  %call21.i = call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %148, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %fmvj18x_setup_mfc.exit, label %if.then23.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i, align 4
  call void @iounmap(ptr noundef %150) #11
  %151 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %base.i, align 4
  br label %failed

fmvj18x_setup_mfc.exit:                           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %131, i32 0, i32 5
  %152 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %base_addr.i, align 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  call void @arm_heavy_mb() #11
  %154 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i, align 4
  %add.ptr.i366 = getelementptr i8, ptr %155, i32 2048
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i366, i8 71) #11, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  call void @arm_heavy_mb() #11
  %156 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %157, i32 2050
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32.i, i8 0) #11, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @arm_heavy_mb() #11
  %conv.i = trunc i32 %153 to i8
  %158 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %159, i32 2058
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37.i, i8 %conv.i) #11, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  call void @arm_heavy_mb() #11
  %shr.i367 = lshr i32 %153, 8
  %conv42.i = trunc i32 %shr.i367 to i8
  %160 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %161, i32 2060
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 %conv42.i) #11, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  call void @arm_heavy_mb() #11
  %162 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %163, i32 2080
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49.i, i8 69) #11, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !212
  call void @arm_heavy_mb() #11
  %164 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %165, i32 2082
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54.i, i8 8) #11, !srcloc !207
  br label %if.end125

if.end125:                                        ; preds = %fmvj18x_setup_mfc.exit, %if.end110.if.end125_crit_edge
  %166 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %base_addr, align 32
  %168 = load i32, ptr @sram_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp127 = icmp eq i32 %168, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  %add = add i32 %167, 6
  %and = and i32 %add, 1048575
  %add133 = or i32 %and, -18874368
  %169 = inttoptr i32 %add133 to ptr
  br i1 %cmp127, label %do.body130, label %do.body136

do.body130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 -38) #11, !srcloc !207
  br label %if.end143

do.body136:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 -34) #11, !srcloc !207
  br label %if.end143

if.end143:                                        ; preds = %do.body136, %do.body130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  %add150 = add i32 %167, 7
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %170 = inttoptr i32 %add152 to ptr
  br i1 %cmp144389, label %do.body147, label %do.body155

do.body147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 -96) #11, !srcloc !207
  br label %if.end162

do.body155:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 32) #11, !srcloc !207
  br label %if.end162

if.end162:                                        ; preds = %do.body155, %do.body147
  %171 = zext i32 %cardtype.0407 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %cardtype.0407, label %for.cond225.preheader [
    i32 1, label %if.end162.sw.bb163_crit_edge
    i32 2, label %if.end162.sw.bb163_crit_edge444
    i32 4, label %if.end162.sw.bb163_crit_edge445
    i32 3, label %if.end162.sw.bb163_crit_edge446
    i32 7, label %if.end162.sw.bb163_crit_edge447
    i32 8, label %if.end162.sw.bb163_crit_edge448
    i32 5, label %for.cond.preheader
    i32 6, label %sw.bb210
  ]

if.end162.sw.bb163_crit_edge448:                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

if.end162.sw.bb163_crit_edge447:                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

if.end162.sw.bb163_crit_edge446:                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

if.end162.sw.bb163_crit_edge445:                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

if.end162.sw.bb163_crit_edge444:                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

if.end162.sw.bb163_crit_edge:                     ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb163

for.cond.preheader:                               ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  %add202 = add i32 %167, 24
  %and204 = and i32 %add202, 1048575
  %add205 = or i32 %and204, -18874368
  %172 = inttoptr i32 %add205 to ptr
  %173 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %172) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %174 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %addr, align 1
  %add203.1 = add i32 %167, 25
  %and204.1 = and i32 %add203.1, 1048575
  %add205.1 = or i32 %and204.1, -18874368
  %175 = inttoptr i32 %add205.1 to ptr
  %176 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %175) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %177 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %4, align 1
  %add203.2 = add i32 %167, 26
  %and204.2 = and i32 %add203.2, 1048575
  %add205.2 = or i32 %and204.2, -18874368
  %178 = inttoptr i32 %add205.2 to ptr
  %179 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %178) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %180 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %5, align 1
  %add203.3 = add i32 %167, 27
  %and204.3 = and i32 %add203.3, 1048575
  %add205.3 = or i32 %and204.3, -18874368
  %181 = inttoptr i32 %add205.3 to ptr
  %182 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %181) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %183 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %6, align 1
  %add203.4 = add i32 %167, 28
  %and204.4 = and i32 %add203.4, 1048575
  %add205.4 = or i32 %and204.4, -18874368
  %184 = inttoptr i32 %add205.4 to ptr
  %185 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %184) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %186 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %7, align 1
  %add203.5 = add i32 %167, 29
  %and204.5 = and i32 %add203.5, 1048575
  %add205.5 = or i32 %and204.5, -18874368
  %187 = inttoptr i32 %add205.5 to ptr
  %188 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %187) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %189 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %8, align 1
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #11
  br label %sw.epilog242

for.cond225.preheader:                            ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  %add230 = add i32 %167, 26
  %and232 = and i32 %add230, 1048575
  %add233 = or i32 %and232, -18874368
  %190 = inttoptr i32 %add233 to ptr
  %191 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %190) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %192 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %addr, align 1
  %add231.1 = add i32 %167, 27
  %and232.1 = and i32 %add231.1, 1048575
  %add233.1 = or i32 %and232.1, -18874368
  %193 = inttoptr i32 %add233.1 to ptr
  %194 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %193) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %195 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %4, align 1
  %add231.2 = add i32 %167, 28
  %and232.2 = and i32 %add231.2, 1048575
  %add233.2 = or i32 %and232.2, -18874368
  %196 = inttoptr i32 %add233.2 to ptr
  %197 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %196) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %198 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %5, align 1
  %add231.3 = add i32 %167, 29
  %and232.3 = and i32 %add231.3, 1048575
  %add233.3 = or i32 %and232.3, -18874368
  %199 = inttoptr i32 %add233.3 to ptr
  %200 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %199) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %201 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %6, align 1
  %add231.4 = add i32 %167, 30
  %and232.4 = and i32 %add231.4, 1048575
  %add233.4 = or i32 %and232.4, -18874368
  %202 = inttoptr i32 %add233.4 to ptr
  %203 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %202) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %204 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %7, align 1
  %add231.5 = add i32 %167, 31
  %and232.5 = and i32 %add231.5, 1048575
  %add233.5 = or i32 %and232.5, -18874368
  %205 = inttoptr i32 %add233.5 to ptr
  %206 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %205) #11, !srcloc !213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %207 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %8, align 1
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #11
  br label %sw.epilog242

sw.bb163:                                         ; preds = %if.end162.sw.bb163_crit_edge, %if.end162.sw.bb163_crit_edge444, %if.end162.sw.bb163_crit_edge445, %if.end162.sw.bb163_crit_edge446, %if.end162.sw.bb163_crit_edge447, %if.end162.sw.bb163_crit_edge448
  br i1 %cmp164392, label %if.then166, label %if.else173

if.then166:                                       ; preds = %sw.bb163
  %call167 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext 34, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call167)
  %cmp168 = icmp ult i32 %call167, 11
  %208 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %buf, align 4
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %209) #11
  br label %failed

if.end171:                                        ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx172 = getelementptr i8, ptr %209, i32 5
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %arrayidx172, i32 noundef 6) #11
  %210 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %211) #11
  br label %sw.epilog242

if.else173:                                       ; preds = %sw.bb163
  %call174 = call i32 @pcmcia_get_mac_from_cis(ptr noundef %link, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %if.else173.failed_crit_edge

if.else173.failed_crit_edge:                      ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end177:                                        ; preds = %if.else173
  %brmerge = or i1 %cmp182398, %cmp178395
  %.str.25.mux = select i1 %cmp178395, ptr @.str.25, ptr @.str.26
  br i1 %brmerge, label %if.end177.sw.epilog242_crit_edge, label %if.else185

if.end177.sw.epilog242_crit_edge:                 ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog242

if.else185:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  %.str.28..str.29 = select i1 %cmp190404, ptr @.str.28, ptr @.str.29
  %spec.select = select i1 %cmp186401, ptr @.str.27, ptr %.str.28..str.29
  br label %sw.epilog242

sw.bb210:                                         ; preds = %if.end162
  %call212 = call fastcc i32 @fmvj18x_get_hwinfo(ptr noundef %link, ptr noundef nonnull %buggybuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call212)
  %cmp213 = icmp eq i32 %call212, -1
  br i1 %cmp213, label %do.end218, label %if.end221

do.end218:                                        ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #13
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #14
  br label %failed

if.end221:                                        ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #13
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %buggybuf, i32 noundef 6) #11
  br label %sw.epilog242

sw.epilog242:                                     ; preds = %if.end221, %if.else185, %if.end177.sw.epilog242_crit_edge, %if.end171, %for.cond225.preheader, %for.cond.preheader
  %card_name.0 = phi ptr [ @.str.32, %for.cond225.preheader ], [ @.str.24, %if.end221 ], [ @.str.30, %for.cond.preheader ], [ @.str.24, %if.end171 ], [ %.str.25.mux, %if.end177.sw.epilog242_crit_edge ], [ %spec.select, %if.else185 ]
  %cardtype243 = getelementptr i8, ptr %1, i32 2324
  %212 = ptrtoint ptr %cardtype243 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %cardtype.0407, ptr %cardtype243, align 4
  %dev244 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %213 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %dev244, ptr %parent, align 8
  %call246 = call i32 @register_netdev(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %cmp247.not = icmp eq i32 %call246, 0
  br i1 %cmp247.not, label %if.end255, label %do.end252

do.end252:                                        ; preds = %sw.epilog242
  call void @__sanitizer_cov_trace_pc() #13
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %failed

if.end255:                                        ; preds = %sw.epilog242
  call void @__sanitizer_cov_trace_pc() #13
  %214 = load i32, ptr @sram_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp256 = icmp eq i32 %214, 0
  %cond = select i1 %cmp256, ptr @.str.37, ptr @.str.38
  %215 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %base_addr, align 32
  %217 = ptrtoint ptr %irq111 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %irq111, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %219 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %card_name.0, ptr noundef nonnull %cond, i32 noundef %216, i32 noundef %218, ptr noundef %220) #14
  br label %cleanup

failed:                                           ; preds = %do.end252, %do.end218, %if.else173.failed_crit_edge, %if.then170, %if.then23.i, %if.then17.i, %if.then119.failed_crit_edge, %if.end106.failed_crit_edge, %if.end102.failed_crit_edge, %if.else96.failed_crit_edge, %for.cond.5.i.failed_crit_edge, %mfc_try_io_port.exit.failed_crit_edge, %if.then7.failed_crit_edge
  %221 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fmvj18x_release.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fmvj18x_config, %if.then.i370)) #11
          to label %do.end.i [label %if.then.i370], !srcloc !204

if.then.i370:                                     ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #13
  %dev5.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fmvj18x_release.__UNIQUE_ID_ddebug352, ptr noundef %dev5.i, ptr noundef nonnull @.str.63) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i370, %failed
  %base.i371 = getelementptr i8, ptr %222, i32 2332
  %223 = ptrtoint ptr %base.i371 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i371, align 4
  %cmp.not.i372 = icmp eq ptr %224, null
  br i1 %cmp.not.i372, label %do.end.i.fmvj18x_release.exit_crit_edge, label %if.then6.i

do.end.i.fmvj18x_release.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fmvj18x_release.exit

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %225 = ptrtoint ptr %base.i371 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr null, ptr %base.i371, align 4
  call void @iounmap(ptr noundef nonnull %224) #11
  br label %fmvj18x_release.exit

fmvj18x_release.exit:                             ; preds = %if.then6.i, %do.end.i.fmvj18x_release.exit_crit_edge
  call void @pcmcia_disable_device(ptr noundef %link) #11
  br label %cleanup

cleanup:                                          ; preds = %fmvj18x_release.exit, %if.end255
  %retval.0 = phi i32 [ -19, %fmvj18x_release.exit ], [ 0, %if.end255 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buggybuf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fjn_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_open.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_open, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_open.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.6, ptr noundef %dev) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %open, align 4
  tail call fastcc void @fjn_reset(ptr noundef %dev)
  %tx_started = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %tx_started to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_started, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %tx_started, align 4
  %tx_queue = getelementptr i8, ptr %dev, i32 2316
  %5 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_queue, align 4
  %tx_queue_len = getelementptr i8, ptr %dev, i32 2320
  %6 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %tx_queue_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %open_time = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %open_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %open_time, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -19, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fjn_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_close.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_close, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_close.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.11, ptr noundef %dev) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %open_time = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %open_time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %open_time, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %7 = load i32, ptr @sram_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %add = add i32 %3, 6
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %8 = inttoptr i32 %add8 to ptr
  br i1 %cmp, label %do.body5, label %do.body10

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -38) #11, !srcloc !207
  br label %do.body18

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -34) #11, !srcloc !207
  br label %do.body18

do.body18:                                        ; preds = %do.body10, %do.body5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  tail call void @arm_heavy_mb() #11
  %add21 = add i32 %3, 7
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %9 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -128) #11, !srcloc !207
  %cardtype = getelementptr i8, ptr %dev, i32 2324
  %10 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25 = icmp eq i32 %11, 0
  br i1 %cmp25, label %do.body27, label %do.body18.if.end34_crit_edge

do.body18.if.end34_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.body27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %add30 = add i32 %3, 16
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %12 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 13) #11, !srcloc !207
  br label %if.end34

if.end34:                                         ; preds = %do.body27, %do.body18.if.end34_crit_edge
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %open, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %open, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fjn_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv = trunc i32 %3 to i16
  %sext = shl i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3932160, i32 %sext)
  %cmp = icmp slt i32 %sext, 3932160
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %3)
  %cmp.i = icmp ugt i32 %3, 59
  br i1 %cmp.i, label %if.then.if.end5_crit_edge, label %skb_padto.exit, !prof !218

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

skb_padto.exit:                                   ; preds = %if.then
  %sub.i = sub nuw nsw i32 60, %3
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.if.end5_crit_edge, label %skb_padto.exit.cleanup101_crit_edge

skb_padto.exit.cleanup101_crit_edge:              ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

skb_padto.exit.if.end5_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %skb_padto.exit.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %length.0 = phi i16 [ %conv, %entry.if.end5_crit_edge ], [ 60, %skb_padto.exit.if.end5_crit_edge ], [ 60, %if.then.if.end5_crit_edge ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %conv6 = sext i16 %length.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1514, i16 %length.0)
  %cmp7 = icmp sgt i16 %length.0, 1514
  br i1 %cmp7, label %cleanup.thread, label %do.body12

cleanup.thread:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv6) #14
  br label %cleanup101

do.body12:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_start_xmit.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_start_xmit, %if.then17)) #11
          to label %do.end21 [label %if.then17], !srcloc !204

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fjn_start_xmit.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %9) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body12
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %tx_bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  tail call void @arm_heavy_mb() #11
  %add26 = add i32 %1, 2
  %and = and i32 %add26, 1048575
  %add27 = or i32 %and, -18874368
  %14 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #11, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !221
  tail call void @arm_heavy_mb() #11
  %16 = tail call i16 @llvm.bswap.i16(i16 %length.0)
  %add32 = add i32 %1, 8
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %17 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %16) #11, !srcloc !220
  %add41 = add nsw i32 %conv6, 1
  %shr = ashr i32 %add41, 1
  tail call void @__raw_writesw(ptr noundef nonnull %17, ptr noundef %7, i32 noundef %shr) #11
  %tx_queue = getelementptr i8, ptr %dev, i32 2316
  %18 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_queue, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_queue, align 4
  %add43 = add nsw i16 %length.0, 3
  %and44 = and i16 %add43, -2
  %tx_queue_len = getelementptr i8, ptr %dev, i32 2320
  %20 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_queue_len, align 4
  %add46 = add i16 %21, %and44
  store i16 %add46, ptr %tx_queue_len, align 4
  %tx_started = getelementptr i8, ptr %dev, i32 2312
  %22 = ptrtoint ptr %tx_started to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %tx_started, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp48 = icmp sgt i8 %bf.load, -1
  br i1 %cmp48, label %do.body51, label %if.else

do.body51:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !222
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_queue, align 4
  %25 = trunc i32 %24 to i8
  %conv55 = or i8 %25, -128
  %add56 = add i32 %1, 10
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %26 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv55) #11, !srcloc !207
  %27 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_queue, align 4
  %conv61 = trunc i32 %28 to i16
  %sent = getelementptr i8, ptr %dev, i32 2328
  %29 = ptrtoint ptr %sent to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv61, ptr %sent, align 4
  store i32 0, ptr %tx_queue, align 4
  %30 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %tx_queue_len, align 4
  %31 = ptrtoint ptr %tx_started to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load65 = load i8, ptr %tx_started, align 4
  %bf.set = or i8 %bf.load65, -128
  store i8 %bf.set, ptr %tx_started, align 4
  br label %cleanup.cont.sink.split

if.else:                                          ; preds = %do.end21
  %32 = load i32, ptr @sram_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp66 = icmp eq i32 %32, 0
  br i1 %cmp66, label %if.then68, label %if.else75

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 2580, i16 %add46)
  %cmp71 = icmp ult i16 %add46, 2580
  br i1 %cmp71, label %if.then68.cleanup.cont.sink.split_crit_edge, label %if.then68.cleanup.cont_crit_edge

if.then68.cleanup.cont_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.cont

if.then68.cleanup.cont.sink.split_crit_edge:      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.cont.sink.split

if.else75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 6676, i16 %add46)
  %cmp78 = icmp ult i16 %add46, 6676
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc)
  %cmp81 = icmp ult i32 %inc, 127
  %or.cond = select i1 %cmp78, i1 %cmp81, i1 false
  br i1 %or.cond, label %if.else75.cleanup.cont.sink.split_crit_edge, label %if.else75.cleanup.cont_crit_edge

if.else75.cleanup.cont_crit_edge:                 ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.cont

if.else75.cleanup.cont.sink.split_crit_edge:      ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.cont.sink.split

cleanup.cont.sink.split:                          ; preds = %if.else75.cleanup.cont.sink.split_crit_edge, %if.then68.cleanup.cont.sink.split_crit_edge, %do.body51
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i140 = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i140) #11
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cleanup.cont.sink.split, %if.else75.cleanup.cont_crit_edge, %if.then68.cleanup.cont_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -128) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !224
  tail call void @arm_heavy_mb() #11
  %add97 = add i32 %1, 3
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %35 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -113) #11, !srcloc !207
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup101

cleanup101:                                       ; preds = %cleanup.cont, %cleanup.thread, %skb_padto.exit.cleanup101_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup.cont ], [ 0, %skb_padto.exit.cleanup101_crit_edge ], [ 16, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef readonly %dev) #2 align 64 {
entry:
  %mc_filter = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #11
  %2 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %mc_filter, i32 0, i32 7
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %9 = inttoptr i32 %add1 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !226
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry.do.end15_crit_edge
  %12 = load i32, ptr @sram_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp16 = icmp eq i32 %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %cmp16, label %do.body19, label %do.body26

do.body19:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -38) #11, !srcloc !207
  br label %if.end33

do.body26:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -34) #11, !srcloc !207
  br label %if.end33

if.end33:                                         ; preds = %do.body26, %do.body19
  %flags34 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %13 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags34, align 8
  %and35 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else45, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %mc_filter, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  tail call void @arm_heavy_mb() #11
  %add41 = add i32 %1, 5
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %16 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 3) #11, !srcloc !207
  br label %if.end103

if.else45:                                        ; preds = %if.end33
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %18)
  %cmp46 = icmp slt i32 %18, 65
  %and49 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %or.cond = select i1 %cmp46, i1 %tobool50.not, i1 false
  br i1 %or.cond, label %if.else60, label %if.then51

if.then51:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %mc_filter, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  tail call void @arm_heavy_mb() #11
  %add56 = add i32 %1, 5
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %20 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 2) #11, !srcloc !207
  br label %if.end103

if.else60:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp63 = icmp eq i32 %18, 0
  %21 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %mc_filter, align 8
  br i1 %cmp63, label %if.then65, label %if.else74

if.then65:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  tail call void @arm_heavy_mb() #11
  %add70 = add i32 %1, 5
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %22 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 1) #11, !srcloc !207
  br label %if.end103

if.else74:                                        ; preds = %if.else60
  %23 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %23)
  %ha.0208 = load ptr, ptr %mc, align 4
  %cmp81.not209 = icmp eq ptr %ha.0208, %mc
  br i1 %cmp81.not209, label %if.else74.do.body94_crit_edge, label %if.else74.for.body_crit_edge

if.else74.for.body_crit_edge:                     ; preds = %if.else74
  br label %for.body

if.else74.do.body94_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body94

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else74.for.body_crit_edge
  %ha.0210 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0208, %if.else74.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0210, i32 0, i32 2
  %call84 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #15
  %shr = lshr i32 %call84, 26
  %and85 = and i32 %shr, 7
  %shl = shl nuw nsw i32 1, %and85
  %shr86 = lshr i32 %call84, 29
  %arrayidx = getelementptr [8 x i8], ptr %mc_filter, i32 0, i32 %shr86
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %26 = trunc i32 %shl to i8
  %conv88 = or i8 %25, %26
  store i8 %conv88, ptr %arrayidx, align 1
  %27 = ptrtoint ptr %ha.0210 to i32
  call void @__asan_load4_noabort(i32 %27)
  %ha.0 = load ptr, ptr %ha.0210, align 4
  %cmp81.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp81.not, label %for.body.do.body94_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.do.body94_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body94

do.body94:                                        ; preds = %for.body.do.body94_crit_edge, %if.else74.do.body94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  tail call void @arm_heavy_mb() #11
  %add97 = add i32 %1, 5
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %28 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 2) #11, !srcloc !207
  br label %if.end103

if.end103:                                        ; preds = %do.body94, %if.then65, %if.then51, %if.then37
  %add105 = add i32 %1, 7
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %29 = inttoptr i32 %add107 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 -28) #11, !srcloc !207
  %add127 = add i32 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mc_filter, align 8
  %and129 = and i32 %add127, 1048575
  %add130 = or i32 %and129, -18874368
  %33 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %32) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %2, align 1
  %add128.1 = add i32 %1, 9
  %and129.1 = and i32 %add128.1, 1048575
  %add130.1 = or i32 %and129.1, -18874368
  %36 = inttoptr i32 %add130.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %35) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 2
  %add128.2 = add i32 %1, 10
  %and129.2 = and i32 %add128.2, 1048575
  %add130.2 = or i32 %and129.2, -18874368
  %39 = inttoptr i32 %add130.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %38) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %4, align 1
  %add128.3 = add i32 %1, 11
  %and129.3 = and i32 %add128.3, 1048575
  %add130.3 = or i32 %and129.3, -18874368
  %42 = inttoptr i32 %add130.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %41) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %5, align 4
  %add128.4 = add i32 %1, 12
  %and129.4 = and i32 %add128.4, 1048575
  %add130.4 = or i32 %and129.4, -18874368
  %45 = inttoptr i32 %add130.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %44) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %6, align 1
  %add128.5 = add i32 %1, 13
  %and129.5 = and i32 %add128.5, 1048575
  %add130.5 = or i32 %and129.5, -18874368
  %48 = inttoptr i32 %add130.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %47) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %7, align 2
  %add128.6 = add i32 %1, 14
  %and129.6 = and i32 %add128.6, 1048575
  %add130.6 = or i32 %and129.6, -18874368
  %51 = inttoptr i32 %add130.6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %50) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %8, align 1
  %add128.7 = add i32 %1, 15
  %and129.7 = and i32 %add128.7, 1048575
  %add130.7 = or i32 %and129.7, -18874368
  %54 = inttoptr i32 %add130.7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %53) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %30) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %10) #11, !srcloc !207
  br i1 %tobool.not, label %if.then159, label %if.end103.do.body161_crit_edge

if.end103.do.body161_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body161

if.then159:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body161

do.body161:                                       ; preds = %if.then159, %if.end103.do.body161_crit_edge
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !236
  %and.i.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool169.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool169.not, label %if.then174, label %do.body161.do.end177_crit_edge, !prof !237

do.body161.do.end177_crit_edge:                   ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end177

if.then174:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end177

do.end177:                                        ; preds = %if.then174, %do.body161.do.end177_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #11, !srcloc !238
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fjn_config(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fjn_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !239
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  %conv = zext i16 %4 to i32
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  %cond = select i1 %tobool.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv, ptr noundef nonnull %cond) #14
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !239
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !242
  %conv20 = zext i16 %7 to i32
  %add22 = add i32 %1, 2
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %8 = inttoptr i32 %add24 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #11, !srcloc !239
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  %conv28 = zext i16 %10 to i32
  %add30 = add i32 %1, 4
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %11 = inttoptr i32 %add32 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #11, !srcloc !239
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %conv36 = zext i16 %13 to i32
  %add38 = add i32 %1, 6
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %14 = inttoptr i32 %add40 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #11, !srcloc !239
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  %conv44 = zext i16 %16 to i32
  %add46 = add i32 %1, 8
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %17 = inttoptr i32 %add48 to ptr
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %17) #11, !srcloc !239
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !246
  %conv52 = zext i16 %19 to i32
  %add54 = add i32 %1, 10
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %20 = inttoptr i32 %add56 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #11, !srcloc !239
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  %conv60 = zext i16 %22 to i32
  %add62 = add i32 %1, 12
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %23 = inttoptr i32 %add64 to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #11, !srcloc !239
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  %conv68 = zext i16 %25 to i32
  %add70 = add i32 %1, 14
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %26 = inttoptr i32 %add72 to ptr
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #11, !srcloc !239
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  %conv76 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv20, i32 noundef %conv28, i32 noundef %conv36, i32 noundef %conv44, i32 noundef %conv52, i32 noundef %conv60, i32 noundef %conv68, i32 noundef %conv76) #14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %29 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_errors, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !236
  %and.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool78.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !250
  br i1 %tobool78.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @fjn_reset(ptr noundef %dev)
  %tx_started = getelementptr i8, ptr %dev, i32 2312
  %32 = ptrtoint ptr %tx_started to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %tx_started, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %tx_started, align 4
  %tx_queue = getelementptr i8, ptr %dev, i32 2316
  %33 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %tx_queue, align 4
  %tx_queue_len = getelementptr i8, ptr %dev, i32 2320
  %34 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %tx_queue_len, align 4
  %sent = getelementptr i8, ptr %dev, i32 2328
  %35 = ptrtoint ptr %sent to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %sent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %open_time = getelementptr i8, ptr %dev, i32 2308
  %37 = ptrtoint ptr %open_time to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %open_time, align 4
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !251
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %39) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fjn_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_reset.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_reset, %if.then)) #11
          to label %do.end6 [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fjn_reset.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %2 = load i32, ptr @sram_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %3 = inttoptr i32 %add11 to ptr
  br i1 %cmp, label %do.body8, label %do.body13

do.body8:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 -38) #11, !srcloc !207
  br label %if.end20

do.body13:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 -34) #11, !srcloc !207
  br label %if.end20

if.end20:                                         ; preds = %do.body13, %do.body8
  %cardtype = getelementptr i8, ptr %dev, i32 2324
  %4 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %add26 = add i32 %1, 7
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %6 = inttoptr i32 %add28 to ptr
  br i1 %cmp21, label %do.body23, label %do.body31

do.body23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -96) #11, !srcloc !207
  br label %do.body39

do.body31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 32) #11, !srcloc !207
  br label %do.body39

do.body39:                                        ; preds = %do.body31, %do.body23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  tail call void @arm_heavy_mb() #11
  %add42 = add i32 %1, 4
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %7 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 6) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  %add49 = add i32 %1, 5
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %8 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 2) #11, !srcloc !207
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %add57 = add i32 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %and59 = and i32 %add57, 1048575
  %add60 = or i32 %and59, -18874368
  %13 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %12) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1, align 1
  %add58.1 = add i32 %1, 9
  %and59.1 = and i32 %add58.1, 1048575
  %add60.1 = or i32 %and59.1, -18874368
  %18 = inttoptr i32 %add60.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %17) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2, align 1
  %add58.2 = add i32 %1, 10
  %and59.2 = and i32 %add58.2, 1048575
  %add60.2 = or i32 %and59.2, -18874368
  %23 = inttoptr i32 %add60.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %22) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.3, align 1
  %add58.3 = add i32 %1, 11
  %and59.3 = and i32 %add58.3, 1048575
  %add60.3 = or i32 %and59.3, -18874368
  %28 = inttoptr i32 %add60.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %27) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.4, align 1
  %add58.4 = add i32 %1, 12
  %and59.4 = and i32 %add58.4, 1048575
  %add60.4 = or i32 %and59.4, -18874368
  %33 = inttoptr i32 %add60.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %32) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5, align 1
  %add58.5 = add i32 %1, 13
  %and59.5 = and i32 %add58.5, 1048575
  %add60.5 = or i32 %and59.5, -18874368
  %38 = inttoptr i32 %add60.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %37) #11, !srcloc !207
  tail call void @set_rx_mode(ptr noundef %dev)
  %39 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp63 = icmp eq i32 %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %add68 = add i32 %1, 7
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %41 = inttoptr i32 %add70 to ptr
  br i1 %cmp63, label %do.body65, label %do.body73

do.body65:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -88) #11, !srcloc !207
  br label %if.end80

do.body73:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 40) #11, !srcloc !207
  br label %if.end80

if.end80:                                         ; preds = %do.body73, %do.body65
  %42 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cardtype, align 4
  %44 = and i32 %43, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %switch = icmp eq i32 %44, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %add89 = add i32 %1, 11
  %and90 = and i32 %add89, 1048575
  %add91 = or i32 %and90, -18874368
  %45 = inttoptr i32 %add91 to ptr
  br i1 %switch, label %do.body86, label %do.body94

do.body86:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 71) #11, !srcloc !207
  br label %do.body102

do.body94:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 7) #11, !srcloc !207
  br label %do.body102

do.body102:                                       ; preds = %do.body94, %do.body86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !255
  tail call void @arm_heavy_mb() #11
  %add105 = add i32 %1, 12
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %46 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 0) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !256
  tail call void @arm_heavy_mb() #11
  %add112 = add i32 %1, 13
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %47 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 0) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !257
  tail call void @arm_heavy_mb() #11
  %add119 = add i32 %1, 14
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %48 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 1) #11, !srcloc !207
  %49 = load i32, ptr @sram_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp123 = icmp eq i32 %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %add128 = add i32 %1, 6
  %and129 = and i32 %add128, 1048575
  %add130 = or i32 %and129, -18874368
  %50 = inttoptr i32 %add130 to ptr
  br i1 %cmp123, label %do.body125, label %do.body133

do.body125:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 90) #11, !srcloc !207
  br label %if.end140

do.body133:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 94) #11, !srcloc !207
  br label %if.end140

if.end140:                                        ; preds = %do.body133, %do.body125
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #11, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #11, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  tail call void @arm_heavy_mb() #11
  %and158 = and i32 %1, 1048575
  %add159 = or i32 %and158, -18874368
  %53 = inttoptr i32 %add159 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 -1) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !261
  tail call void @arm_heavy_mb() #11
  %add164 = add i32 %1, 1
  %and165 = and i32 %add164, 1048575
  %add166 = or i32 %and165, -18874368
  %54 = inttoptr i32 %add166 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 -1) #11, !srcloc !207
  %55 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp169 = icmp eq i32 %56, 0
  br i1 %cmp169, label %do.body171, label %if.end140.do.body179_crit_edge

if.end140.do.body179_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body179

do.body171:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !262
  tail call void @arm_heavy_mb() #11
  %add174 = add i32 %1, 16
  %and175 = and i32 %add174, 1048575
  %add176 = or i32 %and175, -18874368
  %57 = inttoptr i32 %add176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 13) #11, !srcloc !207
  br label %do.body179

do.body179:                                       ; preds = %do.body171, %if.end140.do.body179_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  tail call void @arm_heavy_mb() #11
  %add182 = add i32 %1, 2
  %and183 = and i32 %add182, 1048575
  %add184 = or i32 %and183, -18874368
  %58 = inttoptr i32 %add184 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 -128) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @arm_heavy_mb() #11
  %add189 = add i32 %1, 3
  %and190 = and i32 %add189, 1048575
  %add191 = or i32 %and190, -18874368
  %59 = inttoptr i32 %add191 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 -113) #11, !srcloc !207
  %60 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp194 = icmp eq i32 %61, 0
  br i1 %cmp194, label %do.body196, label %do.body179.if.end203_crit_edge

do.body179.if.end203_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

do.body196:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  tail call void @arm_heavy_mb() #11
  %add199 = add i32 %1, 16
  %and200 = and i32 %add199, 1048575
  %add201 = or i32 %and200, -18874368
  %62 = inttoptr i32 %add201 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 29) #11, !srcloc !207
  br label %if.end203

if.end203:                                        ; preds = %do.body196, %do.body179.if.end203_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.19, i32 noundef 32) #11
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_tuple(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fmvj18x_ioprobe(ptr nocapture noundef readnone %p_dev, ptr nocapture noundef readnone %priv_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fjn_interrupt(i32 noundef %dummy, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  tail call void @arm_heavy_mb() #11
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 0) #11, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #11
  %and4 = and i32 %1, 1048575
  %add5 = or i32 %and4, -18874368
  %4 = inttoptr i32 %add5 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %add9 = add i32 %1, 1
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %6 = inttoptr i32 %add11 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %5) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %7) #11, !srcloc !207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_interrupt.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_interrupt, %if.then)) #11
          to label %do.body40 [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv37 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_interrupt.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.43, ptr noundef %dev_id, i32 noundef %conv37) #11
  br label %do.body40

do.body40:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_interrupt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_interrupt, %if.then52)) #11
          to label %do.end56 [label %if.then52], !srcloc !204

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %conv53 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_interrupt.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.45, i32 noundef %conv53) #11
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body40
  %conv57 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool58.not = icmp eq i8 %7, 0
  br i1 %tobool58.not, label %lor.lhs.false, label %do.end56.if.then69_crit_edge

do.end56.if.then69_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

lor.lhs.false:                                    ; preds = %do.end56
  %add60 = add i32 %1, 5
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %8 = inttoptr i32 %add62 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %lor.lhs.false.if.then69_crit_edge, label %lor.lhs.false.if.end70_crit_edge

lor.lhs.false.if.end70_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false.if.then69_crit_edge, %do.end56.if.then69_crit_edge
  tail call fastcc void @fjn_rx(ptr noundef %dev_id)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %lor.lhs.false.if.end70_crit_edge
  %conv71 = zext i8 %5 to i32
  %and72 = and i32 %conv71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.do.body95_crit_edge, label %if.then74

if.end70.do.body95_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

if.then74:                                        ; preds = %if.end70
  %sent = getelementptr i8, ptr %dev_id, i32 2328
  %11 = ptrtoint ptr %sent to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sent, align 4
  %conv75 = zext i16 %12 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %13 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_packets, align 4
  %add76 = add i32 %14, %conv75
  store i32 %add76, ptr %tx_packets, align 4
  store i16 0, ptr %sent, align 4
  %tx_queue = getelementptr i8, ptr %dev_id, i32 2316
  %15 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool78.not = icmp eq i32 %16, 0
  br i1 %tobool78.not, label %if.else, label %do.body80

do.body80:                                        ; preds = %if.then74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_queue, align 4
  %19 = trunc i32 %18 to i8
  %conv84 = or i8 %19, -128
  %add85 = add i32 %1, 10
  %and86 = and i32 %add85, 1048575
  %add87 = or i32 %and86, -18874368
  %20 = inttoptr i32 %add87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv84) #11, !srcloc !207
  %21 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_queue, align 4
  %conv90 = trunc i32 %22 to i16
  %23 = ptrtoint ptr %sent to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv90, ptr %sent, align 4
  store i32 0, ptr %tx_queue, align 4
  %tx_queue_len = getelementptr i8, ptr %dev_id, i32 2320
  %24 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %tx_queue_len, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 12
  %28 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i.i = icmp eq i32 %29, %27
  br i1 %cmp.not.i.i, label %do.body80.if.end93_crit_edge, label %do.body5.i.i

do.body80.if.end93_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

do.body5.i.i:                                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %27, ptr %trans_start.i.i, align 16
  br label %if.end93

if.else:                                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %tx_started = getelementptr i8, ptr %dev_id, i32 2312
  %31 = ptrtoint ptr %tx_started to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %tx_started, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %tx_started, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else, %do.body5.i.i, %do.body80.if.end93_crit_edge
  %_tx.i.i199 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i199 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i199, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %33) #11
  br label %do.body95

do.body95:                                        ; preds = %if.end93, %if.end70.do.body95_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_interrupt.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_interrupt, %if.then107)) #11
          to label %do.body113 [label %if.then107], !srcloc !204

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_interrupt.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.47, ptr noundef %dev_id) #11
  br label %do.body113

do.body113:                                       ; preds = %if.then107, %do.body95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_interrupt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_interrupt, %if.then125)) #11
          to label %do.body131 [label %if.then125], !srcloc !204

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_interrupt.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.49, i32 noundef %conv71, i32 noundef %conv57) #11
  br label %do.body131

do.body131:                                       ; preds = %if.then125, %do.body113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -128) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void @arm_heavy_mb() #11
  %add141 = add i32 %1, 3
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %34 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -113) #11, !srcloc !207
  %base = getelementptr i8, ptr %dev_id, i32 2332
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %cmp145.not = icmp eq ptr %36, null
  br i1 %cmp145.not, label %do.body131.if.end157_crit_edge, label %do.body148

do.body131.if.end157_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

do.body148:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 2050
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #11, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr156 = getelementptr i8, ptr %40, i32 2082
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr156, i8 9) #11, !srcloc !207
  br label %if.end157

if.end157:                                        ; preds = %do.body148, %do.body131.if.end157_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_mac_from_cis(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fmvj18x_get_hwinfo(ptr noundef %link, ptr nocapture noundef writeonly %node_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 33
  store i32 %or, ptr %flags, align 4
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %6 = load ptr, ptr %arrayidx, align 4
  %end = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %end, align 4
  %8 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %8, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %12
  %add.i = add i32 %sub.i, %14
  %call13 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %add.i) #11
  %tobool.not = icmp eq ptr %call13, null
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end18

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end
  %call21 = tail call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %16, i32 noundef 0) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18
  %i.0135 = phi i32 [ 0, %if.end18 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0135, 1
  %add.ptr = getelementptr i8, ptr %call13, i32 %mul
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %17)
  %cmp25 = icmp eq i8 %17, 34
  br i1 %cmp25, label %if.then27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then27:                                        ; preds = %for.body
  %mul30 = add nsw i32 %mul, -2
  %add.ptr31 = getelementptr i8, ptr %call13, i32 %mul30
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp36 = icmp eq i8 %18, -1
  br i1 %cmp36, label %land.lhs.true, label %if.then27.for.inc_crit_edge

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then27
  %mul40 = add nuw nsw i32 %mul, 10
  %add.ptr41 = getelementptr i8, ptr %call13, i32 %mul40
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp46 = icmp eq i8 %19, 4
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true48:                                  ; preds = %land.lhs.true
  %mul52 = add nuw nsw i32 %mul, 12
  %add.ptr53 = getelementptr i8, ptr %call13, i32 %mul52
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr53) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp58 = icmp eq i8 %20, 6
  br i1 %cmp58, label %land.lhs.true60, label %land.lhs.true48.for.inc_crit_edge

land.lhs.true48.for.inc_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true60:                                  ; preds = %land.lhs.true48
  %mul64 = add nuw nsw i32 %mul, 26
  %add.ptr65 = getelementptr i8, ptr %call13, i32 %mul64
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp70 = icmp eq i8 %21, -1
  br i1 %cmp70, label %for.end, label %land.lhs.true60.for.inc_crit_edge

land.lhs.true60.for.inc_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true60.for.inc_crit_edge, %land.lhs.true48.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc.if.end95_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end95_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

for.end:                                          ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %i.0135)
  %cmp75.not = icmp eq i32 %i.0135, 512
  br i1 %cmp75.not, label %for.end.if.end95_crit_edge, label %for.body81.preheader

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

for.body81.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %add84 = shl nuw i32 %i.0135, 1
  %mul85 = add nuw nsw i32 %add84, 14
  %add.ptr86 = getelementptr i8, ptr %call13, i32 %mul85
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %23 = ptrtoint ptr %node_id to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %node_id, align 1
  %inc93 = shl nuw i32 %i.0135, 1
  %mul85.1 = add i32 %inc93, 16
  %add.ptr86.1 = getelementptr i8, ptr %call13, i32 %mul85.1
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86.1) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %arrayidx90.1 = getelementptr i8, ptr %node_id, i32 1
  %25 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx90.1, align 1
  %inc93.1 = shl nuw i32 %i.0135, 1
  %mul85.2 = add i32 %inc93.1, 18
  %add.ptr86.2 = getelementptr i8, ptr %call13, i32 %mul85.2
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86.2) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %arrayidx90.2 = getelementptr i8, ptr %node_id, i32 2
  %27 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx90.2, align 1
  %inc93.2 = shl nuw i32 %i.0135, 1
  %mul85.3 = add i32 %inc93.2, 20
  %add.ptr86.3 = getelementptr i8, ptr %call13, i32 %mul85.3
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86.3) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %arrayidx90.3 = getelementptr i8, ptr %node_id, i32 3
  %29 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx90.3, align 1
  %inc93.3 = shl nuw i32 %i.0135, 1
  %mul85.4 = add i32 %inc93.3, 22
  %add.ptr86.4 = getelementptr i8, ptr %call13, i32 %mul85.4
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86.4) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %arrayidx90.4 = getelementptr i8, ptr %node_id, i32 4
  %31 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx90.4, align 1
  %inc93.4 = shl nuw i32 %i.0135, 1
  %mul85.5 = add i32 %inc93.4, 24
  %add.ptr86.5 = getelementptr i8, ptr %call13, i32 %mul85.5
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86.5) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %arrayidx90.5 = getelementptr i8, ptr %node_id, i32 5
  %33 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx90.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 506, i32 %i.0135)
  %phi.cmp = icmp eq i32 %i.0135, 506
  %phi.cast = sext i1 %phi.cmp to i32
  br label %if.end95

if.end95:                                         ; preds = %for.body81.preheader, %for.end.if.end95_crit_edge, %for.inc.if.end95_crit_edge
  %i.2 = phi i32 [ -1, %for.end.if.end95_crit_edge ], [ %phi.cast, %for.body81.preheader ], [ -1, %for.inc.if.end95_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call13) #11
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end95, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %35, %if.end95 ], [ %16, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %i.2, %if.end95 ], [ -1, %if.end.cleanup.sink.split_crit_edge ]
  %call98 = tail call i32 @pcmcia_release_window(ptr noundef %link, ptr noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fjn_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_rx.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_rx, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_rx.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.52, ptr noundef %dev, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add8 = add i32 %1, 5
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %4 = inttoptr i32 %add10 to ptr
  %add18 = add i32 %1, 8
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %5 = inttoptr i32 %add20 to ptr
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %stats201 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end207.while.cond_crit_edge, %do.end
  %boguscount.0 = phi i32 [ 10, %do.end ], [ %dec, %if.end207.while.cond_crit_edge ]
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !284
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #11, !srcloc !239
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_rx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_rx, %if.then37)) #11
          to label %do.end51 [label %if.then37], !srcloc !204

if.then37:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #11, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  %conv45 = zext i8 %10 to i32
  %conv46 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fjn_rx.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv45, i32 noundef %conv46) #11
  br label %do.end51

do.end51:                                         ; preds = %if.then37, %while.body
  %conv52 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp53 = icmp eq i16 %8, 0
  br i1 %cmp53, label %do.body56, label %if.end63

do.body56:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  tail call void @arm_heavy_mb() #11
  %add59 = add i32 %1, 14
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %11 = inttoptr i32 %add61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 5) #11, !srcloc !207
  br label %while.end

if.end63:                                         ; preds = %do.end51
  %and65 = and i32 %conv52, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and65)
  %cmp66.not = icmp eq i32 %and65, 32
  br i1 %cmp66.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.end63
  %12 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and70 = and i32 %conv52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then68.if.end75_crit_edge, label %if.then72

if.then68.if.end75_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_length_errors, align 8
  %inc74 = add i32 %15, 1
  store i32 %inc74, ptr %rx_length_errors, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.then68.if.end75_crit_edge
  %and77 = and i32 %conv52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end82_crit_edge, label %if.then79

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_frame_errors, align 4
  %inc81 = add i32 %17, 1
  store i32 %inc81, ptr %rx_frame_errors, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end75.if.end82_crit_edge
  %and84 = and i32 %conv52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end89_crit_edge, label %if.then86

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_crc_errors, align 8
  %inc88 = add i32 %19, 1
  store i32 %inc88, ptr %rx_crc_errors, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end82.if.end89_crit_edge
  %and91 = and i32 %conv52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end207_crit_edge, label %if.then93

if.end89.if.end207_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_over_errors, align 4
  %inc95 = add i32 %21, 1
  store i32 %inc95, ptr %rx_over_errors, align 4
  br label %if.end207

if.else:                                          ; preds = %if.end63
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #11, !srcloc !239
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  %conv104 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1550, i16 %23)
  %cmp105 = icmp ugt i16 %23, 1550
  br i1 %cmp105, label %if.then107, label %if.end119

if.then107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %conv104) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void @arm_heavy_mb() #11
  %add112 = add i32 %1, 14
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %24 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 5) #11, !srcloc !207
  %25 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_errors, align 8
  %inc118 = add i32 %26, 1
  store i32 %inc118, ptr %rx_errors, align 8
  br label %while.end

if.end119:                                        ; preds = %if.else
  %add121 = add nuw nsw i32 %conv104, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add121, i32 noundef 2592) #11
  %cmp123 = icmp eq ptr %call.i, null
  br i1 %cmp123, label %do.body126, label %if.end135

do.body126:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  tail call void @arm_heavy_mb() #11
  %add129 = add i32 %1, 14
  %and130 = and i32 %add129, 1048575
  %add131 = or i32 %and130, -18874368
  %27 = inttoptr i32 %add131 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 5) #11, !srcloc !207
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %28 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_dropped, align 8
  %inc134 = add i32 %29, 1
  store i32 %inc134, ptr %rx_dropped, align 8
  br label %while.end

if.end135:                                        ; preds = %if.end119
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %33, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call141 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv104) #11
  %add143 = add nuw nsw i32 %conv104, 1
  %34 = lshr i32 %add143, 1
  tail call void @__raw_readsw(ptr noundef nonnull %5, ptr noundef %call141, i32 noundef %34) #11
  %call144 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %call144, ptr %protocol, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_rx.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_rx, %if.then157)) #11
          to label %do.body166 [label %if.then157], !srcloc !204

if.then157:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_rx.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.56, ptr noundef %dev, i32 noundef %conv104) #11
  br label %do.body166

do.body166:                                       ; preds = %for.inc.do.body166_crit_edge, %if.then157, %if.end135
  %i.0282 = phi i32 [ %inc183, %for.inc.do.body166_crit_edge ], [ 0, %if.end135 ], [ 0, %if.then157 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_rx.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_rx, %if.then178)) #11
          to label %for.inc [label %if.then178], !srcloc !204

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %i.0282
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv179 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_rx.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.58, i32 noundef %conv179) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then178, %do.body166
  %inc183 = add nuw nsw i32 %i.0282, 1
  %exitcond.not = icmp eq i32 %inc183, 14
  br i1 %exitcond.not, label %do.body184, label %for.inc.do.body166_crit_edge

for.inc.do.body166_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body166

do.body184:                                       ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fjn_rx.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fjn_rx, %if.then196)) #11
          to label %cleanup [label %if.then196], !srcloc !204

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fjn_rx.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.60) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then196, %do.body184
  %call200 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #11
  %40 = ptrtoint ptr %stats201 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stats201, align 8
  %inc202 = add i32 %41, 1
  store i32 %inc202, ptr %stats201, align 8
  %42 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_bytes, align 8
  %add205 = add i32 %43, %conv104
  store i32 %add205, ptr %rx_bytes, align 8
  br label %if.end207

if.end207:                                        ; preds = %cleanup, %if.then93, %if.end89.if.end207_crit_edge
  %dec = add nsw i32 %boguscount.0, -1
  %cmp208 = icmp eq i32 %dec, 0
  br i1 %cmp208, label %if.end207.while.end_crit_edge, label %if.end207.while.cond_crit_edge

if.end207.while.cond_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end207.while.end_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end207.while.end_crit_edge, %do.body126, %if.then107, %do.body56, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_release_window(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !86, !87, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !158, !160, !161, !163, !165, !167, !168, !170, !171, !173, !175, !176, !178, !179, !181, !183, !185, !187, !189, !191, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__UNIQUE_ID_description345, !1, !"__UNIQUE_ID_description345", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_file346, !3, !"__UNIQUE_ID_file346", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 65, i32 1}
!4 = !{ptr @__UNIQUE_ID_license347, !3, !"__UNIQUE_ID_license347", i1 false, i1 false}
!5 = !{ptr @__param_sram_config, !6, !"__param_sram_config", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 71, i32 1}
!7 = !{ptr @__UNIQUE_ID_sram_configtype348, !6, !"__UNIQUE_ID_sram_configtype348", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_fmvj18x_cs__353_711_fmvj18x_cs_driver_init6, !9, !"__initcall__kmod_fmvj18x_cs__353_711_fmvj18x_cs_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 711, i32 1}
!10 = !{ptr @__exitcall_fmvj18x_cs_driver_exit, !9, !"__exitcall_fmvj18x_cs_driver_exit", i1 false, i1 false}
!11 = !{ptr @__param_str_sram_config, !6, !"__param_str_sram_config", i1 false, i1 false}
!12 = !{ptr @sram_config, !6, !"sram_config", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 704, i32 11}
!15 = !{ptr @fmvj18x_cs_driver, !16, !"fmvj18x_cs_driver", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 702, i32 29}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 237, i32 5}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fmvj18x_probe.__UNIQUE_ID_ddebug349, !18, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!22 = !{ptr @fjn_netdev_ops, !23, !"fjn_netdev_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 221, i32 36}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1068, i32 5}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fjn_open.__UNIQUE_ID_ddebug365, !25, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 885, i32 5}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fjn_reset.__UNIQUE_ID_ddebug359, !30, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1094, i32 5}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fjn_close.__UNIQUE_ID_ddebug366, !34, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 826, i32 25}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 831, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fjn_start_xmit.__UNIQUE_ID_ddebug358, !41, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 782, i32 24}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 785, i32 7}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 785, i32 24}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 786, i32 24}
!52 = !{ptr @netdev_ethtool_ops, !53, !"netdev_ethtool_ops", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1055, i32 33}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1050, i32 25}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1052, i32 3}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 333, i32 23}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 339, i32 5}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fmvj18x_config.__UNIQUE_ID_ddebug351, !61, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 464, i32 18}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 478, i32 15}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 480, i32 15}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 482, i32 15}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 484, i32 15}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 486, i32 15}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 495, i32 14}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 500, i32 6}
!80 = !{ptr @fmvj18x_config._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @fmvj18x_config._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 512, i32 14}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 520, i32 2}
!86 = !{ptr @fmvj18x_config._entry.33, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fmvj18x_config._entry_ptr.35, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 525, i32 22}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 526, i32 33}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 526, i32 45}
!94 = distinct !{null, !95, !"serial_base", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 283, i32 31}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 291, i32 6}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mfc_try_io_port._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mfc_try_io_port._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 738, i32 5}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @fjn_interrupt.__UNIQUE_ID_ddebug354, !102, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!105 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 739, i32 5}
!108 = !{ptr @fjn_interrupt.__UNIQUE_ID_ddebug355, !107, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!109 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 759, i32 5}
!112 = !{ptr @fjn_interrupt.__UNIQUE_ID_ddebug356, !111, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!113 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 760, i32 5}
!116 = !{ptr @fjn_interrupt.__UNIQUE_ID_ddebug357, !115, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!117 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 963, i32 5}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @fjn_rx.__UNIQUE_ID_ddebug360, !119, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!122 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 969, i32 2}
!125 = !{ptr @fjn_rx.__UNIQUE_ID_ddebug361, !124, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 989, i32 22}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1009, i32 3}
!130 = !{ptr @fjn_rx.__UNIQUE_ID_ddebug362, !129, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!131 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1012, i32 4}
!134 = !{ptr @fjn_rx.__UNIQUE_ID_ddebug363, !133, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!135 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 1013, i32 3}
!138 = !{ptr @fjn_rx.__UNIQUE_ID_ddebug364, !137, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!139 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 603, i32 21}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 636, i32 5}
!144 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @fmvj18x_release.__UNIQUE_ID_ddebug352, !143, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 269, i32 5}
!148 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @fmvj18x_detach.__UNIQUE_ID_ddebug350, !147, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 674, i32 2}
!152 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 675, i32 2}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 676, i32 2}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 677, i32 2}
!160 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 678, i32 2}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 679, i32 2}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 680, i32 2}
!167 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 681, i32 2}
!170 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 682, i32 2}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 683, i32 2}
!175 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 684, i32 2}
!178 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 685, i32 2}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 686, i32 2}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 687, i32 2}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 688, i32 2}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 689, i32 2}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 690, i32 2}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 691, i32 2}
!193 = !{ptr @fmvj18x_ids, !194, !"fmvj18x_ids", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/fujitsu/fmvj18x_cs.c", i32 672, i32 38}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i64 2148985417, i64 2148985422, i64 2148985435, i64 2148985479, i64 2148985513, i64 2148985534}
!205 = !{!"auto-init"}
!206 = !{i64 2156594506}
!207 = !{i64 6182679}
!208 = !{i64 2156594768}
!209 = !{i64 2156595039}
!210 = !{i64 2156595327}
!211 = !{i64 2156595606}
!212 = !{i64 2156595868}
!213 = !{i64 6183074}
!214 = !{i64 2156589071}
!215 = !{i64 2156591147}
!216 = !{i64 2156677867}
!217 = !{i64 2156678207}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{i64 2156643684}
!220 = !{i64 6182256}
!221 = !{i64 2156644692}
!222 = !{i64 2156645316}
!223 = !{i64 2156645684}
!224 = !{i64 2156646153}
!225 = !{i64 2156678610}
!226 = !{i64 775740, i64 775801}
!227 = !{i64 2156680116}
!228 = !{i64 2156680530}
!229 = !{i64 2156680977}
!230 = !{i64 2156684773}
!231 = !{i64 2156685175}
!232 = !{i64 2156685389}
!233 = !{i64 2156685734}
!234 = !{i64 2156686077}
!235 = !{i64 2156686420}
!236 = !{i64 778472}
!237 = !{!"branch_weights", i32 1, i32 2000}
!238 = !{i64 778757}
!239 = !{i64 6182456}
!240 = !{i64 2156627794}
!241 = !{i64 2156628087}
!242 = !{i64 2156629645}
!243 = !{i64 2156631208}
!244 = !{i64 2156632771}
!245 = !{i64 2156634334}
!246 = !{i64 2156635897}
!247 = !{i64 2156637467}
!248 = !{i64 2156639037}
!249 = !{i64 2156640607}
!250 = !{i64 776175}
!251 = !{i64 775985}
!252 = !{i64 2156650076}
!253 = !{i64 2156650414}
!254 = !{i64 2156650763}
!255 = !{i64 2156652460}
!256 = !{i64 2156652796}
!257 = !{i64 2156653132}
!258 = !{i64 2156654580}
!259 = !{i64 2156655232}
!260 = !{i64 2156655446}
!261 = !{i64 2156655779}
!262 = !{i64 2156656119}
!263 = !{i64 2156656477}
!264 = !{i64 2156656946}
!265 = !{i64 2156657286}
!266 = !{i64 2156608610}
!267 = !{i64 2156609649}
!268 = !{i64 2156609932}
!269 = !{i64 2156610149}
!270 = !{i64 2156610485}
!271 = !{i64 2156619742}
!272 = !{i64 2156619988}
!273 = !{i64 2156625113}
!274 = !{i64 2156625582}
!275 = !{i64 2156625925}
!276 = !{i64 2156626188}
!277 = !{i64 2156593119}
!278 = !{i64 2156593341}
!279 = !{i64 2156593563}
!280 = !{i64 2156593785}
!281 = !{i64 2156594009}
!282 = !{i64 2156594231}
!283 = !{i64 2156660217}
!284 = !{i64 2156660500}
!285 = !{i64 2156661157}
!286 = !{i64 2156663914}
!287 = !{i64 2156664135}
!288 = !{i64 2156664927}
!289 = !{i64 2156665148}
!290 = !{i64 2156665501}
