; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/xircom/xirc2ps_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/xircom/xirc2ps_cs.c"
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
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.tuple_t = type { i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, ptr }

@__UNIQUE_ID_description345 = internal constant [53 x i8] c"xirc2ps_cs.description=Xircom PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [55 x i8] c"xirc2ps_cs.file=drivers/net/ethernet/xircom/xirc2ps_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [32 x i8] c"xirc2ps_cs.license=Dual MPL/GPL\00", section ".modinfo", align 1
@__param_str_if_port = internal constant [19 x i8] c"xirc2ps_cs.if_port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@if_port = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_if_port = internal constant %struct.kernel_param { ptr @__param_str_if_port, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @if_port } }, section "__param", align 4
@__UNIQUE_ID_if_porttype348 = internal constant [32 x i8] c"xirc2ps_cs.parmtype=if_port:int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [23 x i8] c"xirc2ps_cs.full_duplex\00", align 1
@full_duplex = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype349 = internal constant [36 x i8] c"xirc2ps_cs.parmtype=full_duplex:int\00", section ".modinfo", align 1
@__param_str_do_sound = internal constant [20 x i8] c"xirc2ps_cs.do_sound\00", align 1
@do_sound = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_do_sound = internal constant %struct.kernel_param { ptr @__param_str_do_sound, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @do_sound } }, section "__param", align 4
@__UNIQUE_ID_do_soundtype350 = internal constant [33 x i8] c"xirc2ps_cs.parmtype=do_sound:int\00", section ".modinfo", align 1
@__param_str_lockup_hack = internal constant [23 x i8] c"xirc2ps_cs.lockup_hack\00", align 1
@lockup_hack = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lockup_hack = internal constant %struct.kernel_param { ptr @__param_str_lockup_hack, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @lockup_hack } }, section "__param", align 4
@__UNIQUE_ID_lockup_hacktype351 = internal constant [36 x i8] c"xirc2ps_cs.parmtype=lockup_hack:int\00", section ".modinfo", align 1
@__initcall__kmod_xirc2ps_cs__381_1769_xirc2ps_cs_driver_init6 = internal global ptr @xirc2ps_cs_driver_init, section ".initcall6.init", align 4
@xirc2ps_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @xirc2ps_probe, ptr @xirc2ps_detach, ptr @xirc2ps_suspend, ptr @xirc2ps_resume, ptr null, ptr @xirc2ps_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_xirc2ps_cs_driver_exit = internal global ptr @xirc2ps_cs_driver_exit, section ".exitcall.exit", align 4
@__setup_str_setup_xirc2ps_cs = internal constant [12 x i8] c"xirc2ps_cs=\00", section ".init.rodata", align 1
@__setup_setup_xirc2ps_cs = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_xirc2ps_cs, ptr @setup_xirc2ps_cs, i32 0 }, section ".init.setup", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xirc2ps_cs\00", [21 x i8] zeroinitializer }, align 32
@xirc2ps_ids = internal constant { [20 x %struct.pcmcia_device_id], [272 x i8] } { [20 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 259, i16 137, i16 4362, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 312, i16 4362, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 245987562, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.123, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 -2141155293, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.124, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 -1504656598, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.125, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 1994333481, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.126, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 -247449831, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.127, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 -324795969, i32 0, i32 0], [4 x ptr] [ptr @.str.44, ptr @.str.128, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 447, i16 266, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 456889598, i32 0, i32 -209600094, i32 0], [4 x ptr] [ptr @.str.129, ptr null, ptr @.str.130, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 247508023, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.131, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 -1803710349, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.132, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 610576099, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.133, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 1040766473, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.134, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 -149385658, i32 0], [4 x ptr] [ptr @.str.44, ptr null, ptr @.str.135, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1425523868, i32 -1613565790, i32 0, i32 0], [4 x ptr] [ptr @.str.46, ptr @.str.136, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1425523868, i32 -269916311, i32 0, i32 0], [4 x ptr] [ptr @.str.46, ptr @.str.137, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2123577323, i32 390305755, i32 0, i32 0], [4 x ptr] [ptr @.str.47, ptr @.str.138, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1151376796, i32 -1269961009, i32 0, i32 0], [4 x ptr] [ptr @.str.48, ptr @.str.139, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [272 x i8] zeroinitializer }, align 32
@xirc2ps_probe.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xirc2ps_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/xircom/xirc2ps_cs.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"attach()\0A\00", [22 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @do_open, ptr @do_stop, ptr @do_start_xmit, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @do_ioctl, ptr null, ptr null, ptr null, ptr @do_config, ptr null, ptr null, ptr @xirc_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@xirc2ps_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&local->tx_timeout_task)\00", [53 x i8] zeroinitializer }, align 32
@do_open.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"do_open\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_open(%p)\0A\00", [19 x i8] zeroinitializer }, align 32
@do_reset.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"do_reset\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: do_reset(%p,%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xirc2ps_cs: %s: do_reset(%p,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@do_reset.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ECR is: %#02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xirc2ps_cs: %s: ECR is: %#02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MII selected\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MII detected; using 10mbs\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"media %s, silicon revision %d\0A\00", [33 x i8] zeroinitializer }, align 32
@if_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't take PHY out of isolation mode\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"autonegotiation failed; using 10mbs\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MII link partner: %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Auto\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10BaseT\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10Base2\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUI\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"100BaseT\00", [23 x i8] zeroinitializer }, align 32
@do_stop.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"do_stop\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_stop(%p)\0A\00", [19 x i8] zeroinitializer }, align 32
@do_start_xmit.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_start_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"do_start_xmit(skb=%p, dev=%p) len=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"xirc2ps_cs: do_start_xmit(skb=%p, dev=%p) len=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@do_start_xmit.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: avail. tx space=%u%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"xirc2ps_cs: %s: avail. tx space=%u%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (okay)\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" (not enough)\00", [18 x i8] zeroinitializer }, align 32
@do_ioctl.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"do_ioctl\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: ioctl(%-.6s, %#04x) %04x %04x %04x %04x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"xirc2ps_cs: %s: ioctl(%-.6s, %#04x) %04x %04x %04x %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@do_config.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_config\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_config(%p)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xirc2ps_cs: do_config(%p)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switching to %s port\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"transmit timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCMCIA 0x%lx\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xirc2ps_config.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xirc2ps_config\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"config\0A\00", [24 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015xirc2ps_cs: manfid not found in CIS\0A\00", [57 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry_ptr = internal global ptr @xirc2ps_config._entry, section ".printk_index", align 4
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Xircom\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Accton\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Compaq\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Intel\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Toshiba\00", [24 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.41, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015xirc2ps_cs: Unknown Card Manufacturer ID: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry_ptr.51 = internal global ptr @xirc2ps_config._entry.49, section ".printk_index", align 4
@xirc2ps_config.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.52, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found %s card\0A\00", [17 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.41, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015xirc2ps_cs: this card is not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry_ptr.55 = internal global ptr @xirc2ps_config._entry.53, section ".printk_index", align 4
@xirc2ps_config._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.41, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015xirc2ps_cs: node-id not found in CIS\0A\00", [56 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry_ptr.58 = internal global ptr @xirc2ps_config._entry.56, section ".printk_index", align 4
@xirc2ps_config._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.41, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015xirc2ps_cs: no ports available\0A\00", [62 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry_ptr.61 = internal global ptr @xirc2ps_config._entry.59, section ".printk_index", align 4
@xirc2ps_config._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.41, ptr @.str.2, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015xirc2ps_cs: invalid if_port requested\0A\00", [55 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry_ptr.64 = internal global ptr @xirc2ps_config._entry.62, section ".printk_index", align 4
@xirc2ps_config._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.41, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015xirc2ps_cs: register_netdev() failed\0A\00", [56 x i8] zeroinitializer }, align 32
@xirc2ps_config._entry_ptr.67 = internal global ptr @xirc2ps_config._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: port %#3lx, irq %d, hwaddr %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@set_card_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 545, ptr @.str.71, ptr @.str.72 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid CIS -- sorry\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_card_type\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@set_card_type._entry_ptr = internal global ptr @set_card_type._entry, section ".printk_index", align 4
@set_card_type.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cisrev=%02x mediaid=%02x prodid=%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@set_card_type._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015xirc2ps_cs: Oops: Not a creditcard\0A\00", [58 x i8] zeroinitializer }, align 32
@set_card_type._entry_ptr.76 = internal global ptr @set_card_type._entry.74, section ".printk_index", align 4
@set_card_type._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015xirc2ps_cs: Not an Ethernet card\0A\00", [60 x i8] zeroinitializer }, align 32
@set_card_type._entry_ptr.79 = internal global ptr @set_card_type._entry.77, section ".printk_index", align 4
@set_card_type._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015xirc2ps_cs: Sorry, this is an old CE card\0A\00", [51 x i8] zeroinitializer }, align 32
@set_card_type._entry_ptr.82 = internal global ptr @set_card_type._entry.80, section ".printk_index", align 4
@set_card_type._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.70, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015xirc2ps_cs: unknown card (mediaid=%02x prodid=%02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@set_card_type._entry_ptr.85 = internal global ptr @set_card_type._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE2\00", [28 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xirc2ps_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: interrupt %d at %#x.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"xirc2ps_cs: %s: interrupt %d at %#x.\0A\00", [58 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.90, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: interrupt %d for dead card\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"xirc2ps_cs: %s: interrupt %d for dead card\0A\00", [52 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.92, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: ISR=%#2.2x ESR=%#2.2x RSR=%#2.2x TSR=%#4.4x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"xirc2ps_cs: %s: ISR=%#2.2x ESR=%#2.2x RSR=%#2.2x TSR=%#4.4x\0A\00", [35 x i8] zeroinitializer }, align 32
@maxrx_bytes = internal global { i32, [28 x i8] } { i32 22000, [28 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.94, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: RX drop, too much done\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"xirc2ps_cs: %s: RX drop, too much done\0A\00", [56 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.96, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rsr=%#02x packet_length=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"xirc2ps_cs: rsr=%#02x packet_length=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.98, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rsr=%#02x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xirc2ps_cs: rsr=%#02x\0A\00", [41 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.100, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Packet too long\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xirc2ps_cs: %s: Packet too long\0A\00", [63 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.102, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: CRC error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xirc2ps_cs: %s: CRC error\0A\00", [37 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.104, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Alignment error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xirc2ps_cs: %s: Alignment error\0A\00", [63 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.106, i8 1, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"receive overrun cleared\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xirc2ps_cs: receive overrun cleared\0A\00", [59 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.108, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PTR not changed?\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xirc2ps_cs: PTR not changed?\0A\00", [34 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.110, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tx restarted due to excessive collisions\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"xirc2ps_cs: tx restarted due to excessive collisions\0A\00", [42 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.112, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set maxrx=%u (rcvd=%u ticks=%lu)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"xirc2ps_cs: set maxrx=%u (rcvd=%u ticks=%lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@xirc2ps_interrupt.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.114, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set maxrx=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xirc2ps_cs: set maxrx=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@xirc2ps_release.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.117, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xirc2ps_release\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"release\0A\00", [23 x i8] zeroinitializer }, align 32
@xirc2ps_detach.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xirc2ps_detach\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"detach\0A\00", [24 x i8] zeroinitializer }, align 32
@do_powerdown.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_powerdown\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_powerdown(%p)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xirc2ps_cs: do_powerdown(%p)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CEM28\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CEM33\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CEM56\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"REM10\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XEM5600\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CreditCard Ethernet+Modem II\00", [35 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Toshiba Information Systems\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TPCENET\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CE3-10/100\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PS-CE2-10\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"R2E-100BTX\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RE-10\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XE2000\00", [25 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Ethernet LAN Card\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Netelligent 10/100 PC Card\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"EtherExpress(TM) PRO/100 PC Card Mobile Adapter16\00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"10/100 Ethernet PC Card\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 137, i64 152, i64 261, i64 312, i64 387, i64 447]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.143 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"if_port\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 237, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 238, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [9 x i8] c"do_sound\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 239, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"lockup_hack\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 240, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"xirc2ps_cs_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1760, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1762, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"xirc2ps_ids\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1733, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 479, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 461, i32 36 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1410, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 497, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1386, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1470, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1526, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1562, i32 23 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1567, i32 23 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1612, i32 19 }
@___asan_gen_.218 = private unnamed_addr constant [9 x i8] c"if_names\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 210, i32 20 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1655, i32 21 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1673, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1683, i32 23 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 210, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 210, i32 43 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 210, i32 54 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 210, i32 65 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 210, i32 72 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1714, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1217, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1243, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1421, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1360, i32 5 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1371, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1204, i32 24 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1406, i32 51 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 698, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 702, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 708, i32 20 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 711, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 715, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 718, i32 20 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 721, i32 20 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 724, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 728, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 731, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 755, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 782, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 889, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 901, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 906, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 545, i32 6 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 553, i32 5 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 561, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 565, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 596, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 600, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 613, i32 53 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 990, i32 5 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1000, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1013, i32 5 }
@___asan_gen_.434 = private unnamed_addr constant [12 x i8] c"maxrx_bytes\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 251, i32 17 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1024, i32 6 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1031, i32 6 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1098, i32 6 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1102, i32 6 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1106, i32 6 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1110, i32 6 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1122, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1135, i32 6 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1141, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1160, i32 6 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1167, i32 6 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 923, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 507, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1700, i32 5 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1736, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1737, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1738, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1739, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1740, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1741, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1743, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1744, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1745, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1746, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1747, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1748, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1749, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1750, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1751, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private constant [44 x i8] c"../drivers/net/ethernet/xircom/xirc2ps_cs.c\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1752, i32 2 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_do_soundtype350, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_full_duplextype349, ptr @__UNIQUE_ID_if_porttype348, ptr @__UNIQUE_ID_license347, ptr @__UNIQUE_ID_lockup_hacktype351, ptr @__exitcall_xirc2ps_cs_driver_exit, ptr @__initcall__kmod_xirc2ps_cs__381_1769_xirc2ps_cs_driver_init6, ptr @__param_do_sound, ptr @__param_full_duplex, ptr @__param_if_port, ptr @__param_lockup_hack, ptr @__setup_setup_xirc2ps_cs, ptr @set_card_type._entry, ptr @set_card_type._entry.74, ptr @set_card_type._entry.77, ptr @set_card_type._entry.80, ptr @set_card_type._entry.83, ptr @set_card_type._entry_ptr, ptr @set_card_type._entry_ptr.76, ptr @set_card_type._entry_ptr.79, ptr @set_card_type._entry_ptr.82, ptr @set_card_type._entry_ptr.85, ptr @xirc2ps_config._entry, ptr @xirc2ps_config._entry.49, ptr @xirc2ps_config._entry.53, ptr @xirc2ps_config._entry.56, ptr @xirc2ps_config._entry.59, ptr @xirc2ps_config._entry.62, ptr @xirc2ps_config._entry.65, ptr @xirc2ps_config._entry_ptr, ptr @xirc2ps_config._entry_ptr.51, ptr @xirc2ps_config._entry_ptr.55, ptr @xirc2ps_config._entry_ptr.58, ptr @xirc2ps_config._entry_ptr.61, ptr @xirc2ps_config._entry_ptr.64, ptr @xirc2ps_config._entry_ptr.67, ptr @xirc2ps_cs_driver_exit, ptr @if_port, ptr @full_duplex, ptr @do_sound, ptr @lockup_hack, ptr @xirc2ps_cs_driver, ptr @.str, ptr @xirc2ps_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @netdev_ops, ptr @netdev_ethtool_ops, ptr @xirc2ps_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @if_names, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @maxrx_bytes, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sound to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockup_hack to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_ids to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_config._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_config._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_config._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_config._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_config._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xirc2ps_config._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_card_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_card_type._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_card_type._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_card_type._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_card_type._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxrx_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xirc2ps_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @xirc2ps_cs_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xirc2ps_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @xirc2ps_cs_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_xirc2ps_cs(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ints) #10
  %0 = getelementptr inbounds i8, ptr %ints, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 36)
  %2 = ptrtoint ptr %ints to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ints, align 4
  %call = call ptr @get_options(ptr noundef %str, i32 noundef 10, ptr noundef nonnull %ints) #10
  %3 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp sgt i32 %4, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds [10 x i32], ptr %ints, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp2.not = icmp eq i32 %6, -1
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %6, ptr @if_port, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp5 = icmp ugt i32 %4, 3
  br i1 %cmp5, label %land.lhs.true6, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true6:                                   ; preds = %if.end
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %ints, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp8.not = icmp eq i32 %8, -1
  br i1 %cmp8.not, label %land.lhs.true6.if.end11_crit_edge, label %if.then9

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %8, ptr @full_duplex, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true6.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp13 = icmp ugt i32 %4, 4
  br i1 %cmp13, label %land.lhs.true14, label %if.end11.if.end27_crit_edge

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true14:                                  ; preds = %if.end11
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %ints, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp16.not = icmp eq i32 %10, -1
  br i1 %cmp16.not, label %land.lhs.true14.if.end19_crit_edge, label %if.then17

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %10, ptr @do_sound, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true14.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp21 = icmp ugt i32 %4, 5
  br i1 %cmp21, label %land.lhs.true22, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true22:                                  ; preds = %if.end19
  %arrayidx23 = getelementptr inbounds [10 x i32], ptr %ints, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp24.not = icmp eq i32 %12, -1
  br i1 %cmp24.not, label %land.lhs.true22.if.end27_crit_edge, label %if.then25

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %12, ptr @lockup_hack, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true22.if.end27_crit_edge, %if.end19.if.end27_crit_edge, %if.end11.if.end27_crit_edge, %if.end.if.end27_crit_edge, %entry.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ints) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xirc2ps_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_probe.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_probe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xirc2ps_probe.__UNIQUE_ID_ddebug352, ptr noundef %dev3, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 92, i32 noundef 1, i32 noundef 1) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %add.ptr.i, align 4
  %p_dev = getelementptr i8, ptr %call4, i32 2308
  %1 = ptrtoint ptr %p_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %p_dev, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %priv, align 8
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %3 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %config_index, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %5 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %6 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40, ptr %watchdog_timeo, align 4
  %tx_timeout_task = getelementptr i8, ptr %call4, i32 2352
  tail call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #10
  %7 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %tx_timeout_task, align 4
  %lockdep_map = getelementptr i8, ptr %call4, i32 2368
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @xirc2ps_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr i8, ptr %call4, i32 2356
  %8 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr i8, ptr %call4, i32 2360
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call4, i32 2364
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xirc2ps_tx_timeout_task, ptr %func, align 4
  %call18 = tail call fastcc i32 @xirc2ps_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xirc2ps_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_detach.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_detach, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xirc2ps_detach.__UNIQUE_ID_ddebug353, ptr noundef %dev3, ptr noundef nonnull @.str.119) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_release.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_detach, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !306

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xirc2ps_release.__UNIQUE_ID_ddebug357, ptr noundef %dev.i, ptr noundef nonnull @.str.117) #10
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
  br i1 %tobool3.not.i, label %do.end.i.xirc2ps_release.exit_crit_edge, label %if.then4.i

do.end.i.xirc2ps_release.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xirc2ps_release.exit

if.then4.i:                                       ; preds = %do.end.i
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %dingo.i = getelementptr i8, ptr %7, i32 2328
  %8 = ptrtoint ptr %dingo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dingo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not.i = icmp eq i32 %9, 0
  br i1 %tobool7.not.i, label %if.then4.i.xirc2ps_release.exit_crit_edge, label %if.then8.i

if.then4.i.xirc2ps_release.exit_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xirc2ps_release.exit

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %dingo_ccr.i = getelementptr i8, ptr %7, i32 2340
  %10 = ptrtoint ptr %dingo_ccr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dingo_ccr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -2048
  tail call void @iounmap(ptr noundef %add.ptr.i) #10
  br label %xirc2ps_release.exit

xirc2ps_release.exit:                             ; preds = %if.then8.i, %if.then4.i.xirc2ps_release.exit_crit_edge, %do.end.i.xirc2ps_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  tail call void @free_netdev(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xirc2ps_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #10
  tail call fastcc void @do_powerdown(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xirc2ps_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call fastcc void @do_reset(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xirc2ps_tx_timeout_task(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @do_reset(ptr noundef %1)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xirc2ps_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  %pass = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !307
  %dingo_ccr = getelementptr i8, ptr %1, i32 2340
  %3 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dingo_ccr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_config.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_config, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xirc2ps_config.__UNIQUE_ID_ddebug355, ptr noundef %dev4, ptr noundef nonnull @.str.42) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %has_manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 15
  %4 = ptrtoint ptr %has_manf_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %has_manf_id, align 8
  %5 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  br label %cleanup287

if.end12:                                         ; preds = %do.end
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %6 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %manf_id, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %do.end24 [
    i16 261, label %if.end12.do.body29_crit_edge
    i16 447, label %sw.bb14
    i16 312, label %if.end12.sw.bb16_crit_edge
    i16 387, label %if.end12.sw.bb16_crit_edge390
    i16 137, label %sw.bb18
    i16 152, label %sw.bb20
  ]

if.end12.sw.bb16_crit_edge390:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb16

if.end12.sw.bb16_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb16

if.end12.do.body29_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

sw.bb16:                                          ; preds = %if.end12.sw.bb16_crit_edge, %if.end12.sw.bb16_crit_edge390
  br label %do.body29

sw.bb18:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

sw.bb20:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = zext i16 %7 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv13) #13
  br label %cleanup287

do.body29:                                        ; preds = %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %if.end12.do.body29_crit_edge
  %.str.44.sink = phi ptr [ @.str.45, %sw.bb14 ], [ @.str.46, %sw.bb16 ], [ @.str.47, %sw.bb18 ], [ @.str.48, %sw.bb20 ], [ @.str.44, %if.end12.do.body29_crit_edge ]
  %manf_str = getelementptr i8, ptr %1, i32 2348
  %9 = ptrtoint ptr %manf_str to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.str.44.sink, ptr %manf_str, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_config.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_config, %if.then41)) #10
          to label %do.end46 [label %if.then41], !srcloc !306

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %dev42 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %manf_str43 = getelementptr i8, ptr %1, i32 2348
  %10 = ptrtoint ptr %manf_str43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %manf_str43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xirc2ps_config.__UNIQUE_ID_ddebug356, ptr noundef %dev42, ptr noundef nonnull @.str.52, ptr noundef %11) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.body29
  %call47 = tail call fastcc i32 @set_card_type(ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end52, label %if.end55

do.end52:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %cleanup287

if.end55:                                         ; preds = %do.end46
  %call56 = tail call i32 @pcmcia_get_mac_from_cis(ptr noundef %link, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end82_crit_edge, label %if.then58

if.end55.if.end82_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then58:                                        ; preds = %if.end55
  %call59 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext -119, ptr noundef nonnull %buf) #10
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %tobool60.not = icmp ne ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call59)
  %cmp61 = icmp eq i32 %call59, 8
  %or.cond = select i1 %tobool60.not, i1 %cmp61, i1 false
  br i1 %or.cond, label %if.then63, label %if.then58.if.end74_crit_edge

if.then58.if.end74_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then63:                                        ; preds = %if.then58
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp65 = icmp eq i8 %15, 4
  br i1 %cmp65, label %if.then67, label %if.then63.if.end74_crit_edge

if.then63.if.end74_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %13, i32 2
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 2, ptr noundef %arrayidx, i32 noundef 4) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then67, %if.then63.if.end74_crit_edge, %if.then58.if.end74_crit_edge
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %17) #10
  %call73 = call i32 @pcmcia_loop_tuple(ptr noundef %link, i8 noundef zeroext 34, ptr noundef nonnull @pcmcia_get_mac_ce, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool75.not = icmp eq i32 %call73, 0
  br i1 %tobool75.not, label %if.end74.if.end82_crit_edge, label %do.end79

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  br label %cleanup287

if.end82:                                         ; preds = %if.end74.if.end82_crit_edge, %if.end55.if.end82_crit_edge
  %modem = getelementptr i8, ptr %1, i32 2336
  %18 = ptrtoint ptr %modem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %modem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool83.not = icmp eq i32 %19, 0
  br i1 %tobool83.not, label %if.else104, label %if.then84

if.then84:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pass) #10
  %20 = ptrtoint ptr %pass to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pass, align 4, !annotation !307
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %21 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %config_flags, align 4
  %or = or i32 %22, 2048
  store i32 %or, ptr %config_flags, align 4
  %dingo = getelementptr i8, ptr %1, i32 2328
  %23 = ptrtoint ptr %dingo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dingo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool85.not = icmp eq i32 %24, 0
  br i1 %tobool85.not, label %for.cond.preheader, label %if.then86

for.cond.preheader:                               ; preds = %if.then84
  %25 = ptrtoint ptr %pass to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pass, align 4
  br label %for.body

if.then86:                                        ; preds = %if.then84
  %call87 = call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @xirc2ps_config_modem, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.cleanup_crit_edge, label %if.then86.do.end101_crit_edge

if.then86.do.end101_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end101

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %call94 = call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @xirc2ps_config_check, ptr noundef nonnull %pass) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %26 = ptrtoint ptr %pass to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pass, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %pass, align 4
  %cmp92 = icmp slt i32 %inc, 2
  br i1 %cmp92, label %for.inc.for.body_crit_edge, label %for.inc.do.end101_crit_edge

for.inc.do.end101_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end101

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end101:                                        ; preds = %for.inc.do.end101_crit_edge, %if.then86.do.end101_crit_edge
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %for.body.cleanup_crit_edge, %if.then86.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pass) #10
  br label %port_found

if.else104:                                       ; preds = %if.end82
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 14
  %28 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %io_lines, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %29 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %end, align 4
  %32 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or108 = or i32 %34, 8
  store i32 %or108, ptr %flags, align 4
  %35 = load ptr, ptr %resource, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 768, ptr %35, align 4
  %call115 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.else104.port_found_crit_edge, label %for.cond109

if.else104.port_found_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109:                                      ; preds = %if.else104
  %37 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resource, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 784, ptr %38, align 4
  %call115.1 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.1)
  %tobool116.not.1 = icmp eq i32 %call115.1, 0
  br i1 %tobool116.not.1, label %for.cond109.port_found_crit_edge, label %for.cond109.1

for.cond109.port_found_crit_edge:                 ; preds = %for.cond109
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.1:                                    ; preds = %for.cond109
  %40 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %resource, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 800, ptr %41, align 4
  %call115.2 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.2)
  %tobool116.not.2 = icmp eq i32 %call115.2, 0
  br i1 %tobool116.not.2, label %for.cond109.1.port_found_crit_edge, label %for.cond109.2

for.cond109.1.port_found_crit_edge:               ; preds = %for.cond109.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.2:                                    ; preds = %for.cond109.1
  %43 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resource, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 816, ptr %44, align 4
  %call115.3 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.3)
  %tobool116.not.3 = icmp eq i32 %call115.3, 0
  br i1 %tobool116.not.3, label %for.cond109.2.port_found_crit_edge, label %for.cond109.3

for.cond109.2.port_found_crit_edge:               ; preds = %for.cond109.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.3:                                    ; preds = %for.cond109.2
  %46 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resource, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 832, ptr %47, align 4
  %call115.4 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.4)
  %tobool116.not.4 = icmp eq i32 %call115.4, 0
  br i1 %tobool116.not.4, label %for.cond109.3.port_found_crit_edge, label %for.cond109.4

for.cond109.3.port_found_crit_edge:               ; preds = %for.cond109.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.4:                                    ; preds = %for.cond109.3
  %49 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resource, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 848, ptr %50, align 4
  %call115.5 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.5)
  %tobool116.not.5 = icmp eq i32 %call115.5, 0
  br i1 %tobool116.not.5, label %for.cond109.4.port_found_crit_edge, label %for.cond109.5

for.cond109.4.port_found_crit_edge:               ; preds = %for.cond109.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.5:                                    ; preds = %for.cond109.4
  %52 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %resource, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 864, ptr %53, align 4
  %call115.6 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.6)
  %tobool116.not.6 = icmp eq i32 %call115.6, 0
  br i1 %tobool116.not.6, label %for.cond109.5.port_found_crit_edge, label %for.cond109.6

for.cond109.5.port_found_crit_edge:               ; preds = %for.cond109.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.6:                                    ; preds = %for.cond109.5
  %55 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resource, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 880, ptr %56, align 4
  %call115.7 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.7)
  %tobool116.not.7 = icmp eq i32 %call115.7, 0
  br i1 %tobool116.not.7, label %for.cond109.6.port_found_crit_edge, label %for.cond109.7

for.cond109.6.port_found_crit_edge:               ; preds = %for.cond109.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.7:                                    ; preds = %for.cond109.6
  %58 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resource, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 896, ptr %59, align 4
  %call115.8 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.8)
  %tobool116.not.8 = icmp eq i32 %call115.8, 0
  br i1 %tobool116.not.8, label %for.cond109.7.port_found_crit_edge, label %for.cond109.8

for.cond109.7.port_found_crit_edge:               ; preds = %for.cond109.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.8:                                    ; preds = %for.cond109.7
  %61 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %resource, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 912, ptr %62, align 4
  %call115.9 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.9)
  %tobool116.not.9 = icmp eq i32 %call115.9, 0
  br i1 %tobool116.not.9, label %for.cond109.8.port_found_crit_edge, label %for.cond109.9

for.cond109.8.port_found_crit_edge:               ; preds = %for.cond109.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.9:                                    ; preds = %for.cond109.8
  %64 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %resource, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 928, ptr %65, align 4
  %call115.10 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.10)
  %tobool116.not.10 = icmp eq i32 %call115.10, 0
  br i1 %tobool116.not.10, label %for.cond109.9.port_found_crit_edge, label %for.cond109.10

for.cond109.9.port_found_crit_edge:               ; preds = %for.cond109.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.10:                                   ; preds = %for.cond109.9
  %67 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %resource, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 944, ptr %68, align 4
  %call115.11 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.11)
  %tobool116.not.11 = icmp eq i32 %call115.11, 0
  br i1 %tobool116.not.11, label %for.cond109.10.port_found_crit_edge, label %for.cond109.11

for.cond109.10.port_found_crit_edge:              ; preds = %for.cond109.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.11:                                   ; preds = %for.cond109.10
  %70 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %resource, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 960, ptr %71, align 4
  %call115.12 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.12)
  %tobool116.not.12 = icmp eq i32 %call115.12, 0
  br i1 %tobool116.not.12, label %for.cond109.11.port_found_crit_edge, label %for.cond109.12

for.cond109.11.port_found_crit_edge:              ; preds = %for.cond109.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.12:                                   ; preds = %for.cond109.11
  %73 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resource, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 976, ptr %74, align 4
  %call115.13 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.13)
  %tobool116.not.13 = icmp eq i32 %call115.13, 0
  br i1 %tobool116.not.13, label %for.cond109.12.port_found_crit_edge, label %for.cond109.13

for.cond109.12.port_found_crit_edge:              ; preds = %for.cond109.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.13:                                   ; preds = %for.cond109.12
  %76 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %resource, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 992, ptr %77, align 4
  %call115.14 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.14)
  %tobool116.not.14 = icmp eq i32 %call115.14, 0
  br i1 %tobool116.not.14, label %for.cond109.13.port_found_crit_edge, label %for.cond109.14

for.cond109.13.port_found_crit_edge:              ; preds = %for.cond109.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.14:                                   ; preds = %for.cond109.13
  %79 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %resource, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1008, ptr %80, align 4
  %call115.15 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.15)
  %tobool116.not.15 = icmp eq i32 %call115.15, 0
  br i1 %tobool116.not.15, label %for.cond109.14.port_found_crit_edge, label %for.cond109.15

for.cond109.14.port_found_crit_edge:              ; preds = %for.cond109.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

for.cond109.15:                                   ; preds = %for.cond109.14
  %82 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %resource, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %83, align 4
  %call124 = call i32 @pcmcia_request_io(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %for.cond109.15.port_found_crit_edge, label %for.cond109.15.config_error_crit_edge

for.cond109.15.config_error_crit_edge:            ; preds = %for.cond109.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_error

for.cond109.15.port_found_crit_edge:              ; preds = %for.cond109.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %port_found

port_found:                                       ; preds = %for.cond109.15.port_found_crit_edge, %for.cond109.14.port_found_crit_edge, %for.cond109.13.port_found_crit_edge, %for.cond109.12.port_found_crit_edge, %for.cond109.11.port_found_crit_edge, %for.cond109.10.port_found_crit_edge, %for.cond109.9.port_found_crit_edge, %for.cond109.8.port_found_crit_edge, %for.cond109.7.port_found_crit_edge, %for.cond109.6.port_found_crit_edge, %for.cond109.5.port_found_crit_edge, %for.cond109.4.port_found_crit_edge, %for.cond109.3.port_found_crit_edge, %for.cond109.2.port_found_crit_edge, %for.cond109.1.port_found_crit_edge, %for.cond109.port_found_crit_edge, %if.else104.port_found_crit_edge, %cleanup
  %call129 = call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @xirc2ps_interrupt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %port_found.config_error_crit_edge

port_found.config_error_crit_edge:                ; preds = %port_found
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_error

if.end132:                                        ; preds = %port_found
  %config_flags133 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %85 = ptrtoint ptr %config_flags133 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %config_flags133, align 4
  %or134 = or i32 %86, 1
  store i32 %or134, ptr %config_flags133, align 4
  %87 = load i32, ptr @do_sound, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool135.not = icmp eq i32 %87, 0
  br i1 %tobool135.not, label %if.end132.if.end139_crit_edge, label %if.then136

if.end132.if.end139_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %or138 = or i32 %86, 3
  %88 = ptrtoint ptr %config_flags133 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or138, ptr %config_flags133, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end132.if.end139_crit_edge
  %call140 = call i32 @pcmcia_enable_device(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.config_error_crit_edge

if.end139.config_error_crit_edge:                 ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_error

if.end143:                                        ; preds = %if.end139
  %dingo144 = getelementptr i8, ptr %1, i32 2328
  %89 = ptrtoint ptr %dingo144 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dingo144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool145.not = icmp eq i32 %90, 0
  br i1 %tobool145.not, label %if.end143.if.end240_crit_edge, label %if.then146

if.end143.if.end240_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then146:                                       ; preds = %if.end143
  %resource147 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %arrayidx148 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %91 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx148, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %conv152 = trunc i32 %94 to i8
  %call153 = call i32 @pcmcia_write_config_byte(ptr noundef %link, i32 noundef 10, i8 noundef zeroext %conv152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.then146.config_error_crit_edge

if.then146.config_error_crit_edge:                ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_error

if.end156:                                        ; preds = %if.then146
  %95 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx148, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %shr = lshr i32 %98, 8
  %conv161 = trunc i32 %shr to i8
  %call162 = call i32 @pcmcia_write_config_byte(ptr noundef %link, i32 noundef 12, i8 noundef zeroext %conv161) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.end156.config_error_crit_edge

if.end156.config_error_crit_edge:                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_error

if.end165:                                        ; preds = %if.end156
  %arrayidx167 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %99 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx167, align 4
  %flags168 = getelementptr inbounds %struct.resource, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %flags168 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 33, ptr %flags168, align 4
  %102 = load ptr, ptr %arrayidx167, align 4
  %end171 = getelementptr inbounds %struct.resource, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %end171 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %end171, align 4
  %104 = load ptr, ptr %arrayidx167, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %104, align 4
  %106 = load ptr, ptr %arrayidx167, align 4
  %call177 = call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %106, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %if.end165.config_error_crit_edge

if.end165.config_error_crit_edge:                 ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_error

if.end180:                                        ; preds = %if.end165
  %107 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx167, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %call184 = call ptr @ioremap(i32 noundef %110, i32 noundef 4096) #10
  %add.ptr = getelementptr i8, ptr %call184, i32 2048
  %111 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr, ptr %dingo_ccr, align 4
  %112 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx167, align 4
  %call188 = call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %113, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %do.body192, label %if.end180.config_error_crit_edge

if.end180.config_error_crit_edge:                 ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_error

do.body192:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  call void @arm_heavy_mb() #10
  %114 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dingo_ccr, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %115, i8 71) #10, !srcloc !309
  %116 = ptrtoint ptr %resource147 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %resource147, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  call void @arm_heavy_mb() #10
  %conv204 = trunc i32 %119 to i8
  %120 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dingo_ccr, align 4
  %add.ptr206 = getelementptr i8, ptr %121, i32 10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr206, i8 %conv204) #10, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  call void @arm_heavy_mb() #10
  %shr210 = lshr i32 %119, 8
  %conv212 = trunc i32 %shr210 to i8
  %122 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dingo_ccr, align 4
  %add.ptr214 = getelementptr i8, ptr %123, i32 12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr214, i8 %conv212) #10, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  call void @arm_heavy_mb() #10
  %124 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dingo_ccr, align 4
  %add.ptr219 = getelementptr i8, ptr %125, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr219, i8 1) #10, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  call void @arm_heavy_mb() #10
  %126 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dingo_ccr, align 4
  %add.ptr224 = getelementptr i8, ptr %127, i32 34
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr224, i8 12) #10, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @arm_heavy_mb() #10
  %128 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dingo_ccr, align 4
  %add.ptr229 = getelementptr i8, ptr %129, i32 36
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr229, i8 0) #10, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %130 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dingo_ccr, align 4
  %add.ptr234 = getelementptr i8, ptr %131, i32 38
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr234, i8 0) #10, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  call void @arm_heavy_mb() #10
  %132 = ptrtoint ptr %dingo_ccr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dingo_ccr, align 4
  %add.ptr239 = getelementptr i8, ptr %133, i32 40
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr239, i8 0) #10, !srcloc !309
  br label %if.end240

if.end240:                                        ; preds = %do.body192, %if.end143.if.end240_crit_edge
  %probe_port = getelementptr i8, ptr %1, i32 2316
  %134 = ptrtoint ptr %probe_port to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %probe_port, align 4
  %135 = load i32, ptr @if_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool241.not = icmp eq i32 %135, 0
  br i1 %tobool241.not, label %if.then242, label %if.else244

if.then242:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %136 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %if_port, align 2
  %137 = ptrtoint ptr %probe_port to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %probe_port, align 4
  br label %if.end264

if.else244:                                       ; preds = %if.end240
  %138 = add i32 %135, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %138)
  %139 = icmp ult i32 %138, 2
  br i1 %139, label %if.else244.if.then254_crit_edge, label %lor.lhs.false

if.else244.if.then254_crit_edge:                  ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then254

lor.lhs.false:                                    ; preds = %if.else244
  %mohawk = getelementptr i8, ptr %1, i32 2324
  %140 = ptrtoint ptr %mohawk to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mohawk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool250.not = icmp ne i32 %141, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %135)
  %cmp252 = icmp eq i32 %135, 4
  %or.cond388 = select i1 %tobool250.not, i1 %cmp252, i1 false
  br i1 %or.cond388, label %lor.lhs.false.if.then254_crit_edge, label %do.end260

lor.lhs.false.if.then254_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then254

if.then254:                                       ; preds = %lor.lhs.false.if.then254_crit_edge, %if.else244.if.then254_crit_edge
  %conv255 = trunc i32 %135 to i8
  %if_port256 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %142 = ptrtoint ptr %if_port256 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv255, ptr %if_port256, align 2
  br label %if.end264

do.end260:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  br label %if.end264

if.end264:                                        ; preds = %do.end260, %if.then254, %if.then242
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %143 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq, align 8
  %irq265 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %145 = ptrtoint ptr %irq265 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %irq265, align 4
  %resource266 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %146 = ptrtoint ptr %resource266 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %resource266, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %150 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %base_addr, align 32
  %151 = ptrtoint ptr %dingo144 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dingo144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool270.not = icmp eq i32 %152, 0
  br i1 %tobool270.not, label %if.end264.if.end272_crit_edge, label %if.then271

if.end264.if.end272_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end272

if.then271:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @do_reset(ptr noundef %1)
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %if.end264.if.end272_crit_edge
  %dev273 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %153 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %dev273, ptr %parent, align 8
  %call275 = call i32 @register_netdev(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.end283, label %do.end280

do.end280:                                        ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #12
  %call282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #13
  br label %config_error

if.end283:                                        ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #12
  %manf_str284 = getelementptr i8, ptr %1, i32 2348
  %154 = ptrtoint ptr %manf_str284 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %manf_str284, align 4
  %156 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %base_addr, align 32
  %158 = ptrtoint ptr %irq265 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %irq265, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %160 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef %155, i32 noundef %157, i32 noundef %159, ptr noundef %161) #13
  br label %cleanup287

config_error:                                     ; preds = %do.end280, %if.end180.config_error_crit_edge, %if.end165.config_error_crit_edge, %if.end156.config_error_crit_edge, %if.then146.config_error_crit_edge, %if.end139.config_error_crit_edge, %port_found.config_error_crit_edge, %for.cond109.15.config_error_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_release.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_config, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !306

if.then.i:                                        ; preds = %config_error
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xirc2ps_release.__UNIQUE_ID_ddebug357, ptr noundef %dev.i, ptr noundef nonnull @.str.117) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %config_error
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %162 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool3.not.i = icmp eq i32 %165, 0
  br i1 %tobool3.not.i, label %do.end.i.xirc2ps_release.exit_crit_edge, label %if.then4.i

do.end.i.xirc2ps_release.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xirc2ps_release.exit

if.then4.i:                                       ; preds = %do.end.i
  %166 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %priv, align 8
  %dingo.i = getelementptr i8, ptr %167, i32 2328
  %168 = ptrtoint ptr %dingo.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dingo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool7.not.i = icmp eq i32 %169, 0
  br i1 %tobool7.not.i, label %if.then4.i.xirc2ps_release.exit_crit_edge, label %if.then8.i

if.then4.i.xirc2ps_release.exit_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xirc2ps_release.exit

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %dingo_ccr.i = getelementptr i8, ptr %167, i32 2340
  %170 = ptrtoint ptr %dingo_ccr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dingo_ccr.i, align 4
  %add.ptr.i383 = getelementptr i8, ptr %171, i32 -2048
  call void @iounmap(ptr noundef %add.ptr.i383) #10
  br label %xirc2ps_release.exit

xirc2ps_release.exit:                             ; preds = %if.then8.i, %if.then4.i.xirc2ps_release.exit_crit_edge, %do.end.i.xirc2ps_release.exit_crit_edge
  call void @pcmcia_disable_device(ptr noundef %link) #10
  br label %cleanup287

cleanup287:                                       ; preds = %xirc2ps_release.exit, %if.end283, %do.end79, %do.end52, %do.end24, %do.end9
  %retval.0 = phi i32 [ -19, %xirc2ps_release.exit ], [ 0, %if.end283 ], [ -19, %do.end79 ], [ -19, %do.end52 ], [ -19, %do.end24 ], [ -19, %do.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_open.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_open, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_open.__UNIQUE_ID_ddebug375, ptr noundef %dev4, ptr noundef nonnull @.str.6, ptr noundef %dev) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call fastcc void @do_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %p_dev = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_stop.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_stop, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_stop.__UNIQUE_ID_ddebug380, ptr noundef %dev4, ptr noundef nonnull @.str.24, ptr noundef %dev) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  tail call void @arm_heavy_mb() #10
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %6 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void @arm_heavy_mb() #10
  %and17 = and i32 %1, 1048575
  %add18 = or i32 %and17, -18874368
  %7 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 1) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void @arm_heavy_mb() #10
  %add30 = add i32 %1, 12
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %8 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 4) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @arm_heavy_mb() #10
  %add44 = add i32 %1, 9
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %9 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #10, !srcloc !309
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 23
  %10 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %open, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %open, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -19, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_start_xmit.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_start_xmit, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_start_xmit.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.27, ptr noundef %skb, ptr noundef %dev, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp = icmp ult i32 %3, 60
  br i1 %cmp, label %if.then4, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %do.end
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %5)
  %cmp.i = icmp ugt i32 %5, 59
  br i1 %cmp.i, label %if.then4.if.end9_crit_edge, label %skb_padto.exit, !prof !324

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

skb_padto.exit:                                   ; preds = %if.then4
  %sub.i = sub nuw nsw i32 60, %5
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %skb_padto.exit.if.end9_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

skb_padto.exit.if.end9_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %skb_padto.exit.if.end9_crit_edge, %if.then4.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %pktlen.0 = phi i32 [ %3, %do.end.if.end9_crit_edge ], [ 60, %skb_padto.exit.if.end9_crit_edge ], [ 60, %if.then4.if.end9_crit_edge ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  tail call void @arm_heavy_mb() #10
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add13 = or i32 %and, -18874368
  %8 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %pktlen.0 to i16
  %conv20 = add i16 %conv, 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %add21 = add i32 %1, 10
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %10 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %9) #10, !srcloc !327
  %add25 = add i32 %1, 8
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %11 = inttoptr i32 %add27 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #10, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  %13 = and i16 %12, -129
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %and33 = zext i16 %14 to i32
  %add34 = add i32 %pktlen.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %and33)
  %cmp35 = icmp ult i32 %add34, %and33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_start_xmit.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_start_xmit, %if.then49)) #10
          to label %do.end53 [label %if.then49], !srcloc !306

if.then49:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %cmp35, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_start_xmit.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.29, ptr noundef %dev, i32 noundef %and33, ptr noundef nonnull %cond) #10
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %if.end9
  br i1 %cmp35, label %do.body57, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body57:                                        ; preds = %do.end53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  tail call void @arm_heavy_mb() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %add61 = add i32 %1, 4
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %16 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 %15) #10, !srcloc !327
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %shr = lshr i32 %pktlen.0, 1
  tail call void @__raw_writesw(ptr noundef nonnull %16, ptr noundef %18, i32 noundef %shr) #10
  %and69 = and i32 %pktlen.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body57.if.end80_crit_edge, label %do.body72

do.body57.if.end80_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

do.body72:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %sub = add i32 %pktlen.0, -1
  %arrayidx = getelementptr i8, ptr %20, i32 %sub
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %22) #10, !srcloc !309
  br label %if.end80

if.end80:                                         ; preds = %do.body72, %do.body57.if.end80_crit_edge
  %mohawk = getelementptr i8, ptr %dev, i32 2324
  %23 = ptrtoint ptr %mohawk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mohawk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool81.not = icmp eq i32 %24, 0
  br i1 %tobool81.not, label %if.end80.if.end90_crit_edge, label %do.body83

if.end80.if.end90_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

do.body83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %and87 = and i32 %1, 1048575
  %add88 = or i32 %and87, -18874368
  %25 = inttoptr i32 %add88 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 5) #10, !srcloc !309
  br label %if.end90

if.end90:                                         ; preds = %do.body83, %if.end80.if.end90_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %26 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_bytes, align 4
  %add91 = add i32 %27, %pktlen.0
  store i32 %add91, ptr %tx_bytes, align 4
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i130 = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i130) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end53.cleanup_crit_edge, %skb_padto.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end90 ], [ 0, %skb_padto.exit.cleanup_crit_edge ], [ 16, %do.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  tail call void @arm_heavy_mb() #10
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 66) #10, !srcloc !309
  %add2 = add i32 %1, 9
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %3 = inttoptr i32 %add4 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  %5 = and i8 %4, -64
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.else, label %do.body9

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  tail call void @arm_heavy_mb() #10
  %8 = or i8 %5, 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %8) #10, !srcloc !309
  br label %do.body86

if.else:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp = icmp slt i32 %10, 10
  %and19 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond = select i1 %cmp, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %if.else31, label %do.body22

do.body22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  tail call void @arm_heavy_mb() #10
  %or25 = or i8 %5, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %or25) #10, !srcloc !309
  br label %do.body86

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp34 = icmp eq i32 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp34, label %do.body75, label %do.body37

do.body37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  %or40 = or i8 %5, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %or40) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 64) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  tail call void @arm_heavy_mb() #10
  %add56 = add i32 %1, 8
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %11 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -128) #10, !srcloc !309
  tail call fastcc void @set_addresses(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 64) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 36) #10, !srcloc !309
  br label %do.body86

do.body75:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %5) #10, !srcloc !309
  br label %do.body86

do.body86:                                        ; preds = %do.body75, %do.body37, %do.body22, %do.body9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !342
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #10, !srcloc !309
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_ioctl.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_ioctl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ifr_ifru.i, align 2
  %conv = zext i16 %3 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_num, align 2
  %conv6 = zext i16 %5 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val_in, align 2
  %conv7 = zext i16 %7 to i32
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %8 = ptrtoint ptr %val_out to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %val_out, align 2
  %conv8 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_ioctl.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.34, ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mohawk = getelementptr i8, ptr %dev, i32 2324
  %10 = ptrtoint ptr %mohawk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mohawk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %cmd, label %if.end11.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %if.end11.sw.bb13_crit_edge
    i32 35145, label %sw.bb24
  ]

if.end11.sw.bb13_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %ifr_ifru.i, align 2
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb, %if.end11.sw.bb13_crit_edge
  %14 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ifr_ifru.i, align 2
  %16 = trunc i16 %15 to i8
  %conv16 = and i8 %16, 31
  %reg_num17 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg_num17 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg_num17, align 2
  %19 = trunc i16 %18 to i8
  %conv20 = and i8 %19, 31
  %call21 = tail call fastcc i32 @mii_rd(i32 noundef %1, i8 noundef zeroext %conv16, i8 noundef zeroext %conv20)
  %conv22 = trunc i32 %call21 to i16
  %val_out23 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %20 = ptrtoint ptr %val_out23 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv22, ptr %val_out23, align 2
  br label %cleanup

sw.bb24:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ifr_ifru.i, align 2
  %23 = trunc i16 %22 to i8
  %conv28 = and i8 %23, 31
  %reg_num29 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %24 = ptrtoint ptr %reg_num29 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %reg_num29, align 2
  %26 = trunc i16 %25 to i8
  %conv32 = and i8 %26, 31
  %val_in33 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %val_in33 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %val_in33, align 2
  %conv34 = zext i16 %28 to i32
  tail call fastcc void @mii_wr(i32 noundef %1, i8 noundef zeroext %conv28, i8 noundef zeroext %conv32, i32 noundef %conv34)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %sw.bb13, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end.cleanup_crit_edge ], [ -95, %if.end11.cleanup_crit_edge ], [ 0, %sw.bb24 ], [ 0, %sw.bb13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_config(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_config.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_config, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_config.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.37, ptr noundef %dev) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port = getelementptr inbounds %struct.ifmap, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp8.not = icmp eq i8 %1, %3
  br i1 %cmp8.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp13 = icmp ugt i8 %1, 4
  br i1 %cmp13, label %if.then10.cleanup_crit_edge, label %if.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool18.not = icmp eq i8 %1, 0
  %probe_port = getelementptr i8, ptr %dev, i32 2316
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %probe_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %probe_port, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %probe_port to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %probe_port, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %storemerge = phi i8 [ 1, %if.then19 ], [ %7, %if.else ]
  %8 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge, ptr %if_port, align 2
  %idxprom = zext i8 %storemerge to i32
  %arrayidx = getelementptr [5 x ptr], ptr @if_names, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %10) #13
  tail call fastcc void @do_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then10.cleanup_crit_edge ], [ 0, %if.end24 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xirc_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  %tx_timeout_task = getelementptr i8, ptr %dev, i32 2352
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %tx_timeout_task) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_reset.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_reset, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_reset.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef %dev, i32 noundef 1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  tail call void @arm_heavy_mb() #10
  %add.i = add i32 %3, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  tail call void @arm_heavy_mb() #10
  %add6.i = add i32 %3, 9
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %6 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #10, !srcloc !309
  tail call void @msleep(i32 noundef 40) #10
  %mohawk.i = getelementptr i8, ptr %dev, i32 2324
  %7 = ptrtoint ptr %mohawk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mohawk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %do.body17.i, label %do.body10.i

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 1) #10, !srcloc !309
  br label %hardreset.exit

do.body17.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 5) #10, !srcloc !309
  br label %hardreset.exit

hardreset.exit:                                   ; preds = %do.body17.i, %do.body10.i
  tail call void @msleep(i32 noundef 20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !345
  tail call void @arm_heavy_mb() #10
  %and = and i32 %1, 1048575
  %add7 = or i32 %and, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 2) #10, !srcloc !309
  tail call void @msleep(i32 noundef 20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #10, !srcloc !309
  tail call void @msleep(i32 noundef 40) #10
  %10 = ptrtoint ptr %mohawk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mohawk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %hardreset.exit.if.end32_crit_edge, label %do.body18

hardreset.exit.if.end32_crit_edge:                ; preds = %hardreset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body18:                                        ; preds = %hardreset.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  tail call void @arm_heavy_mb() #10
  %add21 = add i32 %1, 1
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %12 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 4) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  tail call void @arm_heavy_mb() #10
  %add28 = add i32 %1, 8
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %13 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 14) #10, !srcloc !309
  br label %if.end32

if.end32:                                         ; preds = %do.body18, %hardreset.exit.if.end32_crit_edge
  tail call void @msleep(i32 noundef 500) #10
  %last_ptr_value = getelementptr i8, ptr %dev, i32 2344
  %14 = ptrtoint ptr %last_ptr_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %last_ptr_value, align 4
  %15 = ptrtoint ptr %mohawk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mohawk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool34.not = icmp eq i32 %16, 0
  %add43 = add i32 %1, 10
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %17 = inttoptr i32 %add45 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %19 = lshr i8 %18, 4
  %. = select i1 %tobool34.not, i8 3, i8 7
  %20 = and i8 %19, %.
  %cond = zext i8 %20 to i32
  %silicon = getelementptr i8, ptr %dev, i32 2320
  %21 = ptrtoint ptr %silicon to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %silicon, align 4
  %probe_port = getelementptr i8, ptr %dev, i32 2316
  %22 = ptrtoint ptr %probe_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %probe_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool52.not = icmp eq i32 %23, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end32
  %24 = ptrtoint ptr %mohawk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mohawk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool55.not = icmp eq i32 %25, 0
  br i1 %tobool55.not, label %do.body57, label %if.then53.if.end106_crit_edge

if.then53.if.end106_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i32 %1, 1
  %.pre13 = and i32 %.pre, 1048575
  %.pre14 = or i32 %.pre13, -18874368
  %.pre15 = inttoptr i32 %.pre14 to ptr
  br label %if.end106

do.body57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @arm_heavy_mb() #10
  %add60 = add i32 %1, 1
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %26 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  tail call void @arm_heavy_mb() #10
  %add67 = add i32 %1, 8
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %27 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 4) #10, !srcloc !309
  %28 = ptrtoint ptr %probe_port to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %probe_port, align 4
  br label %if.end106

if.else:                                          ; preds = %if.end32
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %29 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp = icmp eq i8 %30, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %add79 = add i32 %1, 1
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %31 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 66) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %add86 = add i32 %1, 9
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %32 = inttoptr i32 %add88 to ptr
  br i1 %cmp, label %do.body76, label %do.body91

do.body76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 -64) #10, !srcloc !309
  br label %if.end106

do.body91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 -128) #10, !srcloc !309
  br label %if.end106

if.end106:                                        ; preds = %do.body91, %do.body76, %do.body57, %if.then53.if.end106_crit_edge
  %.pre-phi = phi ptr [ %.pre15, %if.then53.if.end106_crit_edge ], [ %31, %do.body76 ], [ %31, %do.body91 ], [ %26, %do.body57 ]
  tail call void @msleep(i32 noundef 40) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 1) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @arm_heavy_mb() #10
  %add117 = add i32 %1, 12
  %and118 = and i32 %add117, 1048575
  %add119 = or i32 %and118, -18874368
  %33 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 -1) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  tail call void @arm_heavy_mb() #10
  %add124 = add i32 %1, 13
  %and125 = and i32 %add124, 1048575
  %add126 = or i32 %and125, -18874368
  %34 = inttoptr i32 %add126 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 1) #10, !srcloc !309
  %add129 = add i32 %1, 14
  %and130 = and i32 %add129, 1048575
  %add131 = or i32 %and130, -18874368
  %35 = inttoptr i32 %add131 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_reset.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_reset, %if.then148)) #10
          to label %do.body154 [label %if.then148], !srcloc !306

if.then148:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %conv135 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_reset.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.11, ptr noundef %dev, i32 noundef %conv135) #10
  br label %do.body154

do.body154:                                       ; preds = %if.then148, %if.end106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 66) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  tail call void @arm_heavy_mb() #10
  %add164 = add i32 %1, 8
  %and165 = and i32 %add164, 1048575
  %add166 = or i32 %and165, -18874368
  %37 = inttoptr i32 %add166 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 32) #10, !srcloc !309
  %38 = ptrtoint ptr %silicon to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %silicon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp169.not = icmp eq i32 %39, 1
  br i1 %cmp169.not, label %do.body154.if.then188_crit_edge, label %do.body172

do.body154.if.then188_crit_edge:                  ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then188

do.body172:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 2) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 32) #10, !srcloc !327
  br label %if.then188

if.then188:                                       ; preds = %do.body172, %do.body154.if.then188_crit_edge
  tail call fastcc void @set_addresses(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 32) #10, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 64) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -1) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -1) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  tail call void @arm_heavy_mb() #10
  %add228 = add i32 %1, 15
  %and229 = and i32 %add228, 1048575
  %add230 = or i32 %and229, -18874368
  %40 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -80) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  tail call void @arm_heavy_mb() #10
  %add235 = add i32 %1, 9
  %and236 = and i32 %add235, 1048575
  %add237 = or i32 %and236, -18874368
  %41 = inttoptr i32 %add237 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  tail call void @arm_heavy_mb() #10
  %add242 = add i32 %1, 11
  %and243 = and i32 %add242, 1048575
  %add244 = or i32 %and243, -18874368
  %42 = inttoptr i32 %add244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #10, !srcloc !309
  %43 = ptrtoint ptr %mohawk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mohawk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool255.not = icmp eq i32 %44, 0
  br i1 %tobool255.not, label %if.then188.do.body341_crit_edge, label %land.lhs.true256

if.then188.do.body341_crit_edge:                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body341

land.lhs.true256:                                 ; preds = %if.then188
  %45 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_addr, align 32
  %47 = load i32, ptr @if_port, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %47, label %if.end.i [
    i32 4, label %land.lhs.true256.if.then.i_crit_edge
    i32 1, label %land.lhs.true256.if.then.i_crit_edge17
  ]

land.lhs.true256.if.then.i_crit_edge17:           ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true256.if.then.i_crit_edge:             ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true256.if.then.i_crit_edge, %land.lhs.true256.if.then.i_crit_edge17
  %conv.i = trunc i32 %47 to i8
  %if_port.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %49 = ptrtoint ptr %if_port.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i, ptr %if_port.i, align 2
  %50 = ptrtoint ptr %probe_port to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %probe_port, align 4
  br label %if.then259

if.end.i:                                         ; preds = %land.lhs.true256
  %call2.i = tail call fastcc i32 @mii_rd(i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %and.i5 = and i32 %call2.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 30720, i32 %and.i5)
  %cmp3.not.i = icmp eq i32 %and.i5, 30720
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.do.body341_crit_edge

if.end.i.do.body341_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body341

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call fastcc i32 @mii_rd(i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call7.i)
  %cmp8.i = icmp ne i32 %call7.i, 65535
  %conv9.i = zext i1 %cmp8.i to i32
  %new_mii.i = getelementptr i8, ptr %dev, i32 2332
  %51 = ptrtoint ptr %new_mii.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv9.i, ptr %new_mii.i, align 4
  %52 = ptrtoint ptr %probe_port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %probe_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i6 = icmp eq i32 %53, 0
  br i1 %tobool.not.i6, label %if.else.i, label %if.end6.i.if.end19.i_crit_edge

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %if_port12.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %54 = ptrtoint ptr %if_port12.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %if_port12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp14.i = icmp eq i8 %55, 4
  %..i = select i1 %cmp14.i, i32 8192, i32 0
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.end6.i.if.end19.i_crit_edge
  %control.0.i = phi i32 [ 4096, %if.end6.i.if.end19.i_crit_edge ], [ %..i, %if.else.i ]
  tail call fastcc void @mii_wr(i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %control.0.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 21474800) #10
  %call20.i = tail call fastcc i32 @mii_rd(i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %and21.i = and i32 %call20.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end25.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  %57 = ptrtoint ptr %probe_port to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %probe_port, align 4
  br label %do.body341

if.end25.i:                                       ; preds = %if.end19.i
  %58 = ptrtoint ptr %probe_port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %probe_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool27.not.i = icmp eq i32 %59, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.then259_crit_edge, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  br label %for.body.i

if.end25.i.if.then259_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then259

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end25.i.for.body.i_crit_edge
  %i.0103.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end25.i.for.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 100) #10
  %call31.i = tail call fastcc i32 @mii_rd(i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  %60 = and i32 %call31.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %60)
  %.not.i = icmp eq i32 %60, 36
  %inc.i = add nuw nsw i32 %i.0103.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 35
  %or.cond.i = select i1 %.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %and38.i = and i32 %call31.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.else58.i

if.then40.i:                                      ; preds = %for.end.i
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  %61 = ptrtoint ptr %new_mii.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %new_mii.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool42.not.i = icmp eq i32 %62, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.then40.i.if.then259_crit_edge

if.then40.i.if.then259_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then259

if.then43.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mii_wr(i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  tail call void @arm_heavy_mb() #10
  %add.i7 = add i32 %46, 1
  %and44.i = and i32 %add.i7, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %64 = inttoptr i32 %add45.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 0) #10, !srcloc !309
  %and48.i = and i32 %46, 1048575
  %add49.i = or i32 %and48.i, -18874368
  %65 = inttoptr i32 %add49.i to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  %67 = and i8 %66, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool54.not.i = icmp eq i8 %67, 0
  %conv55.i = select i1 %tobool54.not.i, i8 2, i8 1
  %if_port56.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %68 = ptrtoint ptr %if_port56.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv55.i, ptr %if_port56.i, align 2
  br label %if.then259

if.else58.i:                                      ; preds = %for.end.i
  %call59.i = tail call fastcc i32 @mii_rd(i32 noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 5) #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call59.i) #13
  %and60.i = and i32 %call59.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  %if_port65.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  br i1 %tobool61.not.i, label %if.else64.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %if_port65.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %if_port65.i, align 2
  br label %if.then259

if.else64.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %if_port65.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %if_port65.i, align 2
  br label %if.then259

if.then259:                                       ; preds = %if.else64.i, %if.then62.i, %if.then43.i, %if.then40.i.if.then259_crit_edge, %if.end25.i.if.then259_crit_edge, %if.then.i
  %if_port260 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %71 = ptrtoint ptr %if_port260 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %if_port260, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %72)
  %cmp262 = icmp eq i8 %72, 4
  br i1 %cmp262, label %if.then259.if.then267_crit_edge, label %lor.lhs.false

if.then259.if.then267_crit_edge:                  ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then267

lor.lhs.false:                                    ; preds = %if.then259
  %dingo = getelementptr i8, ptr %dev, i32 2328
  %73 = ptrtoint ptr %dingo to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dingo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool264.not = icmp eq i32 %74, 0
  br i1 %tobool264.not, label %lor.lhs.false265, label %lor.lhs.false.if.then267_crit_edge

lor.lhs.false.if.then267_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then267

lor.lhs.false265:                                 ; preds = %lor.lhs.false
  %new_mii = getelementptr i8, ptr %dev, i32 2332
  %75 = ptrtoint ptr %new_mii to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %new_mii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool266.not = icmp eq i32 %76, 0
  br i1 %tobool266.not, label %if.else291, label %lor.lhs.false265.if.then267_crit_edge

lor.lhs.false265.if.then267_crit_edge:            ; preds = %lor.lhs.false265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then267

if.then267:                                       ; preds = %lor.lhs.false265.if.then267_crit_edge, %lor.lhs.false.if.then267_crit_edge, %if.then259.if.then267_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 2) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  %78 = or i8 %77, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %78) #10, !srcloc !309
  br label %if.end320

if.else291:                                       ; preds = %lor.lhs.false265
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 66) #10, !srcloc !309
  %79 = ptrtoint ptr %if_port260 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %if_port260, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %80)
  %cmp301 = icmp eq i8 %80, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %cmp301, label %do.body304, label %do.body312

do.body304:                                       ; preds = %if.else291
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -64) #10, !srcloc !309
  br label %if.end320

do.body312:                                       ; preds = %if.else291
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -128) #10, !srcloc !309
  br label %if.end320

if.end320:                                        ; preds = %do.body312, %do.body304, %if.then267
  %.sink16 = phi i32 [ 20, %if.then267 ], [ 40, %do.body312 ], [ 40, %do.body304 ]
  tail call void @msleep(i32 noundef %.sink16) #10
  %81 = load i32, ptr @full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool321.not = icmp eq i32 %81, 0
  br i1 %tobool321.not, label %if.end320.do.body362_crit_edge, label %do.body323

if.end320.do.body362_crit_edge:                   ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body362

do.body323:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %82) #10, !srcloc !309
  br label %do.body362

do.body341:                                       ; preds = %if.then23.i, %if.end.i.do.body341_crit_edge, %if.then188.do.body341_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 0) #10, !srcloc !309
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  %84 = and i8 %83, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool357.not = icmp eq i8 %84, 0
  %conv359 = select i1 %tobool357.not, i8 2, i8 1
  %if_port360 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %85 = ptrtoint ptr %if_port360 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv359, ptr %if_port360, align 2
  br label %do.body362

do.body362:                                       ; preds = %do.body341, %do.body323, %if.end320.do.body362_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 2) #10, !srcloc !309
  %if_port369 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %86 = ptrtoint ptr %if_port369 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %if_port369, align 2
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %87, label %do.body387 [
    i8 1, label %do.body362.do.body379_crit_edge
    i8 4, label %do.body362.do.body379_crit_edge18
  ]

do.body362.do.body379_crit_edge18:                ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body379

do.body362.do.body379_crit_edge:                  ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body379

do.body379:                                       ; preds = %do.body362.do.body379_crit_edge, %do.body362.do.body379_crit_edge18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  tail call void @arm_heavy_mb() #10
  %add382 = add i32 %1, 10
  %and383 = and i32 %add382, 1048575
  %add384 = or i32 %and383, -18874368
  %89 = inttoptr i32 %add384 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 59) #10, !srcloc !309
  br label %if.end394

do.body387:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  tail call void @arm_heavy_mb() #10
  %add390 = add i32 %1, 10
  %and391 = and i32 %add390, 1048575
  %add392 = or i32 %and391, -18874368
  %90 = inttoptr i32 %add392 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 58) #10, !srcloc !309
  br label %if.end394

if.end394:                                        ; preds = %do.body387, %do.body379
  %dingo395 = getelementptr i8, ptr %dev, i32 2328
  %91 = ptrtoint ptr %dingo395 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dingo395, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool396.not = icmp eq i32 %92, 0
  br i1 %tobool396.not, label %if.end394.if.then407_crit_edge, label %do.body398

if.end394.if.then407_crit_edge:                   ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then407

do.body398:                                       ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 4) #10, !srcloc !309
  br label %if.then407

if.then407:                                       ; preds = %do.body398, %if.end394.if.then407_crit_edge
  tail call void @set_multicast_list(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !382
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 64) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 36) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 1) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !385
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 -1) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !386
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 4) #10, !srcloc !309
  %modem = getelementptr i8, ptr %dev, i32 2336
  %94 = ptrtoint ptr %modem to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %modem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool451.not = icmp eq i32 %95, 0
  br i1 %tobool451.not, label %if.then407.if.then477_crit_edge, label %land.lhs.true452

if.then407.if.then477_crit_edge:                  ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then477

land.lhs.true452:                                 ; preds = %if.then407
  %96 = ptrtoint ptr %dingo395 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dingo395, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool454.not = icmp eq i32 %97, 0
  br i1 %tobool454.not, label %if.then455, label %land.lhs.true452.if.then477_crit_edge

land.lhs.true452.if.then477_crit_edge:            ; preds = %land.lhs.true452
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then477

if.then455:                                       ; preds = %land.lhs.true452
  %add457 = add i32 %1, 16
  %and458 = and i32 %add457, 1048575
  %add459 = or i32 %and458, -18874368
  %98 = inttoptr i32 %add459 to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !388
  %100 = and i8 %99, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool465.not = icmp eq i8 %100, 0
  br i1 %tobool465.not, label %do.body467, label %if.then455.if.then477_crit_edge

if.then455.if.then477_crit_edge:                  ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then477

do.body467:                                       ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 17) #10, !srcloc !309
  br label %if.then477

if.then477:                                       ; preds = %do.body467, %if.then455.if.then477_crit_edge, %land.lhs.true452.if.then477_crit_edge, %if.then407.if.then477_crit_edge
  %101 = ptrtoint ptr %if_port369 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %if_port369, align 2
  %idxprom = zext i8 %102 to i32
  %arrayidx = getelementptr [5 x ptr], ptr @if_names, i32 0, i32 %idxprom
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx, align 4
  %105 = ptrtoint ptr %silicon to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %silicon, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %104, i32 noundef %106) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !390
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 0) #10, !srcloc !309
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_addresses(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %mohawk = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %mohawk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mohawk, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %add.i = add i32 %1, 1
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add5.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %sa_info.sroa.22.0 = phi i32 [ 79, %entry ], [ %sa_info.sroa.22.1, %for.inc.i.for.body.i_crit_edge ]
  %sa_info.sroa.0.0 = phi i32 [ 16, %entry ], [ %sa_info.sroa.0.2, %for.inc.i.for.body.i_crit_edge ]
  %i.041.i = phi i32 [ 0, %entry ], [ %inc27.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sa_info.sroa.0.0)
  %cmp2.i = icmp sgt i32 %sa_info.sroa.0.0, 15
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %sa_info.sroa.22.0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  tail call void @arm_heavy_mb() #10
  %conv.i = trunc i32 %inc.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv.i) #10, !srcloc !309
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %sa_info.sroa.22.1 = phi i32 [ %inc.i, %if.then.i ], [ %sa_info.sroa.22.0, %for.body.i.if.end.i_crit_edge ]
  %sa_info.sroa.0.1 = phi i32 [ 8, %if.then.i ], [ %sa_info.sroa.0.0, %for.body.i.if.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %do.body16.i, label %do.body7.i

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub nuw nsw i32 5, %i.041.i
  %arrayidx.i = getelementptr i8, ptr %5, i32 %sub.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %add12.i = add i32 %sa_info.sroa.0.1, %1
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %9 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %8) #10, !srcloc !309
  br label %for.inc.i

do.body16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19.i = getelementptr i8, ptr %5, i32 %i.041.i
  %10 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19.i, align 1
  %add22.i = add i32 %sa_info.sroa.0.1, %1
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %12 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %11) #10, !srcloc !309
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body16.i, %do.body7.i
  %sa_info.sroa.0.2 = add nsw i32 %sa_info.sroa.0.1, 1
  %inc27.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, 6
  br i1 %exitcond.not.i, label %set_address.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

set_address.exit:                                 ; preds = %for.inc.i
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %13 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0105 = load ptr, ptr %mc, align 4
  %cmp.not106 = icmp eq ptr %ha.0105, %mc
  br i1 %cmp.not106, label %set_address.exit.while.body.preheader_crit_edge, label %set_address.exit.for.body_crit_edge

set_address.exit.for.body_crit_edge:              ; preds = %set_address.exit
  br label %for.body

set_address.exit.while.body.preheader_crit_edge:  ; preds = %set_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader

for.cond.loopexit:                                ; preds = %for.inc.i55
  %14 = ptrtoint ptr %ha.0110 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0 = load ptr, ptr %ha.0110, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.end, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %set_address.exit.for.body_crit_edge
  %ha.0110 = phi ptr [ %ha.0, %for.cond.loopexit.for.body_crit_edge ], [ %ha.0105, %set_address.exit.for.body_crit_edge ]
  %i.0109 = phi i32 [ %inc, %for.cond.loopexit.for.body_crit_edge ], [ 0, %set_address.exit.for.body_crit_edge ]
  %sa_info.sroa.0.3108 = phi i32 [ %sa_info.sroa.0.6, %for.cond.loopexit.for.body_crit_edge ], [ %sa_info.sroa.0.2, %set_address.exit.for.body_crit_edge ]
  %sa_info.sroa.22.2107 = phi i32 [ %sa_info.sroa.22.4, %for.cond.loopexit.for.body_crit_edge ], [ %sa_info.sroa.22.1, %set_address.exit.for.body_crit_edge ]
  %inc = add nuw nsw i32 %i.0109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0109)
  %cmp6 = icmp eq i32 %i.0109, 9
  br i1 %cmp6, label %for.body.do.body_crit_edge, label %if.end

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %for.body
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0110, i32 0, i32 2
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.inc.i55.for.body.i34_crit_edge, %if.end
  %sa_info.sroa.22.3 = phi i32 [ %sa_info.sroa.22.2107, %if.end ], [ %sa_info.sroa.22.4, %for.inc.i55.for.body.i34_crit_edge ]
  %sa_info.sroa.0.4 = phi i32 [ %sa_info.sroa.0.3108, %if.end ], [ %sa_info.sroa.0.6, %for.inc.i55.for.body.i34_crit_edge ]
  %i.041.i32 = phi i32 [ 0, %if.end ], [ %inc27.i53, %for.inc.i55.for.body.i34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sa_info.sroa.0.4)
  %cmp2.i33 = icmp sgt i32 %sa_info.sroa.0.4, 15
  br i1 %cmp2.i33, label %if.then.i37, label %for.body.i34.if.end.i39_crit_edge

for.body.i34.if.end.i39_crit_edge:                ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i39

if.then.i37:                                      ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i35 = add i32 %sa_info.sroa.22.3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  tail call void @arm_heavy_mb() #10
  %conv.i36 = trunc i32 %inc.i35 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv.i36) #10, !srcloc !309
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i37, %for.body.i34.if.end.i39_crit_edge
  %sa_info.sroa.22.4 = phi i32 [ %inc.i35, %if.then.i37 ], [ %sa_info.sroa.22.3, %for.body.i34.if.end.i39_crit_edge ]
  %sa_info.sroa.0.5 = phi i32 [ 8, %if.then.i37 ], [ %sa_info.sroa.0.4, %for.body.i34.if.end.i39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %do.body16.i52, label %do.body7.i46

do.body7.i46:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i40 = sub nuw nsw i32 5, %i.041.i32
  %arrayidx.i41 = getelementptr i8, ptr %addr, i32 %sub.i40
  %15 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i41, align 1
  %add12.i43 = add i32 %sa_info.sroa.0.5, %1
  %and13.i44 = and i32 %add12.i43, 1048575
  %add14.i45 = or i32 %and13.i44, -18874368
  %17 = inttoptr i32 %add14.i45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %16) #10, !srcloc !309
  br label %for.inc.i55

do.body16.i52:                                    ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19.i47 = getelementptr i8, ptr %addr, i32 %i.041.i32
  %18 = ptrtoint ptr %arrayidx19.i47 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19.i47, align 1
  %add22.i49 = add i32 %sa_info.sroa.0.5, %1
  %and23.i50 = and i32 %add22.i49, 1048575
  %add24.i51 = or i32 %and23.i50, -18874368
  %20 = inttoptr i32 %add24.i51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %19) #10, !srcloc !309
  br label %for.inc.i55

for.inc.i55:                                      ; preds = %do.body16.i52, %do.body7.i46
  %sa_info.sroa.0.6 = add nsw i32 %sa_info.sroa.0.5, 1
  %inc27.i53 = add nuw nsw i32 %i.041.i32, 1
  %exitcond.not.i54 = icmp eq i32 %inc27.i53, 6
  br i1 %exitcond.not.i54, label %for.cond.loopexit, label %for.inc.i55.for.body.i34_crit_edge

for.inc.i55.for.body.i34_crit_edge:               ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i34

for.end:                                          ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0109)
  %cmp13116 = icmp ult i32 %i.0109, 8
  br i1 %cmp13116, label %for.end.while.body.preheader_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end.while.body.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.end.while.body.preheader_crit_edge, %set_address.exit.while.body.preheader_crit_edge
  %i.2119.ph = phi i32 [ 0, %set_address.exit.while.body.preheader_crit_edge ], [ %inc, %for.end.while.body.preheader_crit_edge ]
  %sa_info.sroa.0.7118.ph = phi i32 [ %sa_info.sroa.0.2, %set_address.exit.while.body.preheader_crit_edge ], [ %sa_info.sroa.0.6, %for.end.while.body.preheader_crit_edge ]
  %sa_info.sroa.22.5117.ph = phi i32 [ %sa_info.sroa.22.1, %set_address.exit.while.body.preheader_crit_edge ], [ %sa_info.sroa.22.4, %for.end.while.body.preheader_crit_edge ]
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc.i86
  %inc12 = add nuw nsw i32 %i.2119, 1
  %exitcond.not = icmp eq i32 %inc12, 9
  br i1 %exitcond.not, label %while.cond.loopexit.do.body_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.loopexit.do.body_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.preheader
  %i.2119 = phi i32 [ %inc12, %while.cond.loopexit.while.body_crit_edge ], [ %i.2119.ph, %while.body.preheader ]
  %sa_info.sroa.0.7118 = phi i32 [ %sa_info.sroa.0.10, %while.cond.loopexit.while.body_crit_edge ], [ %sa_info.sroa.0.7118.ph, %while.body.preheader ]
  %sa_info.sroa.22.5117 = phi i32 [ %sa_info.sroa.22.7, %while.cond.loopexit.while.body_crit_edge ], [ %sa_info.sroa.22.5117.ph, %while.body.preheader ]
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.inc.i86.for.body.i65_crit_edge, %while.body
  %sa_info.sroa.22.6 = phi i32 [ %sa_info.sroa.22.5117, %while.body ], [ %sa_info.sroa.22.7, %for.inc.i86.for.body.i65_crit_edge ]
  %sa_info.sroa.0.8 = phi i32 [ %sa_info.sroa.0.7118, %while.body ], [ %sa_info.sroa.0.10, %for.inc.i86.for.body.i65_crit_edge ]
  %i.041.i63 = phi i32 [ 0, %while.body ], [ %inc27.i84, %for.inc.i86.for.body.i65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sa_info.sroa.0.8)
  %cmp2.i64 = icmp sgt i32 %sa_info.sroa.0.8, 15
  br i1 %cmp2.i64, label %if.then.i68, label %for.body.i65.if.end.i70_crit_edge

for.body.i65.if.end.i70_crit_edge:                ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i70

if.then.i68:                                      ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i66 = add i32 %sa_info.sroa.22.6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  tail call void @arm_heavy_mb() #10
  %conv.i67 = trunc i32 %inc.i66 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv.i67) #10, !srcloc !309
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then.i68, %for.body.i65.if.end.i70_crit_edge
  %sa_info.sroa.22.7 = phi i32 [ %inc.i66, %if.then.i68 ], [ %sa_info.sroa.22.6, %for.body.i65.if.end.i70_crit_edge ]
  %sa_info.sroa.0.9 = phi i32 [ 8, %if.then.i68 ], [ %sa_info.sroa.0.8, %for.body.i65.if.end.i70_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %do.body16.i83, label %do.body7.i77

do.body7.i77:                                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i71 = sub nuw nsw i32 5, %i.041.i63
  %arrayidx.i72 = getelementptr i8, ptr %22, i32 %sub.i71
  %23 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i72, align 1
  %add12.i74 = add i32 %sa_info.sroa.0.9, %1
  %and13.i75 = and i32 %add12.i74, 1048575
  %add14.i76 = or i32 %and13.i75, -18874368
  %25 = inttoptr i32 %add14.i76 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %24) #10, !srcloc !309
  br label %for.inc.i86

do.body16.i83:                                    ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19.i78 = getelementptr i8, ptr %22, i32 %i.041.i63
  %26 = ptrtoint ptr %arrayidx19.i78 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx19.i78, align 1
  %add22.i80 = add i32 %sa_info.sroa.0.9, %1
  %and23.i81 = and i32 %add22.i80, 1048575
  %add24.i82 = or i32 %and23.i81, -18874368
  %28 = inttoptr i32 %add24.i82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %27) #10, !srcloc !309
  br label %for.inc.i86

for.inc.i86:                                      ; preds = %do.body16.i83, %do.body7.i77
  %sa_info.sroa.0.10 = add nsw i32 %sa_info.sroa.0.9, 1
  %inc27.i84 = add nuw nsw i32 %i.041.i63, 1
  %exitcond.not.i85 = icmp eq i32 %inc27.i84, 6
  br i1 %exitcond.not.i85, label %while.cond.loopexit, label %for.inc.i86.for.body.i65_crit_edge

for.inc.i86.for.body.i65_crit_edge:               ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i65

do.body:                                          ; preds = %while.cond.loopexit.do.body_crit_edge, %for.end.do.body_crit_edge, %for.body.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !392
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #10, !srcloc !309
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mii_rd(i32 noundef %ioaddr, i8 noundef zeroext %phyaddr, i8 noundef zeroext %phyreg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  tail call void @arm_heavy_mb() #10
  %add = add i32 %ioaddr, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #10, !srcloc !309
  %add10.i = add i32 %ioaddr, 13
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %1 = inttoptr i32 %add12.i to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 14) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 15) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef 6, i32 noundef 4)
  %conv = zext i8 %phyaddr to i32
  tail call fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef %conv, i32 noundef 5)
  %conv2 = zext i8 %phyreg to i32
  tail call fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef %conv2, i32 noundef 5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 4) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 4) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #10
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.end
  %m.034 = phi i32 [ 32768, %for.end ], [ %shr, %for.body5.for.body5_crit_edge ]
  %data.033 = phi i32 [ 0, %for.end ], [ %spec.select, %for.body5.for.body5_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 4) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #10
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #10
  %12 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  %or = select i1 %tobool7.not, i32 0, i32 %m.034
  %spec.select = or i32 %or, %data.033
  %shr = lshr i32 %m.034, 1
  %tobool.not = icmp ult i32 %m.034, 2
  br i1 %tobool.not, label %for.end9, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.end9:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 4) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mii_wr(i32 noundef %ioaddr, i8 noundef zeroext %phyaddr, i8 noundef zeroext %phyreg, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  tail call void @arm_heavy_mb() #10
  %add = add i32 %ioaddr, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #10, !srcloc !309
  %add10.i = add i32 %ioaddr, 13
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %1 = inttoptr i32 %add12.i to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 14) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 15) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef 5, i32 noundef 4)
  %conv = zext i8 %phyaddr to i32
  tail call fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef %conv, i32 noundef 5)
  %conv2 = zext i8 %phyreg to i32
  tail call fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef %conv2, i32 noundef 5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 14) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 15) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 12) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 13) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  tail call fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef %data, i32 noundef 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 4) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 5) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mii_wbits(i32 noundef %ioaddr, i32 noundef %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, -1
  %shl = shl nuw i32 1, %sub
  %add10.i = add i32 %ioaddr, 13
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %0 = inttoptr i32 %add12.i to ptr
  br label %for.body

for.body:                                         ; preds = %mii_putbit.exit.for.body_crit_edge, %entry
  %m.03 = phi i32 [ %shl, %entry ], [ %shr, %mii_putbit.exit.for.body_crit_edge ]
  %and = and i32 %m.03, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 14) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 15) #10, !srcloc !309
  br label %mii_putbit.exit

do.body8.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 12) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 13) #10, !srcloc !309
  br label %mii_putbit.exit

mii_putbit.exit:                                  ; preds = %do.body8.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  %shr = lshr i32 %m.03, 1
  %tobool.not = icmp ult i32 %m.03, 2
  br i1 %tobool.not, label %for.end, label %mii_putbit.exit.for.body_crit_edge

mii_putbit.exit.for.body_crit_edge:               ; preds = %mii_putbit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %mii_putbit.exit
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %1)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_card_type(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !307
  %call1 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext 32, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp = icmp ult i32 %call1, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.69) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %4, i32 3
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %arrayidx5 = getelementptr i8, ptr %4, i32 4
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_card_type.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_card_type, %if.then11)) #10
          to label %do.end15 [label %if.then11], !srcloc !306

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %6 to i32
  %dev12 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_card_type.__UNIQUE_ID_ddebug354, ptr noundef %dev12, ptr noundef nonnull @.str.73, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %if.end
  %mohawk = getelementptr i8, ptr %1, i32 2324
  %11 = ptrtoint ptr %mohawk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mohawk, align 4
  %dingo = getelementptr i8, ptr %1, i32 2328
  %12 = ptrtoint ptr %dingo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dingo, align 4
  %modem = getelementptr i8, ptr %1, i32 2336
  %13 = ptrtoint ptr %modem to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %modem, align 4
  %card_type = getelementptr i8, ptr %1, i32 2312
  %14 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %card_type, align 4
  %and = and i32 %conv6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #13
  br label %cleanup

if.end23:                                         ; preds = %do.end15
  %and24 = and i32 %conv4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %and33 = and i32 %conv4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end32
  %15 = ptrtoint ptr %modem to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %modem, align 4
  %and37 = and i32 %conv6, 15
  %16 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %and37, label %if.then35.if.end63thread-pre-split_crit_edge [
    i32 1, label %if.end63.thread128
    i32 2, label %sw.bb39
    i32 3, label %sw.bb41
    i32 4, label %sw.bb43
    i32 5, label %sw.bb45
    i32 6, label %if.then35.sw.bb48_crit_edge
    i32 7, label %if.then35.sw.bb48_crit_edge129
  ]

if.then35.sw.bb48_crit_edge129:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

if.then35.sw.bb48_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

if.then35.if.end63thread-pre-split_crit_edge:     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63thread-pre-split

if.end63.thread128:                               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %card_type, align 4
  br label %do.end73

sw.bb39:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %card_type, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %card_type, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %card_type, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %card_type, align 4
  %22 = ptrtoint ptr %mohawk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %mohawk, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.then35.sw.bb48_crit_edge, %if.then35.sw.bb48_crit_edge129
  %23 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 9, ptr %card_type, align 4
  %24 = ptrtoint ptr %mohawk to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %mohawk, align 4
  %25 = ptrtoint ptr %dingo to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %dingo, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end32
  %and52 = and i32 %conv6, 15
  %26 = zext i32 %and52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %and52, label %if.else.if.end63thread-pre-split_crit_edge [
    i32 1, label %sw.bb53
    i32 2, label %sw.bb57
    i32 3, label %sw.bb59
  ]

if.else.if.end63thread-pre-split_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63thread-pre-split

sw.bb53:                                          ; preds = %if.else
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 19, i32 2
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %sw.bb53._crit_edge, label %land.lhs.true.i

sw.bb53._crit_edge:                               ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %29

land.lhs.true.i:                                  ; preds = %sw.bb53
  %call.i = call ptr @strstr(ptr noundef nonnull %28, ptr noundef nonnull @.str.86) #10
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %land.lhs.true.i._crit_edge, label %land.lhs.true.i.has_ce2_string.exit_crit_edge

land.lhs.true.i.has_ce2_string.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %has_ce2_string.exit

land.lhs.true.i._crit_edge:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %29

29:                                               ; preds = %land.lhs.true.i._crit_edge, %sw.bb53._crit_edge
  br label %has_ce2_string.exit

has_ce2_string.exit:                              ; preds = %29, %land.lhs.true.i.has_ce2_string.exit_crit_edge
  %30 = phi i32 [ 1, %29 ], [ 2, %land.lhs.true.i.has_ce2_string.exit_crit_edge ]
  %31 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %card_type, align 4
  br label %if.end63

sw.bb57:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %card_type, align 4
  br label %cleanup

sw.bb59:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %card_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %card_type, align 4
  %34 = ptrtoint ptr %mohawk to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %mohawk, align 4
  br label %cleanup

if.end63thread-pre-split:                         ; preds = %if.else.if.end63thread-pre-split_crit_edge, %if.then35.if.end63thread-pre-split_crit_edge
  %35 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %card_type, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63thread-pre-split, %has_ce2_string.exit
  %36 = phi i32 [ %.pr, %if.end63thread-pre-split ], [ %30, %has_ce2_string.exit ]
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %36, label %if.end63.cleanup_crit_edge [
    i32 1, label %if.end63.do.end73_crit_edge
    i32 4, label %if.end63.do.end73_crit_edge130
    i32 0, label %do.end83
  ]

if.end63.do.end73_crit_edge130:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.end63.do.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end73:                                         ; preds = %if.end63.do.end73_crit_edge, %if.end63.do.end73_crit_edge130, %if.end63.thread128
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #13
  br label %cleanup

do.end83:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv4, i32 noundef %conv6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %do.end73, %if.end63.cleanup_crit_edge, %sw.bb59, %sw.bb57, %sw.bb48, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %do.end29, %do.end20, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end73 ], [ 0, %do.end29 ], [ 0, %do.end20 ], [ 1, %if.end63.cleanup_crit_edge ], [ 1, %do.end83 ], [ 1, %sw.bb57 ], [ 1, %sw.bb59 ], [ 1, %sw.bb39 ], [ 1, %sw.bb41 ], [ 1, %sw.bb43 ], [ 1, %sw.bb45 ], [ 1, %sw.bb48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_mac_from_cis(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_tuple(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_tuple(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_get_mac_ce(ptr nocapture noundef readnone %p_dev, ptr nocapture noundef readonly %tuple, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %TupleDataLen = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 9
  %0 = ptrtoint ptr %TupleDataLen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TupleDataLen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %1)
  %cmp.not = icmp eq i8 %1, 13
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %TupleData = getelementptr inbounds %struct.tuple_t, ptr %tuple, i32 0, i32 10
  %2 = ptrtoint ptr %TupleData to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %TupleData, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp3.not = icmp eq i8 %5, 2
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx6 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp8.not = icmp eq i8 %7, 1
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp14.not = icmp eq i8 %9, 6
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %priv, i32 noundef 2, ptr noundef %arrayidx12, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xirc2ps_config_modem(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %end, align 4
  %arrayidx4 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %end5 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %end5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %end5, align 4
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and8 = and i32 %11, -25
  store i32 %and8, ptr %flags, align 4
  %12 = load ptr, ptr %resource, align 4
  %flags11 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags11, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %flags11, align 4
  %15 = load ptr, ptr %arrayidx4, align 4
  %flags14 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags14, align 4
  %and15 = and i32 %17, -25
  store i32 %and15, ptr %flags14, align 4
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %18 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10, ptr %io_lines, align 4
  %19 = load ptr, ptr %resource, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = load ptr, ptr %arrayidx4, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %22, align 4
  %24 = load ptr, ptr %resource, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 768, ptr %24, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resource, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 784, ptr %27, align 4
  %call.1 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %29 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resource, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 800, ptr %30, align 4
  %call.2 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %32 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resource, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 816, ptr %33, align 4
  %call.3 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %35 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resource, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 832, ptr %36, align 4
  %call.4 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %38 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 848, ptr %39, align 4
  %call.5 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %41 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 864, ptr %42, align 4
  %call.6 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %44 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resource, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 880, ptr %45, align 4
  %call.7 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %47 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resource, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 896, ptr %48, align 4
  %call.8 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %50 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 912, ptr %51, align 4
  %call.9 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %53 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resource, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 928, ptr %54, align 4
  %call.10 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %for.cond.9.cleanup_crit_edge, label %for.cond.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %56 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resource, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 944, ptr %57, align 4
  %call.11 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %tobool.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool.not.11, label %for.cond.10.cleanup_crit_edge, label %for.cond.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %59 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %resource, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 960, ptr %60, align 4
  %call.12 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %tobool.not.12 = icmp eq i32 %call.12, 0
  br i1 %tobool.not.12, label %for.cond.11.cleanup_crit_edge, label %for.cond.12

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %62 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resource, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 976, ptr %63, align 4
  %call.13 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13)
  %tobool.not.13 = icmp eq i32 %call.13, 0
  br i1 %tobool.not.13, label %for.cond.12.cleanup_crit_edge, label %for.cond.13

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %65 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %resource, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 992, ptr %66, align 4
  %call.14 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14)
  %tobool.not.14 = icmp eq i32 %call.14, 0
  br i1 %tobool.not.14, label %for.cond.13.cleanup_crit_edge, label %for.cond.14

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %resource, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1008, ptr %69, align 4
  %call.15 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.15)
  %tobool.not.15 = icmp eq i32 %call.15, 0
  %spec.select = select i1 %tobool.not.15, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %for.cond.14, %for.cond.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ 0, %for.cond.7.cleanup_crit_edge ], [ 0, %for.cond.8.cleanup_crit_edge ], [ 0, %for.cond.9.cleanup_crit_edge ], [ 0, %for.cond.10.cleanup_crit_edge ], [ 0, %for.cond.11.cleanup_crit_edge ], [ 0, %for.cond.12.cleanup_crit_edge ], [ 0, %for.cond.13.cleanup_crit_edge ], [ %spec.select, %for.cond.14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xirc2ps_config_check(ptr noundef %p_dev, ptr nocapture noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and10 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and10)
  %cmp = icmp eq i32 %and10, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %config_index2 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %6 = ptrtoint ptr %config_index2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config_index2, align 4
  %and3 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, i32 -24, i32 8
  %cond = select i1 %tobool4.not, i32 8, i32 -24
  %cond6 = select i1 %tobool.not, i32 %cond5, i32 %cond
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %cond6, %11
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 18, ptr %end, align 4
  %13 = load ptr, ptr %arrayidx, align 4
  %end15 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %end15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %end15, align 4
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and18 = and i32 %18, -25
  store i32 %and18, ptr %flags, align 4
  %19 = load ptr, ptr %resource, align 4
  %flags21 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags21, align 4
  %or = or i32 %21, 8
  store i32 %or, ptr %flags21, align 4
  %22 = load ptr, ptr %arrayidx, align 4
  %flags24 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags24, align 4
  %and25 = and i32 %24, -25
  store i32 %and25, ptr %flags24, align 4
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %25 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %io_lines, align 4
  %26 = load ptr, ptr %resource, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  %31 = load ptr, ptr %resource, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %31, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xirc2ps_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %mohawk = getelementptr i8, ptr %dev_id, i32 2324
  %6 = ptrtoint ptr %mohawk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mohawk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.do.body6_crit_edge, label %do.body

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  tail call void @arm_heavy_mb() #10
  %and = and i32 %5, 1048575
  %add3 = or i32 %and, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #10, !srcloc !309
  br label %do.body6

do.body6:                                         ; preds = %do.body, %if.end.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then11)) #10
          to label %do.end14 [label %if.then11], !srcloc !306

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.89, ptr noundef %dev_id, i32 noundef %irq, i32 noundef %5) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body6
  %add15 = add i32 %5, 1
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %9 = inttoptr i32 %add17 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  %add23 = add i32 %5, 6
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %11 = inttoptr i32 %add25 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  %and53 = and i32 %5, 1048575
  %add54 = or i32 %and53, -18874368
  %13 = inttoptr i32 %add54 to ptr
  %add67 = add i32 %5, 9
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %14 = inttoptr i32 %add69 to ptr
  %add84 = add i32 %5, 11
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %15 = inttoptr i32 %add86 to ptr
  %add92 = add i32 %5, 12
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %16 = inttoptr i32 %add94 to ptr
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %add175 = add i32 %5, 14
  %and176 = and i32 %add175, 1048575
  %add177 = or i32 %and176, -18874368
  %17 = inttoptr i32 %add177 to ptr
  %silicon = getelementptr i8, ptr %dev_id, i32 2320
  %add268 = add i32 %5, 4
  %and269 = and i32 %add268, 1048575
  %add270 = or i32 %and269, -18874368
  %18 = inttoptr i32 %add270 to ptr
  %add218 = add i32 %5, 10
  %and219 = and i32 %add218, 1048575
  %add220 = or i32 %and219, -18874368
  %19 = inttoptr i32 %add220 to ptr
  %stats278 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 8
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 13
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 12
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 11
  %last_ptr_value = getelementptr i8, ptr %dev_id, i32 2344
  %add428 = add i32 %5, 13
  %and429 = and i32 %add428, 1048575
  %add430 = or i32 %and429, -18874368
  %20 = inttoptr i32 %add430 to ptr
  %tx_packets465 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 16
  br label %loop_entry

loop_entry:                                       ; preds = %land.lhs.true569.loop_entry_crit_edge, %do.end14
  %int_status.0.in = phi i8 [ %12, %do.end14 ], [ %79, %land.lhs.true569.loop_entry_crit_edge ]
  %bytes_rcvd.0 = phi i32 [ 0, %do.end14 ], [ %bytes_rcvd.3, %land.lhs.true569.loop_entry_crit_edge ]
  %int_status.0 = zext i8 %int_status.0.in to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %int_status.0.in)
  %cmp = icmp eq i8 %int_status.0.in, -1
  br i1 %cmp, label %do.body32, label %if.end50

do.body32:                                        ; preds = %loop_entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %leave.thread)) #10
          to label %leave [label %leave.thread], !srcloc !306

leave.thread:                                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.91, ptr noundef %dev_id, i32 noundef %irq) #10
  br label %do.body583

if.end50:                                         ; preds = %loop_entry
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  %conv58 = zext i8 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 64) #10, !srcloc !309
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  %conv73 = zext i8 %22 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !408
  tail call void @arm_heavy_mb() #10
  %and77 = xor i8 %22, -1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %and77) #10, !srcloc !309
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !409
  %conv90 = zext i8 %23 to i32
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !411
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !412
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #10, !srcloc !309
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then125)) #10
          to label %do.body131 [label %if.then125], !srcloc !306

if.then125:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %conv98 = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv98, 8
  %or = or i32 %shl, %conv90
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.93, ptr noundef %dev_id, i32 noundef %int_status.0, i32 noundef %conv58, i32 noundef %conv73, i32 noundef %or) #10
  br label %do.body131

do.body131:                                       ; preds = %if.then125, %if.end50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !413
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #10, !srcloc !309
  %and138781 = and i32 %conv58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138781)
  %tobool139.not782 = icmp eq i32 %and138781, 0
  br i1 %tobool139.not782, label %do.body131.while.end_crit_edge, label %do.body131.while.body_crit_edge

do.body131.while.body_crit_edge:                  ; preds = %do.body131
  br label %while.body

do.body131.while.end_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %do.body380.while.body_crit_edge, %do.body131.while.body_crit_edge
  %bytes_rcvd.1783 = phi i32 [ %bytes_rcvd.2, %do.body380.while.body_crit_edge ], [ %bytes_rcvd.0, %do.body131.while.body_crit_edge ]
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  %conv147 = zext i8 %25 to i32
  %26 = load i32, ptr @maxrx_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_rcvd.1783, i32 %26)
  %cmp148 = icmp ule i32 %bytes_rcvd.1783, %26
  %and150 = and i32 %conv147, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %or.cond = select i1 %cmp148, i1 true, i1 %tobool151.not
  br i1 %or.cond, label %if.else, label %if.then152

if.then152:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %rx_dropped, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then165)) #10
          to label %if.end307 [label %if.then165], !srcloc !306

if.then165:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.95, ptr noundef %dev_id) #10
  br label %if.end307

if.else:                                          ; preds = %while.body
  br i1 %tobool151.not, label %do.body290, label %if.then173

if.then173:                                       ; preds = %if.else
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %17) #10, !srcloc !328
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  %conv181 = zext i16 %30 to i32
  %add182 = add i32 %bytes_rcvd.1783, %conv181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then195)) #10
          to label %do.end198 [label %if.then195], !srcloc !306

if.then195:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.97, i32 noundef %conv147, i32 noundef %conv181) #10
  br label %do.end198

do.end198:                                        ; preds = %if.then195, %if.then173
  %add199 = add nuw nsw i32 %conv181, 3
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_id, i32 noundef %add199, i32 noundef 2592) #10
  %tobool201.not = icmp eq ptr %call.i, null
  br i1 %tobool201.not, label %if.then202, label %if.else206

if.then202:                                       ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_dropped, align 8
  %inc205 = add i32 %32, 1
  store i32 %inc205, ptr %rx_dropped, align 8
  br label %if.end307

if.else206:                                       ; preds = %do.end198
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %add.ptr.i760 = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr.i760, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %36, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %37 = ptrtoint ptr %silicon to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %silicon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp207 = icmp eq i32 %38, 0
  br i1 %cmp207, label %if.then209, label %if.else267

if.then209:                                       ; preds = %if.else206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 5) #10, !srcloc !309
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %19) #10, !srcloc !328
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !417
  %conv224 = zext i16 %40 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !418
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #10, !srcloc !309
  %add232 = add nuw nsw i32 %conv224, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 32764, i16 %40)
  %cmp233 = icmp ugt i16 %40, 32764
  %spec.store.select608 = select i1 %cmp233, i32 0, i32 %add232
  %add237 = add nuw nsw i32 %spec.store.select608, %conv181
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add237)
  %cmp238 = icmp ugt i32 %add237, 32768
  %call241 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv181) #10
  br i1 %cmp238, label %if.then240, label %if.then209.if.end275.sink.split_crit_edge

if.then209.if.end275.sink.split_crit_edge:        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275.sink.split

if.then240:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp242778.not = icmp eq i16 %29, 0
  br i1 %cmp242778.not, label %if.then240.if.end275_crit_edge, label %if.then240.for.body_crit_edge

if.then240.for.body_crit_edge:                    ; preds = %if.then240
  br label %for.body

if.then240.if.end275_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then240.for.body_crit_edge
  %rhsa.0780 = phi i32 [ %inc258, %for.body.for.body_crit_edge ], [ %spec.store.select608, %if.then240.for.body_crit_edge ]
  %i.0779 = phi i32 [ %inc257, %for.body.for.body_crit_edge ], [ 0, %if.then240.for.body_crit_edge ]
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  %arrayidx = getelementptr i8, ptr %call241, i32 %i.0779
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %rhsa.0780)
  %cmp253 = icmp eq i32 %rhsa.0780, 32768
  %dec = sext i1 %cmp253 to i32
  %spec.select = add nuw i32 %i.0779, 1
  %inc257 = add i32 %spec.select, %dec
  %rhsa.0.op = add i32 %rhsa.0780, 1
  %inc258 = select i1 %cmp253, i32 1, i32 %rhsa.0.op
  %cmp242 = icmp ult i32 %inc257, %conv181
  br i1 %cmp242, label %for.body.for.body_crit_edge, label %for.body.if.end275_crit_edge

for.body.if.end275_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else267:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #12
  %call272 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv181) #10
  br label %if.end275.sink.split

if.end275.sink.split:                             ; preds = %if.else267, %if.then209.if.end275.sink.split_crit_edge
  %call241.sink = phi ptr [ %call272, %if.else267 ], [ %call241, %if.then209.if.end275.sink.split_crit_edge ]
  %add265 = add nuw nsw i32 %conv181, 1
  %shr = lshr i32 %add265, 1
  tail call void @__raw_readsw(ptr noundef nonnull %18, ptr noundef %call241.sink, i32 noundef %shr) #10
  br label %if.end275

if.end275:                                        ; preds = %if.end275.sink.split, %for.body.if.end275_crit_edge, %if.then240.if.end275_crit_edge
  %call276 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev_id) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %43 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %call276, ptr %protocol, align 8
  %call277 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #10
  %44 = ptrtoint ptr %stats278 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stats278, align 8
  %inc279 = add i32 %45, 1
  store i32 %inc279, ptr %stats278, align 8
  %46 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_bytes, align 8
  %add281 = add i32 %47, %conv181
  store i32 %add281, ptr %rx_bytes, align 8
  %and282 = and i32 %conv147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %if.then284, label %if.end275.if.end307_crit_edge

if.end275.if.end307_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307

if.then284:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %multicast, align 8
  %inc286 = add i32 %49, 1
  store i32 %inc286, ptr %multicast, align 8
  br label %if.end307

do.body290:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then302)) #10
          to label %if.end307 [label %if.then302], !srcloc !306

if.then302:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.99, i32 noundef %conv147) #10
  br label %if.end307

if.end307:                                        ; preds = %if.then302, %do.body290, %if.then284, %if.end275.if.end307_crit_edge, %if.then202, %if.then165, %if.then152
  %bytes_rcvd.2 = phi i32 [ %bytes_rcvd.1783, %if.then165 ], [ %bytes_rcvd.1783, %if.then302 ], [ %add182, %if.end275.if.end307_crit_edge ], [ %add182, %if.then284 ], [ %add182, %if.then202 ], [ %bytes_rcvd.1783, %if.then152 ], [ %bytes_rcvd.1783, %do.body290 ]
  %and308 = and i32 %conv147, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and308)
  %tobool309.not = icmp eq i32 %and308, 0
  br i1 %tobool309.not, label %if.end307.if.end331_crit_edge, label %if.then310

if.end307.if.end331_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end331

if.then310:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_frame_errors, align 4
  %inc312 = add i32 %51, 1
  store i32 %inc312, ptr %rx_frame_errors, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then325)) #10
          to label %if.end331 [label %if.then325], !srcloc !306

if.then325:                                       ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.101, ptr noundef %dev_id) #10
  br label %if.end331

if.end331:                                        ; preds = %if.then325, %if.then310, %if.end307.if.end331_crit_edge
  %and332 = and i32 %conv147, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and332)
  %tobool333.not = icmp eq i32 %and332, 0
  br i1 %tobool333.not, label %if.end331.if.end355_crit_edge, label %if.then334

if.end331.if.end355_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end355

if.then334:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_crc_errors, align 8
  %inc336 = add i32 %53, 1
  store i32 %inc336, ptr %rx_crc_errors, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then349)) #10
          to label %if.end355 [label %if.then349], !srcloc !306

if.then349:                                       ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.103, ptr noundef %dev_id) #10
  br label %if.end355

if.end355:                                        ; preds = %if.then349, %if.then334, %if.end331.if.end355_crit_edge
  %and356 = and i32 %conv147, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356)
  %tobool357.not = icmp eq i32 %and356, 0
  br i1 %tobool357.not, label %if.end355.do.body380_crit_edge, label %if.then358

if.end355.do.body380_crit_edge:                   ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body380

if.then358:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_fifo_errors, align 8
  %inc360 = add i32 %55, 1
  store i32 %inc360, ptr %rx_fifo_errors, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then373)) #10
          to label %do.body380 [label %if.then373], !srcloc !306

if.then373:                                       ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.105, ptr noundef %dev_id) #10
  br label %do.body380

do.body380:                                       ; preds = %if.then373, %if.then358, %if.end355.do.body380_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 128) #10, !srcloc !327
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !421
  %57 = and i8 %56, 1
  %tobool139.not = icmp eq i8 %57, 0
  br i1 %tobool139.not, label %do.body380.while.end_crit_edge, label %do.body380.while.body_crit_edge

do.body380.while.body_crit_edge:                  ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.body380.while.end_crit_edge:                   ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.body380.while.end_crit_edge, %do.body131.while.end_crit_edge
  %bytes_rcvd.1.lcssa = phi i32 [ %bytes_rcvd.0, %do.body131.while.end_crit_edge ], [ %bytes_rcvd.2, %do.body380.while.end_crit_edge ]
  %and395 = and i32 %conv73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and395)
  %tobool396.not = icmp eq i32 %and395, 0
  br i1 %tobool396.not, label %while.end.if.end423_crit_edge, label %if.then397

while.end.if.end423_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end423

if.then397:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_over_errors, align 4
  %inc399 = add i32 %59, 1
  store i32 %inc399, ptr %rx_over_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 32) #10, !srcloc !309
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then419)) #10
          to label %if.end423 [label %if.then419], !srcloc !306

if.then419:                                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.107) #10
  br label %if.end423

if.end423:                                        ; preds = %if.then419, %if.then397, %while.end.if.end423_crit_edge
  %and424 = and i32 %int_status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and424)
  %tobool425.not = icmp eq i32 %and424, 0
  br i1 %tobool425.not, label %if.end423.if.end469_crit_edge, label %if.then426

if.end423.if.end469_crit_edge:                    ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end469

if.then426:                                       ; preds = %if.end423
  %60 = ptrtoint ptr %last_ptr_value to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_ptr_value, align 4
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !423
  %conv434 = zext i8 %62 to i32
  %63 = ptrtoint ptr %last_ptr_value to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv434, ptr %last_ptr_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv434)
  %cmp436 = icmp ugt i32 %61, %conv434
  br i1 %cmp436, label %if.then438, label %if.else441

if.then438:                                       ; preds = %if.then426
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 256, %61
  %64 = ptrtoint ptr %tx_packets465 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_packets465, align 4
  %add440 = add i32 %sub, %65
  store i32 %add440, ptr %tx_packets465, align 4
  br label %if.end468

if.else441:                                       ; preds = %if.then426
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv434)
  %cmp442 = icmp eq i32 %61, %conv434
  br i1 %cmp442, label %do.body445, label %if.else461

do.body445:                                       ; preds = %if.else441
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then457)) #10
          to label %if.end468 [label %if.then457], !srcloc !306

if.then457:                                       ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.109) #10
  br label %if.end468

if.else461:                                       ; preds = %if.else441
  call void @__sanitizer_cov_trace_pc() #12
  %sub463 = sub i32 %conv434, %61
  %66 = ptrtoint ptr %tx_packets465 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_packets465, align 4
  %add466 = add i32 %sub463, %67
  store i32 %add466, ptr %tx_packets465, align 4
  br label %if.end468

if.end468:                                        ; preds = %if.else461, %if.then457, %do.body445, %if.then438
  %68 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %69) #10
  br label %if.end469

if.end469:                                        ; preds = %if.end468, %if.end423.if.end469_crit_edge
  %and470 = and i32 %conv90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and470)
  %tobool471.not = icmp eq i32 %and470, 0
  br i1 %tobool471.not, label %if.end469.if.end496_crit_edge, label %do.body473

if.end469.if.end496_crit_edge:                    ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end496

do.body473:                                       ; preds = %if.end469
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then485)) #10
          to label %do.body489 [label %if.then485], !srcloc !306

if.then485:                                       ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.111) #10
  br label %do.body489

do.body489:                                       ; preds = %if.then485, %do.body473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !424
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 64) #10, !srcloc !309
  br label %if.end496

if.end496:                                        ; preds = %do.body489, %if.end469.if.end496_crit_edge
  %and497 = and i32 %conv90, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and497)
  %tobool498.not = icmp eq i32 %and497, 0
  br i1 %tobool498.not, label %if.end496.if.end502_crit_edge, label %if.then499

if.end496.if.end502_crit_edge:                    ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end502

if.then499:                                       ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_aborted_errors, align 8
  %inc501 = add i32 %71, 1
  store i32 %inc501, ptr %tx_aborted_errors, align 8
  br label %if.end502

if.end502:                                        ; preds = %if.then499, %if.end496.if.end502_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %bytes_rcvd.1.lcssa)
  %cmp503 = icmp ugt i32 %bytes_rcvd.1.lcssa, 1000
  br i1 %cmp503, label %if.then505, label %if.end502.leave_crit_edge

if.end502.leave_crit_edge:                        ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then505:                                       ; preds = %if.end502
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub506 = sub i32 %72, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub506)
  %cmp507 = icmp ugt i32 %sub506, 9
  br i1 %cmp507, label %if.then509, label %if.else535

if.then509:                                       ; preds = %if.then505
  %mul = mul i32 %bytes_rcvd.1.lcssa, 10
  %div = udiv i32 %mul, %sub506
  store i32 %div, ptr @maxrx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %div)
  %cmp510 = icmp ult i32 %div, 2000
  br i1 %cmp510, label %if.then509.do.body519.sink.split_crit_edge, label %if.else513

if.then509.do.body519.sink.split_crit_edge:       ; preds = %if.then509
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body519.sink.split

if.else513:                                       ; preds = %if.then509
  call void @__sanitizer_cov_trace_const_cmp4(i32 22000, i32 %div)
  %cmp514 = icmp ugt i32 %div, 22000
  br i1 %cmp514, label %if.else513.do.body519.sink.split_crit_edge, label %if.else513.do.body519_crit_edge

if.else513.do.body519_crit_edge:                  ; preds = %if.else513
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body519

if.else513.do.body519.sink.split_crit_edge:       ; preds = %if.else513
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body519.sink.split

do.body519.sink.split:                            ; preds = %if.else513.do.body519.sink.split_crit_edge, %if.then509.do.body519.sink.split_crit_edge
  %.sink = phi i32 [ 2000, %if.then509.do.body519.sink.split_crit_edge ], [ 22000, %if.else513.do.body519.sink.split_crit_edge ]
  store i32 %.sink, ptr @maxrx_bytes, align 4
  br label %do.body519

do.body519:                                       ; preds = %do.body519.sink.split, %if.else513.do.body519_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then531)) #10
          to label %leave [label %if.then531], !srcloc !306

if.then531:                                       ; preds = %do.body519
  call void @__sanitizer_cov_trace_pc() #12
  %73 = load i32, ptr @maxrx_bytes, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.113, i32 noundef %73, i32 noundef %bytes_rcvd.1.lcssa, i32 noundef %sub506) #10
  br label %leave

if.else535:                                       ; preds = %if.then505
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %0)
  %tobool536.not = icmp eq i32 %72, %0
  br i1 %tobool536.not, label %land.lhs.true537, label %if.else535.leave_crit_edge

if.else535.leave_crit_edge:                       ; preds = %if.else535
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

land.lhs.true537:                                 ; preds = %if.else535
  %74 = load i32, ptr @maxrx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22000, i32 %74)
  %cmp538 = icmp ult i32 %74, 22000
  br i1 %cmp538, label %if.then540, label %land.lhs.true537.leave_crit_edge

land.lhs.true537.leave_crit_edge:                 ; preds = %land.lhs.true537
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then540:                                       ; preds = %land.lhs.true537
  call void @__sanitizer_cov_trace_pc() #12
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 20000)
  %76 = add nuw nsw i32 %75, 2000
  store i32 %76, ptr @maxrx_bytes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xirc2ps_interrupt, %if.then558)) #10
          to label %leave [label %if.then558], !srcloc !306

if.then558:                                       ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #12
  %77 = load i32, ptr @maxrx_bytes, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xirc2ps_interrupt.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.115, i32 noundef %77) #10
  br label %leave

leave:                                            ; preds = %if.then558, %if.then540, %land.lhs.true537.leave_crit_edge, %if.else535.leave_crit_edge, %if.then531, %do.body519, %if.end502.leave_crit_edge, %do.body32
  %bytes_rcvd.3 = phi i32 [ %bytes_rcvd.1.lcssa, %if.end502.leave_crit_edge ], [ %bytes_rcvd.1.lcssa, %if.else535.leave_crit_edge ], [ %bytes_rcvd.1.lcssa, %land.lhs.true537.leave_crit_edge ], [ %bytes_rcvd.1.lcssa, %if.then558 ], [ %bytes_rcvd.1.lcssa, %if.then531 ], [ %bytes_rcvd.0, %do.body32 ], [ %bytes_rcvd.1.lcssa, %do.body519 ], [ %bytes_rcvd.1.lcssa, %if.then540 ]
  %78 = load i32, ptr @lockup_hack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool565.not = icmp eq i32 %78, 0
  %or.cond720 = select i1 %tobool565.not, i1 true, i1 %cmp
  br i1 %or.cond720, label %leave.do.body583_crit_edge, label %land.lhs.true569

leave.do.body583_crit_edge:                       ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body583

land.lhs.true569:                                 ; preds = %leave
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #10, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !425
  %cmp578.not = icmp eq i8 %79, 0
  br i1 %cmp578.not, label %land.lhs.true569.do.body583_crit_edge, label %land.lhs.true569.loop_entry_crit_edge

land.lhs.true569.loop_entry_crit_edge:            ; preds = %land.lhs.true569
  call void @__sanitizer_cov_trace_pc() #12
  br label %loop_entry

land.lhs.true569.do.body583_crit_edge:            ; preds = %land.lhs.true569
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body583

do.body583:                                       ; preds = %land.lhs.true569.do.body583_crit_edge, %leave.do.body583_crit_edge, %leave.thread
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !426
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %10) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 4) #10, !srcloc !309
  br label %cleanup

cleanup:                                          ; preds = %do.body583, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_powerdown(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_powerdown.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_powerdown, %if.then)) #10
          to label %do.body3 [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_powerdown.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.122, ptr noundef %dev) #10
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !428
  tail call void @arm_heavy_mb() #10
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %2 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !429
  tail call void @arm_heavy_mb() #10
  %add11 = add i32 %1, 9
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %3 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 0) #10, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !430
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #10, !srcloc !309
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !164, !165, !166, !167, !168, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !265, !267, !269, !271, !273, !275, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @__UNIQUE_ID_description345, !1, !"__UNIQUE_ID_description345", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 232, i32 1}
!2 = !{ptr @__UNIQUE_ID_file346, !3, !"__UNIQUE_ID_file346", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 233, i32 1}
!4 = !{ptr @__UNIQUE_ID_license347, !3, !"__UNIQUE_ID_license347", i1 false, i1 false}
!5 = !{ptr @__param_if_port, !6, !"__param_if_port", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 237, i32 1}
!7 = !{ptr @__UNIQUE_ID_if_porttype348, !6, !"__UNIQUE_ID_if_porttype348", i1 false, i1 false}
!8 = !{ptr @__param_full_duplex, !9, !"__param_full_duplex", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 238, i32 1}
!10 = !{ptr @__UNIQUE_ID_full_duplextype349, !9, !"__UNIQUE_ID_full_duplextype349", i1 false, i1 false}
!11 = !{ptr @__param_do_sound, !12, !"__param_do_sound", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 239, i32 1}
!13 = !{ptr @__UNIQUE_ID_do_soundtype350, !12, !"__UNIQUE_ID_do_soundtype350", i1 false, i1 false}
!14 = !{ptr @__param_lockup_hack, !15, !"__param_lockup_hack", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 240, i32 1}
!16 = !{ptr @__UNIQUE_ID_lockup_hacktype351, !15, !"__UNIQUE_ID_lockup_hacktype351", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_xirc2ps_cs__381_1769_xirc2ps_cs_driver_init6, !18, !"__initcall__kmod_xirc2ps_cs__381_1769_xirc2ps_cs_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1769, i32 1}
!19 = !{ptr @__exitcall_xirc2ps_cs_driver_exit, !18, !"__exitcall_xirc2ps_cs_driver_exit", i1 false, i1 false}
!20 = !{ptr @__setup_setup_xirc2ps_cs, !21, !"__setup_setup_xirc2ps_cs", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1790, i32 1}
!22 = !{ptr @__param_str_if_port, !6, !"__param_str_if_port", i1 false, i1 false}
!23 = !{ptr @if_port, !6, !"if_port", i1 false, i1 false}
!24 = !{ptr @__param_str_full_duplex, !9, !"__param_str_full_duplex", i1 false, i1 false}
!25 = !{ptr @full_duplex, !9, !"full_duplex", i1 false, i1 false}
!26 = !{ptr @__param_str_do_sound, !12, !"__param_str_do_sound", i1 false, i1 false}
!27 = !{ptr @do_sound, !12, !"do_sound", i1 false, i1 false}
!28 = !{ptr @__param_str_lockup_hack, !15, !"__param_str_lockup_hack", i1 false, i1 false}
!29 = !{ptr @lockup_hack, !15, !"lockup_hack", i1 false, i1 false}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1762, i32 11}
!32 = !{ptr @xirc2ps_cs_driver, !33, !"xirc2ps_cs_driver", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1760, i32 29}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 479, i32 5}
!36 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xirc2ps_probe.__UNIQUE_ID_ddebug352, !35, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!39 = !{ptr @xirc2ps_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 497, i32 5}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @netdev_ops, !43, !"netdev_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 461, i32 36}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1386, i32 5}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @do_open.__UNIQUE_ID_ddebug375, !45, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1470, i32 5}
!50 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @do_reset.__UNIQUE_ID_ddebug377, !49, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!52 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1526, i32 5}
!55 = !{ptr @do_reset.__UNIQUE_ID_ddebug378, !54, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!56 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1562, i32 23}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1567, i32 23}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1612, i32 19}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1655, i32 21}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1673, i32 23}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1683, i32 23}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 210, i32 35}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 210, i32 43}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 210, i32 54}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 210, i32 65}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 210, i32 72}
!79 = !{ptr @if_names, !80, !"if_names", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 210, i32 20}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1714, i32 5}
!83 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @do_stop.__UNIQUE_ID_ddebug380, !82, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1217, i32 5}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @do_start_xmit.__UNIQUE_ID_ddebug372, !86, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!89 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1243, i32 5}
!92 = !{ptr @do_start_xmit.__UNIQUE_ID_ddebug373, !91, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!93 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1421, i32 5}
!98 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @do_ioctl.__UNIQUE_ID_ddebug376, !97, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!100 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1360, i32 5}
!103 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @do_config.__UNIQUE_ID_ddebug374, !102, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!105 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1371, i32 19}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1204, i32 24}
!110 = !{ptr @netdev_ethtool_ops, !111, !"netdev_ethtool_ops", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1410, i32 33}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1406, i32 51}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 698, i32 5}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @xirc2ps_config.__UNIQUE_ID_ddebug355, !115, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 702, i32 2}
!120 = !{ptr @xirc2ps_config._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @xirc2ps_config._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 708, i32 20}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 711, i32 20}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 715, i32 20}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 718, i32 20}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 721, i32 20}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 724, i32 2}
!134 = !{ptr @xirc2ps_config._entry.49, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @xirc2ps_config._entry_ptr.51, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 728, i32 5}
!138 = !{ptr @xirc2ps_config.__UNIQUE_ID_ddebug356, !137, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 731, i32 2}
!141 = !{ptr @xirc2ps_config._entry.53, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @xirc2ps_config._entry_ptr.55, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 755, i32 2}
!145 = !{ptr @xirc2ps_config._entry.56, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @xirc2ps_config._entry_ptr.58, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 782, i32 2}
!149 = !{ptr @xirc2ps_config._entry.59, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @xirc2ps_config._entry_ptr.61, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 889, i32 2}
!153 = !{ptr @xirc2ps_config._entry.62, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @xirc2ps_config._entry_ptr.64, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 901, i32 2}
!157 = !{ptr @xirc2ps_config._entry.65, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @xirc2ps_config._entry_ptr.67, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 906, i32 22}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 545, i32 6}
!163 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @set_card_type._entry, !162, !"_entry", i1 false, i1 false}
!167 = !{ptr @set_card_type._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 553, i32 5}
!170 = !{ptr @set_card_type.__UNIQUE_ID_ddebug354, !169, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 561, i32 2}
!173 = !{ptr @set_card_type._entry.74, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @set_card_type._entry_ptr.76, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 565, i32 2}
!177 = !{ptr @set_card_type._entry.77, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @set_card_type._entry_ptr.79, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 596, i32 2}
!181 = !{ptr @set_card_type._entry.80, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @set_card_type._entry_ptr.82, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 600, i32 2}
!185 = !{ptr @set_card_type._entry.83, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @set_card_type._entry_ptr.85, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 613, i32 53}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 990, i32 5}
!191 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug358, !190, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!193 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1000, i32 2}
!196 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug359, !195, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!197 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1013, i32 5}
!200 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug360, !199, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!201 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1024, i32 6}
!204 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug361, !203, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!205 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1031, i32 6}
!208 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug362, !207, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!209 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1098, i32 6}
!212 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug363, !211, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!213 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1102, i32 6}
!216 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug364, !215, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!217 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1106, i32 6}
!220 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug365, !219, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!221 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1110, i32 6}
!224 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug366, !223, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!225 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1122, i32 2}
!228 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug367, !227, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!229 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1135, i32 6}
!232 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug368, !231, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!233 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1141, i32 2}
!236 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug369, !235, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!237 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1160, i32 6}
!240 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug370, !239, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!241 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1167, i32 6}
!244 = !{ptr @xirc2ps_interrupt.__UNIQUE_ID_ddebug371, !243, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!245 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @maxrx_bytes, !247, !"maxrx_bytes", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 251, i32 17}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 923, i32 2}
!250 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @xirc2ps_release.__UNIQUE_ID_ddebug357, !249, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 507, i32 5}
!254 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @xirc2ps_detach.__UNIQUE_ID_ddebug353, !253, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1700, i32 5}
!258 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @do_powerdown.__UNIQUE_ID_ddebug379, !257, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!260 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1736, i32 2}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1737, i32 2}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1738, i32 2}
!267 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1739, i32 2}
!269 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1740, i32 2}
!271 = !{ptr @.str.128, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1741, i32 2}
!273 = !{ptr @.str.129, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1743, i32 2}
!275 = !{ptr @.str.130, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1744, i32 2}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1745, i32 2}
!280 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1746, i32 2}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1747, i32 2}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1748, i32 2}
!286 = !{ptr @.str.136, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1749, i32 2}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1750, i32 2}
!290 = !{ptr @.str.138, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1751, i32 2}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1752, i32 2}
!294 = !{ptr @xirc2ps_ids, !295, !"xirc2ps_ids", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/xircom/xirc2ps_cs.c", i32 1733, i32 38}
!296 = !{ptr @__setup_str_setup_xirc2ps_cs, !21, !"__setup_str_setup_xirc2ps_cs", i1 false, i1 false}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{i64 2149004655, i64 2149004660, i64 2149004673, i64 2149004717, i64 2149004751, i64 2149004772}
!307 = !{!"auto-init"}
!308 = !{i64 2156692527}
!309 = !{i64 6201917}
!310 = !{i64 2156692822}
!311 = !{i64 2156693131}
!312 = !{i64 2156693426}
!313 = !{i64 2156693707}
!314 = !{i64 2156693988}
!315 = !{i64 2156694269}
!316 = !{i64 2156694550}
!317 = !{i64 2156809026}
!318 = !{i64 2156809394}
!319 = !{i64 2156809772}
!320 = !{i64 2156810149}
!321 = !{i64 2156810522}
!322 = !{i64 2156810890}
!323 = !{i64 2156811262}
!324 = !{!"branch_weights", i32 2000, i32 1}
!325 = !{i64 2156751523}
!326 = !{i64 2156751962}
!327 = !{i64 6201494}
!328 = !{i64 6201694}
!329 = !{i64 2156752917}
!330 = !{i64 2156755739}
!331 = !{i64 2156756436}
!332 = !{i64 2156756854}
!333 = !{i64 2156762311}
!334 = !{i64 6202312}
!335 = !{i64 2156762755}
!336 = !{i64 2156763038}
!337 = !{i64 2156763511}
!338 = !{i64 2156764398}
!339 = !{i64 2156764778}
!340 = !{i64 2156765156}
!341 = !{i64 2156765560}
!342 = !{i64 2156766324}
!343 = !{i64 2156774018}
!344 = !{i64 2156774922}
!345 = !{i64 2156778384}
!346 = !{i64 2156778754}
!347 = !{i64 2156779126}
!348 = !{i64 2156779500}
!349 = !{i64 2156780530}
!350 = !{i64 2156780898}
!351 = !{i64 2156782774}
!352 = !{i64 2156783151}
!353 = !{i64 2156783525}
!354 = !{i64 2156783976}
!355 = !{i64 2156786527}
!356 = !{i64 2156786901}
!357 = !{i64 2156787273}
!358 = !{i64 2156787687}
!359 = !{i64 2156788168}
!360 = !{i64 2156788585}
!361 = !{i64 2156789073}
!362 = !{i64 2156789450}
!363 = !{i64 2156789830}
!364 = !{i64 2156790210}
!365 = !{i64 2156790587}
!366 = !{i64 2156790966}
!367 = !{i64 2156791346}
!368 = !{i64 2156802793}
!369 = !{i64 2156803237}
!370 = !{i64 2156791719}
!371 = !{i64 2156792871}
!372 = !{i64 2156792682}
!373 = !{i64 2156793250}
!374 = !{i64 2156795205}
!375 = !{i64 2156795023}
!376 = !{i64 2156795578}
!377 = !{i64 2156796022}
!378 = !{i64 2156796273}
!379 = !{i64 2156796650}
!380 = !{i64 2156797030}
!381 = !{i64 2156797411}
!382 = !{i64 2156797792}
!383 = !{i64 2156798196}
!384 = !{i64 2156798568}
!385 = !{i64 2156798945}
!386 = !{i64 2156799854}
!387 = !{i64 2156800240}
!388 = !{i64 2156800693}
!389 = !{i64 2156800952}
!390 = !{i64 2156801327}
!391 = !{i64 2156757275}
!392 = !{i64 2156761935}
!393 = !{i64 2156662458}
!394 = !{i64 2156657544}
!395 = !{i64 2156654776}
!396 = !{i64 2156655696}
!397 = !{i64 2156660306}
!398 = !{i64 2156661293}
!399 = !{i64 2156661549}
!400 = !{i64 2156662828}
!401 = !{i64 2156659392}
!402 = !{i64 2156700434}
!403 = !{i64 2156703260}
!404 = !{i64 2156703585}
!405 = !{i64 2156706313}
!406 = !{i64 2156706570}
!407 = !{i64 2156707014}
!408 = !{i64 2156707299}
!409 = !{i64 2156707749}
!410 = !{i64 2156708078}
!411 = !{i64 2156708330}
!412 = !{i64 2156708704}
!413 = !{i64 2156711797}
!414 = !{i64 2156712245}
!415 = !{i64 2156715300}
!416 = !{i64 2156717906}
!417 = !{i64 2156718733}
!418 = !{i64 2156718984}
!419 = !{i64 2156719428}
!420 = !{i64 2156729050}
!421 = !{i64 2156729606}
!422 = !{i64 2156729877}
!423 = !{i64 2156732605}
!424 = !{i64 2156737516}
!425 = !{i64 2156742716}
!426 = !{i64 2156742985}
!427 = !{i64 2156743371}
!428 = !{i64 2156805721}
!429 = !{i64 2156806089}
!430 = !{i64 2156806461}
