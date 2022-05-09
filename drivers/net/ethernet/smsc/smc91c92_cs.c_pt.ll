; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/smsc/smc91c92_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/smsc/smc91c92_cs.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.tuple_t = type { i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%union.cisparse_t = type { %struct.cistpl_cftable_entry_t }
%struct.cistpl_cftable_entry_t = type { i8, i16, i8, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_timing_t, %struct.cistpl_io_t, %struct.cistpl_irq_t, %struct.cistpl_mem_t, i8 }
%struct.cistpl_power_t = type { i8, i8, [7 x i32] }
%struct.cistpl_timing_t = type { i32, i32, i32, i32, i32, i32 }
%struct.cistpl_io_t = type { i8, i8, [16 x %struct.anon.126] }
%struct.anon.126 = type { i32, i32 }
%struct.cistpl_irq_t = type { i32, i32 }
%struct.cistpl_mem_t = type { i8, i8, [8 x %struct.anon.127] }
%struct.anon.127 = type { i32, i32, i32 }
%struct.cistpl_vers_1_t = type { i8, i8, i8, [4 x i8], [254 x i8] }

@__UNIQUE_ID_description341 = internal constant [64 x i8] c"smc91c92_cs.description=SMC 91c92 series PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [55 x i8] c"smc91c92_cs.file=drivers/net/ethernet/smsc/smc91c92_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [24 x i8] c"smc91c92_cs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [43 x i8] c"smc91c92_cs.firmware=ositech/Xilinx7OD.bin\00", section ".modinfo", align 1
@__param_str_if_port = internal constant [20 x i8] c"smc91c92_cs.if_port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@if_port = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_if_port = internal constant %struct.kernel_param { ptr @__param_str_if_port, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @if_port } }, section "__param", align 4
@__UNIQUE_ID_if_porttype345 = internal constant [33 x i8] c"smc91c92_cs.parmtype=if_port:int\00", section ".modinfo", align 1
@__initcall__kmod_smc91c92_cs__367_2059_smc91c92_cs_driver_init6 = internal global ptr @smc91c92_cs_driver_init, section ".initcall6.init", align 4
@smc91c92_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @smc91c92_probe, ptr @smc91c92_detach, ptr @smc91c92_suspend, ptr @smc91c92_resume, ptr null, ptr @smc91c92_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_smc91c92_cs_driver_exit = internal global ptr @smc91c92_cs_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smc91c92_cs\00", [20 x i8] zeroinitializer }, align 32
@smc91c92_ids = internal constant { [25 x %struct.pcmcia_device_id], [332 x i8] } { [25 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 259, i16 265, i16 1281, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 320, i16 10, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -183444732, i32 80554376, i32 1185230179, i32 0], [4 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -183444732, i32 21215091, i32 1185230179, i32 0], [4 x ptr] [ptr @.str.92, ptr @.str.95, ptr @.str.94, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -183444732, i32 -2056427832, i32 -1116978193, i32 0], [4 x ptr] [ptr @.str.92, ptr @.str.96, ptr @.str.97, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 368, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -183444732, i32 1389501982, i32 -1116978193, i32 0], [4 x ptr] [ptr @.str.92, ptr @.str.98, ptr @.str.97, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -577140290, i32 1714174284, i32 0, i32 0], [4 x ptr] [ptr @.str.99, ptr @.str.100, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -183444732, i32 1389501982, i32 0, i32 0], [4 x ptr] [ptr @.str.92, ptr @.str.98, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 204439757, i32 1701398457, i32 0, i32 0], [4 x ptr] [ptr @.str.101, ptr @.str.102, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 204439757, i32 -593779219, i32 0, i32 0], [4 x ptr] [ptr @.str.101, ptr @.str.103, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 11, i16 364, i16 32, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 364, i16 35, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 600279709, i32 11725121, i32 -822896645, i32 0], [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 2029193436, i32 -588617540, i32 0, i32 0], [4 x ptr] [ptr @.str.107, ptr @.str.108, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -443324984, i32 1780572625, i32 0, i32 0], [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1780928975, i32 -1049826875, i32 0, i32 0], [4 x ptr] [ptr @.str.111, ptr @.str.112, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1490632644, i32 608646377, i32 0, i32 0], [4 x ptr] [ptr @.str.113, ptr @.str.114, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 857950024, i32 1016445267, i32 0, i32 0], [4 x ptr] [ptr @.str.115, ptr @.str.116, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1563586963, i32 1121609258, i32 0, i32 0], [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 204439757, i32 -1287232748, i32 0, i32 0], [4 x ptr] [ptr @.str.101, ptr @.str.119, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 204439757, i32 424371466, i32 0, i32 0], [4 x ptr] [ptr @.str.101, ptr @.str.120, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -588617540, i32 0, i32 0], [4 x ptr] [ptr @.str.121, ptr @.str.108, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1324354337, i32 -2075399703, i32 0, i32 0], [4 x ptr] [ptr @.str.122, ptr @.str.123, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -990334581, i32 1242491693, i32 0, i32 0], [4 x ptr] [ptr @.str.124, ptr @.str.125, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [332 x i8] zeroinitializer }, align 32
@smc91c92_probe.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smc91c92_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/smsc/smc91c92_cs.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smc91c92_attach()\0A\00", [45 x i8] zeroinitializer }, align 32
@smc91c92_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&smc->lock\00", [21 x i8] zeroinitializer }, align 32
@smc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @smc_open, ptr @smc_close, ptr @smc_start_xmit, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @smc_ioctl, ptr null, ptr null, ptr null, ptr @s9k_config, ptr null, ptr null, ptr @smc_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @smc_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_nway_reset, ptr @smc_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @check_if_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc_get_link_ksettings, ptr @smc_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@smc_open.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smc_open\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: smc_open(%p), ID/Window %4.4x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Yikes!  Bad chip signature!\0A\00", [35 x i8] zeroinitializer }, align 32
@smc_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&smc->media)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"using 8-bit IO window\0A\00", [41 x i8] zeroinitializer }, align 32
@smc_reset.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smc_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smc91c92 reset called.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt(s) dropped!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MII is missing!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s link beat\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"autonegotiation complete: %dbaseT-%cD selected\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coax cable %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"problem\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flipped to 10baseT\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flipped to 10base2\0A\00", [44 x i8] zeroinitializer }, align 32
@smc_interrupt.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smc_interrupt\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMC91c92 interrupt %d at %#x.\0A\00", [33 x i8] zeroinitializer }, align 32
@smc_interrupt.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 1, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"SMC91c92 interrupt %d for non-existent/ejected device.\0A\00", [40 x i8] zeroinitializer }, align 32
@smc_interrupt.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 1, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Status is %#2.2x (mask %#2.2x).\0A\00", [63 x i8] zeroinitializer }, align 32
@smc_interrupt.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"  Restoring saved registers mask %2.2x bank %4.4x pointer %4.4x.\0A\00", [62 x i8] zeroinitializer }, align 32
@smc_interrupt.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.28, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Exiting interrupt IRQ%d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smc_rx() with nothing on Rx FIFO\0A\00", [62 x i8] zeroinitializer }, align 32
@smc_rx.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smc_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Receive status %4.4x length %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@smc_rx.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Low memory, packet dropped.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Successful packet caused error interrupt?\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"In XMIT with no packet to send\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"hardware Tx buffer allocation failed, status %#2.2x\0A\00", [43 x i8] zeroinitializer }, align 32
@smc_hardware_send_packet.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smc_hardware_send_packet\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Trying to xmit packet of length %d\0A\00", [60 x i8] zeroinitializer }, align 32
@smc_eph_irq.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smc_eph_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Ethernet protocol handler interrupt, status %4.4x.\0A\00", [44 x i8] zeroinitializer }, align 32
@smc_close.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smc_close\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: smc_close(), status %4.4x.\0A\00", [32 x i8] zeroinitializer }, align 32
@smc_start_xmit.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smc_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"smc_start_xmit(length = %d) called, status %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@smc_start_xmit.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Internal error -- sent packet while busy\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Far too big packet error: %d pages\0A\00", [60 x i8] zeroinitializer }, align 32
@smc_start_xmit.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.46, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"memory allocation deferred.\0A\00", [35 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switched to %s port\0A\00", [43 x i8] zeroinitializer }, align 32
@if_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50], [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10baseT\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10base2\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"transmit timed out, Tx_status %2.2x status %4.4x.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.123\00", [26 x i8] zeroinitializer }, align 32
@smc91c92_config.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smc91c92_config\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smc91c92_config\0A\00", [47 x i8] zeroinitializer }, align 32
@smc91c92_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 851, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid if_port requested\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smc91c92_config._entry_ptr = internal global ptr @smc91c92_config._entry, section ".printk_index", align 4
@smc91c92_config._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.53, ptr @.str.2, i32 869, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to find hardware address.\0A\00", [62 x i8] zeroinitializer }, align 32
@smc91c92_config._entry_ptr.60 = internal global ptr @smc91c92_config._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"92\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"96\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"94\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"95\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"100-FD\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"110\00", [28 x i8] zeroinitializer }, align 32
@smc91c92_config._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str.2, i32 922, ptr @.str.71, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_netdev() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@smc91c92_config._entry_ptr.72 = internal global ptr @smc91c92_config._entry.69, section ".printk_index", align 4
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"smc91c%s rev %d: io %#3lx, irq %d, hw_addr %pM\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  %lu byte\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  %lu kb\00", [23 x i8] zeroinitializer }, align 32
@smc91c92_config._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.53, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c buffer, %s xcvr\0A\00", [44 x i8] zeroinitializer }, align 32
@smc91c92_config._entry_ptr.78 = internal global ptr @smc91c92_config._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MII\00", [28 x i8] zeroinitializer }, align 32
@smc91c92_config.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.80, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"  MII transceiver at index %d, status %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  No MII transceivers found!\0A\00", [34 x i8] zeroinitializer }, align 32
@osi_setup.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"osi_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AUI/PWR: %4.4x RESET/ISR: %4.4x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ositech/Xilinx7OD.bin\00", [42 x i8] zeroinitializer }, align 32
@osi_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013smc91c92_cs: Failed to load firmware \22%s\22\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"osi_load_firmware\00", [46 x i8] zeroinitializer }, align 32
@osi_load_firmware._entry_ptr = internal global ptr @osi_load_firmware._entry, section ".printk_index", align 4
@smc91c92_release.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smc91c92_release\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smc91c92_release\0A\00", [46 x i8] zeroinitializer }, align 32
@smc91c92_detach.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smc91c92_detach\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smc91c92_detach\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to load firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MEGAHERTZ\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CC/XJEM3288\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DATA/FAX/CELL ETHERNET MODEM\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CC/XJEM3336\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EM1144T\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCMCIA MODEM\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"XJEM1144/CCEM1144\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Gateway 2000\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XJEM3336\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Ositech\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Trumpcard:Jack of Diamonds Modem+Ethernet\00", [54 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Trumpcard:Jack of Hearts Modem+Ethernet\00", [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BASICS by New Media Corporation\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMC91C94\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ARGOSY\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fast Ethernet PCCard\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dit Co., Ltd.\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PC Card-10/100BTX\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DYNALINK\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"L100C\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Farallon\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Farallon Enet\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Megahertz\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CC10BT/2\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MELCO/SMC\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LPC-TX\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Trumpcard:Four of Diamonds Ethernet\00", [60 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Trumpcard:Seven of Diamonds Ethernet\00", [59 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCMCIA\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Psion\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"10Mb Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMC\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EtherEZ Ethernet 8020\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 258, i64 265]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 6]
@__sancov_gen_cov_switch_values.127 = internal global [8 x i64] [i64 6, i64 16, i64 87, i64 258, i64 264, i64 296, i64 320, i64 364]
@__sancov_gen_cov_switch_values.128 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@___asan_gen_.130 = private unnamed_addr constant [8 x i8] c"if_port\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 78, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"smc91c92_cs_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2050, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2052, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant [13 x i8] c"smc91c92_ids\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2018, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 307, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 317, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"smc_netdev_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 290, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1988, i32 33 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1055, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1066, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1076, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 798, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1645, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1750, i32 23 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1774, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1782, i32 23 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1782, i32 48 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1782, i32 58 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1786, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1811, i32 23 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1812, i32 24 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1812, i32 36 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1816, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1823, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1358, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1367, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1381, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1426, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1434, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1483, i32 18 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1492, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1504, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1293, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1129, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1137, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1157, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1318, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1090, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1209, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1215, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1223, i32 18 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1255, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1599, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant [9 x i8] c"if_names\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 59, i32 20 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 59, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 59, i32 43 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 59, i32 54 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1189, i32 24 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1913, i32 25 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 817, i32 5 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 851, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 869, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 877, i32 12 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 880, i32 17 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 881, i32 37 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 881, i32 44 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 882, i32 17 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 883, i32 17 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 884, i32 17 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 885, i32 17 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 922, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 926, i32 22 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 931, i32 23 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 933, i32 23 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 934, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 940, i32 6 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 943, i32 25 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 705, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 653, i32 30 }
@___asan_gen_.403 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 655, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 958, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 337, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 745, i32 20 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2021, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2022, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2023, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2024, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2025, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2027, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2028, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2031, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2032, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2033, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2034, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2035, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2036, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2037, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2038, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2039, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2040, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2041, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.527 = private constant [43 x i8] c"../drivers/net/ethernet/smsc/smc91c92_cs.c\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2042, i32 2 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_if_porttype345, ptr @__UNIQUE_ID_license343, ptr @__exitcall_smc91c92_cs_driver_exit, ptr @__initcall__kmod_smc91c92_cs__367_2059_smc91c92_cs_driver_init6, ptr @__param_if_port, ptr @osi_load_firmware._entry, ptr @osi_load_firmware._entry_ptr, ptr @smc91c92_config._entry, ptr @smc91c92_config._entry.58, ptr @smc91c92_config._entry.69, ptr @smc91c92_config._entry.76, ptr @smc91c92_config._entry_ptr, ptr @smc91c92_config._entry_ptr.60, ptr @smc91c92_config._entry_ptr.72, ptr @smc91c92_config._entry_ptr.78, ptr @smc91c92_cs_driver_exit, ptr @if_port, ptr @smc91c92_cs_driver, ptr @.str, ptr @smc91c92_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @smc91c92_probe.__key, ptr @.str.4, ptr @smc_netdev_ops, ptr @ethtool_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @smc_open.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @if_names, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91c92_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91c92_ids to i32), i32 1300, i32 1632, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91c92_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91c92_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91c92_config._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91c92_config._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc91c92_config._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osi_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smc91c92_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @smc91c92_cs_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smc91c92_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @smc91c92_cs_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc91c92_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc91c92_probe.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc91c92_probe, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smc91c92_probe.__UNIQUE_ID_ddebug346, ptr noundef %dev3, ptr noundef nonnull @.str.3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 176, i32 noundef 1, i32 noundef 1) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %link, ptr %add.ptr.i, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %priv, align 8
  %lock = getelementptr i8, ptr %call4, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @smc91c92_probe.__key, i16 noundef signext 3) #11
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @smc_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %3 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %4 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 40, ptr %watchdog_timeo, align 4
  %dev13 = getelementptr i8, ptr %call4, i32 2456
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %dev13, align 4
  %mdio_read = getelementptr i8, ptr %call4, i32 2460
  %6 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call4, i32 2464
  %7 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call4, i32 2444
  %8 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call4, i32 2448
  %9 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 31, ptr %reg_num_mask, align 4
  %call18 = tail call fastcc i32 @smc91c92_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc91c92_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc91c92_detach.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc91c92_detach, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smc91c92_detach.__UNIQUE_ID_ddebug347, ptr noundef %dev3, ptr noundef nonnull @.str.90) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc91c92_release.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc91c92_detach, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !275

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smc91c92_release.__UNIQUE_ID_ddebug351, ptr noundef %dev.i, ptr noundef nonnull @.str.88) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %do.end.i.smc91c92_release.exit_crit_edge, label %if.then4.i

do.end.i.smc91c92_release.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smc91c92_release.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %base.i = getelementptr i8, ptr %7, i32 2364
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void @iounmap(ptr noundef %9) #11
  br label %smc91c92_release.exit

smc91c92_release.exit:                            ; preds = %if.then4.i, %do.end.i.smc91c92_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #11
  tail call void @free_netdev(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc91c92_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
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
define internal i32 @smc91c92_resume(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %manfid = getelementptr i8, ptr %1, i32 2352
  %2 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %3)
  %cmp = icmp eq i16 %3, 258
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cardid = getelementptr i8, ptr %1, i32 2354
  %4 = ptrtoint ptr %cardid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cardid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %5)
  %cmp3 = icmp eq i16 %5, 6
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.endthread-pre-split_crit_edge

land.lhs.true.if.endthread-pre-split_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.endthread-pre-split

if.then:                                          ; preds = %land.lhs.true
  %base.i = getelementptr i8, ptr %1, i32 2364
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %7, i32 896
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i103) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #11
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 896
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then
  %__ms.01.i = phi i32 [ 200, %if.then ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #11
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %mhz_3288_power.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

mhz_3288_power.exit:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %config_base.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %16 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config_base.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %config_base.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 %18) #11, !srcloc !281
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %mhz_3288_power.exit, %land.lhs.true.if.endthread-pre-split_crit_edge
  %24 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr = load i16, ptr %manfid, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %25 = phi i16 [ %.pr, %if.endthread-pre-split ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 265, i16 %25)
  %cmp8 = icmp eq i16 %25, 265
  br i1 %cmp8, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mot_config(ptr noundef %link)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %26 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %27)
  %cmp14 = icmp eq i16 %27, 320
  br i1 %cmp14, label %land.lhs.true16, label %if.end11.lor.lhs.false_crit_edge

if.end11.lor.lhs.false_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true16:                                  ; preds = %if.end11
  %cardid17 = getelementptr i8, ptr %1, i32 2354
  %28 = ptrtoint ptr %cardid17 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cardid17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %29)
  %cmp19.not = icmp eq i16 %29, 8
  br i1 %cmp19.not, label %land.lhs.true16.if.end54_crit_edge, label %do.body

land.lhs.true16.if.end54_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

do.body:                                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  tail call void @arm_heavy_mb() #11
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_addr, align 32
  %add = add i32 %31, 1048572
  %and = and i32 %add, 1048575
  %add22 = or i32 %and, -18874368
  %32 = inttoptr i32 %add22 to ptr
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %32) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !284
  %34 = or i16 %33, 3
  %35 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_addr, align 32
  %add29 = add i32 %36, 1048572
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %37 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_addr, align 32
  %add39 = add i32 %39, 1048574
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %40 = inttoptr i32 %add41 to ptr
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  %42 = or i16 %41, 3
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 32
  %add50 = add i32 %44, 1048574
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %45 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %42) #11, !srcloc !285
  br label %if.end54

if.end54:                                         ; preds = %do.body, %land.lhs.true16.if.end54_crit_edge
  %46 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %46)
  %.pr104 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %.pr104)
  %cmp57 = icmp eq i16 %.pr104, 320
  br i1 %cmp57, label %land.lhs.true59, label %if.end54.lor.lhs.false_crit_edge

if.end54.lor.lhs.false_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true59:                                  ; preds = %if.end54
  %47 = ptrtoint ptr %cardid17 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cardid17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %48)
  %cmp62 = icmp eq i16 %48, 8
  br i1 %cmp62, label %land.lhs.true59.if.then73_crit_edge, label %land.lhs.true59.if.end77_crit_edge

land.lhs.true59.if.end77_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

land.lhs.true59.if.then73_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

lor.lhs.false:                                    ; preds = %if.end54.lor.lhs.false_crit_edge, %if.end11.lor.lhs.false_crit_edge
  %49 = phi i16 [ %.pr104, %if.end54.lor.lhs.false_crit_edge ], [ %27, %if.end11.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 364, i16 %49)
  %cmp66 = icmp eq i16 %49, 364
  br i1 %cmp66, label %land.lhs.true68, label %lor.lhs.false.if.end77_crit_edge

lor.lhs.false.if.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

land.lhs.true68:                                  ; preds = %lor.lhs.false
  %cardid69 = getelementptr i8, ptr %1, i32 2354
  %50 = ptrtoint ptr %cardid69 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cardid69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %51)
  %cmp71 = icmp eq i16 %51, 35
  br i1 %cmp71, label %land.lhs.true68.if.then73_crit_edge, label %land.lhs.true68.if.end77_crit_edge

land.lhs.true68.if.end77_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

land.lhs.true68.if.then73_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.then73:                                        ; preds = %land.lhs.true68.if.then73_crit_edge, %land.lhs.true59.if.then73_crit_edge
  %call74 = tail call fastcc i32 @osi_load_firmware(ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool.not = icmp eq i32 %call74, 0
  br i1 %tobool.not, label %if.then73.if.end77_crit_edge, label %if.then75

if.then73.if.end77_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.91) #14
  br label %cleanup

if.end77:                                         ; preds = %if.then73.if.end77_crit_edge, %land.lhs.true68.if.end77_crit_edge, %lor.lhs.false.if.end77_crit_edge, %land.lhs.true59.if.end77_crit_edge
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %52 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool78.not = icmp eq i32 %53, 0
  br i1 %tobool78.not, label %if.end77.cleanup_crit_edge, label %if.then79

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @smc_reset(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end77.cleanup_crit_edge, %if.then75
  %retval.0 = phi i32 [ %call74, %if.then75 ], [ 0, %if.then79 ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %loc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 8
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %loc
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %bits.09.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 9) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 13) #11, !srcloc !281
  %inc.i = add nuw nsw i32 %bits.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.preheader, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.body.preheader:                               ; preds = %do.body.i
  %or1 = or i32 %or, 6144
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.055 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 13, %for.body.preheader ]
  %shl3 = shl nuw i32 1, %i.055
  %and = and i32 %shl3, %or1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  tail call void @arm_heavy_mb() #11
  %conv = select i1 %tobool.not, i8 8, i8 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  tail call void @arm_heavy_mb() #11
  %conv10 = or i8 %conv, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv10) #11, !srcloc !281
  %dec = add nsw i32 %i.055, -1
  %cmp.not = icmp eq i32 %i.055, 0
  br i1 %cmp.not, label %for.body.do.body18_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.do.body18_crit_edge:                     ; preds = %for.body
  br label %do.body18

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %for.body.do.body18_crit_edge
  %i.157 = phi i32 [ %dec41, %do.body18.do.body18_crit_edge ], [ 19, %for.body.do.body18_crit_edge ]
  %retval2.056 = phi i32 [ %or33, %do.body18.do.body18_crit_edge ], [ 0, %for.body.do.body18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #11, !srcloc !281
  %shl24 = shl i32 %retval2.056, 1
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  %4 = lshr i8 %3, 1
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %or33 = or i32 %shl24, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #11, !srcloc !281
  %dec41 = add nsw i32 %i.157, -1
  %cmp15 = icmp ugt i32 %i.157, 1
  br i1 %cmp15, label %do.body18.do.body18_crit_edge, label %for.end42

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

for.end42:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %and43 = and i32 %retval2.056, 65535
  ret i32 %and43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 8
  %shl = shl i32 %phy_id, 23
  %shl1 = shl i32 %loc, 18
  %or = or i32 %shl, %shl1
  %or3 = or i32 %or, %value
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %bits.09.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 9) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 13) #11, !srcloc !281
  %inc.i = add nuw nsw i32 %bits.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.preheader, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.body.preheader:                               ; preds = %do.body.i
  %or4 = or i32 %or3, 1342308352
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.044 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 31, %for.body.preheader ]
  %shl5 = shl nuw i32 1, %i.044
  %and = and i32 %shl5, %or4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !295
  tail call void @arm_heavy_mb() #11
  %conv = select i1 %tobool.not, i8 8, i8 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  tail call void @arm_heavy_mb() #11
  %conv12 = or i8 %conv, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv12) #11, !srcloc !281
  %dec = add nsw i32 %i.044, -1
  %cmp.not = icmp eq i32 %i.044, 0
  br i1 %cmp.not, label %do.body20.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body20.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !298
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !298
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #11, !srcloc !281
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc91c92_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc91c92_config.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc91c92_config, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smc91c92_config.__UNIQUE_ID_ddebug349, ptr noundef %dev4, ptr noundef nonnull @.str.54) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %2 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manf_id, align 4
  %manfid = getelementptr i8, ptr %1, i32 2352
  %4 = ptrtoint ptr %manfid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %manfid, align 4
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %5 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %card_id, align 2
  %cardid = getelementptr i8, ptr %1, i32 2354
  %7 = ptrtoint ptr %cardid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %cardid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %3)
  %cmp = icmp ne i16 %3, 320
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp9.not = icmp eq i16 %6, 8
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %config_flags.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %10 = ptrtoint ptr %config_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config_flags.i, align 4
  %or.i = or i32 %11, 3
  store i32 %or.i, ptr %config_flags.i, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %end.i, align 4
  %arrayidx2.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx2.i, align 4
  %end6.i = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %end6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %end6.i, align 4
  %io_lines.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 14
  %18 = ptrtoint ptr %io_lines.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %io_lines.i, align 4
  %config_index.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %19 = ptrtoint ptr %config_index.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 35, ptr %config_index.i, align 4
  %20 = load ptr, ptr %arrayidx2.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1016, ptr %20, align 4
  %call.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp eq i32 %call.i, 0
  br i1 %cmp10.i, label %if.then11.if.end36.thread416_crit_edge, label %for.cond.i

if.then11.if.end36.thread416_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.thread416

for.cond.i:                                       ; preds = %if.then11
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 760, ptr %23, align 4
  %call.1.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp10.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp10.1.i, label %for.cond.i.if.end36.thread416_crit_edge, label %for.cond.1.i

for.cond.i.if.end36.thread416_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.thread416

for.cond.1.i:                                     ; preds = %for.cond.i
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx2.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1000, ptr %26, align 4
  %call.2.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp10.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp10.2.i, label %for.cond.1.i.if.end36.thread416_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end36.thread416_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.thread416

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx2.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 744, ptr %29, align 4
  %call.3.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp10.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp10.3.i, label %for.cond.2.i.if.end36.thread416_crit_edge, label %if.end36

for.cond.2.i.if.end36.thread416_crit_edge:        ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.thread416

if.else:                                          ; preds = %do.end
  %31 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.else.if.else33_crit_edge [
    i16 265, label %if.else.if.then31_crit_edge
    i16 258, label %land.lhs.true21
  ]

if.else.if.then31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.else.if.else33_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else33

land.lhs.true21:                                  ; preds = %if.else
  %32 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %6, label %land.lhs.true21.if.else33_crit_edge [
    i16 0, label %land.lhs.true21.if.then31_crit_edge
    i16 6, label %land.lhs.true21.if.then31_crit_edge430
  ]

land.lhs.true21.if.then31_crit_edge430:           ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

land.lhs.true21.if.then31_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

land.lhs.true21.if.else33_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else33

if.then31:                                        ; preds = %land.lhs.true21.if.then31_crit_edge, %land.lhs.true21.if.then31_crit_edge430, %if.else.if.then31_crit_edge
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %config_flags.i390 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %35 = ptrtoint ptr %config_flags.i390 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_flags.i390, align 4
  %or.i391 = or i32 %36, 2051
  store i32 %or.i391, ptr %config_flags.i390, align 4
  %call1.i = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @mhz_mfc_config_check, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then31.config_failed_crit_edge

if.then31.config_failed_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %config_failed

if.end.i:                                         ; preds = %if.then31
  %resource.i392 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %37 = ptrtoint ptr %resource.i392 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resource.i392, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %base_addr.i393 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 5
  %41 = ptrtoint ptr %base_addr.i393 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %base_addr.i393, align 32
  %arrayidx3.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx3.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 33, ptr %flags.i, align 4
  %45 = load ptr, ptr %arrayidx3.i, align 4
  %end.i394 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %end.i394 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %end.i394, align 4
  %47 = load ptr, ptr %arrayidx3.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %47, align 4
  %49 = load ptr, ptr %arrayidx3.i, align 4
  %call11.i = tail call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %49, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.not.i = icmp eq i32 %call11.i, 0
  br i1 %cmp.not.i, label %if.end13.i, label %if.end.i.config_failed_crit_edge

if.end.i.config_failed_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %config_failed

if.end13.i:                                       ; preds = %if.end.i
  %50 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx3.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %53
  %add.i.i = add i32 %sub.i.i, %55
  %call20.i = tail call ptr @ioremap(i32 noundef %53, i32 noundef %add.i.i) #11
  %base.i = getelementptr i8, ptr %34, i32 2364
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call20.i, ptr %base.i, align 4
  %manfid.i = getelementptr i8, ptr %34, i32 2352
  %57 = ptrtoint ptr %manfid.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %manfid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 265, i16 %58)
  %cmp21.i = icmp eq i16 %58, 265
  br i1 %cmp21.i, label %cond.true.i, label %if.end13.i.cond.end.i_crit_edge

if.end13.i.cond.end.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %config_base.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %59 = ptrtoint ptr %config_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %config_base.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end13.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %60, %cond.true.i ], [ 0, %if.end13.i.cond.end.i_crit_edge ]
  %61 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx3.i, align 4
  %call25.i = tail call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %62, i32 noundef %cond.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %land.lhs.true.i, label %cond.end.i.if.end39_crit_edge

cond.end.i.if.end39_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true.i:                                  ; preds = %cond.end.i
  %63 = ptrtoint ptr %manfid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %manfid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %64)
  %cmp30.i = icmp eq i16 %64, 258
  br i1 %cmp30.i, label %land.lhs.true32.i, label %land.lhs.true.i.if.end39_crit_edge

land.lhs.true.i.if.end39_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true32.i:                                ; preds = %land.lhs.true.i
  %cardid.i = getelementptr i8, ptr %34, i32 2354
  %65 = ptrtoint ptr %cardid.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %cardid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %66)
  %cmp34.i = icmp eq i16 %66, 6
  br i1 %cmp34.i, label %if.then36.i, label %land.lhs.true32.i.if.end39_crit_edge

land.lhs.true32.i.if.end39_crit_edge:             ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mhz_3288_power(ptr noundef %link) #11
  br label %if.end39

if.else33:                                        ; preds = %land.lhs.true21.if.else33_crit_edge, %if.else.if.else33_crit_edge
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 8
  %config_flags.i397 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %69 = ptrtoint ptr %config_flags.i397 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %config_flags.i397, align 4
  %or.i398 = or i32 %70, 2049
  store i32 %or.i398, ptr %config_flags.i397, align 4
  %call.i399 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @smc_configcheck, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i399)
  %tobool.not.i400 = icmp eq i32 %call.i399, 0
  br i1 %tobool.not.i400, label %if.then.i, label %if.else33.config_failed_crit_edge

if.else33.config_failed_crit_edge:                ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  br label %config_failed

if.then.i:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  %resource.i401 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %71 = ptrtoint ptr %resource.i401 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resource.i401, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %base_addr.i402 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 5
  %75 = ptrtoint ptr %base_addr.i402 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %base_addr.i402, align 32
  br label %if.end39

if.end36.thread416:                               ; preds = %for.cond.2.i.if.end36.thread416_crit_edge, %for.cond.1.i.if.end36.thread416_crit_edge, %for.cond.i.if.end36.thread416_crit_edge, %if.then11.if.end36.thread416_crit_edge
  %76 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %resource.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add.i418 = add i32 %79, 16
  %base_addr.i419 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 5
  %80 = ptrtoint ptr %base_addr.i419 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add.i418, ptr %base_addr.i419, align 32
  br label %if.end39

if.end36:                                         ; preds = %for.cond.2.i
  %81 = ptrtoint ptr %config_index.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %config_index.i, align 4
  %82 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx2.i, align 4
  %end16.i = getelementptr inbounds %struct.resource, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %end16.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %end16.i, align 4
  %call17.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #11
  %85 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %resource.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add.i = add i32 %88, 16
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 5
  %89 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add.i, ptr %base_addr.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool37.not = icmp eq i32 %call17.i, 0
  br i1 %tobool37.not, label %if.end36.if.end39_crit_edge, label %if.end36.config_failed_crit_edge

if.end36.config_failed_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %config_failed

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %if.end36.if.end39_crit_edge, %if.end36.thread416, %if.then.i, %if.then36.i, %land.lhs.true32.i.if.end39_crit_edge, %land.lhs.true.i.if.end39_crit_edge, %cond.end.i.if.end39_crit_edge
  %call40 = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @smc_interrupt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.config_failed_crit_edge

if.end39.config_failed_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %config_failed

if.end43:                                         ; preds = %if.end39
  %call44 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.config_failed_crit_edge

if.end43.config_failed_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %config_failed

if.end47:                                         ; preds = %if.end43
  %90 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 265, i16 %91)
  %cmp50 = icmp eq i16 %91, 265
  br i1 %cmp50, label %if.then52, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mot_config(ptr noundef %link)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47.if.end53_crit_edge
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 8
  %irq54 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %94 = ptrtoint ptr %irq54 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %irq54, align 4
  %95 = load i32, ptr @if_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %if.then60, label %do.end65

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %conv61 = trunc i32 %95 to i8
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %97 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv61, ptr %if_port, align 2
  br label %if.end67

do.end65:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %dev66 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev66, ptr noundef nonnull @.str.55) #14
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %if.then60
  %98 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %manfid, align 4
  %100 = zext i16 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.127)
  switch i16 %99, label %sw.default [
    i16 320, label %if.end67.sw.bb_crit_edge
    i16 364, label %if.end67.sw.bb_crit_edge431
    i16 264, label %if.end67.sw.bb73_crit_edge
    i16 87, label %if.end67.sw.bb73_crit_edge432
    i16 296, label %if.end67.sw.bb75_crit_edge
    i16 258, label %if.end67.sw.bb75_crit_edge433
  ]

if.end67.sw.bb75_crit_edge433:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb75

if.end67.sw.bb75_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb75

if.end67.sw.bb73_crit_edge432:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

if.end67.sw.bb73_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

if.end67.sw.bb_crit_edge431:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end67.sw.bb_crit_edge:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end67.sw.bb_crit_edge, %if.end67.sw.bb_crit_edge431
  %101 = ptrtoint ptr %cardid to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %cardid, align 2
  %call72 = tail call fastcc i32 @osi_setup(ptr noundef %link, i16 noundef zeroext %99, i16 noundef zeroext %102)
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end67.sw.bb73_crit_edge, %if.end67.sw.bb73_crit_edge432
  %call74 = tail call fastcc i32 @smc_setup(ptr noundef %link)
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end67.sw.bb75_crit_edge, %if.end67.sw.bb75_crit_edge433
  %call76 = tail call fastcc i32 @mhz_setup(ptr noundef %link)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = tail call fastcc i32 @mot_setup(ptr noundef %link)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb75, %sw.bb73, %sw.bb
  %i.1 = phi i32 [ %call78, %sw.default ], [ %call76, %sw.bb75 ], [ %call74, %sw.bb73 ], [ %call72, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp79.not = icmp eq i32 %i.1, 0
  br i1 %cmp79.not, label %if.end86, label %do.end84

do.end84:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %dev85 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev85, ptr noundef nonnull @.str.59) #14
  br label %config_failed

if.end86:                                         ; preds = %sw.epilog
  %duplex = getelementptr i8, ptr %1, i32 2468
  %103 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %duplex, align 4
  %rx_ovrn = getelementptr i8, ptr %1, i32 2472
  %104 = ptrtoint ptr %rx_ovrn to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %rx_ovrn, align 4
  %call87 = tail call fastcc i32 @check_sig(ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp sgt i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.end100

if.then90:                                        ; preds = %if.end86
  %shr428 = lshr i32 %call87, 4
  %105 = zext i32 %shr428 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %shr428, label %if.then90.if.then103_crit_edge [
    i32 3, label %sw.bb91
    i32 4, label %sw.bb92
    i32 5, label %sw.bb95
    i32 7, label %sw.bb96
    i32 8, label %sw.bb97
    i32 9, label %sw.bb98
  ]

if.then90.if.then103_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

sw.bb91:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

sw.bb92:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %call87, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp93 = icmp ugt i32 %and, 5
  %cond = select i1 %cmp93, ptr @.str.63, ptr @.str.64
  br label %if.then103

sw.bb95:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

sw.bb96:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

sw.bb97:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

sw.bb98:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

if.end100:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %106 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %base_addr, align 32
  br label %if.end177

if.then103:                                       ; preds = %sw.bb98, %sw.bb97, %sw.bb96, %sw.bb95, %sw.bb92, %sw.bb91, %if.then90.if.then103_crit_edge
  %name.0.ph = phi ptr [ @.str.62, %sw.bb91 ], [ %cond, %sw.bb92 ], [ @.str.65, %sw.bb95 ], [ @.str.66, %sw.bb96 ], [ @.str.67, %sw.bb97 ], [ @.str.68, %sw.bb98 ], [ @.str.61, %if.then90.if.then103_crit_edge ]
  %base_addr422 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %108 = ptrtoint ptr %base_addr422 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %base_addr422, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !299
  tail call void @arm_heavy_mb() #11
  %add = add i32 %109, 14
  %and107 = and i32 %add, 1048575
  %add108 = or i32 %and107, -18874368
  %110 = inttoptr i32 %add108 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %110, i16 0) #11, !srcloc !285
  %add110 = add i32 %109, 8
  %and111 = and i32 %add110, 1048575
  %add112 = or i32 %and111, -18874368
  %111 = inttoptr i32 %add112 to ptr
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %111) #11, !srcloc !283
  %113 = lshr i16 %112, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %113)
  %cmp118 = icmp eq i16 %113, 255
  %narrow = select i1 %cmp118, i16 256, i16 %113
  %spec.select = zext i16 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call87)
  %cmp123 = icmp ugt i32 %call87, 63
  br i1 %cmp123, label %cond.true, label %if.then103.cond.end_crit_edge

if.then103.cond.end_crit_edge:                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %add126 = add i32 %109, 10
  %and127 = and i32 %add126, 1048575
  %add128 = or i32 %and127, -18874368
  %114 = inttoptr i32 %add128 to ptr
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %114) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !301
  %116 = lshr i16 %115, 1
  %117 = and i16 %116, 7
  %phi.bo383 = zext i16 %117 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then103.cond.end_crit_edge
  %cond133 = phi i32 [ %phi.bo383, %cond.true ], [ 1, %if.then103.cond.end_crit_edge ]
  %mul = shl nuw nsw i32 128, %cond133
  %mul136 = mul nuw nsw i32 %mul, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !302
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %110, i16 256) #11, !srcloc !285
  %and146 = and i32 %109, 1048575
  %add147 = or i32 %and146, -18874368
  %118 = inttoptr i32 %add147 to ptr
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %118) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !303
  %120 = and i16 %119, 20462
  %cfg = getelementptr i8, ptr %1, i32 2368
  %121 = or i16 %120, -20464
  %122 = tail call i16 @llvm.bswap.i16(i16 %121)
  %123 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %cfg, align 4
  %124 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %125)
  %cmp159 = icmp eq i16 %125, 320
  br i1 %cmp159, label %if.then161, label %cond.end.if.end166_crit_edge

cond.end.if.end166_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

if.then161:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %126 = or i16 %122, 6
  %127 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %cfg, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %cond.end.if.end166_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %call87)
  %cmp168 = icmp ugt i32 %call87, 111
  br i1 %cmp168, label %if.then170, label %if.end166.if.end177_crit_edge

if.end166.if.end177_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.then170:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %cfg, align 4
  %130 = or i16 %129, -32768
  store i16 %130, ptr %cfg, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then170, %if.end166.if.end177_crit_edge, %if.end100
  %131 = phi i32 [ %109, %if.then170 ], [ %109, %if.end166.if.end177_crit_edge ], [ %107, %if.end100 ]
  %base_addr425 = phi ptr [ %base_addr422, %if.then170 ], [ %base_addr422, %if.end166.if.end177_crit_edge ], [ %base_addr, %if.end100 ]
  %name.0423 = phi ptr [ %name.0.ph, %if.then170 ], [ %name.0.ph, %if.end166.if.end177_crit_edge ], [ @.str.61, %if.end100 ]
  %mir.1 = phi i32 [ %mul136, %if.then170 ], [ %mul136, %if.end166.if.end177_crit_edge ], [ 0, %if.end100 ]
  %cfg178 = getelementptr i8, ptr %1, i32 2368
  %132 = ptrtoint ptr %cfg178 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %cfg178, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %133)
  %tobool181.not = icmp sgt i16 %133, -1
  br i1 %tobool181.not, label %if.end177.if.end214_crit_edge, label %do.body183

if.end177.if.end214_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

do.body183:                                       ; preds = %if.end177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @arm_heavy_mb() #11
  %add186 = add i32 %131, 14
  %and187 = and i32 %add186, 1048575
  %add188 = or i32 %and187, -18874368
  %134 = inttoptr i32 %add188 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %134, i16 768) #11, !srcloc !285
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body183
  %i.2429 = phi i32 [ 0, %do.body183 ], [ %inc200, %for.inc.for.body_crit_edge ]
  %call192 = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %i.2429, i32 noundef 1)
  %135 = zext i32 %call192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call192, label %for.body.for.end_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 65535, label %for.body.for.inc_crit_edge434
  ]

for.body.for.inc_crit_edge434:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge434
  %inc200 = add nuw nsw i32 %i.2429, 1
  %exitcond.not = icmp eq i32 %inc200, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %spec.select385 = phi i32 [ %i.2429, %for.body.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  %mii_if = getelementptr i8, ptr %1, i32 2436
  %136 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %spec.select385, ptr %mii_if, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !305
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %134, i16 0) #11, !srcloc !285
  br label %if.end214

if.end214:                                        ; preds = %for.end, %if.end177.if.end214_crit_edge
  %j.2 = phi i32 [ %call192, %for.end ], [ 0, %if.end177.if.end214_crit_edge ]
  %dev215 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %137 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %dev215, ptr %parent, align 8
  %call217 = tail call i32 @register_netdev(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218.not = icmp eq i32 %call217, 0
  br i1 %cmp218.not, label %if.end225, label %do.end223

do.end223:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev215, ptr noundef nonnull @.str.70) #14
  tail call void @unregister_netdev(ptr noundef %1) #11
  br label %config_failed

if.end225:                                        ; preds = %if.end214
  %and226 = and i32 %call87, 15
  %138 = ptrtoint ptr %base_addr425 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %base_addr425, align 32
  %140 = ptrtoint ptr %irq54 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq54, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %142 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef nonnull %name.0423, i32 noundef %and226, i32 noundef %139, i32 noundef %141, ptr noundef %143) #14
  br i1 %cmp88, label %if.then231, label %if.end225.if.end252_crit_edge

if.end225.if.end252_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.then231:                                       ; preds = %if.end225
  %and232 = and i32 %mir.1, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %if.else235, label %if.then234

if.then234:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef %mir.1) #14
  br label %do.end240

if.else235:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #13
  %shr236 = lshr i32 %mir.1, 10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %shr236) #14
  br label %do.end240

do.end240:                                        ; preds = %if.else235, %if.then234
  %144 = ptrtoint ptr %cfg178 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %cfg178, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %145)
  %tobool245.not = icmp sgt i16 %145, -1
  br i1 %tobool245.not, label %cond.false247, label %do.end240.cond.end249_crit_edge

do.end240.cond.end249_crit_edge:                  ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end249

cond.false247:                                    ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #13
  %if_port248 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %146 = ptrtoint ptr %if_port248 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %if_port248, align 2
  %idxprom = zext i8 %147 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @if_names, i32 0, i32 %idxprom
  %148 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx, align 4
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false247, %do.end240.cond.end249_crit_edge
  %cond250 = phi ptr [ %149, %cond.false247 ], [ @.str.79, %do.end240.cond.end249_crit_edge ]
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %cond250) #14
  br label %if.end252

if.end252:                                        ; preds = %cond.end249, %if.end225.if.end252_crit_edge
  %150 = ptrtoint ptr %cfg178 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %cfg178, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %151)
  %tobool256.not = icmp sgt i16 %151, -1
  br i1 %tobool256.not, label %if.end252.cleanup_crit_edge, label %if.then257

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then257:                                       ; preds = %if.end252
  %mii_if258 = getelementptr i8, ptr %1, i32 2436
  %152 = ptrtoint ptr %mii_if258 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mii_if258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %153)
  %cmp260.not = icmp eq i32 %153, -1
  br i1 %cmp260.not, label %if.else284, label %do.body264

do.body264:                                       ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc91c92_config.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc91c92_config, %if.then276)) #11
          to label %cleanup [label %if.then276], !srcloc !275

if.then276:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %mii_if258 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mii_if258, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc91c92_config.__UNIQUE_ID_ddebug350, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %155, i32 noundef %j.2) #11
  br label %cleanup

if.else284:                                       ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %1, ptr noundef nonnull @.str.81) #14
  br label %cleanup

config_failed:                                    ; preds = %do.end223, %do.end84, %if.end43.config_failed_crit_edge, %if.end39.config_failed_crit_edge, %if.end36.config_failed_crit_edge, %if.else33.config_failed_crit_edge, %if.end.i.config_failed_crit_edge, %if.then31.config_failed_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc91c92_release.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc91c92_config, %if.then.i404)) #11
          to label %do.end.i [label %if.then.i404], !srcloc !275

if.then.i404:                                     ; preds = %config_failed
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smc91c92_release.__UNIQUE_ID_ddebug351, ptr noundef %dev.i, ptr noundef nonnull @.str.88) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i404, %config_failed
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %156 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i, align 4
  %end.i405 = getelementptr inbounds %struct.resource, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %end.i405 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %end.i405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool3.not.i = icmp eq i32 %159, 0
  br i1 %tobool3.not.i, label %do.end.i.smc91c92_release.exit_crit_edge, label %if.then4.i

do.end.i.smc91c92_release.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smc91c92_release.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %priv, align 8
  %base.i407 = getelementptr i8, ptr %161, i32 2364
  %162 = ptrtoint ptr %base.i407 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i407, align 4
  tail call void @iounmap(ptr noundef %163) #11
  br label %smc91c92_release.exit

smc91c92_release.exit:                            ; preds = %if.then4.i, %do.end.i.smc91c92_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #11
  tail call void @free_netdev(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %smc91c92_release.exit, %if.else284, %if.then276, %do.body264, %if.end252.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %smc91c92_release.exit ], [ 0, %if.else284 ], [ 0, %if.then276 ], [ 0, %if.end252.cleanup_crit_edge ], [ 0, %do.body264 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_open.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_open, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %add = add i32 %3, 14
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %4 = inttoptr i32 %add5 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !306
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smc_open.__UNIQUE_ID_ddebug352, ptr noundef %dev4, ptr noundef nonnull @.str.6, ptr noundef %dev, ptr noundef %dev, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call9 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %call13 = tail call fastcc i32 @check_sig(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %saved_skb = getelementptr i8, ptr %dev, i32 2356
  %11 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %saved_skb, align 4
  %packets_waiting = getelementptr i8, ptr %dev, i32 2360
  %12 = ptrtoint ptr %packets_waiting to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %packets_waiting, align 4
  tail call fastcc void @smc_reset(ptr noundef %dev)
  %media = getelementptr i8, ptr %dev, i32 2372
  tail call void @init_timer_key(ptr noundef %media, ptr noundef nonnull @media_check, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @smc_open.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add21 = add i32 %13, 100
  %call22 = tail call i32 @mod_timer(ptr noundef %media, i32 noundef %add21) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then15 ], [ 0, %if.end16 ], [ -19, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_close(ptr noundef %dev) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_close.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_close, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %add = add i32 %3, 14
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %4 = inttoptr i32 %add5 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !307
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smc_close.__UNIQUE_ID_ddebug353, ptr noundef %dev4, ptr noundef nonnull @.str.41, ptr noundef %dev, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  tail call void @arm_heavy_mb() #11
  %add12 = add i32 %3, 14
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %9 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 512) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  tail call void @arm_heavy_mb() #11
  %add19 = add i32 %3, 12
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %10 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  tail call void @arm_heavy_mb() #11
  %add34 = add i32 %3, 4
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %11 = inttoptr i32 %add36 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %13 = and i16 %12, 255
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %13) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %and52 = and i32 %3, 1048575
  %add53 = or i32 %and52, -18874368
  %14 = inttoptr i32 %add53 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  %16 = and i16 %15, 255
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %16) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 256) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 32) #11, !srcloc !285
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %open, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %open, align 4
  %media = getelementptr i8, ptr %dev, i32 2372
  %call78 = tail call i32 @del_timer_sync(ptr noundef %media) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_start_xmit.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_start_xmit, %if.then)) #11
          to label %do.end10 [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %6 = inttoptr i32 %add5 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #11, !srcloc !283
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_start_xmit.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %5, i32 noundef %conv) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  %saved_skb = getelementptr i8, ptr %dev, i32 2356
  %9 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %saved_skb, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end32, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %11 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_aborted_errors, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %tx_aborted_errors, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_start_xmit.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_start_xmit, %if.then26)) #11
          to label %cleanup [label %if.then26], !srcloc !275

if.then26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_start_xmit.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end32:                                         ; preds = %do.end10
  %13 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb, ptr %saved_skb, align 4
  %len34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len34, align 4
  %shr = lshr i32 %15, 8
  %conv36 = and i32 %shr, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv36)
  %cmp = icmp ugt i32 %conv36, 7
  br i1 %cmp, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %conv36) #14
  tail call void @consume_skb(ptr noundef %skb) #11
  %16 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %saved_skb, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %17 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_dropped, align 4
  %inc42 = add i32 %18, 1
  store i32 %inc42, ptr %tx_dropped, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %packets_waiting = getelementptr i8, ptr %dev, i32 2360
  %19 = ptrtoint ptr %packets_waiting to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %packets_waiting, align 4
  %inc44 = add i32 %20, 1
  store i32 %inc44, ptr %packets_waiting, align 4
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  tail call void @arm_heavy_mb() #11
  %add59 = add i32 %1, 14
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %21 = inttoptr i32 %add61 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 512) #11, !srcloc !285
  %rx_ovrn = getelementptr i8, ptr %dev, i32 2472
  %22 = ptrtoint ptr %rx_ovrn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_ovrn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool63.not = icmp eq i32 %23, 0
  br i1 %tobool63.not, label %if.end43.do.body74_crit_edge, label %do.body65

if.end43.do.body74_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %1, 1048575
  %.pre196 = or i32 %.pre, -18874368
  %.pre197 = inttoptr i32 %.pre196 to ptr
  br label %do.body74

do.body65:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  tail call void @arm_heavy_mb() #11
  %and69 = and i32 %1, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 16384) #11, !srcloc !285
  %25 = ptrtoint ptr %rx_ovrn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rx_ovrn, align 4
  br label %do.body74

do.body74:                                        ; preds = %do.body65, %if.end43.do.body74_crit_edge
  %.pre-phi = phi ptr [ %.pre197, %if.end43.do.body74_crit_edge ], [ %24, %do.body65 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %26 = trunc i32 %shr to i16
  %conv78 = or i16 %26, 32
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv78)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %.pre-phi, i16 %27) #11, !srcloc !285
  %add87 = add i32 %1, 12
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %28 = inttoptr i32 %add89 to ptr
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %31 = and i16 %30, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool95.not = icmp eq i16 %31, 0
  br i1 %tobool95.not, label %for.inc, label %do.body74.do.body97_crit_edge

do.body74.do.body97_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

do.body97:                                        ; preds = %for.inc.7.do.body97_crit_edge, %for.inc.6.do.body97_crit_edge, %for.inc.5.do.body97_crit_edge, %for.inc.4.do.body97_crit_edge, %for.inc.3.do.body97_crit_edge, %for.inc.2.do.body97_crit_edge, %for.inc.1.do.body97_crit_edge, %for.inc.do.body97_crit_edge, %do.body74.do.body97_crit_edge
  %.lcssa = phi i16 [ %30, %do.body74.do.body97_crit_edge ], [ %34, %for.inc.do.body97_crit_edge ], [ %37, %for.inc.1.do.body97_crit_edge ], [ %40, %for.inc.2.do.body97_crit_edge ], [ %43, %for.inc.3.do.body97_crit_edge ], [ %46, %for.inc.4.do.body97_crit_edge ], [ %49, %for.inc.5.do.body97_crit_edge ], [ %52, %for.inc.6.do.body97_crit_edge ], [ %55, %for.inc.7.do.body97_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %and101 = and i16 %.lcssa, -256
  %or102 = or i16 %and101, 8
  %32 = tail call i16 @llvm.bswap.i16(i16 %or102)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %32) #11, !srcloc !285
  tail call fastcc void @smc_hardware_send_packet(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call51) #11
  br label %cleanup

for.inc:                                          ; preds = %do.body74
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %35 = and i16 %34, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool95.not.1 = icmp eq i16 %35, 0
  br i1 %tobool95.not.1, label %for.inc.1, label %for.inc.do.body97_crit_edge

for.inc.do.body97_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.1:                                        ; preds = %for.inc
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %38 = and i16 %37, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool95.not.2 = icmp eq i16 %38, 0
  br i1 %tobool95.not.2, label %for.inc.2, label %for.inc.1.do.body97_crit_edge

for.inc.1.do.body97_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.2:                                        ; preds = %for.inc.1
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %41 = and i16 %40, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool95.not.3 = icmp eq i16 %41, 0
  br i1 %tobool95.not.3, label %for.inc.3, label %for.inc.2.do.body97_crit_edge

for.inc.2.do.body97_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.3:                                        ; preds = %for.inc.2
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %44 = and i16 %43, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool95.not.4 = icmp eq i16 %44, 0
  br i1 %tobool95.not.4, label %for.inc.4, label %for.inc.3.do.body97_crit_edge

for.inc.3.do.body97_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.4:                                        ; preds = %for.inc.3
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %47 = and i16 %46, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool95.not.5 = icmp eq i16 %47, 0
  br i1 %tobool95.not.5, label %for.inc.5, label %for.inc.4.do.body97_crit_edge

for.inc.4.do.body97_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.5:                                        ; preds = %for.inc.4
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %50 = and i16 %49, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool95.not.6 = icmp eq i16 %50, 0
  br i1 %tobool95.not.6, label %for.inc.6, label %for.inc.5.do.body97_crit_edge

for.inc.5.do.body97_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.6:                                        ; preds = %for.inc.5
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %53 = and i16 %52, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool95.not.7 = icmp eq i16 %53, 0
  br i1 %tobool95.not.7, label %for.inc.7, label %for.inc.6.do.body97_crit_edge

for.inc.6.do.body97_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.7:                                        ; preds = %for.inc.6
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #11, !srcloc !283
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %56 = and i16 %55, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool95.not.8 = icmp eq i16 %56, 0
  br i1 %tobool95.not.8, label %for.inc.8, label %for.inc.7.do.body97_crit_edge

for.inc.7.do.body97_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97

for.inc.8:                                        ; preds = %for.inc.7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_start_xmit.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_start_xmit, %if.then123)) #11
          to label %do.body129 [label %if.then123], !srcloc !275

if.then123:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_start_xmit.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.46) #11
  br label %do.body129

do.body129:                                       ; preds = %if.then123, %for.inc.8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !323
  tail call void @arm_heavy_mb() #11
  %57 = lshr i16 %55, 8
  %58 = or i16 %57, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %58) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call51) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body129, %do.body97, %if.then38, %if.then26, %if.then12
  %retval.0 = phi i32 [ 0, %if.then38 ], [ 0, %do.body97 ], [ 0, %do.body129 ], [ 16, %if.then26 ], [ 16, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  %multicast_table = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %multicast_table) #11
  %2 = ptrtoint ptr %multicast_table to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %multicast_table, align 8
  %flags1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags1, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.do.body51_crit_edge

entry.do.body51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

if.else:                                          ; preds = %entry
  %and3 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else6, label %if.else.do.body51_crit_edge

if.else.do.body51_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

if.else6:                                         ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.else6.do.body51_crit_edge, label %for.cond.preheader

if.else6.do.body51_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

for.cond.preheader:                               ; preds = %if.else6
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0131 = load ptr, ptr %mc, align 4
  %cmp12.not132 = icmp eq ptr %ha.0131, %mc
  br i1 %cmp12.not132, label %for.cond.preheader.do.body51_crit_edge, label %for.cond.preheader.cond.end_crit_edge

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  br label %cond.end

for.cond.preheader.do.body51_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %ha.0133 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0131, %for.cond.preheader.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0133, i32 0, i32 2
  %call14 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #15
  %8 = and i32 %call14, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr38 = lshr i8 %10, 2
  %and39 = and i8 %shr38, 7
  %shl40 = shl i8 1, %and39
  %11 = lshr i8 %10, 5
  %shr41 = zext i8 %11 to i32
  %arrayidx = getelementptr [8 x i8], ptr %multicast_table, i32 0, i32 %shr41
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv43 = or i8 %13, %shl40
  store i8 %conv43, ptr %arrayidx, align 1
  %14 = ptrtoint ptr %ha.0133 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0 = load ptr, ptr %ha.0133, align 4
  %cmp12.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp12.not, label %cond.end.do.body51_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.end.do.body51_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

do.body51:                                        ; preds = %cond.end.do.body51_crit_edge, %for.cond.preheader.do.body51_crit_edge, %if.else6.do.body51_crit_edge, %if.else.do.body51_crit_edge, %entry.do.body51_crit_edge
  %rx_cfg_setting.0 = phi i16 [ 774, %entry.do.body51_crit_edge ], [ 772, %if.else.do.body51_crit_edge ], [ 768, %if.else6.do.body51_crit_edge ], [ 768, %for.cond.preheader.do.body51_crit_edge ], [ 768, %cond.end.do.body51_crit_edge ]
  %15 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 7
  %16 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 6
  %17 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 5
  %18 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 3
  %20 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 2
  %21 = getelementptr inbounds [8 x i8], ptr %multicast_table, i32 0, i32 1
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  tail call void @arm_heavy_mb() #11
  %add = add i32 %1, 14
  %and62 = and i32 %add, 1048575
  %add63 = or i32 %and62, -18874368
  %22 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 768) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %multicast_table to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %multicast_table, align 8
  %and75 = and i32 %1, 1048575
  %add76 = or i32 %and75, -18874368
  %25 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %24) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %21, align 1
  %add74.1 = add i32 %1, 1
  %and75.1 = and i32 %add74.1, 1048575
  %add76.1 = or i32 %and75.1, -18874368
  %28 = inttoptr i32 %add76.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %27) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %20, align 2
  %add74.2 = add i32 %1, 2
  %and75.2 = and i32 %add74.2, 1048575
  %add76.2 = or i32 %and75.2, -18874368
  %31 = inttoptr i32 %add76.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %30) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %19, align 1
  %add74.3 = add i32 %1, 3
  %and75.3 = and i32 %add74.3, 1048575
  %add76.3 = or i32 %and75.3, -18874368
  %34 = inttoptr i32 %add76.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %33) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %18, align 4
  %add74.4 = add i32 %1, 4
  %and75.4 = and i32 %add74.4, 1048575
  %add76.4 = or i32 %and75.4, -18874368
  %37 = inttoptr i32 %add76.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %36) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %17, align 1
  %add74.5 = add i32 %1, 5
  %and75.5 = and i32 %add74.5, 1048575
  %add76.5 = or i32 %and75.5, -18874368
  %40 = inttoptr i32 %add76.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %39) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %16, align 2
  %add74.6 = add i32 %1, 6
  %and75.6 = and i32 %add74.6, 1048575
  %add76.6 = or i32 %and75.6, -18874368
  %43 = inttoptr i32 %add76.6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %42) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %15, align 1
  %add74.7 = add i32 %1, 7
  %and75.7 = and i32 %add74.7, 1048575
  %add76.7 = or i32 %and75.7, -18874368
  %46 = inttoptr i32 %add76.7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %45) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !326
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  tail call void @arm_heavy_mb() #11
  %47 = tail call i16 @llvm.bswap.i16(i16 %rx_cfg_setting.0)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %47) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 512) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call56) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %multicast_table) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %4 = inttoptr i32 %add8 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 768) #11, !srcloc !285
  %mii_if = getelementptr i8, ptr %dev, i32 2436
  %call19 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 %5) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.body3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s9k_config(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.ifmap, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp5.not = icmp eq i8 %1, %3
  br i1 %cmp5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %cfg = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not = icmp sgt i16 %5, -1
  br i1 %tobool.not, label %if.else, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp11 = icmp ugt i8 %1, 2
  br i1 %cmp11, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %if_port, align 2
  %arrayidx = getelementptr [3 x ptr], ptr @if_names, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %8) #14
  tail call fastcc void @smc_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end14 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !283
  %4 = lshr i16 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  %conv = zext i16 %4 to i32
  %add5 = add i32 %1, 2
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #11, !srcloc !283
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %conv11 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv11) #14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %8 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call fastcc void @smc_reset(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 12
  %13 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.not.i.i = icmp eq i32 %14, %12
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %12, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %saved_skb = getelementptr i8, ptr %dev, i32 2356
  %16 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %saved_skb, align 4
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %18) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_sig(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %open.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  br label %tailrecurse

tailrecurse:                                      ; preds = %smc91c92_suspend.exit, %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  %add = add i32 %3, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 256) #11, !srcloc !285
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  %6 = and i16 %5, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !335
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %6)
  %cmp.not = icmp eq i16 %6, 51
  br i1 %cmp.not, label %tailrecurse.if.end_crit_edge, label %do.body8

tailrecurse.if.end_crit_edge:                     ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body8:                                         ; preds = %tailrecurse
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %add11 = add i32 %3, 12
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %7 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 0) #11, !srcloc !285
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body8
  %__ms.0117 = phi i32 [ 55, %do.body8 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0117, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %tailrecurse.if.end_crit_edge
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp15 = icmp eq i32 %12, 16
  %and19 = and i32 %3, 1048575
  %add20 = or i32 %and19, -18874368
  %13 = inttoptr i32 %add20 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  %15 = and i8 %14, 127
  %masksel = select i1 %cmp15, i8 -128, i8 0
  %s.0.off0 = or i8 %15, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %s.0.off0) #11, !srcloc !281
  %add42 = add i32 %3, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %16 = inttoptr i32 %add44 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  %19 = and i16 %18, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %19)
  %cmp57 = icmp eq i16 %19, 51
  br i1 %cmp57, label %land.lhs.true, label %if.end.if.end82_crit_edge

if.end.if.end82_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end
  %20 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv59 = zext i16 %20 to i32
  %21 = lshr i32 %conv59, 8
  %and62 = and i32 %conv59, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and62)
  %cmp63.not = icmp eq i32 %21, %and62
  br i1 %cmp63.not, label %land.lhs.true.if.end82_crit_edge, label %do.body66

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.body66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %22 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 768) #11, !srcloc !285
  %add74 = add i32 %3, 10
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %23 = inttoptr i32 %add76 to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #11, !srcloc !283
  %25 = lshr i16 %24, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  %conv80 = zext i16 %25 to i32
  br label %cleanup

if.end82:                                         ; preds = %land.lhs.true.if.end82_crit_edge, %if.end.if.end82_crit_edge
  br i1 %cmp15, label %if.then84, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then84:                                        ; preds = %if.end82
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.9) #14
  %26 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then84.smc91c92_suspend.exit_crit_edge, label %if.then.i

if.then84.smc91c92_suspend.exit_crit_edge:        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %smc91c92_suspend.exit

if.then.i:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %29) #11
  br label %smc91c92_suspend.exit

smc91c92_suspend.exit:                            ; preds = %if.then.i, %if.then84.smc91c92_suspend.exit_crit_edge
  %call86 = tail call i32 @pcmcia_fixup_iowidth(ptr noundef %link) #11
  %call87 = tail call i32 @smc91c92_resume(ptr noundef %link)
  br label %tailrecurse

cleanup:                                          ; preds = %if.end82.cleanup_crit_edge, %do.body66
  %retval.0 = phi i32 [ %conv80, %do.body66 ], [ -19, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_reset.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_reset, %if.then)) #11
          to label %do.body7 [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_reset.__UNIQUE_ID_ddebug366, ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @arm_heavy_mb() #11
  %add15 = add i32 %1, 4
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %3 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 128) #11, !srcloc !285
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @arm_heavy_mb() #11
  %and30 = and i32 %1, 1048575
  %add31 = or i32 %and30, -18874368
  %5 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 256) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  tail call void @arm_heavy_mb() #11
  %add43 = add i32 %1, 12
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %6 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 24584) #11, !srcloc !285
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %7 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_port, align 2
  %conv = zext i8 %8 to i32
  tail call fastcc void @smc_set_xcvr(ptr noundef %dev, i32 noundef %conv)
  %manfid = getelementptr i8, ptr %dev, i32 2352
  %9 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %10)
  %cmp = icmp eq i16 %10, 320
  br i1 %cmp, label %land.lhs.true, label %do.body7.if.end74_crit_edge

do.body7.if.end74_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true:                                    ; preds = %do.body7
  %cardid = getelementptr i8, ptr %dev, i32 2354
  %11 = ptrtoint ptr %cardid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cardid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %12)
  %cmp50.not = icmp eq i16 %12, 8
  br i1 %cmp50.not, label %land.lhs.true.if.end74_crit_edge, label %do.body53

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

do.body53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp58 = icmp eq i8 %14, 2
  %cond = select i1 %cmp58, i16 64, i16 0
  %add60 = add i32 %1, 1048572
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %15 = inttoptr i32 %add62 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #11, !srcloc !283
  %17 = shl i16 %16, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  %or = or i16 %cond, %17
  %18 = tail call i16 @llvm.bswap.i16(i16 %or)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %18) #11, !srcloc !285
  br label %if.end74

if.end74:                                         ; preds = %do.body53, %land.lhs.true.if.end74_crit_edge, %do.body7.if.end74_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv81 = zext i8 %22 to i16
  %shl = shl nuw i16 %conv81, 8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %20, align 1
  %conv84 = zext i8 %24 to i16
  %add85 = or i16 %shl, %conv84
  %25 = tail call i16 @llvm.bswap.i16(i16 %add85)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %25) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %27, i32 3
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1, align 1
  %conv81.1 = zext i8 %29 to i16
  %shl.1 = shl nuw i16 %conv81.1, 8
  %arrayidx83.1 = getelementptr i8, ptr %27, i32 2
  %30 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx83.1, align 1
  %conv84.1 = zext i8 %31 to i16
  %add85.1 = or i16 %shl.1, %conv84.1
  %32 = tail call i16 @llvm.bswap.i16(i16 %add85.1)
  %add88.1 = add i32 %1, 6
  %and89.1 = and i32 %add88.1, 1048575
  %add90.1 = or i32 %and89.1, -18874368
  %33 = inttoptr i32 %add90.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %32) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %35, i32 5
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.2, align 1
  %conv81.2 = zext i8 %37 to i16
  %shl.2 = shl nuw i16 %conv81.2, 8
  %arrayidx83.2 = getelementptr i8, ptr %35, i32 4
  %38 = ptrtoint ptr %arrayidx83.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx83.2, align 1
  %conv84.2 = zext i8 %39 to i16
  %add85.2 = or i16 %shl.2, %conv84.2
  %40 = tail call i16 @llvm.bswap.i16(i16 %add85.2)
  %add88.2 = add i32 %1, 8
  %and89.2 = and i32 %add88.2, 1048575
  %add90.2 = or i32 %and89.2, -18874368
  %41 = inttoptr i32 %add90.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %40) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 512) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 16384) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  tail call void @arm_heavy_mb() #11
  %cfg = getelementptr i8, ptr %dev, i32 2368
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cfg, align 4
  %44 = lshr i16 %43, 5
  %45 = and i16 %44, 1024
  %46 = xor i16 %45, 1153
  %duplex = getelementptr i8, ptr %dev, i32 2468
  %47 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %duplex, align 4
  %49 = trunc i32 %48 to i16
  %conv131 = or i16 %46, %49
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv131)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %50) #11, !srcloc !285
  tail call void @set_rx_mode(ptr noundef %dev)
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %tobool139.not = icmp sgt i16 %52, -1
  br i1 %tobool139.not, label %if.end74.do.body155_crit_edge, label %do.body141

if.end74.do.body155_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body155

do.body141:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 768) #11, !srcloc !285
  %mii_if = getelementptr i8, ptr %dev, i32 2436
  %53 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mii_if, align 4
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %54, i32 noundef 0, i32 noundef 32768)
  %55 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mii_if, align 4
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %56, i32 noundef 4, i32 noundef 481)
  %57 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mii_if, align 4
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %58, i32 noundef 0, i32 noundef 0)
  %59 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mii_if, align 4
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %60, i32 noundef 0, i32 noundef 4608)
  br label %do.body155

do.body155:                                       ; preds = %do.body141, %if.end74.do.body155_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !358
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 512) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !359
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 49) #11, !srcloc !285
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @media_check(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %t, i32 64
  %dev1 = getelementptr i8, ptr %t, i32 84
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %lock = getelementptr i8, ptr %t, i32 -64
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %add = add i32 %3, 14
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %4 = inttoptr i32 %add7 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %entry.reschedule_crit_edge, label %do.body12

entry.reschedule_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %reschedule

do.body12:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 512) #11, !srcloc !285
  %rx_ovrn = getelementptr i8, ptr %t, i32 100
  %10 = ptrtoint ptr %rx_ovrn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_ovrn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.body12.if.end28_crit_edge, label %do.body20

do.body12.if.end28_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %3, 1048575
  %.pre465 = or i32 %.pre, -18874368
  %.pre466 = inttoptr i32 %.pre465 to ptr
  br label %if.end28

do.body20:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !362
  tail call void @arm_heavy_mb() #11
  %and24 = and i32 %3, 1048575
  %add25 = or i32 %and24, -18874368
  %12 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 16384) #11, !srcloc !285
  %13 = ptrtoint ptr %rx_ovrn to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rx_ovrn, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.body20, %do.body12.if.end28_crit_edge
  %.pre-phi = phi ptr [ %.pre466, %do.body12.if.end28_crit_edge ], [ %12, %do.body20 ]
  %add30 = add i32 %3, 12
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %14 = inttoptr i32 %add32 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !364
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 0) #11, !srcloc !285
  %add44 = add i32 %3, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %16 = inttoptr i32 %add46 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #11, !srcloc !283
  %18 = shl i16 %17, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !365
  %19 = and i16 %18, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !366
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 256) #11, !srcloc !285
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %.pre-phi) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool69.not = icmp eq i16 %21, 0
  %cond = select i1 %tobool69.not, i16 1, i16 2
  %or = or i16 %cond, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 %5) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %watchdog = getelementptr i8, ptr %t, i32 48
  %22 = ptrtoint ptr %watchdog to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %watchdog, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %watchdog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool80.not = icmp eq i32 %23, 0
  br i1 %tobool80.not, label %if.end28.if.end144_crit_edge, label %land.lhs.true

if.end28.if.end144_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

land.lhs.true:                                    ; preds = %if.end28
  %24 = tail call i16 @llvm.bswap.i16(i16 %15)
  %25 = lshr i16 %24, 8
  %26 = and i16 %25, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool84.not = icmp eq i16 %26, 0
  br i1 %tobool84.not, label %land.lhs.true.if.end144_crit_edge, label %if.then85

land.lhs.true.if.end144_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

if.then85:                                        ; preds = %land.lhs.true
  %fast_poll = getelementptr i8, ptr %t, i32 58
  %27 = ptrtoint ptr %fast_poll to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fast_poll, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool86.not = icmp eq i16 %28, 0
  br i1 %tobool86.not, label %if.then87, label %if.then85.do.body90_crit_edge

if.then85.do.body90_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body90

if.then87:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.12) #14
  br label %do.body90

do.body90:                                        ; preds = %if.then87, %if.then85.do.body90_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !369
  %and.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool106.not = icmp eq i32 %and.i, 0
  br i1 %tobool106.not, label %if.then121, label %do.end110

do.end110:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %call111 = tail call i32 @smc_interrupt(i32 noundef %31, ptr noundef %1)
  br label %do.body123

if.then121:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %irq463 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %32 = ptrtoint ptr %irq463 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq463, align 4
  %call111464 = tail call i32 @smc_interrupt(i32 noundef %33, ptr noundef %1)
  tail call void @trace_hardirqs_on() #11
  br label %do.body123

do.body123:                                       ; preds = %if.then121, %do.end110
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !370
  %and.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool131.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool131.not, label %if.then135, label %do.body123.do.end138_crit_edge, !prof !371

do.body123.do.end138_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %do.body123.do.end138_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #11, !srcloc !372
  %35 = ptrtoint ptr %fast_poll to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 100, ptr %fast_poll, align 2
  br label %if.end144

if.end144:                                        ; preds = %do.end138, %land.lhs.true.if.end144_crit_edge, %if.end28.if.end144_crit_edge
  %fast_poll145 = getelementptr i8, ptr %t, i32 58
  %36 = ptrtoint ptr %fast_poll145 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fast_poll145, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool146.not = icmp eq i16 %37, 0
  br i1 %tobool146.not, label %do.body154, label %if.then147

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i16 %37, -1
  %38 = ptrtoint ptr %fast_poll145 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %dec, ptr %fast_poll145, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add149 = add i32 %39, 1
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %40 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add149, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #11
  br label %cleanup

do.body154:                                       ; preds = %if.end144
  %call162 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  %cfg = getelementptr i8, ptr %t, i32 -4
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %44)
  %tobool176.not = icmp sgt i16 %44, -1
  br i1 %tobool176.not, label %if.end262, label %if.then177

if.then177:                                       ; preds = %do.body154
  %45 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mii_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp179 = icmp slt i32 %46, 0
  br i1 %cmp179, label %if.then177.reschedule_crit_edge, label %do.body183

if.then177.reschedule_crit_edge:                  ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #13
  br label %reschedule

do.body183:                                       ; preds = %if.then177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 768) #11, !srcloc !285
  %47 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mii_if, align 4
  %call192 = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %48, i32 noundef 1)
  %conv193 = trunc i32 %call192 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv193)
  %tobool194.not = icmp eq i16 %conv193, 0
  %conv195 = and i32 %call192, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv195)
  %cmp196 = icmp eq i32 %conv195, 65535
  %or.cond = or i1 %tobool194.not, %cmp196
  br i1 %or.cond, label %if.then198, label %if.end201

if.then198:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.13) #14
  %49 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %mii_if, align 4
  br label %reschedule

if.end201:                                        ; preds = %do.body183
  %conv204 = and i16 %conv193, 4
  %link_status = getelementptr i8, ptr %t, i32 60
  %50 = ptrtoint ptr %link_status to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv204, i16 %51)
  %cmp207.not = icmp eq i16 %conv204, %51
  br i1 %cmp207.not, label %if.end201.reschedule_crit_edge, label %if.then209

if.end201.reschedule_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  br label %reschedule

if.then209:                                       ; preds = %if.end201
  %52 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mii_if, align 4
  %call212 = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %53, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv204)
  %tobool215.not = icmp eq i16 %conv204, 0
  %cond216 = select i1 %tobool215.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond216) #14
  %and218 = and i32 %call212, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp ne i32 %and218, 0
  %and221 = and i32 %call212, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and221)
  %cmp222 = icmp eq i32 %and221, 64
  %54 = or i1 %tobool219.not, %cmp222
  %cond224 = select i1 %54, i32 2048, i32 0
  %duplex = getelementptr i8, ptr %t, i32 96
  %55 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond224, ptr %duplex, align 4
  br i1 %tobool215.not, label %if.then209.do.body235_crit_edge, label %if.then226

if.then209.do.body235_crit_edge:                  ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body235

if.then226:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #13
  %and228 = and i32 %call212, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  %cond230 = select i1 %tobool229.not, i32 10, i32 100
  %cond233 = select i1 %54, i32 70, i32 72
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %cond230, i32 noundef %cond233) #14
  br label %do.body235

do.body235:                                       ; preds = %if.then226, %if.then209.do.body235_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  tail call void @arm_heavy_mb() #11
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %.pre-phi) #11, !srcloc !283
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  %58 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %duplex, align 4
  %60 = trunc i32 %59 to i16
  %conv255 = or i16 %57, %60
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv255)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %.pre-phi, i16 %61) #11, !srcloc !285
  %62 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv204, ptr %link_status, align 4
  br label %reschedule

if.end262:                                        ; preds = %do.body154
  %last_rx = getelementptr i8, ptr %t, i32 104
  %63 = ptrtoint ptr %last_rx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %last_rx, align 4
  %add263 = add i32 %64, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add263, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp264 = icmp slt i32 %sub, 0
  br i1 %cmp264, label %if.then266, label %if.end262.if.end277_crit_edge

if.end262.if.end277_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

if.then266:                                       ; preds = %if.end262
  %tx_err = getelementptr i8, ptr %t, i32 52
  %66 = ptrtoint ptr %tx_err to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool267.not = icmp eq i32 %67, 0
  br i1 %tobool267.not, label %lor.lhs.false268, label %if.then266.if.then272_crit_edge

if.then266.if.then272_crit_edge:                  ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then272

lor.lhs.false268:                                 ; preds = %if.then266
  %media_status = getelementptr i8, ptr %t, i32 56
  %68 = ptrtoint ptr %media_status to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %media_status, align 4
  %70 = and i16 %69, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool271.not = icmp eq i16 %70, 0
  br i1 %tobool271.not, label %lor.lhs.false268.if.end277_crit_edge, label %lor.lhs.false268.if.then272_crit_edge

lor.lhs.false268.if.then272_crit_edge:            ; preds = %lor.lhs.false268
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then272

lor.lhs.false268.if.end277_crit_edge:             ; preds = %lor.lhs.false268
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

if.then272:                                       ; preds = %lor.lhs.false268.if.then272_crit_edge, %if.then266.if.then272_crit_edge
  %71 = or i16 %or, 16
  br label %if.end277

if.end277:                                        ; preds = %if.then272, %lor.lhs.false268.if.end277_crit_edge, %if.end262.if.end277_crit_edge
  %media.0 = phi i16 [ %71, %if.then272 ], [ %or, %lor.lhs.false268.if.end277_crit_edge ], [ %or, %if.end262.if.end277_crit_edge ]
  %tx_err278 = getelementptr i8, ptr %t, i32 52
  %72 = ptrtoint ptr %tx_err278 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %tx_err278, align 4
  %conv279 = zext i16 %media.0 to i32
  %media_status280 = getelementptr i8, ptr %t, i32 56
  %73 = ptrtoint ptr %media_status280 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %media_status280, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %media.0, i16 %74)
  %cmp282.not = icmp eq i16 %media.0, %74
  br i1 %cmp282.not, label %if.end277.reschedule_crit_edge, label %if.then284

if.end277.reschedule_crit_edge:                   ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  br label %reschedule

if.then284:                                       ; preds = %if.end277
  %and288458 = and i16 %74, %media.0
  %75 = and i16 %and288458, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool290.not = icmp eq i16 %75, 0
  br i1 %tobool290.not, label %if.then284.if.else_crit_edge, label %land.lhs.true291

if.then284.if.else_crit_edge:                     ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true291:                                 ; preds = %if.then284
  %xor461 = xor i16 %74, %media.0
  %76 = and i16 %xor461, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool296.not = icmp eq i16 %76, 0
  br i1 %tobool296.not, label %land.lhs.true291.if.else_crit_edge, label %if.then297

land.lhs.true291.if.else_crit_edge:               ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then297:                                       ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #13
  %77 = and i16 %74, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool301.not = icmp eq i16 %77, 0
  %cond302 = select i1 %tobool301.not, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond302) #14
  br label %if.end322

if.else:                                          ; preds = %land.lhs.true291.if.else_crit_edge, %if.then284.if.else_crit_edge
  %78 = and i16 %and288458, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool308.not = icmp eq i16 %78, 0
  br i1 %tobool308.not, label %if.else.if.end322_crit_edge, label %land.lhs.true309

if.else.if.end322_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end322

land.lhs.true309:                                 ; preds = %if.else
  %xor313460 = xor i16 %74, %media.0
  %79 = and i16 %xor313460, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool315.not = icmp eq i16 %79, 0
  br i1 %tobool315.not, label %land.lhs.true309.if.end322_crit_edge, label %if.then316

land.lhs.true309.if.end322_crit_edge:             ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end322

if.then316:                                       ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #13
  %and318 = and i32 %conv279, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %tobool319.not = icmp eq i32 %and318, 0
  %cond320 = select i1 %tobool319.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond320) #14
  br label %if.end322

if.end322:                                        ; preds = %if.then316, %land.lhs.true309.if.end322_crit_edge, %if.else.if.end322_crit_edge, %if.then297
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %80 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp324 = icmp eq i8 %81, 0
  br i1 %cmp324, label %if.then326, label %if.end322.if.end345_crit_edge

if.end322.if.end345_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end345

if.then326:                                       ; preds = %if.end322
  %and328 = and i32 %conv279, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %if.else337, label %if.then330

if.then330:                                       ; preds = %if.then326
  %and332 = and i32 %conv279, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and332)
  %tobool333.not = icmp eq i32 %and332, 0
  br i1 %tobool333.not, label %if.else335, label %if.then334

if.then334:                                       ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.21) #14
  br label %if.end345

if.else335:                                       ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @smc_set_xcvr(ptr noundef %1, i32 noundef 2)
  br label %if.end345

if.else337:                                       ; preds = %if.then326
  %and339 = and i32 %conv279, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %if.else342, label %if.then341

if.then341:                                       ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @smc_set_xcvr(ptr noundef %1, i32 noundef 1)
  br label %if.end345

if.else342:                                       ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.22) #14
  br label %if.end345

if.end345:                                        ; preds = %if.else342, %if.then341, %if.else335, %if.then334, %if.end322.if.end345_crit_edge
  %82 = ptrtoint ptr %media_status280 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %media.0, ptr %media_status280, align 4
  br label %reschedule

reschedule:                                       ; preds = %if.end345, %if.end277.reschedule_crit_edge, %do.body235, %if.end201.reschedule_crit_edge, %if.then198, %if.then177.reschedule_crit_edge, %entry.reschedule_crit_edge
  %flags.0 = phi i32 [ %call162, %if.then177.reschedule_crit_edge ], [ %call162, %if.then198 ], [ %call162, %do.body235 ], [ %call162, %if.end201.reschedule_crit_edge ], [ %call162, %if.end345 ], [ %call162, %if.end277.reschedule_crit_edge ], [ %call4, %entry.reschedule_crit_edge ]
  %saved_bank.0 = phi i16 [ %42, %if.then177.reschedule_crit_edge ], [ %42, %if.then198 ], [ %42, %do.body235 ], [ %42, %if.end201.reschedule_crit_edge ], [ %42, %if.end345 ], [ %42, %if.end277.reschedule_crit_edge ], [ %6, %entry.reschedule_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %add348 = add i32 %83, 100
  %expires350 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %84 = ptrtoint ptr %expires350 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add348, ptr %expires350, align 4
  tail call void @add_timer(ptr noundef %t) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %85 = tail call i16 @llvm.bswap.i16(i16 %saved_bank.0)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 %85) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #11
  br label %cleanup

cleanup:                                          ; preds = %reschedule, %if.then147
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_fixup_iowidth(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_set_xcvr(ptr nocapture noundef %dev, i32 noundef %if_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 256) #11, !srcloc !285
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %if_port)
  %cmp = icmp eq i32 %if_port, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %cfg = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cfg, align 4
  br i1 %cmp, label %do.body8, label %do.body46

do.body8:                                         ; preds = %entry
  %6 = or i16 %5, 256
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %and13 = and i32 %1, 1048575
  %add14 = or i32 %and13, -18874368
  %8 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %7) #11, !srcloc !285
  %manfid = getelementptr i8, ptr %dev, i32 2352
  %9 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %10)
  %cmp17 = icmp eq i16 %10, 320
  br i1 %cmp17, label %land.lhs.true, label %do.body8.if.end_crit_edge

do.body8.if.end_crit_edge:                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %do.body8
  %cardid = getelementptr i8, ptr %dev, i32 2354
  %11 = ptrtoint ptr %cardid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cardid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %12)
  %cmp20.not = icmp eq i16 %12, 8
  br i1 %cmp20.not, label %land.lhs.true.if.end_crit_edge, label %do.body23

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  %add27 = add i32 %1, 1048572
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %13 = inttoptr i32 %add29 to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %15 = or i16 %14, 16384
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %15) #11, !srcloc !285
  br label %if.end

if.end:                                           ; preds = %do.body23, %land.lhs.true.if.end_crit_edge, %do.body8.if.end_crit_edge
  %if_port41 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %16 = ptrtoint ptr %if_port41 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %if_port41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp43 = icmp eq i8 %17, 0
  %conv45 = select i1 %cmp43, i16 1, i16 2
  br label %do.body92

do.body46:                                        ; preds = %entry
  %18 = tail call i16 @llvm.bswap.i16(i16 %5)
  %and51 = and i32 %1, 1048575
  %add52 = or i32 %and51, -18874368
  %19 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %18) #11, !srcloc !285
  %manfid54 = getelementptr i8, ptr %dev, i32 2352
  %20 = ptrtoint ptr %manfid54 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %manfid54, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %21)
  %cmp56 = icmp eq i16 %21, 320
  br i1 %cmp56, label %land.lhs.true58, label %do.body46.if.end83_crit_edge

do.body46.if.end83_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

land.lhs.true58:                                  ; preds = %do.body46
  %cardid59 = getelementptr i8, ptr %dev, i32 2354
  %22 = ptrtoint ptr %cardid59 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cardid59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %23)
  %cmp61.not = icmp eq i16 %23, 8
  br i1 %cmp61.not, label %land.lhs.true58.if.end83_crit_edge, label %do.body64

land.lhs.true58.if.end83_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

do.body64:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !383
  tail call void @arm_heavy_mb() #11
  %add69 = add i32 %1, 1048572
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %24 = inttoptr i32 %add71 to ptr
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %24) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  %26 = and i16 %25, -16385
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %26) #11, !srcloc !285
  br label %if.end83

if.end83:                                         ; preds = %do.body64, %land.lhs.true58.if.end83_crit_edge, %do.body46.if.end83_crit_edge
  %if_port84 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %27 = ptrtoint ptr %if_port84 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %if_port84, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp86 = icmp eq i8 %28, 0
  %conv89 = select i1 %cmp86, i16 18, i16 16385
  br label %do.body92

do.body92:                                        ; preds = %if.end83, %if.end
  %conv45.sink = phi i16 [ %conv45, %if.end ], [ %conv89, %if.end83 ]
  %media_status = getelementptr i8, ptr %dev, i32 2428
  %29 = ptrtoint ptr %media_status to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv45.sink, ptr %media_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 %3) #11, !srcloc !285
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_interrupt.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_interrupt, %if.then6)) #11
          to label %do.end9 [label %if.then6], !srcloc !275

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_interrupt.__UNIQUE_ID_ddebug359, ptr noundef %dev_id, ptr noundef nonnull @.str.24, i32 noundef %irq, i32 noundef %4) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %if.end
  %lock = getelementptr i8, ptr %dev_id, i32 2308
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %watchdog = getelementptr i8, ptr %dev_id, i32 2420
  %5 = ptrtoint ptr %watchdog to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %watchdog, align 4
  %add = add i32 %4, 14
  %and = and i32 %add, 1048575
  %add10 = or i32 %and, -18874368
  %6 = inttoptr i32 %add10 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #11, !srcloc !283
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  %conv = zext i16 %8 to i32
  %and14 = and i32 %conv, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 13056, i32 %and14)
  %cmp.not = icmp eq i32 %and14, 13056
  br i1 %cmp.not, label %do.body37, label %do.body18

do.body18:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_interrupt.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_interrupt, %if.then30)) #11
          to label %irq_done [label %if.then30], !srcloc !275

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_interrupt.__UNIQUE_ID_ddebug360, ptr noundef %dev_id, ptr noundef nonnull @.str.25, i32 noundef %irq) #11
  br label %irq_done

do.body37:                                        ; preds = %do.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !387
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 512) #11, !srcloc !285
  %add45 = add i32 %4, 6
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %9 = inttoptr i32 %add47 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #11, !srcloc !283
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !388
  %add52 = add i32 %4, 12
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %12 = inttoptr i32 %add54 to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #11, !srcloc !283
  %14 = and i16 %13, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !390
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #11, !srcloc !285
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 17
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 20
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 16
  %tx_err.i = getelementptr i8, ptr %dev_id, i32 2424
  %duplex.i = getelementptr i8, ptr %dev_id, i32 2468
  %packets_waiting.i = getelementptr i8, ptr %dev_id, i32 2360
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %rx_ovrn = getelementptr i8, ptr %dev_id, i32 2472
  br label %do.body67

do.body67:                                        ; preds = %do.cond182.do.body67_crit_edge, %do.body37
  %bogus_cnt.0 = phi i8 [ 4, %do.body37 ], [ %dec, %do.cond182.do.body67_crit_edge ]
  %mask.0 = phi i16 [ %14, %do.body37 ], [ %mask.2, %do.cond182.do.body67_crit_edge ]
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #11, !srcloc !283
  %16 = lshr i16 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !391
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_interrupt.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_interrupt, %if.then91)) #11
          to label %do.end98 [label %if.then91], !srcloc !275

if.then91:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  %conv92 = zext i16 %16 to i32
  %conv93 = zext i16 %mask.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_interrupt.__UNIQUE_ID_ddebug361, ptr noundef %dev_id, ptr noundef nonnull @.str.26, i32 noundef %conv92, i32 noundef %conv93) #11
  br label %do.end98

do.end98:                                         ; preds = %if.then91, %do.body67
  %conv99 = zext i16 %16 to i32
  %and101471 = and i16 %16, %mask.0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and101471)
  %cmp102 = icmp eq i16 %and101471, 0
  br i1 %cmp102, label %if.then104, label %if.end110

if.then104:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bogus_cnt.0)
  %cmp106 = icmp ne i8 %bogus_cnt.0, 4
  %spec.select = zext i1 %cmp106 to i32
  br label %do.body186

if.end110:                                        ; preds = %do.end98
  %and112 = and i32 %conv99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end110.if.end115_crit_edge, label %if.then114

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @smc_rx(ptr noundef %dev_id)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end110.if.end115_crit_edge
  %and117 = and i32 %conv99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end127_crit_edge, label %if.then119

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then119:                                       ; preds = %if.end115
  %17 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %18, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add1.i to ptr
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %19) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !392
  %add6.i = add i32 %18, 4
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %21 = inttoptr i32 %add8.i to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !393
  %23 = and i16 %22, 32512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !394
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %23) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !395
  tail call void @arm_heavy_mb() #11
  %add22.i = add i32 %18, 6
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %24 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 96) #11, !srcloc !285
  %add27.i = add i32 %18, 8
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %25 = inttoptr i32 %add29.i to ptr
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %25) #11, !srcloc !283
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !396
  %conv33.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %and34.i = and i32 %conv33.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool.not.i, label %if.then119.if.end.i_crit_edge, label %if.then.i

if.then119.if.end.i_crit_edge:                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc36.i = add i32 %31, 1
  store i32 %inc36.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then119.if.end.i_crit_edge
  %and37.i = and i32 %conv33.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end.i.if.end42.i_crit_edge, label %if.then39.i

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then39.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_window_errors.i, align 8
  %inc41.i = add i32 %33, 1
  store i32 %inc41.i, ptr %tx_window_errors.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %if.end.i.if.end42.i_crit_edge
  %and43.i = and i32 %conv33.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end49.i_crit_edge, label %if.then45.i

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc47.i = add i32 %35, 1
  store i32 %inc47.i, ptr %tx_aborted_errors.i, align 8
  %36 = ptrtoint ptr %tx_err.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_err.i, align 4
  %inc48.i = add i32 %37, 1
  store i32 %inc48.i, ptr %tx_err.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end49.i_crit_edge
  %and50.i = and i32 %conv33.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end49.i.smc_tx_err.exit_crit_edge, label %if.then52.i

if.end49.i.smc_tx_err.exit_crit_edge:             ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smc_tx_err.exit

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev_id, ptr noundef nonnull @.str.33) #14
  br label %smc_tx_err.exit

smc_tx_err.exit:                                  ; preds = %if.then52.i, %if.end49.i.smc_tx_err.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !397
  tail call void @arm_heavy_mb() #11
  %add57.i = add i32 %18, 14
  %and58.i = and i32 %add57.i, 1048575
  %add59.i = or i32 %and58.i, -18874368
  %38 = inttoptr i32 %add59.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  tail call void @arm_heavy_mb() #11
  %and66.i = and i32 %18, 1048575
  %add67.i = or i32 %and66.i, -18874368
  %39 = inttoptr i32 %add67.i to ptr
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %39) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !399
  %41 = or i16 %40, 256
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #11
  %43 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %duplex.i, align 4
  %45 = trunc i32 %44 to i16
  %conv73.i = or i16 %42, %45
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv73.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %46) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 512) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !401
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 -24576) #11, !srcloc !285
  %47 = ptrtoint ptr %packets_waiting.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %packets_waiting.i, align 4
  %dec.i = add i32 %48, -1
  store i32 %dec.i, ptr %packets_waiting.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !402
  tail call void @arm_heavy_mb() #11
  %49 = and i16 %20, -256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %49) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !403
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 512) #11, !srcloc !285
  br label %if.end127

if.end127:                                        ; preds = %smc_tx_err.exit, %if.end115.if.end127_crit_edge
  %conv132 = zext i16 %and101471 to i32
  %and133 = and i32 %conv132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end127.if.end148_crit_edge, label %do.body136

if.end127.if.end148_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

do.body136:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !404
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 1024) #11, !srcloc !285
  %50 = and i16 %mask.0, -5
  %51 = ptrtoint ptr %packets_waiting.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %packets_waiting.i, align 4
  %53 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_packets, align 4
  %add146 = add i32 %54, %52
  store i32 %add146, ptr %tx_packets, align 4
  store i32 0, ptr %packets_waiting.i, align 4
  br label %if.end148

if.end148:                                        ; preds = %do.body136, %if.end127.if.end148_crit_edge
  %mask.1 = phi i16 [ %50, %do.body136 ], [ %mask.0, %if.end127.if.end148_crit_edge ]
  %and150 = and i32 %conv132, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end148.if.end158_crit_edge, label %if.then152

if.end148.if.end158_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %55 = and i16 %mask.1, -15
  tail call fastcc void @smc_hardware_send_packet(ptr noundef %dev_id)
  %56 = or i16 %55, 6
  %57 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %58) #11
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %if.end148.if.end158_crit_edge
  %mask.2 = phi i16 [ %56, %if.then152 ], [ %mask.1, %if.end148.if.end158_crit_edge ]
  %and160 = and i32 %conv132, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end158.if.end176_crit_edge, label %if.then162

if.end158.if.end176_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then162:                                       ; preds = %if.end158
  %59 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %60, 1
  store i32 %inc, ptr %rx_errors, align 8
  %61 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_fifo_errors, align 8
  %inc165 = add i32 %62, 1
  store i32 %inc165, ptr %rx_fifo_errors, align 8
  %63 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool166.not = icmp eq i32 %64, 0
  br i1 %tobool166.not, label %if.then162.do.body169_crit_edge, label %if.then167

if.then162.do.body169_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body169

if.then167:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %rx_ovrn to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %rx_ovrn, align 4
  br label %do.body169

do.body169:                                       ; preds = %if.then167, %if.then162.do.body169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !405
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 4096) #11, !srcloc !285
  br label %if.end176

if.end176:                                        ; preds = %do.body169, %if.end158.if.end176_crit_edge
  %and178 = and i32 %conv132, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end176.do.cond182_crit_edge, label %if.then180

if.end176.do.cond182_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond182

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @smc_eph_irq(ptr noundef %dev_id)
  br label %do.cond182

do.cond182:                                       ; preds = %if.then180, %if.end176.do.cond182_crit_edge
  %dec = add nsw i8 %bogus_cnt.0, -1
  %tobool183.not = icmp eq i8 %dec, 0
  br i1 %tobool183.not, label %do.cond182.do.body186_crit_edge, label %do.cond182.do.body67_crit_edge

do.cond182.do.body67_crit_edge:                   ; preds = %do.cond182
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body67

do.cond182.do.body186_crit_edge:                  ; preds = %do.cond182
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body186

do.body186:                                       ; preds = %do.cond182.do.body186_crit_edge, %if.then104
  %handled.0 = phi i32 [ %spec.select, %if.then104 ], [ 1, %do.cond182.do.body186_crit_edge ]
  %mask.3 = phi i16 [ %mask.0, %if.then104 ], [ %mask.2, %do.cond182.do.body186_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_interrupt.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_interrupt, %if.then198)) #11
          to label %do.body207 [label %if.then198], !srcloc !275

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #13
  %conv199 = zext i16 %mask.3 to i32
  %conv201 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_interrupt.__UNIQUE_ID_ddebug362, ptr noundef %dev_id, ptr noundef nonnull @.str.27, i32 noundef %conv199, i32 noundef %conv, i32 noundef %conv201) #11
  br label %do.body207

do.body207:                                       ; preds = %if.then198, %do.body186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !406
  tail call void @arm_heavy_mb() #11
  %66 = and i16 %mask.3, 255
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 %66) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %10) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %7) #11, !srcloc !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_interrupt.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_interrupt, %if.then243)) #11
          to label %irq_done [label %if.then243], !srcloc !275

if.then243:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_interrupt.__UNIQUE_ID_ddebug363, ptr noundef %dev_id, ptr noundef nonnull @.str.28, i32 noundef %irq) #11
  br label %irq_done

irq_done:                                         ; preds = %if.then243, %do.body207, %if.then30, %do.body18
  %handled.1 = phi i32 [ %handled.0, %if.then243 ], [ 0, %if.then30 ], [ 0, %do.body18 ], [ %handled.0, %do.body207 ]
  %manfid = getelementptr i8, ptr %dev_id, i32 2352
  %67 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %68)
  %cmp250 = icmp eq i16 %68, 320
  br i1 %cmp250, label %land.lhs.true, label %irq_done.if.end293_crit_edge

irq_done.if.end293_crit_edge:                     ; preds = %irq_done
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end293

land.lhs.true:                                    ; preds = %irq_done
  %cardid = getelementptr i8, ptr %dev_id, i32 2354
  %69 = ptrtoint ptr %cardid to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %cardid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %70)
  %cmp253.not = icmp eq i16 %70, 8
  br i1 %cmp253.not, label %land.lhs.true.if.end293thread-pre-split_crit_edge, label %do.body256

land.lhs.true.if.end293thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end293thread-pre-split

do.body256:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %add260 = add i32 %4, 1048574
  %and261 = and i32 %add260, 1048575
  %add262 = or i32 %and261, -18874368
  %71 = inttoptr i32 %add262 to ptr
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %71) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  %73 = and i16 %72, -256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %71, i16 %73) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !411
  tail call void @arm_heavy_mb() #11
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %71) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !412
  %75 = or i16 %74, 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %71, i16 %75) #11, !srcloc !285
  br label %if.end293thread-pre-split

if.end293thread-pre-split:                        ; preds = %do.body256, %land.lhs.true.if.end293thread-pre-split_crit_edge
  %76 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %76)
  %.pr = load i16, ptr %manfid, align 4
  br label %if.end293

if.end293:                                        ; preds = %if.end293thread-pre-split, %irq_done.if.end293_crit_edge
  %77 = phi i16 [ %.pr, %if.end293thread-pre-split ], [ %68, %irq_done.if.end293_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 265, i16 %77)
  %cmp296 = icmp eq i16 %77, 265
  br i1 %cmp296, label %if.then298, label %if.end293.if.end342_crit_edge

if.end293.if.end342_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end342

if.then298:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr i8, ptr %dev_id, i32 2364
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %79, i32 32
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !414
  tail call void @arm_heavy_mb() #11
  %81 = and i8 %80, -5
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr311 = getelementptr i8, ptr %83, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr311, i8 %81) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr317 = getelementptr i8, ptr %85, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr317, i8 %80) #11, !srcloc !281
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %87) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %89 = and i8 %88, -5
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 %89) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 %88) #11, !srcloc !281
  br label %if.end342

if.end342:                                        ; preds = %if.then298, %if.end293.if.end342_crit_edge
  %base343 = getelementptr i8, ptr %dev_id, i32 2364
  %94 = ptrtoint ptr %base343 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base343, align 4
  %cmp344.not = icmp eq ptr %95, null
  br i1 %cmp344.not, label %if.end342.if.end382_crit_edge, label %land.lhs.true346

if.end342.if.end382_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end382

land.lhs.true346:                                 ; preds = %if.end342
  %96 = ptrtoint ptr %manfid to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %manfid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %97)
  %cmp349 = icmp eq i16 %97, 258
  br i1 %cmp349, label %land.lhs.true351, label %land.lhs.true346.if.end382_crit_edge

land.lhs.true346.if.end382_crit_edge:             ; preds = %land.lhs.true346
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end382

land.lhs.true351:                                 ; preds = %land.lhs.true346
  %cardid352 = getelementptr i8, ptr %dev_id, i32 2354
  %98 = ptrtoint ptr %cardid352 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %cardid352, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %99)
  %cmp354 = icmp eq i16 %99, 6
  br i1 %cmp354, label %if.then356, label %land.lhs.true351.if.end382_crit_edge

land.lhs.true351.if.end382_crit_edge:             ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end382

if.then356:                                       ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr361 = getelementptr i8, ptr %95, i32 896
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr361) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !419
  %101 = ptrtoint ptr %base343 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base343, align 4
  %add.ptr368 = getelementptr i8, ptr %102, i32 896
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr368) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !421
  tail call void @arm_heavy_mb() #11
  %104 = ptrtoint ptr %base343 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base343, align 4
  %add.ptr376 = getelementptr i8, ptr %105, i32 896
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr376, i8 %103) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  tail call void @arm_heavy_mb() #11
  %106 = ptrtoint ptr %base343 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base343, align 4
  %add.ptr381 = getelementptr i8, ptr %107, i32 896
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr381, i8 %103) #11, !srcloc !281
  br label %if.end382

if.end382:                                        ; preds = %if.then356, %land.lhs.true351.if.end382_crit_edge, %land.lhs.true346.if.end382_crit_edge, %if.end342.if.end382_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool384.not = icmp ne i32 %handled.1, 0
  %cond = zext i1 %tobool384.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end382, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end382 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  %.mask = and i16 %3, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool.not = icmp eq i16 %.mask, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #14
  br label %cleanup122

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %add4 = add i32 %1, 6
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %4 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 224) #11, !srcloc !285
  %add9 = add i32 %1, 8
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #11, !srcloc !283
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !425
  %conv15 = zext i16 %7 to i32
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !426
  %9 = and i16 %8, -249
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %and24 = zext i16 %10 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_rx.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_rx, %if.then32)) #11
          to label %do.end37 [label %if.then32], !srcloc !275

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_rx.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %conv15, i32 noundef %and24) #11
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.body
  %and38 = and i32 %conv15, 44032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %do.end37
  %add42 = add nuw nsw i32 %and24, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add42, i32 noundef 2592) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body47, label %if.end72

do.body47:                                        ; preds = %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_rx.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_rx, %if.then59)) #11
          to label %do.end64 [label %if.then59], !srcloc !275

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_rx.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.32) #11
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %do.body47
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %11 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %rx_dropped, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !427
  tail call void @arm_heavy_mb() #11
  %and69 = and i32 %1, 1048575
  %add70 = or i32 %and69, -18874368
  %13 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 -32768) #11, !srcloc !285
  br label %cleanup122

if.end72:                                         ; preds = %if.then40
  %and73 = and i32 %conv15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %cond.neg = select i1 %tobool74.not, i32 -6, i32 -5
  %sub = add nsw i32 %cond.neg, %and24
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %15, i32 2
  store ptr %add.ptr.i168, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call79 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub) #11
  %add80 = add nsw i32 %sub, 1
  %shr = ashr i32 %add80, 1
  tail call void @__raw_readsw(ptr noundef nonnull %5, ptr noundef %call79, i32 noundef %shr) #11
  %call81 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call81, ptr %protocol, align 8
  %call82 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr i8, ptr %dev, i32 2476
  %20 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last_rx, align 4
  %stats83 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %21 = ptrtoint ptr %stats83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stats83, align 8
  %inc84 = add i32 %22, 1
  store i32 %inc84, ptr %stats83, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %23 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_bytes, align 8
  %add86 = add i32 %24, %sub
  store i32 %add86, ptr %rx_bytes, align 8
  %and87 = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end72.do.body115_crit_edge, label %if.then89

if.end72.do.body115_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

if.then89:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  br label %do.body115.sink.split

if.else:                                          ; preds = %do.end37
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %25 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_errors, align 8
  %inc95 = add i32 %26, 1
  store i32 %inc95, ptr %rx_errors, align 8
  %and96 = and i32 %conv15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else.if.end101_crit_edge, label %if.then98

if.else.if.end101_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then98:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %27 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_frame_errors, align 4
  %inc100 = add i32 %28, 1
  store i32 %inc100, ptr %rx_frame_errors, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.else.if.end101_crit_edge
  %and102 = and i32 %conv15, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end107_crit_edge, label %if.then104

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %29 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_length_errors, align 8
  %inc106 = add i32 %30, 1
  store i32 %inc106, ptr %rx_length_errors, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end101.if.end107_crit_edge
  %and108 = and i32 %conv15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.do.body115_crit_edge, label %if.then110

if.end107.do.body115_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  br label %do.body115.sink.split

do.body115.sink.split:                            ; preds = %if.then110, %if.then89
  %multicast.sink171 = phi ptr [ %multicast, %if.then89 ], [ %rx_crc_errors, %if.then110 ]
  %31 = ptrtoint ptr %multicast.sink171 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %multicast.sink171, align 8
  %inc91 = add i32 %32, 1
  store i32 %inc91, ptr %multicast.sink171, align 8
  br label %do.body115

do.body115:                                       ; preds = %do.body115.sink.split, %if.end107.do.body115_crit_edge, %if.end72.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !428
  tail call void @arm_heavy_mb() #11
  %and119 = and i32 %1, 1048575
  %add120 = or i32 %and119, -18874368
  %33 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 -32768) #11, !srcloc !285
  br label %cleanup122

cleanup122:                                       ; preds = %do.body115, %do.end64, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_hardware_send_packet(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_skb = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saved_skb, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !429
  %conv4.mask = and i16 %5, 255
  %conv5 = zext i16 %conv4.mask to i32
  %and6 = and i32 %conv5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv5) #14
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %1, i32 noundef 1) #11
  %6 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %saved_skb, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %11 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_bytes, align 4
  %add12 = add i32 %12, %10
  store i32 %add12, ptr %tx_bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !430
  tail call void @arm_heavy_mb() #11
  %conv13 = shl i16 %5, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 %conv13) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !431
  tail call void @arm_heavy_mb() #11
  %add21 = add i32 %3, 6
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %13 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 64) #11, !srcloc !285
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_hardware_send_packet.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_hardware_send_packet, %if.then33)) #11
          to label %do.body39 [label %if.then33], !srcloc !275

if.then33:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_hardware_send_packet.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %17) #11
  br label %do.body39

do.body39:                                        ; preds = %if.then33, %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !432
  tail call void @arm_heavy_mb() #11
  %add42 = add i32 %3, 8
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %18 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 0) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !433
  tail call void @arm_heavy_mb() #11
  %19 = trunc i32 %17 to i16
  %conv50 = add i16 %19, 6
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv50)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %20) #11, !srcloc !285
  %shr59 = lshr i32 %17, 1
  tail call void @__raw_writesw(ptr noundef nonnull %18, ptr noundef %15, i32 noundef %shr59) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !434
  tail call void @arm_heavy_mb() #11
  %and63 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body39.cond.end_crit_edge, label %cond.true

do.body39.cond.end_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %17, -1
  %arrayidx = getelementptr i8, ptr %15, i32 %sub
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv65 = zext i8 %22 to i16
  %or = or i16 %conv65, 8192
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body39.cond.end_crit_edge
  %cond = phi i16 [ %or, %cond.true ], [ 0, %do.body39.cond.end_crit_edge ]
  %23 = tail call i16 @llvm.bswap.i16(i16 %cond)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %23) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !435
  tail call void @arm_heavy_mb() #11
  %add75 = add i32 %3, 12
  %and76 = and i32 %add75, 1048575
  %add77 = or i32 %and76, -18874368
  %24 = inttoptr i32 %add77 to ptr
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %24) #11, !srcloc !283
  %26 = and i16 %25, 249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !436
  %27 = or i16 %26, 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %27) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !437
  tail call void @arm_heavy_mb() #11
  %and93 = and i32 %3, 1048575
  %add94 = or i32 %and93, -18874368
  %28 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 -16384) #11, !srcloc !285
  %29 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %saved_skb, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %1, i32 noundef 1) #11
  %_tx.i.i131 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i131, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 12
  %33 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp.not.i.i = icmp eq i32 %34, %32
  br i1 %cmp.not.i.i, label %cond.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

cond.end.netif_trans_update.exit_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %32, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %cond.end.netif_trans_update.exit_crit_edge
  %36 = ptrtoint ptr %_tx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i131, align 128
  %state.i.i133 = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i133) #11
  br label %cleanup

cleanup:                                          ; preds = %netif_trans_update.exit, %if.then8, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_eph_irq(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !438
  tail call void @arm_heavy_mb() #11
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 0) #11, !srcloc !285
  %add3 = add i32 %1, 2
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %3 = inttoptr i32 %add5 to ptr
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %3) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !439
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc_eph_irq.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc_eph_irq, %if.then)) #11
          to label %do.end17 [label %if.then], !srcloc !275

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc_eph_irq.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %conv) #11
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  %add19 = add i32 %1, 6
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %6 = inttoptr i32 %add21 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #11, !srcloc !283
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !440
  %9 = and i16 %8, 15
  %and26 = zext i16 %9 to i32
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %10 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %collisions, align 4
  %add27 = add i32 %11, %and26
  %12 = lshr i16 %8, 4
  %13 = and i16 %12, 15
  %and31 = zext i16 %13 to i32
  %add34 = add i32 %add27, %and31
  store i32 %add34, ptr %collisions, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !441
  tail call void @arm_heavy_mb() #11
  %and40 = and i32 %1, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !442
  %16 = or i16 %15, 256
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %duplex = getelementptr i8, ptr %dev, i32 2468
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %duplex, align 4
  %20 = trunc i32 %19 to i16
  %conv47 = or i16 %17, %20
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv47)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %21) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !443
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 256) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !444
  tail call void @arm_heavy_mb() #11
  %add62 = add i32 %1, 12
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %22 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 8) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !445
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 24584) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !446
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 512) #11, !srcloc !285
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.52, i32 noundef 32) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %add = add i32 %3, 14
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !448
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 768) #11, !srcloc !285
  %mii_if = getelementptr i8, ptr %dev, i32 2436
  %call9 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !449
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 %5) #11, !srcloc !285
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !450
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !451
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 768) #11, !srcloc !285
  %cfg.i = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mii_if.i = getelementptr i8, ptr %dev, i32 2436
  %call1.i = tail call i32 @mii_link_ok(ptr noundef %mii_if.i) #11
  br label %smc_link_ok.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !452
  tail call void @arm_heavy_mb() #11
  %add.i = add i32 %7, 14
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %8 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 0) #11, !srcloc !285
  %add5.i = add i32 %7, 2
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #11, !srcloc !283
  %11 = shl i16 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !453
  %12 = and i16 %11, 16384
  %and11.i = zext i16 %12 to i32
  br label %smc_link_ok.exit

smc_link_ok.exit:                                 ; preds = %do.body.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %and11.i, %do.body.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !454
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 %3) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_if_running(ptr noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %. = select i1 %tobool.i.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_get_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !455
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !456
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 768) #11, !srcloc !285
  %cfg = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not = icmp sgt i16 %5, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mii_if = getelementptr i8, ptr %dev, i32 2436
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %ecmd) #11
  br label %do.body19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !457
  tail call void @arm_heavy_mb() #11
  %add.i = add i32 %7, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 256) #11, !srcloc !285
  %and3.i = and i32 %7, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %9 = inttoptr i32 %add4.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !458
  %11 = trunc i16 %10 to i8
  %12 = and i8 %11, 1
  %port.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %port.i, align 1
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %speed.i, align 4
  %15 = trunc i32 %7 to i8
  %conv12.i = add i8 %15, 8
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 4
  %16 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12.i, ptr %phy_address.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !459
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 0) #11, !srcloc !285
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !460
  %18 = trunc i16 %17 to i8
  %19 = lshr i8 %18, 3
  %20 = and i8 %19, 1
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %duplex.i, align 4
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes.i, i32 noundef 387) #11
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !461
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 %3) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_set_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !462
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !463
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 768) #11, !srcloc !285
  %cfg = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not = icmp sgt i16 %5, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mii_if = getelementptr i8, ptr %dev, i32 2436
  %call19 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %ecmd) #11
  br label %do.body21

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 10
  br i1 %cmp.not.i, label %if.end.i, label %if.else.do.body21_crit_edge

if.else.do.body21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

if.end.i:                                         ; preds = %if.else
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %10 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch.i = icmp ult i8 %11, 2
  br i1 %switch.i, label %if.end10.i, label %if.end.i.do.body21_crit_edge

if.end.i.do.body21_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

if.end10.i:                                       ; preds = %if.end.i
  %port.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %switch70.i = icmp ult i8 %13, 2
  br i1 %switch70.i, label %if.end22.i, label %if.end10.i.do.body21_crit_edge

if.end10.i.do.body21_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

if.end22.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp26.i = icmp eq i8 %13, 1
  %..i = zext i1 %cmp26.i to i32
  tail call fastcc void @smc_set_xcvr(ptr noundef %dev, i32 noundef %..i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  tail call void @arm_heavy_mb() #11
  %add.i = add i32 %7, 14
  %and.i = and i32 %add.i, 1048575
  %add30.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #11, !srcloc !285
  %and32.i = and i32 %7, 1048575
  %add33.i = or i32 %and32.i, -18874368
  %15 = inttoptr i32 %add33.i to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !465
  %17 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp40.i = icmp eq i8 %18, 1
  %19 = and i16 %16, -9
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #11
  %masksel.i = select i1 %cmp40.i, i16 2048, i16 0
  %tmp.0.i = or i16 %masksel.i, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !466
  tail call void @arm_heavy_mb() #11
  %21 = tail call i16 @llvm.bswap.i16(i16 %tmp.0.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %21) #11, !srcloc !285
  br label %do.body21

do.body21:                                        ; preds = %if.end22.i, %if.end10.i.do.body21_crit_edge, %if.end.i.do.body21_crit_edge, %if.else.do.body21_crit_edge, %if.then
  %ret.0 = phi i32 [ %call19, %if.then ], [ 0, %if.end22.i ], [ -22, %if.else.do.body21_crit_edge ], [ -22, %if.end.i.do.body21_crit_edge ], [ -22, %if.end10.i.do.body21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !467
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 %3) #11, !srcloc !285
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  ret i32 %ret.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mot_config(ptr nocapture noundef readonly %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %conv = trunc i32 %7 to i8
  %base = getelementptr i8, ptr %1, i32 2364
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %9, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %conv) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !469
  tail call void @arm_heavy_mb() #11
  %shr = lshr i32 %7, 8
  %conv6 = trunc i32 %shr to i8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %conv6) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !470
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 71) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !471
  tail call void @arm_heavy_mb() #11
  %conv20 = trunc i32 %3 to i8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 %conv20) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !472
  tail call void @arm_heavy_mb() #11
  %shr27 = lshr i32 %3, 8
  %conv29 = trunc i32 %shr27 to i8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %conv29) #11, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !473
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 71) #11, !srcloc !281
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.048 = phi i32 [ 100, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.048, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @osi_setup(ptr noundef %link, i16 noundef zeroext %manfid, i16 noundef zeroext %cardid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @pcmcia_loop_tuple(ptr noundef %link, i8 noundef zeroext -112, ptr noundef nonnull @pcmcia_osi_mac, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %manfid)
  %cmp = icmp eq i16 %manfid, 320
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %cardid)
  %cmp3 = icmp eq i16 %cardid, 8
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %if.end.if.then12_crit_edge, label %lor.lhs.false

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 364, i16 %manfid)
  %cmp6 = icmp eq i16 %manfid, 364
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %cardid)
  %cmp10 = icmp eq i16 %cardid, 35
  %or.cond105 = and i1 %cmp6, %cmp10
  br i1 %or.cond105, label %lor.lhs.false.if.then12_crit_edge, label %if.else

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %call13 = tail call fastcc i32 @osi_load_firmware(ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end90_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12.if.end90_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.else:                                          ; preds = %lor.lhs.false
  br i1 %cmp, label %do.body, label %if.else.if.end90_crit_edge

if.else.if.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !474
  tail call void @arm_heavy_mb() #11
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 12
  %and = and i32 %add, 1048575
  %add21 = or i32 %and, -18874368
  %6 = inttoptr i32 %add21 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !475
  %8 = or i16 %7, 3
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add29 = add i32 %12, 12
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %13 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %8) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !476
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add40 = add i32 %17, 14
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %18 = inttoptr i32 %add42 to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !477
  %20 = or i16 %19, 3
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add52 = add i32 %24, 14
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %25 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %20) #11, !srcloc !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @osi_setup.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@osi_setup, %if.then62)) #11
          to label %if.end90 [label %if.then62], !srcloc !275

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev63 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resource, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add68 = add i32 %29, 12
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %30 = inttoptr i32 %add70 to ptr
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %30) #11, !srcloc !283
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !478
  %conv74 = zext i16 %32 to i32
  %33 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resource, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add79 = add i32 %36, 14
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %37 = inttoptr i32 %add81 to ptr
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #11, !srcloc !283
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !479
  %conv85 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @osi_setup.__UNIQUE_ID_ddebug348, ptr noundef %dev63, ptr noundef nonnull @.str.83, i32 noundef %conv74, i32 noundef %conv85) #11
  br label %if.end90

if.end90:                                         ; preds = %if.then62, %do.body, %if.else.if.end90_crit_edge, %if.then12.if.end90_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end90 ], [ -1, %entry.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_setup(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @pcmcia_get_mac_from_cis(ptr noundef %link, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @cvt_ascii_address(ptr noundef %1, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then2.cleanup_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mhz_setup(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !480
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 19, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @cvt_ascii_address(ptr noundef %1, ptr noundef nonnull %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @pcmcia_loop_tuple(ptr noundef %link, i8 noundef zeroext 21, ptr noundef nonnull @pcmcia_get_versmac, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext -127, ptr noundef nonnull %buf) #11
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %tobool8.not = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call7)
  %cmp10 = icmp ugt i32 %call7, 12
  %or.cond = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then11, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr i8, ptr %6, i32 12
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx12, align 1
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %call13 = call fastcc i32 @cvt_ascii_address(ptr noundef %1, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp ne i32 %call13, 0
  %spec.select = sext i1 %cmp14 to i32
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end6.if.end17_crit_edge
  %rc.0 = phi i32 [ -1, %if.end6.if.end17_crit_edge ], [ %spec.select, %if.then11 ]
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end17 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mot_setup(ptr nocapture noundef readonly %link) unnamed_addr #2 align 64 {
entry:
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #11
  %add = add i32 %3, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %add6 = add i32 %3, 6
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  %add20 = add i32 %3, 12
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %6 = inttoptr i32 %add22 to ptr
  %add40 = add i32 %3, 10
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %7 = inttoptr i32 %add42 to ptr
  %8 = call ptr @memset(ptr %mac, i32 255, i32 6)
  br label %do.body

do.body:                                          ; preds = %if.end38.do.body_crit_edge, %entry
  %i.080 = phi i32 [ 0, %entry ], [ %inc55, %if.end38.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 512) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !482
  tail call void @arm_heavy_mb() #11
  %9 = trunc i32 %i.080 to i16
  %conv = add i16 %9, 32
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %10) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !483
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 256) #11, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !484
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 1536) #11, !srcloc !285
  br label %for.body27

for.cond24:                                       ; preds = %for.body27
  %inc = add nuw nsw i32 %loop.079, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %for.cond24.cleanup_crit_edge, label %for.cond24.for.body27_crit_edge

for.cond24.for.body27_crit_edge:                  ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27

for.cond24.cleanup_crit_edge:                     ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body27:                                       ; preds = %for.cond24.for.body27_crit_edge, %do.body
  %loop.079 = phi i32 [ 0, %do.body ], [ %inc, %for.cond24.for.body27_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #11
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #11, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !485
  %13 = and i16 %12, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp35 = icmp eq i16 %13, 0
  br i1 %cmp35, label %if.end38, label %for.cond24

if.end38:                                         ; preds = %for.body27
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #11, !srcloc !283
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !486
  %conv48 = trunc i16 %15 to i8
  %mul = shl nuw i32 %i.080, 1
  %arrayidx = getelementptr [6 x i8], ptr %mac, i32 0, i32 %mul
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv48, ptr %arrayidx, align 1
  %17 = lshr i16 %15, 8
  %conv50 = trunc i16 %17 to i8
  %add52 = or i32 %mul, 1
  %arrayidx53 = getelementptr [6 x i8], ptr %mac, i32 0, i32 %add52
  %18 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv50, ptr %arrayidx53, align 1
  %inc55 = add nuw nsw i32 %i.080, 1
  %exitcond81.not = icmp eq i32 %inc55, 3
  br i1 %exitcond81.not, label %for.end56, label %if.end38.do.body_crit_edge

if.end38.do.body_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end56:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end56, %for.cond24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end56 ], [ -1, %for.cond24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhz_mfc_config_check(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %0 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %io_lines, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resource, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %arrayidx2 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %6, align 4
  %8 = load ptr, ptr %arrayidx2, align 4
  %end = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %end, align 4
  %10 = load ptr, ptr %arrayidx2, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, -25
  store i32 %and, ptr %flags, align 4
  %13 = load ptr, ptr %resource, align 4
  %end13 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %end13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %end13, align 4
  %15 = load ptr, ptr %resource, align 4
  %flags16 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags16, align 4
  %and17 = and i32 %17, -25
  store i32 %and17, ptr %flags16, align 4
  %18 = load ptr, ptr %resource, align 4
  %flags20 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags20, align 4
  %or21 = or i32 %20, 16
  store i32 %or21, ptr %flags20, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %k.042 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %and22 = and i32 %k.042, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %xor = xor i32 %k.042, 768
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %xor, ptr %22, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = add nuw nsw i32 %k.042, 16
  %cmp = icmp ult i32 %k.042, 1008
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mhz_3288_power(ptr nocapture noundef readonly %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base = getelementptr i8, ptr %1, i32 2364
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 896
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #11
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 896
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.01 = phi i32 [ 200, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %config_base = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %12 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config_base, align 8
  %add.ptr14 = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %config_base, align 8
  %add.ptr21 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %14) #11, !srcloc !281
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_configcheck(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %end, align 4
  %3 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -25
  store i32 %and, ptr %flags, align 4
  %6 = load ptr, ptr %resource, align 4
  %flags5 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags5, align 4
  %or = or i32 %8, 16
  store i32 %or, ptr %flags5, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_tuple(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_osi_mac(ptr nocapture noundef readnone %p_dev, ptr nocapture noundef readonly %tuple, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %0 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TupleDataLen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ult i8 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %2 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %TupleData, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp3.not = icmp eq i8 %5, 4
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8 = getelementptr i8, ptr %3, i32 2
  tail call void @dev_addr_mod(ptr noundef %priv, i32 noundef 0, ptr noundef %arrayidx8, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @osi_load_firmware(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !480
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.84, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15.not = icmp eq i32 %4, 0
  br i1 %cmp15.not, label %for.cond.preheader.for.end_crit_edge, label %do.body2.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body2.lr.ph:                                   ; preds = %for.cond.preheader
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84) #14
  br label %cleanup

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %do.body2.lr.ph
  %i.016 = phi i32 [ 0, %do.body2.lr.ph ], [ %inc, %do.body2.do.body2_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !487
  call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %i.016
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add = add i32 %14, 2
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %15 = inttoptr i32 %add6 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %10) #11, !srcloc !281
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 10737400) #11
  %inc = add nuw i32 %i.016, 1
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %do.body2.do.body2_crit_edge, label %do.body2.for.end_crit_edge

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

for.end:                                          ; preds = %do.body2.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %2, %for.cond.preheader.for.end_crit_edge ], [ %18, %do.body2.for.end_crit_edge ]
  call void @release_firmware(ptr noundef %.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_mac_from_cis(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cvt_ascii_address(ptr noundef %dev, ptr nocapture noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #11
  %call = tail call i32 @strlen(ptr noundef %s) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp.not = icmp eq i32 %call, 12
  br i1 %cmp.not, label %for.cond2.preheader.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond2.preheader.preheader:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %incdec.ptr = getelementptr i8, ptr %s, i32 1
  %5 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s, align 1
  %7 = add i8 %6, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %8 = icmp ult i8 %7, 10
  %cond.v = select i1 %8, i8 0, i8 9
  %cond = add i8 %6, %cond.v
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %shl.1 = shl i8 %cond, 4
  %11 = add i8 %10, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %12 = icmp ult i8 %11, 10
  %sub.1 = add i8 %10, -48
  %and.1 = and i8 %10, 15
  %add.1 = add nuw nsw i8 %and.1, 9
  %cond.1 = select i1 %12, i8 %sub.1, i8 %add.1
  %add9.1 = add i8 %cond.1, %shl.1
  %uglygep = getelementptr i8, ptr %s, i32 2
  %13 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %add9.1, ptr %mac, align 1
  %incdec.ptr.1 = getelementptr i8, ptr %s, i32 3
  %14 = ptrtoint ptr %uglygep to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %uglygep, align 1
  %16 = add i8 %15, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %16)
  %17 = icmp ult i8 %16, 10
  %cond.136.v = select i1 %17, i8 0, i8 9
  %cond.136 = add i8 %15, %cond.136.v
  %18 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.1, align 1
  %shl.1.1 = shl i8 %cond.136, 4
  %20 = add i8 %19, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %21 = icmp ult i8 %20, 10
  %sub.1.1 = add i8 %19, -48
  %and.1.1 = and i8 %19, 15
  %add.1.1 = add nuw nsw i8 %and.1.1, 9
  %cond.1.1 = select i1 %21, i8 %sub.1.1, i8 %add.1.1
  %add9.1.1 = add i8 %cond.1.1, %shl.1.1
  %uglygep.1 = getelementptr i8, ptr %s, i32 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %add9.1.1, ptr %4, align 1
  %incdec.ptr.2 = getelementptr i8, ptr %s, i32 5
  %23 = ptrtoint ptr %uglygep.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %uglygep.1, align 1
  %25 = add i8 %24, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %25)
  %26 = icmp ult i8 %25, 10
  %cond.2.v = select i1 %26, i8 0, i8 9
  %cond.2 = add i8 %24, %cond.2.v
  %27 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.2, align 1
  %shl.1.2 = shl i8 %cond.2, 4
  %29 = add i8 %28, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %29)
  %30 = icmp ult i8 %29, 10
  %sub.1.2 = add i8 %28, -48
  %and.1.2 = and i8 %28, 15
  %add.1.2 = add nuw nsw i8 %and.1.2, 9
  %cond.1.2 = select i1 %30, i8 %sub.1.2, i8 %add.1.2
  %add9.1.2 = add i8 %cond.1.2, %shl.1.2
  %uglygep.2 = getelementptr i8, ptr %s, i32 6
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %add9.1.2, ptr %3, align 1
  %incdec.ptr.3 = getelementptr i8, ptr %s, i32 7
  %32 = ptrtoint ptr %uglygep.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %uglygep.2, align 1
  %34 = add i8 %33, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %34)
  %35 = icmp ult i8 %34, 10
  %cond.3.v = select i1 %35, i8 0, i8 9
  %cond.3 = add i8 %33, %cond.3.v
  %36 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.3, align 1
  %shl.1.3 = shl i8 %cond.3, 4
  %38 = add i8 %37, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %38)
  %39 = icmp ult i8 %38, 10
  %sub.1.3 = add i8 %37, -48
  %and.1.3 = and i8 %37, 15
  %add.1.3 = add nuw nsw i8 %and.1.3, 9
  %cond.1.3 = select i1 %39, i8 %sub.1.3, i8 %add.1.3
  %add9.1.3 = add i8 %cond.1.3, %shl.1.3
  %uglygep.3 = getelementptr i8, ptr %s, i32 8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %add9.1.3, ptr %2, align 1
  %incdec.ptr.4 = getelementptr i8, ptr %s, i32 9
  %41 = ptrtoint ptr %uglygep.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %uglygep.3, align 1
  %43 = add i8 %42, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %43)
  %44 = icmp ult i8 %43, 10
  %cond.4.v = select i1 %44, i8 0, i8 9
  %cond.4 = add i8 %42, %cond.4.v
  %45 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr.4, align 1
  %shl.1.4 = shl i8 %cond.4, 4
  %47 = add i8 %46, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %47)
  %48 = icmp ult i8 %47, 10
  %sub.1.4 = add i8 %46, -48
  %and.1.4 = and i8 %46, 15
  %add.1.4 = add nuw nsw i8 %and.1.4, 9
  %cond.1.4 = select i1 %48, i8 %sub.1.4, i8 %add.1.4
  %add9.1.4 = add i8 %cond.1.4, %shl.1.4
  %uglygep.4 = getelementptr i8, ptr %s, i32 10
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %add9.1.4, ptr %1, align 1
  %incdec.ptr.5 = getelementptr i8, ptr %s, i32 11
  %50 = ptrtoint ptr %uglygep.4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %uglygep.4, align 1
  %52 = add i8 %51, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %52)
  %53 = icmp ult i8 %52, 10
  %cond.5.v = select i1 %53, i8 0, i8 9
  %cond.5 = add i8 %51, %cond.5.v
  %54 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr.5, align 1
  %shl.1.5 = shl i8 %cond.5, 4
  %56 = add i8 %55, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %56)
  %57 = icmp ult i8 %56, 10
  %sub.1.5 = add i8 %55, -48
  %and.1.5 = and i8 %55, 15
  %add.1.5 = add nuw nsw i8 %and.1.5, 9
  %cond.1.5 = select i1 %57, i8 %sub.1.5, i8 %add.1.5
  %add9.1.5 = add i8 %cond.1.5, %shl.1.5
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %add9.1.5, ptr %0, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef 6) #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond2.preheader.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond2.preheader.preheader ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_get_versmac(ptr nocapture noundef readnone %p_dev, ptr noundef %tuple, ptr noundef %priv) #2 align 64 {
entry:
  %parse = alloca %union.cisparse_t, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %parse) #11
  %0 = call ptr @memset(ptr %parse, i32 255, i32 372)
  %call = call i32 @pcmcia_parse_tuple(ptr noundef %tuple, ptr noundef nonnull %parse) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ns = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 2
  %1 = ptrtoint ptr %ns to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ns, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ugt i8 %2, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %str = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 4
  %arrayidx = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %parse, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %4 to i32
  %add.ptr = getelementptr i8, ptr %str, i32 %conv
  %call3 = call fastcc i32 @cvt_ascii_address(ptr noundef %priv, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %parse) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_tuple(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_parse_tuple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !37, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !87, !88, !90, !91, !93, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !143, !144, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !171, !172, !174, !176, !178, !180, !181, !182, !183, !185, !186, !188, !190, !192, !193, !194, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !213, !214, !215, !217, !219, !220, !222, !224, !225, !227, !228, !230, !232, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !256, !258, !260, !261, !263, !264}
!llvm.module.flags = !{!266, !267, !268, !269, !270, !271, !272, !273}
!llvm.ident = !{!274}

!0 = !{ptr @__UNIQUE_ID_description341, !1, !"__UNIQUE_ID_description341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 66, i32 1}
!2 = !{ptr @__UNIQUE_ID_file342, !3, !"__UNIQUE_ID_file342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 67, i32 1}
!4 = !{ptr @__UNIQUE_ID_license343, !3, !"__UNIQUE_ID_license343", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_firmware344, !6, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 68, i32 1}
!7 = !{ptr @__param_if_port, !8, !"__param_if_port", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 78, i32 1}
!9 = !{ptr @__UNIQUE_ID_if_porttype345, !8, !"__UNIQUE_ID_if_porttype345", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_smc91c92_cs__367_2059_smc91c92_cs_driver_init6, !11, !"__initcall__kmod_smc91c92_cs__367_2059_smc91c92_cs_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2059, i32 1}
!12 = !{ptr @__exitcall_smc91c92_cs_driver_exit, !11, !"__exitcall_smc91c92_cs_driver_exit", i1 false, i1 false}
!13 = !{ptr @__param_str_if_port, !8, !"__param_str_if_port", i1 false, i1 false}
!14 = !{ptr @if_port, !8, !"if_port", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2052, i32 11}
!17 = !{ptr @smc91c92_cs_driver, !18, !"smc91c92_cs_driver", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2050, i32 29}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 307, i32 5}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @smc91c92_probe.__UNIQUE_ID_ddebug346, !20, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!24 = !{ptr @smc91c92_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 317, i32 5}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @smc_netdev_ops, !28, !"smc_netdev_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 290, i32 36}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1055, i32 5}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @smc_open.__UNIQUE_ID_ddebug352, !30, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1066, i32 19}
!35 = !{ptr @smc_open.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1076, i32 5}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 798, i32 23}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1645, i32 5}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @smc_reset.__UNIQUE_ID_ddebug366, !41, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1750, i32 23}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1774, i32 23}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1782, i32 23}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1782, i32 48}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1782, i32 58}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1786, i32 20}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1811, i32 23}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1812, i32 24}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1812, i32 36}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1816, i32 24}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1823, i32 24}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1358, i32 5}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @smc_interrupt.__UNIQUE_ID_ddebug359, !67, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1367, i32 2}
!72 = !{ptr @smc_interrupt.__UNIQUE_ID_ddebug360, !71, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1381, i32 2}
!75 = !{ptr @smc_interrupt.__UNIQUE_ID_ddebug361, !74, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1426, i32 5}
!78 = !{ptr @smc_interrupt.__UNIQUE_ID_ddebug362, !77, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1434, i32 5}
!81 = !{ptr @smc_interrupt.__UNIQUE_ID_ddebug363, !80, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1483, i32 18}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1492, i32 5}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @smc_rx.__UNIQUE_ID_ddebug364, !85, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1504, i32 6}
!90 = !{ptr @smc_rx.__UNIQUE_ID_ddebug365, !89, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1293, i32 21}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1129, i32 18}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1137, i32 19}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1157, i32 2}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @smc_hardware_send_packet.__UNIQUE_ID_ddebug354, !98, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1318, i32 5}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @smc_eph_irq.__UNIQUE_ID_ddebug358, !102, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1090, i32 5}
!107 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @smc_close.__UNIQUE_ID_ddebug353, !106, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1209, i32 5}
!111 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @smc_start_xmit.__UNIQUE_ID_ddebug355, !110, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1215, i32 2}
!115 = !{ptr @smc_start_xmit.__UNIQUE_ID_ddebug356, !114, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1223, i32 18}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1255, i32 5}
!120 = !{ptr @smc_start_xmit.__UNIQUE_ID_ddebug357, !119, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1599, i32 19}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 59, i32 35}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 59, i32 43}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 59, i32 54}
!129 = !{ptr @if_names, !130, !"if_names", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 59, i32 20}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1189, i32 24}
!133 = !{ptr @ethtool_ops, !134, !"ethtool_ops", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1988, i32 33}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 1913, i32 25}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 817, i32 5}
!139 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @smc91c92_config.__UNIQUE_ID_ddebug349, !138, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 851, i32 2}
!143 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @smc91c92_config._entry, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @smc91c92_config._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 869, i32 2}
!149 = !{ptr @smc91c92_config._entry.58, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @smc91c92_config._entry_ptr.60, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 877, i32 12}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 880, i32 17}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 881, i32 37}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 881, i32 44}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 882, i32 17}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 883, i32 17}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 884, i32 17}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 885, i32 17}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 922, i32 2}
!169 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @smc91c92_config._entry.69, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @smc91c92_config._entry_ptr.72, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 926, i32 22}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 931, i32 23}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 933, i32 23}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 934, i32 2}
!180 = !{ptr @smc91c92_config._entry.76, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @smc91c92_config._entry_ptr.78, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 940, i32 6}
!185 = !{ptr @smc91c92_config.__UNIQUE_ID_ddebug350, !184, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!186 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 943, i32 25}
!188 = distinct !{null, !189, !"com", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 620, i32 31}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 705, i32 2}
!192 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @osi_setup.__UNIQUE_ID_ddebug348, !191, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 653, i32 30}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 655, i32 3}
!198 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @osi_load_firmware._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @osi_load_firmware._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 958, i32 2}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @smc91c92_release.__UNIQUE_ID_ddebug351, !202, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 337, i32 5}
!207 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @smc91c92_detach.__UNIQUE_ID_ddebug347, !206, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 745, i32 20}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2021, i32 2}
!213 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2022, i32 2}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2023, i32 2}
!219 = !{ptr @.str.97, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2024, i32 2}
!222 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2025, i32 2}
!224 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2027, i32 2}
!227 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2028, i32 2}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2031, i32 2}
!232 = !{ptr @.str.105, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.107, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2032, i32 2}
!236 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2033, i32 2}
!239 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2034, i32 2}
!242 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2035, i32 2}
!245 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2036, i32 2}
!248 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2037, i32 2}
!251 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2038, i32 2}
!254 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2039, i32 2}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2040, i32 2}
!258 = !{ptr @.str.122, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2041, i32 2}
!260 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.124, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2042, i32 2}
!263 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @smc91c92_ids, !265, !"smc91c92_ids", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/smsc/smc91c92_cs.c", i32 2018, i32 38}
!266 = !{i32 1, !"wchar_size", i32 2}
!267 = !{i32 1, !"min_enum_size", i32 4}
!268 = !{i32 8, !"branch-target-enforcement", i32 0}
!269 = !{i32 8, !"sign-return-address", i32 0}
!270 = !{i32 8, !"sign-return-address-all", i32 0}
!271 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!272 = !{i32 7, !"uwtable", i32 1}
!273 = !{i32 7, !"frame-pointer", i32 2}
!274 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!275 = !{i64 2149011494, i64 2149011499, i64 2149011512, i64 2149011556, i64 2149011590, i64 2149011611}
!276 = !{i64 5079137}
!277 = !{i64 2156616446}
!278 = !{i64 2156617221}
!279 = !{i64 2156618804}
!280 = !{i64 2156619578}
!281 = !{i64 5078742}
!282 = !{i64 2156640178}
!283 = !{i64 5078519}
!284 = !{i64 2156640878}
!285 = !{i64 5078319}
!286 = !{i64 2156642397}
!287 = !{i64 2156643097}
!288 = !{i64 2156667233}
!289 = !{i64 2156667618}
!290 = !{i64 2156668003}
!291 = !{i64 2156668333}
!292 = !{i64 2156668649}
!293 = !{i64 2156669031}
!294 = !{i64 2156669247}
!295 = !{i64 2156669632}
!296 = !{i64 2156669962}
!297 = !{i64 2156670278}
!298 = !{i64 2156670602}
!299 = !{i64 2156655227}
!300 = !{i64 2156656090}
!301 = !{i64 2156656747}
!302 = !{i64 2156657033}
!303 = !{i64 2156657896}
!304 = !{i64 2156658245}
!305 = !{i64 2156658742}
!306 = !{i64 2156673987}
!307 = !{i64 2156677426}
!308 = !{i64 2156677712}
!309 = !{i64 2156678172}
!310 = !{i64 2156678669}
!311 = !{i64 2156680127}
!312 = !{i64 2156680797}
!313 = !{i64 2156682178}
!314 = !{i64 2156682848}
!315 = !{i64 2156683268}
!316 = !{i64 2156683740}
!317 = !{i64 2156700765}
!318 = !{i64 2156703824}
!319 = !{i64 2156704290}
!320 = !{i64 2156704773}
!321 = !{i64 2156705668}
!322 = !{i64 2156705941}
!323 = !{i64 2156708749}
!324 = !{i64 2156763591}
!325 = !{i64 2156764034}
!326 = !{i64 2156764443}
!327 = !{i64 2156764914}
!328 = !{i64 2156765436}
!329 = !{i64 2156813032}
!330 = !{i64 2156813318}
!331 = !{i64 2156813845}
!332 = !{i64 2156692838}
!333 = !{i64 2156693488}
!334 = !{i64 2156643560}
!335 = !{i64 2156644428}
!336 = !{i64 2156644677}
!337 = !{i64 2156646474}
!338 = !{i64 2156646699}
!339 = !{i64 2156647470}
!340 = !{i64 2156648127}
!341 = !{i64 2156648413}
!342 = !{i64 2156649291}
!343 = !{i64 2156775227}
!344 = !{i64 2156775697}
!345 = !{i64 2156776712}
!346 = !{i64 2156777175}
!347 = !{i64 2156777671}
!348 = !{i64 2156778175}
!349 = !{i64 2156779735}
!350 = !{i64 2156780499}
!351 = !{i64 2156780927}
!352 = !{i64 2156781505}
!353 = !{i64 2156781971}
!354 = !{i64 2156782436}
!355 = !{i64 2156782933}
!356 = !{i64 2156783486}
!357 = !{i64 2156784123}
!358 = !{i64 2156784620}
!359 = !{i64 2156785119}
!360 = !{i64 2156787564}
!361 = !{i64 2156787850}
!362 = !{i64 2156788316}
!363 = !{i64 2156789189}
!364 = !{i64 2156789475}
!365 = !{i64 2156790338}
!366 = !{i64 2156790631}
!367 = !{i64 2156791494}
!368 = !{i64 2156791805}
!369 = !{i64 801817, i64 801878}
!370 = !{i64 804549}
!371 = !{!"branch_weights", i32 1, i32 2000}
!372 = !{i64 804834}
!373 = !{i64 2156794472}
!374 = !{i64 2156794765}
!375 = !{i64 2156795269}
!376 = !{i64 2156796676}
!377 = !{i64 2156797348}
!378 = !{i64 2156798247}
!379 = !{i64 2156766317}
!380 = !{i64 2156766603}
!381 = !{i64 2156768671}
!382 = !{i64 2156769359}
!383 = !{i64 2156771328}
!384 = !{i64 2156772018}
!385 = !{i64 2156772466}
!386 = !{i64 2156727386}
!387 = !{i64 2156730194}
!388 = !{i64 2156731057}
!389 = !{i64 2156731714}
!390 = !{i64 2156731963}
!391 = !{i64 2156732831}
!392 = !{i64 2156709664}
!393 = !{i64 2156710316}
!394 = !{i64 2156710571}
!395 = !{i64 2156711076}
!396 = !{i64 2156711974}
!397 = !{i64 2156712288}
!398 = !{i64 2156713711}
!399 = !{i64 2156714392}
!400 = !{i64 2156714819}
!401 = !{i64 2156715285}
!402 = !{i64 2156715759}
!403 = !{i64 2156735470}
!404 = !{i64 2156735944}
!405 = !{i64 2156736441}
!406 = !{i64 2156739634}
!407 = !{i64 2156740120}
!408 = !{i64 2156740658}
!409 = !{i64 2156744489}
!410 = !{i64 2156745173}
!411 = !{i64 2156746620}
!412 = !{i64 2156747304}
!413 = !{i64 2156747712}
!414 = !{i64 2156747960}
!415 = !{i64 2156748264}
!416 = !{i64 2156748585}
!417 = !{i64 2156748833}
!418 = !{i64 2156749137}
!419 = !{i64 2156749463}
!420 = !{i64 2156749702}
!421 = !{i64 2156749924}
!422 = !{i64 2156750200}
!423 = !{i64 2156750945}
!424 = !{i64 2156751243}
!425 = !{i64 2156752151}
!426 = !{i64 2156752803}
!427 = !{i64 2156757858}
!428 = !{i64 2156758563}
!429 = !{i64 2156684613}
!430 = !{i64 2156684880}
!431 = !{i64 2156685365}
!432 = !{i64 2156688206}
!433 = !{i64 2156688672}
!434 = !{i64 2156689349}
!435 = !{i64 2156690872}
!436 = !{i64 2156691592}
!437 = !{i64 2156691976}
!438 = !{i64 2156716277}
!439 = !{i64 2156717140}
!440 = !{i64 2156720286}
!441 = !{i64 2156721498}
!442 = !{i64 2156722179}
!443 = !{i64 2156722606}
!444 = !{i64 2156723087}
!445 = !{i64 2156723619}
!446 = !{i64 2156724162}
!447 = !{i64 2156810987}
!448 = !{i64 2156811273}
!449 = !{i64 2156811788}
!450 = !{i64 2156808941}
!451 = !{i64 2156809579}
!452 = !{i64 2156798769}
!453 = !{i64 2156799632}
!454 = !{i64 2156810094}
!455 = !{i64 2156804849}
!456 = !{i64 2156805487}
!457 = !{i64 2156800448}
!458 = !{i64 2156801311}
!459 = !{i64 2156801619}
!460 = !{i64 2156802482}
!461 = !{i64 2156806009}
!462 = !{i64 2156806895}
!463 = !{i64 2156807533}
!464 = !{i64 2156802822}
!465 = !{i64 2156803685}
!466 = !{i64 2156803953}
!467 = !{i64 2156808055}
!468 = !{i64 2156620011}
!469 = !{i64 2156620333}
!470 = !{i64 2156620759}
!471 = !{i64 2156621092}
!472 = !{i64 2156621414}
!473 = !{i64 2156621840}
!474 = !{i64 2156631370}
!475 = !{i64 2156632081}
!476 = !{i64 2156633651}
!477 = !{i64 2156634362}
!478 = !{i64 2156638034}
!479 = !{i64 2156638773}
!480 = !{!"auto-init"}
!481 = !{i64 2156623525}
!482 = !{i64 2156623995}
!483 = !{i64 2156624505}
!484 = !{i64 2156624997}
!485 = !{i64 2156626457}
!486 = !{i64 2156627114}
!487 = !{i64 2156629234}
