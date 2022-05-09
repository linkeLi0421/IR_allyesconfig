; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/3com/3c589_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/3com/3c589_cs.c"
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
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author345 = internal constant [60 x i8] c"3c589_cs.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [62 x i8] c"3c589_cs.description=3Com 3c589 series PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [49 x i8] c"3c589_cs.file=drivers/net/ethernet/3com/3c589_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [21 x i8] c"3c589_cs.license=GPL\00", section ".modinfo", align 1
@__param_str_if_port = internal constant [17 x i8] c"3c589_cs.if_port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@if_port = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_if_port = internal constant %struct.kernel_param { ptr @__param_str_if_port, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @if_port } }, section "__param", align 4
@__UNIQUE_ID_if_porttype349 = internal constant [30 x i8] c"3c589_cs.parmtype=if_port:int\00", section ".modinfo", align 1
@__initcall__kmod_3c589_cs__365_965_tc589_driver_init6 = internal global ptr @tc589_driver_init, section ".initcall6.init", align 4
@tc589_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @tc589_probe, ptr @tc589_detach, ptr @tc589_suspend, ptr @tc589_resume, ptr null, ptr @tc589_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_tc589_driver_exit = internal global ptr @tc589_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3c589_cs\00", [23 x i8] zeroinitializer }, align 32
@tc589_ids = internal constant { [7 x %struct.pcmcia_device_id], [84 x i8] } { [7 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 11, i16 257, i16 1378, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -264352137, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.72, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 257, i16 1417, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1490632644, i32 -1725160958, i32 0, i32 0], [4 x ptr] [ptr @.str.73, ptr @.str.74, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 523, i16 257, i16 53, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.75 }, %struct.pcmcia_device_id { i16 523, i16 257, i16 61, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.75 }, %struct.pcmcia_device_id zeroinitializer], [84 x i8] zeroinitializer }, align 32
@tc589_probe.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tc589_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/3com/3c589_cs.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"3c589_attach()\0A\00", [16 x i8] zeroinitializer }, align 32
@tc589_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@el3_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @el3_open, ptr @el3_close, ptr @el3_start_xmit, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @el3_config, ptr null, ptr null, ptr @el3_tx_timeout, ptr null, ptr null, ptr null, ptr @el3_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@el3_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&lp->media)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@el3_open.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"el3_open\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: opened, status %4.4x.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt(s) dropped!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s link beat\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coax cable %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"problem\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flipped to 10baseT\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flipped to 10base2\0A\00", [44 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"el3_interrupt\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt, status %4.4x.\0A\00", [38 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt from dead card\0A\00", [38 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"    TX room bit was handled.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"adapter failure, FIFO diagnostic register %04x.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"infinite loop in interrupt, status %4.4x.\0A\00", [53 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.23, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"exiting interrupt, status %4.4x.\0A\00", [62 x i8] zeroinitializer }, align 32
@el3_rx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"el3_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"in rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", [48 x i8] zeroinitializer }, align 32
@el3_rx.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    Receiving packet size %d status %4.4x.\0A\00", [52 x i8] zeroinitializer }, align 32
@el3_rx.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't allocate a sk_buff of size %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"too much work in el3_rx!\0A\00", [38 x i8] zeroinitializer }, align 32
@pop_tx_status.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pop_tx_status\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"transmit error: status 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@update_stats.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"update_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"updating the statistics.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"command 0x%04x did not complete!\0A\00", [62 x i8] zeroinitializer }, align 32
@el3_close.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"el3_close\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: shutting down ethercard.\0A\00", [34 x i8] zeroinitializer }, align 32
@el3_start_xmit.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"el3_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"el3_start_xmit(length = %ld) called, status %4.4x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switched to %s port\0A\00", [43 x i8] zeroinitializer }, align 32
@if_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10baseT\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10base2\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUI\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transmit timed out!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"  irq status %04x, rx status %04x, tx status %02x  tx free %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"  diagnostics: fifo %04x net %04x ethernet %04x media %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCMCIA 0x%lx\00", [19 x i8] zeroinitializer }, align 32
@tc589_config.ram_split = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5:3\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3:1\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1:1\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3:5\00", [28 x i8] zeroinitializer }, align 32
@tc589_config.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc589_config\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"3c589_config\0A\00", [18 x i8] zeroinitializer }, align 32
@tc589_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 251, ptr @.str.54, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hmmm, is this really a 3Com card??\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc589_config._entry_ptr = internal global ptr @tc589_config._entry, section ".printk_index", align 4
@tc589_config._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.2, i32 295, ptr @.str.58, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IO port conflict at 0x%03lx-0x%03lx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tc589_config._entry_ptr.59 = internal global ptr @tc589_config._entry.56, section ".printk_index", align 4
@tc589_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.51, ptr @.str.2, i32 312, ptr @.str.58, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid if_port requested\0A\00", [37 x i8] zeroinitializer }, align 32
@tc589_config._entry_ptr.62 = internal global ptr @tc589_config._entry.60, section ".printk_index", align 4
@tc589_config._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.51, ptr @.str.2, i32 317, ptr @.str.58, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_netdev() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@tc589_config._entry_ptr.65 = internal global ptr @tc589_config._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"3Com 3c%s, io %#3lx, irq %d, hw_addr %pM\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"562\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"589\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"  %dK FIFO split %s Rx:Tx, %s xcvr\0A\00", [60 x i8] zeroinitializer }, align 32
@tc589_detach.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc589_detach\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"3c589_detach\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Motorola MARQUIS\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Farallon\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ENet\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cis/3CXEM556.cis\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"if_port\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 155, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"tc589_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 956, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 958, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"tc589_ids\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 945, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 199, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 209, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"el3_netdev_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 182, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 488, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 518, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 521, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 694, i32 21 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 734, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 735, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 735, i32 43 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 738, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 739, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 739, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 743, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 750, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 610, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 616, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 623, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 644, i32 22 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 661, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 672, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 823, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 857, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 868, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 877, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 555, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 790, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 373, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 909, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 570, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 497, i32 21 }
@___asan_gen_.216 = private unnamed_addr constant [9 x i8] c"if_names\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 142, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 142, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 142, i32 43 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 142, i32 54 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 142, i32 65 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 531, i32 19 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 429, i32 19 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 433, i32 19 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 485, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [10 x i8] c"ram_split\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 243, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 243, i32 43 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 243, i32 50 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 243, i32 57 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 243, i32 64 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 247, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 251, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 294, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 312, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 317, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 321, i32 19 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 322, i32 13 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 322, i32 21 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 324, i32 19 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 228, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 947, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 949, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private constant [40 x i8] c"../drivers/net/ethernet/3com/3c589_cs.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 950, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_if_porttype349, ptr @__UNIQUE_ID_license348, ptr @__exitcall_tc589_driver_exit, ptr @__initcall__kmod_3c589_cs__365_965_tc589_driver_init6, ptr @__param_if_port, ptr @tc589_config._entry, ptr @tc589_config._entry.56, ptr @tc589_config._entry.60, ptr @tc589_config._entry.63, ptr @tc589_config._entry_ptr, ptr @tc589_config._entry_ptr.59, ptr @tc589_config._entry_ptr.62, ptr @tc589_config._entry_ptr.65, ptr @tc589_driver_exit, ptr @if_port, ptr @tc589_driver, ptr @.str, ptr @tc589_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tc589_probe.__key, ptr @.str.4, ptr @el3_netdev_ops, ptr @netdev_ethtool_ops, ptr @el3_open.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @if_names, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @tc589_config.ram_split, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_ids to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el3_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el3_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_config.ram_split to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_config._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc589_config._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc589_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @tc589_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc589_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @tc589_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc589_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc589_probe.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc589_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc589_probe.__UNIQUE_ID_ddebug350, ptr noundef %dev3, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 104, i32 noundef 1, i32 noundef 1) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %priv, align 8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %add.ptr.i, align 4
  %lock = getelementptr i8, ptr %call4, i32 2364
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @tc589_probe.__key, i16 noundef signext 3) #9
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %end, align 4
  %5 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 8
  store i32 %or, ptr %flags, align 4
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %8 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_flags, align 4
  %or15 = or i32 %9, 1
  store i32 %or15, ptr %config_flags, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %10 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %config_index, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @el3_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %12 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %call16 = tail call fastcc i32 @tc589_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc589_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc589_detach.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc589_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc589_detach.__UNIQUE_ID_ddebug351, ptr noundef %dev3, ptr noundef nonnull @.str.71) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #9
  tail call void @pcmcia_disable_device(ptr noundef %link) #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc589_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc589_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call fastcc void @tc589_reset(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #9
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
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc589_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %addr, align 2, !annotation !187
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !187
  %5 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc589_config.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc589_config, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc589_config.__UNIQUE_ID_ddebug352, ptr noundef %dev3, ptr noundef nonnull @.str.52) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %8 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %manf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %9)
  %cmp.not = icmp eq i16 %9, 257
  br i1 %cmp.not, label %do.end.if.end10_crit_edge, label %do.end8

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.53) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %do.end.if.end10_crit_edge
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %10 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %card_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1378, i16 %11)
  %cmp12 = icmp eq i16 %11, 1378
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 14
  %12 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %io_lines, align 4
  %cmp12.not = xor i1 %cmp12, true
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %i.0198 = phi i32 [ 0, %if.end10 ], [ %i.1, %for.inc.for.body_crit_edge ]
  %j.0197 = phi i32 [ 0, %if.end10 ], [ %add, %for.inc.for.body_crit_edge ]
  %and = and i32 %j.0197, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp12.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %xor = xor i32 %j.0197, 768
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resource, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor, ptr %14, align 4
  %call20 = tail call i32 @pcmcia_request_io(ptr noundef %link) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end19.if.end28_crit_edge, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %call20, %if.end19.for.inc_crit_edge ], [ %i.0198, %for.body.for.inc_crit_edge ]
  %add = add nuw nsw i32 %j.0197, 16
  %cmp14 = icmp ult i32 %j.0197, 1008
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp25.not = icmp eq i32 %i.1, 0
  br i1 %cmp25.not, label %for.end.if.end28_crit_edge, label %for.end.failed_crit_edge

for.end.failed_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %for.end.if.end28_crit_edge, %if.end19.if.end28_crit_edge
  %call29 = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @el3_interrupt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.failed_crit_edge

if.end28.failed_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.failed_crit_edge

if.end32.failed_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end36:                                         ; preds = %if.end32
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 8
  %irq37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %18 = ptrtoint ptr %irq37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq37, align 4
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %add45 = add i32 %22, 14
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %24 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 8) #9, !srcloc !189
  %call49 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext -120, ptr noundef nonnull %buf) #9
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %tobool50.not = icmp ne ptr %26, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call49)
  %cmp52 = icmp ugt i32 %call49, 5
  %or.cond191 = select i1 %tobool50.not, i1 %cmp52, i1 false
  br i1 %or.cond191, label %for.body58.preheader, label %if.else

for.body58.preheader:                             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv60 = zext i8 %28 to i16
  %29 = shl nuw i16 %conv60, 8
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %addr, align 2
  %arrayidx59.1 = getelementptr i8, ptr %26, i32 2
  %31 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx59.1, align 1
  %conv60.1 = zext i8 %32 to i16
  %33 = shl nuw i16 %conv60.1, 8
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %3, align 2
  %arrayidx59.2 = getelementptr i8, ptr %26, i32 4
  %35 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx59.2, align 1
  %conv60.2 = zext i8 %36 to i16
  %37 = shl nuw i16 %conv60.2, 8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %5, align 2
  call void @kfree(ptr noundef nonnull %26) #9
  br label %if.end86

if.else:                                          ; preds = %if.end36
  call void @kfree(ptr noundef %26) #9
  %add1.i = add i32 %22, 10
  %and.i = and i32 %add1.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %39 = inttoptr i32 %add2.i to ptr
  %add14.i = add i32 %22, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %40 = inttoptr i32 %add16.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 -32768) #9, !srcloc !189
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else
  %i.023.i = phi i32 [ 1620, %if.else ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %41 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %39) #9, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %.mask.i = and i16 %41, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp11.i = icmp eq i16 %.mask.i, 0
  %dec.i = add nsw i32 %i.023.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023.i)
  %cmp.not.i = icmp eq i32 %i.023.i, 0
  %or.cond.i = select i1 %cmp11.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %read_eeprom.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

read_eeprom.exit:                                 ; preds = %for.body.i
  %42 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #9, !srcloc !191
  %43 = call i16 @llvm.bswap.i16(i16 %42) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %addr, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 -32512) #9, !srcloc !189
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %read_eeprom.exit
  %i.023.i.1 = phi i32 [ 1620, %read_eeprom.exit ], [ %dec.i.1, %for.body.i.1.for.body.i.1_crit_edge ]
  %45 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %39) #9, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %.mask.i.1 = and i16 %45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.1)
  %cmp11.i.1 = icmp eq i16 %.mask.i.1, 0
  %dec.i.1 = add nsw i32 %i.023.i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023.i.1)
  %cmp.not.i.1 = icmp eq i32 %i.023.i.1, 0
  %or.cond.i.1 = select i1 %cmp11.i.1, i1 true, i1 %cmp.not.i.1
  br i1 %or.cond.i.1, label %read_eeprom.exit.1, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.1

read_eeprom.exit.1:                               ; preds = %for.body.i.1
  %46 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #9, !srcloc !191
  %47 = call i16 @llvm.bswap.i16(i16 %46) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %3, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 -32256) #9, !srcloc !189
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %for.body.i.2.for.body.i.2_crit_edge, %read_eeprom.exit.1
  %i.023.i.2 = phi i32 [ 1620, %read_eeprom.exit.1 ], [ %dec.i.2, %for.body.i.2.for.body.i.2_crit_edge ]
  %49 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %39) #9, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %.mask.i.2 = and i16 %49, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.2)
  %cmp11.i.2 = icmp eq i16 %.mask.i.2, 0
  %dec.i.2 = add nsw i32 %i.023.i.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023.i.2)
  %cmp.not.i.2 = icmp eq i32 %i.023.i.2, 0
  %or.cond.i.2 = select i1 %cmp11.i.2, i1 true, i1 %cmp.not.i.2
  br i1 %or.cond.i.2, label %read_eeprom.exit.2, label %for.body.i.2.for.body.i.2_crit_edge

for.body.i.2.for.body.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.2

read_eeprom.exit.2:                               ; preds = %for.body.i.2
  %50 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #9, !srcloc !191
  %51 = call i16 @llvm.bswap.i16(i16 %50) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %5, align 2
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24672, i16 %54)
  %cmp75 = icmp eq i16 %54, 24672
  br i1 %cmp75, label %do.end80, label %read_eeprom.exit.2.if.end86_crit_edge

read_eeprom.exit.2.if.end86_crit_edge:            ; preds = %read_eeprom.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.end80:                                         ; preds = %read_eeprom.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  %dev81 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %55 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_addr, align 32
  %add84 = add i32 %56, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.57, i32 noundef %56, i32 noundef %add84) #12
  br label %failed

if.end86:                                         ; preds = %read_eeprom.exit.2.if.end86_crit_edge, %for.body58.preheader
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  %add90 = add i32 %22, 8
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %57 = inttoptr i32 %add92 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 63) #9, !srcloc !189
  %and94 = and i32 %22, 1048575
  %add95 = or i32 %and94, -18874368
  %58 = inttoptr i32 %add95 to ptr
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %58) #9, !srcloc !195
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %61 = load i32, ptr @if_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %if.then104, label %do.end109

if.then104:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %conv105 = trunc i32 %61 to i8
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %63 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv105, ptr %if_port, align 2
  br label %if.end111

do.end109:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %dev110 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.61) #12
  br label %if.end111

if.end111:                                        ; preds = %do.end109, %if.then104
  %dev112 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %64 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dev112, ptr %parent, align 8
  %call114 = call i32 @register_netdev(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %if.end122, label %do.end120

do.end120:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112, ptr noundef nonnull @.str.64) #12
  br label %failed

if.end122:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %cmp12, ptr @.str.67, ptr @.str.68
  %65 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base_addr, align 32
  %67 = ptrtoint ptr %irq37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq37, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %69 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull %cond, i32 noundef %66, i32 noundef %68, ptr noundef %70) #12
  %and126 = and i32 %60, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %cond128 = select i1 %tobool127.not, i32 8, i32 32
  %71 = lshr i32 %60, 16
  %and129 = and i32 %71, 3
  %arrayidx130 = getelementptr [4 x ptr], ptr @tc589_config.ram_split, i32 0, i32 %and129
  %72 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx130, align 4
  %if_port131 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %74 = ptrtoint ptr %if_port131 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %if_port131, align 2
  %idxprom = zext i8 %75 to i32
  %arrayidx132 = getelementptr [4 x ptr], ptr @if_names, i32 0, i32 %idxprom
  %76 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx132, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %cond128, ptr noundef %73, ptr noundef %77) #12
  br label %cleanup

failed:                                           ; preds = %do.end120, %do.end80, %if.end32.failed_crit_edge, %if.end28.failed_crit_edge, %for.end.failed_crit_edge
  call void @pcmcia_disable_device(ptr noundef %link) #9
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end122
  %retval.0 = phi i32 [ -19, %failed ], [ 0, %if.end122 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call fastcc void @tc589_reset(ptr noundef %dev)
  %media = getelementptr i8, ptr %dev, i32 2308
  tail call void @init_timer_key(ptr noundef %media, ptr noundef nonnull @media_check, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @el3_open.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 100
  %call3 = tail call i32 @mod_timer(ptr noundef %media, i32 noundef %add) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_open.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_open, %if.then9)) #9
          to label %cleanup [label %if.then9], !srcloc !186

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  %add11 = add i32 %8, 14
  %and = and i32 %add11, 1048575
  %add12 = or i32 %and, -18874368
  %9 = inttoptr i32 %add12 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #9, !srcloc !191
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el3_open.__UNIQUE_ID_ddebug353, ptr noundef %dev10, ptr noundef nonnull @.str.7, ptr noundef %dev, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_close.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_close, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el3_close.__UNIQUE_ID_ddebug364, ptr noundef %dev4, ptr noundef nonnull @.str.35, ptr noundef %dev) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.if.end83_crit_edge, label %do.body8

do.end.if.end83_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.body8:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %add = add i32 %3, 14
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %4 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 176) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 24) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 80) #9, !srcloc !189
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %5 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %if_port, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.body8.do.body57_crit_edge [
    i8 2, label %do.body29
    i8 1, label %do.body41
  ]

do.body8.do.body57_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

do.body29:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 184) #9, !srcloc !189
  br label %do.body57

do.body41:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 1032) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  %add51 = add i32 %3, 10
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %8 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 0) #9, !srcloc !189
  br label %do.body57

do.body57:                                        ; preds = %do.body41, %do.body29, %do.body8.do.body57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 8) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %add67 = add i32 %3, 8
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %9 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 15) #9, !srcloc !189
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %11 = and i16 %10, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %11)
  %cmp79 = icmp eq i16 %11, 32
  br i1 %cmp79, label %if.then81, label %do.body57.if.end83_crit_edge

do.body57.if.end83_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then81:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @update_stats(ptr noundef %dev)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %do.body57.if.end83_crit_edge, %do.end.if.end83_crit_edge
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %open, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %media = getelementptr i8, ptr %dev, i32 2308
  %call84 = tail call i32 @del_timer_sync(ptr noundef %media) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_start_xmit.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_start_xmit, %if.then)) #9
          to label %do.body12 [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %4 = inttoptr i32 %add5 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #9, !srcloc !191
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_start_xmit.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %conv) #9
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %dev, i32 2364
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len21, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %9 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_bytes, align 4
  %add22 = add i32 %10, %8
  store i32 %add22, ptr %tx_bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len21, align 4
  %conv27 = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %and29 = and i32 %1, 1048575
  %add30 = or i32 %and29, -18874368
  %14 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %13) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #9, !srcloc !189
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len21, align 4
  %add44 = add i32 %18, 3
  %shr = lshr i32 %add44, 2
  tail call void @__raw_writesl(ptr noundef nonnull %14, ptr noundef %16, i32 noundef %shr) #9
  %add46 = add i32 %1, 12
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %19 = inttoptr i32 %add48 to ptr
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %19) #9, !srcloc !191
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp2(i16 1537, i16 %21)
  %cmp53 = icmp ult i16 %21, 1537
  br i1 %cmp53, label %if.then55, label %do.body12.if.end63_crit_edge

do.body12.if.end63_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then55:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void @arm_heavy_mb() #9
  %add59 = add i32 %1, 14
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %24 = inttoptr i32 %add61 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 150) #9, !srcloc !189
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %do.body12.if.end63_crit_edge
  tail call fastcc void @pop_tx_status(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #9
  tail call void @consume_skb(ptr noundef %skb) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2364
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr.i, align 32
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.set_rx_mode.exit_crit_edge

entry.set_rx_mode.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_rx_mode.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %and4.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool5.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i16 -32763, i16 -32761
  br label %set_rx_mode.exit

set_rx_mode.exit:                                 ; preds = %if.else.i, %entry.set_rx_mode.exit_crit_edge
  %opts.0.i = phi i16 [ -32753, %entry.set_rx_mode.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %6 = tail call i16 @llvm.bswap.i16(i16 %opts.0.i) #9
  %add.i = add i32 %1, 14
  %and11.i = and i32 %add.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %7 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 %6) #9, !srcloc !189
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_config(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.ifmap, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %entry
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp5.not = icmp eq i8 %1, %3
  br i1 %cmp5.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp9 = icmp ult i8 %1, 4
  br i1 %cmp9, label %if.then11, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %if_port, align 2
  %arrayidx = getelementptr [4 x ptr], ptr @if_names, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %6) #12
  %7 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_port, align 2
  %conv16 = zext i8 %8 to i32
  tail call fastcc void @tc589_set_xcvr(ptr noundef %dev, i32 noundef %conv16)
  br label %return

return:                                           ; preds = %if.then11, %if.then.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ 0, %if.then11 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @el3_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %3, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 264) #9, !srcloc !189
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #9, !srcloc !191
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  %conv.i = zext i16 %6 to i32
  %add8.i = add i32 %3, 8
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %7 = inttoptr i32 %add10.i to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #9, !srcloc !191
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %conv14.i = zext i16 %9 to i32
  %add16.i = add i32 %3, 11
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %10 = inttoptr i32 %add18.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  %conv22.i = zext i8 %11 to i32
  %add24.i = add i32 %3, 12
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %12 = inttoptr i32 %add26.i to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #9, !srcloc !191
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %conv30.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %conv.i, i32 noundef %conv14.i, i32 noundef %conv22.i, i32 noundef %conv30.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 1032) #9, !srcloc !189
  %add39.i = add i32 %3, 4
  %and40.i = and i32 %add39.i, 1048575
  %add41.i = or i32 %and40.i, -18874368
  %15 = inttoptr i32 %add41.i to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #9, !srcloc !191
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %conv45.i = zext i16 %17 to i32
  %add47.i = add i32 %3, 6
  %and48.i = and i32 %add47.i, 1048575
  %add49.i = or i32 %and48.i, -18874368
  %18 = inttoptr i32 %add49.i to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #9, !srcloc !191
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %conv53.i = zext i16 %20 to i32
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #9, !srcloc !191
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  %conv61.i = zext i16 %22 to i32
  %add63.i = add i32 %3, 10
  %and64.i = and i32 %add63.i, 1048575
  %add65.i = or i32 %and64.i, -18874368
  %23 = inttoptr i32 %add65.i to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #9, !srcloc !191
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  %conv69.i = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %conv45.i, i32 noundef %conv53.i, i32 noundef %conv61.i, i32 noundef %conv69.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 264) #9, !srcloc !189
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %26 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx_errors, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 12
  %31 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i.i = icmp eq i32 %32, %30
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %30, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_addr, align 32
  %add.i9 = add i32 %35, 14
  %and.i10 = and i32 %add.i9, 1048575
  %add1.i11 = or i32 %and.i10, -18874368
  %36 = inttoptr i32 %add1.i11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %36, i16 88) #9, !srcloc !189
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %netif_trans_update.exit
  %i.0.i = phi i32 [ 100, %netif_trans_update.exit ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.then13.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %37 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_addr, align 32
  %add4.i = add i32 %38, 14
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %39 = inttoptr i32 %add6.i to ptr
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %39) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %41 = and i16 %40, 16
  %tobool.not.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i, label %while.body.i.tc589_wait_for_completion.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.tc589_wait_for_completion.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc589_wait_for_completion.exit

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 22528) #12
  br label %tc589_wait_for_completion.exit

tc589_wait_for_completion.exit:                   ; preds = %if.then13.i, %while.body.i.tc589_wait_for_completion.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %42 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 72) #9, !srcloc !189
  %43 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %44) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @el3_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr i8, ptr %dev, i32 2364
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @update_stats(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc589_reset(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 8) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  tail call void @arm_heavy_mb() #9
  %add5 = add i32 %1, 4
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %3 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 256) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %add12 = add i32 %1, 8
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %4 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 63) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 520) #9, !srcloc !189
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %and27 = and i32 %1, 1048575
  %add28 = or i32 %and27, -18874368
  %9 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %8) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %add26.1 = add i32 %1, 1
  %and27.1 = and i32 %add26.1, 1048575
  %add28.1 = or i32 %and27.1, -18874368
  %14 = inttoptr i32 %add28.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %13) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %add26.2 = add i32 %1, 2
  %and27.2 = and i32 %add26.2, 1048575
  %add28.2 = or i32 %and27.2, -18874368
  %19 = inttoptr i32 %add28.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %18) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  %add26.3 = add i32 %1, 3
  %and27.3 = and i32 %add26.3, 1048575
  %add28.3 = or i32 %and27.3, -18874368
  %24 = inttoptr i32 %add28.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %23) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %28) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %30, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 1
  %add26.5 = add i32 %1, 5
  %and27.5 = and i32 %add26.5, 1048575
  %add28.5 = or i32 %and27.5, -18874368
  %33 = inttoptr i32 %add28.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %32) #9, !srcloc !233
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %34 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %if_port, align 2
  %conv = zext i8 %35 to i32
  tail call fastcc void @tc589_set_xcvr(ptr noundef %dev, i32 noundef %conv)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 176) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1544) #9, !srcloc !189
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %add48.6 = add i32 %1, 6
  %and49.6 = and i32 %add48.6, 1048575
  %add50.6 = or i32 %and49.6, -18874368
  %42 = inttoptr i32 %add50.6 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %add48.7 = add i32 %1, 7
  %and49.7 = and i32 %add48.7, 1048575
  %add50.7 = or i32 %and49.7, -18874368
  %44 = inttoptr i32 %add50.7 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %add57 = add i32 %1, 10
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %47 = inttoptr i32 %add59 to ptr
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  %add64 = add i32 %1, 12
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %49 = inttoptr i32 %add66 to ptr
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %49) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 264) #9, !srcloc !189
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr, align 32
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.set_rx_mode.exit_crit_edge

entry.set_rx_mode.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_rx_mode.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %55 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i = icmp eq i32 %56, 0
  %and4.i = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool5.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i16 -32763, i16 -32761
  br label %set_rx_mode.exit

set_rx_mode.exit:                                 ; preds = %if.else.i, %entry.set_rx_mode.exit_crit_edge
  %opts.0.i = phi i16 [ -32753, %entry.set_rx_mode.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %57 = tail call i16 @llvm.bswap.i16(i16 %opts.0.i) #9
  %add.i = add i32 %52, 14
  %and11.i = and i32 %add.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %58 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 %57) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 168) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 32) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 72) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 -136) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 26984) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 -25744) #9, !srcloc !189
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @media_check(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %5, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %9 = inttoptr i32 %add1 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end.if.end69_crit_edge, label %land.lhs.true

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end
  %add7 = add i32 %5, 10
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %12 = inttoptr i32 %add9 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp eq i8 %13, -1
  br i1 %cmp, label %if.then15, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then15:                                        ; preds = %land.lhs.true
  %fast_poll = getelementptr i8, ptr %t, i32 50
  %14 = ptrtoint ptr %fast_poll to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fast_poll, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool16.not = icmp eq i16 %15, 0
  br i1 %tobool16.not, label %if.then17, label %if.then15.do.body19_crit_edge

if.then15.do.body19_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.8) #12
  br label %do.body19

do.body19:                                        ; preds = %if.then17, %if.then15.do.body19_crit_edge
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !248
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not = icmp eq i32 %and.i, 0
  br i1 %tobool31.not, label %if.then46, label %do.end35

do.end35:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 64
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call36 = tail call i32 @el3_interrupt(i32 noundef %18, ptr noundef %3)
  br label %do.body48

if.then46:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %irq308 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 64
  %19 = ptrtoint ptr %irq308 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq308, align 4
  %call36309 = tail call i32 @el3_interrupt(i32 noundef %20, ptr noundef %3)
  tail call void @trace_hardirqs_on() #9
  br label %do.body48

do.body48:                                        ; preds = %if.then46, %do.end35
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !249
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool56.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool56.not, label %if.then60, label %do.body48.do.end63_crit_edge, !prof !250

do.body48.do.end63_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body48.do.end63_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #9, !srcloc !251
  %22 = ptrtoint ptr %fast_poll to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 100, ptr %fast_poll, align 2
  br label %if.end69

if.end69:                                         ; preds = %do.end63, %land.lhs.true.if.end69_crit_edge, %if.end.if.end69_crit_edge
  %fast_poll70 = getelementptr i8, ptr %t, i32 50
  %23 = ptrtoint ptr %fast_poll70 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fast_poll70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool71.not = icmp eq i16 %24, 0
  br i1 %tobool71.not, label %do.body79, label %if.then72

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i16 %24, -1
  %25 = ptrtoint ptr %fast_poll70 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %dec, ptr %fast_poll70, align 2
  br label %cleanup

do.body79:                                        ; preds = %if.end69
  %lock = getelementptr i8, ptr %t, i32 56
  %call86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 1032) #9, !srcloc !189
  %add99 = add i32 %5, 10
  %and100 = and i32 %add99, 1048575
  %add101 = or i32 %and100, -18874368
  %26 = inttoptr i32 %add101 to ptr
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  %28 = and i16 %27, 4296
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %last_irq = getelementptr i8, ptr %t, i32 52
  %31 = ptrtoint ptr %last_irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_irq, align 4
  %add108.neg = add i32 %30, -100
  %sub = sub i32 %add108.neg, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp109 = icmp slt i32 %sub, 0
  br i1 %cmp109, label %if.then111, label %do.body115

if.then111:                                       ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %33 = and i16 %29, -14336
  br label %if.end155

do.body115:                                       ; preds = %do.body79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 1544) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 176) #9, !srcloc !189
  %and131 = and i32 %5, 1048575
  %add132 = or i32 %and131, -18874368
  %34 = inttoptr i32 %add132 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 168) #9, !srcloc !189
  %conv144 = zext i8 %35 to i32
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 17
  %36 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_carrier_errors, align 4
  %add145 = add i32 %37, %conv144
  store i32 %add145, ptr %tx_carrier_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool147.not = icmp eq i8 %35, 0
  br i1 %tobool147.not, label %lor.lhs.false, label %do.body115.if.then151_crit_edge

do.body115.if.then151_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

lor.lhs.false:                                    ; preds = %do.body115
  %media_status = getelementptr i8, ptr %t, i32 48
  %38 = ptrtoint ptr %media_status to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %media_status, align 4
  %40 = and i16 %39, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool150.not = icmp eq i16 %40, 0
  br i1 %tobool150.not, label %lor.lhs.false.if.end155_crit_edge, label %lor.lhs.false.if.then151_crit_edge

lor.lhs.false.if.then151_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

lor.lhs.false.if.end155_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then151:                                       ; preds = %lor.lhs.false.if.then151_crit_edge, %do.body115.if.then151_crit_edge
  %41 = or i16 %29, 16
  br label %if.end155

if.end155:                                        ; preds = %if.then151, %lor.lhs.false.if.end155_crit_edge, %if.then111
  %media.0 = phi i16 [ %33, %if.then111 ], [ %41, %if.then151 ], [ %29, %lor.lhs.false.if.end155_crit_edge ]
  %conv156 = zext i16 %media.0 to i32
  %media_status157 = getelementptr i8, ptr %t, i32 48
  %42 = ptrtoint ptr %media_status157 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %media_status157, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %media.0, i16 %43)
  %cmp159.not = icmp eq i16 %media.0, %43
  br i1 %cmp159.not, label %if.end155.do.body231_crit_edge, label %if.then161

if.end155.do.body231_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body231

if.then161:                                       ; preds = %if.end155
  %and165303 = and i16 %43, %media.0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and165303)
  %tobool167.not = icmp sgt i16 %and165303, -1
  br i1 %tobool167.not, label %if.then161.if.else179_crit_edge, label %land.lhs.true168

if.then161.if.else179_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else179

land.lhs.true168:                                 ; preds = %if.then161
  %xor306 = xor i16 %43, %media.0
  %44 = and i16 %xor306, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool173.not = icmp eq i16 %44, 0
  br i1 %tobool173.not, label %land.lhs.true168.if.else179_crit_edge, label %if.then174

land.lhs.true168.if.else179_crit_edge:            ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else179

if.then174:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #11
  %45 = and i16 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool178.not = icmp eq i16 %45, 0
  %cond = select i1 %tobool178.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #12
  br label %if.end200

if.else179:                                       ; preds = %land.lhs.true168.if.else179_crit_edge, %if.then161.if.else179_crit_edge
  %46 = and i16 %and165303, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool185.not = icmp eq i16 %46, 0
  br i1 %tobool185.not, label %if.else179.if.end200_crit_edge, label %land.lhs.true186

if.else179.if.end200_crit_edge:                   ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

land.lhs.true186:                                 ; preds = %if.else179
  %xor190305 = xor i16 %43, %media.0
  %47 = and i16 %xor190305, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool192.not = icmp eq i16 %47, 0
  br i1 %tobool192.not, label %land.lhs.true186.if.end200_crit_edge, label %if.then193

land.lhs.true186.if.end200_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.then193:                                       ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #11
  %48 = and i16 %43, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool197.not = icmp eq i16 %48, 0
  %cond198 = select i1 %tobool197.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond198) #12
  br label %if.end200

if.end200:                                        ; preds = %if.then193, %land.lhs.true186.if.end200_crit_edge, %if.else179.if.end200_crit_edge, %if.then174
  %if_port = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 52
  %49 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp202 = icmp eq i8 %50, 0
  br i1 %cmp202, label %if.then204, label %if.end200.if.end228_crit_edge

if.end200.if.end228_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then204:                                       ; preds = %if.end200
  %and206 = and i32 %conv156, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %if.else215, label %if.then208

if.then208:                                       ; preds = %if.then204
  %and210 = and i32 %conv156, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.else213, label %if.then212

if.then212:                                       ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.15) #12
  br label %if.end228

if.else213:                                       ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tc589_set_xcvr(ptr noundef %3, i32 noundef 2)
  br label %if.end228

if.else215:                                       ; preds = %if.then204
  %and217 = and i32 %conv156, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.else215.if.end228_crit_edge, label %if.then219

if.else215.if.end228_crit_edge:                   ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then219:                                       ; preds = %if.else215
  %and221 = and i32 %conv156, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.else224, label %if.then223

if.then223:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tc589_set_xcvr(ptr noundef %3, i32 noundef 1)
  br label %if.end228

if.else224:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.16) #12
  br label %if.end228

if.end228:                                        ; preds = %if.else224, %if.then223, %if.else215.if.end228_crit_edge, %if.else213, %if.then212, %if.end200.if.end228_crit_edge
  %51 = ptrtoint ptr %media_status157 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %media.0, ptr %media_status157, align 4
  br label %do.body231

do.body231:                                       ; preds = %if.end228, %if.end155.do.body231_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 264) #9, !srcloc !189
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call86) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body231, %if.then72, %entry.cleanup_crit_edge
  %.sink310 = phi i32 [ 1, %if.then72 ], [ 100, %entry.cleanup_crit_edge ], [ 100, %do.body231 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add239 = add i32 %52, %.sink310
  %expires241 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %53 = ptrtoint ptr %expires241 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add239, ptr %expires241, align 4
  tail call void @add_timer(ptr noundef %t) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc589_set_xcvr(ptr nocapture noundef %dev, i32 noundef %if_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 8) #9, !srcloc !189
  %3 = zext i32 %if_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %if_port, label %entry.do.body26_crit_edge [
    i32 0, label %entry.do.body3_crit_edge
    i32 1, label %entry.do.body3_crit_edge87
    i32 2, label %do.body11
    i32 3, label %do.body19
  ]

entry.do.body3_crit_edge87:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

entry.do.body26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.body3:                                         ; preds = %entry.do.body3_crit_edge, %entry.do.body3_crit_edge87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add6 = add i32 %1, 6
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %4 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 0) #9, !srcloc !189
  br label %do.body26

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %add14 = add i32 %1, 6
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %5 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 192) #9, !srcloc !189
  br label %do.body26

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  %add22 = add i32 %1, 6
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %6 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 64) #9, !srcloc !189
  br label %do.body26

do.body26:                                        ; preds = %do.body19, %do.body11, %do.body3, %entry.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %if_port)
  %cmp = icmp eq i32 %if_port, 2
  %conv = select i1 %cmp, i16 16, i16 184
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 %conv) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1032) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %if_port)
  %cmp43.inv = icmp sgt i32 %if_port, 1
  %conv46 = select i1 %cmp43.inv, i16 256, i16 -16128
  %add47 = add i32 %1, 10
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %7 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 %conv46) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 264) #9, !srcloc !189
  %if_port60 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %8 = ptrtoint ptr %if_port60 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %if_port60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp62 = icmp eq i8 %9, 0
  %conv65 = select i1 %cmp62, i16 -32768, i16 16384
  %conv71 = select i1 %cmp62, i16 16400, i16 -30720
  %conv71.sink = select i1 %cmp, i16 %conv65, i16 %conv71
  %10 = getelementptr i8, ptr %dev, i32 2356
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv71.sink, ptr %10, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then6)) #9
          to label %do.end13 [label %if.then6], !srcloc !186

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %4, 14
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %5 = inttoptr i32 %add7 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #9, !srcloc !191
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug356, ptr noundef %dev_id, ptr noundef nonnull @.str.18, i32 noundef %conv) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then6, %if.end
  %lock = getelementptr i8, ptr %dev_id, i32 2364
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %add15 = add i32 %4, 14
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !191
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  %conv21302 = zext i16 %10 to i32
  %and22303 = and i32 %conv21302, 145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22303)
  %tobool23.not304 = icmp eq i32 %and22303, 0
  br i1 %tobool23.not304, label %do.end13.while.end_crit_edge, label %while.body.lr.ph

do.end13.while.end_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %add124 = add i32 %4, 4
  %and125 = and i32 %add124, 1048575
  %add126 = or i32 %and125, -18874368
  %11 = inttoptr i32 %add126 to ptr
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 14
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 66, i32 1
  br label %while.body

while.body:                                       ; preds = %do.body183.while.body_crit_edge, %while.body.lr.ph
  %conv21306 = phi i32 [ %conv21302, %while.body.lr.ph ], [ %conv21, %do.body183.while.body_crit_edge ]
  %i.0305 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %do.body183.while.body_crit_edge ]
  %and25 = and i32 %conv21306, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and25)
  %cmp.not = icmp eq i32 %and25, 8192
  br i1 %cmp.not, label %if.end47, label %do.body29

do.body29:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then41)) #9
          to label %while.end [label %if.then41], !srcloc !186

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug357, ptr noundef %dev_id, ptr noundef nonnull @.str.19) #9
  br label %while.end

if.end47:                                         ; preds = %while.body
  %and49 = and i32 %conv21306, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end53_crit_edge, label %if.then51

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @el3_rx(ptr noundef %dev_id)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end47.if.end53_crit_edge
  %and55 = and i32 %conv21306, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end84_crit_edge, label %do.body59

if.end53.if.end84_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

do.body59:                                        ; preds = %if.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then71)) #9
          to label %do.body77 [label %if.then71], !srcloc !186

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug358, ptr noundef %dev_id, ptr noundef nonnull @.str.20) #9
  br label %do.body77

do.body77:                                        ; preds = %if.then71, %do.body59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 2152) #9, !srcloc !189
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #9
  br label %if.end84

if.end84:                                         ; preds = %do.body77, %if.end53.if.end84_crit_edge
  %and86 = and i32 %conv21306, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end84.if.end89_crit_edge, label %if.then88

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pop_tx_status(ptr noundef %dev_id)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end84.if.end89_crit_edge
  %and91 = and i32 %conv21306, 162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end170_crit_edge, label %if.then93

if.end89.if.end170_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.then93:                                        ; preds = %if.end89
  %and95 = and i32 %conv21306, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then93.if.end98_crit_edge, label %if.then97

if.then93.if.end98_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then97:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @update_stats(ptr noundef %dev_id)
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.then93.if.end98_crit_edge
  %and100 = and i32 %conv21306, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end98.if.end111_crit_edge, label %if.then102

if.end98.if.end111_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @el3_rx(ptr noundef %dev_id)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 8296) #9, !srcloc !189
  br label %if.end111

if.end111:                                        ; preds = %if.then102, %if.end98.if.end111_crit_edge
  %and113 = and i32 %conv21306, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end111.if.end170_crit_edge, label %if.then115

if.end111.if.end170_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.then115:                                       ; preds = %if.end111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 1032) #9, !srcloc !189
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #9, !srcloc !191
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 264) #9, !srcloc !189
  %conv137 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.21, i32 noundef %conv137) #12
  %and139 = and i32 %conv137, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.then115.if.end149_crit_edge, label %if.then141

if.then115.if.end149_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then141:                                       ; preds = %if.then115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %17, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 88) #9, !srcloc !189
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then141
  %i.0.i = phi i32 [ 100, %if.then141 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.then13.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_addr, align 32
  %add4.i = add i32 %20, 14
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %21 = inttoptr i32 %add6.i to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %23 = and i16 %22, 16
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %while.body.i.tc589_wait_for_completion.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.tc589_wait_for_completion.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc589_wait_for_completion.exit

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.33, i32 noundef 22528) #12
  br label %tc589_wait_for_completion.exit

tc589_wait_for_completion.exit:                   ; preds = %if.then13.i, %while.body.i.tc589_wait_for_completion.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 72) #9, !srcloc !189
  br label %if.end149

if.end149:                                        ; preds = %tc589_wait_for_completion.exit, %if.then115.if.end149_crit_edge
  %and151 = and i32 %conv137, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end149.do.body162_crit_edge, label %if.then153

if.end149.do.body162_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body162

if.then153:                                       ; preds = %if.end149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_addr, align 32
  %add.i274 = add i32 %25, 14
  %and.i275 = and i32 %add.i274, 1048575
  %add1.i276 = or i32 %and.i275, -18874368
  %26 = inttoptr i32 %add1.i276 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 40) #9, !srcloc !189
  br label %while.cond.i280

while.cond.i280:                                  ; preds = %while.body.i285.while.cond.i280_crit_edge, %if.then153
  %i.0.i277 = phi i32 [ 100, %if.then153 ], [ %dec.i278, %while.body.i285.while.cond.i280_crit_edge ]
  %dec.i278 = add nsw i32 %i.0.i277, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i278)
  %cmp.not.i279 = icmp eq i32 %dec.i278, 0
  br i1 %cmp.not.i279, label %if.then13.i286, label %while.body.i285

while.body.i285:                                  ; preds = %while.cond.i280
  %27 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base_addr, align 32
  %add4.i281 = add i32 %28, 14
  %and5.i282 = and i32 %add4.i281, 1048575
  %add6.i283 = or i32 %and5.i282, -18874368
  %29 = inttoptr i32 %add6.i283 to ptr
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %29) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %31 = and i16 %30, 16
  %tobool.not.i284 = icmp eq i16 %31, 0
  br i1 %tobool.not.i284, label %while.body.i285.tc589_wait_for_completion.exit287_crit_edge, label %while.body.i285.while.cond.i280_crit_edge

while.body.i285.while.cond.i280_crit_edge:        ; preds = %while.body.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i280

while.body.i285.tc589_wait_for_completion.exit287_crit_edge: ; preds = %while.body.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc589_wait_for_completion.exit287

if.then13.i286:                                   ; preds = %while.cond.i280
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.33, i32 noundef 10240) #12
  br label %tc589_wait_for_completion.exit287

tc589_wait_for_completion.exit287:                ; preds = %if.then13.i286, %while.body.i285.tc589_wait_for_completion.exit287_crit_edge
  %32 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_addr, align 32
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and.i289 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i289)
  %tobool.not.i290 = icmp eq i32 %and.i289, 0
  br i1 %tobool.not.i290, label %if.else.i, label %tc589_wait_for_completion.exit287.set_rx_mode.exit_crit_edge

tc589_wait_for_completion.exit287.set_rx_mode.exit_crit_edge: ; preds = %tc589_wait_for_completion.exit287
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_rx_mode.exit

if.else.i:                                        ; preds = %tc589_wait_for_completion.exit287
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp eq i32 %37, 0
  %and4.i = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool5.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i16 -32763, i16 -32761
  br label %set_rx_mode.exit

set_rx_mode.exit:                                 ; preds = %if.else.i, %tc589_wait_for_completion.exit287.set_rx_mode.exit_crit_edge
  %opts.0.i = phi i16 [ -32753, %tc589_wait_for_completion.exit287.set_rx_mode.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %38 = tail call i16 @llvm.bswap.i16(i16 %opts.0.i) #9
  %add.i291 = add i32 %33, 14
  %and11.i = and i32 %add.i291, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %39 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %38) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 32) #9, !srcloc !189
  br label %do.body162

do.body162:                                       ; preds = %set_rx_mode.exit, %if.end149.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 616) #9, !srcloc !189
  br label %if.end170

if.end170:                                        ; preds = %do.body162, %if.end111.if.end170_crit_edge, %if.end89.if.end170_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0305)
  %exitcond = icmp eq i32 %i.0305, 10
  br i1 %exitcond, label %if.then173, label %do.body183

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.22, i32 noundef %conv21306) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 -152) #9, !srcloc !189
  br label %while.end

do.body183:                                       ; preds = %if.end170
  %inc = add nuw nsw i32 %i.0305, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 16744) #9, !srcloc !189
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !191
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  %conv21 = zext i16 %41 to i32
  %and22 = and i32 %conv21, 145
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body183.while.end_crit_edge, label %do.body183.while.body_crit_edge

do.body183.while.body_crit_edge:                  ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body183.while.end_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.body183.while.end_crit_edge, %if.then173, %if.then41, %do.body29, %do.end13.while.end_crit_edge
  %tobool218.not = phi i32 [ 1, %if.then173 ], [ 0, %if.then41 ], [ 0, %do.body29 ], [ 1, %do.end13.while.end_crit_edge ], [ 1, %do.body183.while.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %last_irq = getelementptr i8, ptr %dev_id, i32 2360
  %43 = ptrtoint ptr %last_irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %last_irq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then204)) #9
          to label %cleanup [label %if.then204], !srcloc !186

if.then204:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !191
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  %conv212 = zext i16 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug359, ptr noundef %dev_id, ptr noundef nonnull @.str.23, i32 noundef %conv212) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then204, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %tobool218.not, %if.then204 ], [ %tobool218.not, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @el3_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_rx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_rx, %if.then)) #9
          to label %do.end17 [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %2 = inttoptr i32 %add4 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #9, !srcloc !191
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  %conv = zext i16 %4 to i32
  %add9 = add i32 %1, 8
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #9, !srcloc !191
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %conv15 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_rx.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv15) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  %add19 = add i32 %1, 8
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %8 = inttoptr i32 %add21 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !191
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  %conv2510 = sext i16 %10 to i32
  %and2611 = and i32 %conv2510, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2611)
  %tobool27.not12 = icmp eq i32 %and2611, 0
  br i1 %tobool27.not12, label %while.body.lr.ph, label %do.end17.if.end129_crit_edge

do.end17.if.end129_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

while.body.lr.ph:                                 ; preds = %do.end17
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %rx_frame_errors51 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %rx_length_errors47 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %and87 = and i32 %1, 1048575
  %add88 = or i32 %and87, -18874368
  %11 = inttoptr i32 %add88 to ptr
  %stats96 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  br label %while.body

while.body:                                       ; preds = %tc589_wait_for_completion.exit.while.body_crit_edge, %while.body.lr.ph
  %conv2514 = phi i32 [ %conv2510, %while.body.lr.ph ], [ %conv25, %tc589_wait_for_completion.exit.while.body_crit_edge ]
  %12 = phi i16 [ %10, %while.body.lr.ph ], [ %52, %tc589_wait_for_completion.exit.while.body_crit_edge ]
  %worklimit.013 = phi i32 [ 32, %while.body.lr.ph ], [ %dec, %tc589_wait_for_completion.exit.while.body_crit_edge ]
  %dec = add nsw i32 %worklimit.013, -1
  %and30 = and i32 %conv2514, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %while.body
  %13 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and34 = lshr i16 %12, 11
  %15 = and i16 %and34, 7
  %16 = zext i16 %15 to i32
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %16, label %if.then32.if.end125_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
    i32 2, label %sw.bb42
    i32 3, label %sw.bb45
    i32 4, label %sw.bb49
    i32 5, label %sw.bb53
  ]

if.then32.if.end125_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

sw.bb:                                            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors, align 4
  %inc38 = add i32 %19, 1
  store i32 %inc38, ptr %rx_over_errors, align 4
  br label %if.end125

sw.bb39:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rx_length_errors47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_length_errors47, align 8
  %inc41 = add i32 %21, 1
  store i32 %inc41, ptr %rx_length_errors47, align 8
  br label %if.end125

sw.bb42:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %rx_frame_errors51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_frame_errors51, align 4
  %inc44 = add i32 %23, 1
  store i32 %inc44, ptr %rx_frame_errors51, align 4
  br label %if.end125

sw.bb45:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %rx_length_errors47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_length_errors47, align 8
  %inc48 = add i32 %25, 1
  store i32 %inc48, ptr %rx_length_errors47, align 8
  br label %if.end125

sw.bb49:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %rx_frame_errors51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors51, align 4
  %inc52 = add i32 %27, 1
  store i32 %inc52, ptr %rx_frame_errors51, align 4
  br label %if.end125

sw.bb53:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_crc_errors, align 8
  %inc55 = add i32 %29, 1
  store i32 %inc55, ptr %rx_crc_errors, align 8
  br label %if.end125

if.else:                                          ; preds = %while.body
  %and57 = and i16 %12, 2047
  %30 = zext i16 %and57 to i32
  %add60 = add nuw nsw i32 %30, 5
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add60, i32 noundef 2592) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_rx.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_rx, %if.then75)) #9
          to label %do.end82 [label %if.then75], !srcloc !186

if.then75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_rx.__UNIQUE_ID_ddebug362, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %30, i32 noundef %conv2514) #9
  br label %do.end82

do.end82:                                         ; preds = %if.then75, %if.else
  %cmp83.not = icmp eq ptr %call.i, null
  br i1 %cmp83.not, label %do.body103, label %if.then85

if.then85:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call91 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %30) #9
  %add93 = add nuw nsw i32 %30, 3
  %35 = lshr i32 %add93, 2
  tail call void @__raw_readsl(ptr noundef nonnull %11, ptr noundef %call91, i32 noundef %35) #9
  %call94 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %call94, ptr %protocol, align 8
  %call95 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #9
  %37 = ptrtoint ptr %stats96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats96, align 8
  %inc97 = add i32 %38, 1
  store i32 %inc97, ptr %stats96, align 8
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 8
  %add100 = add i32 %40, %30
  store i32 %add100, ptr %rx_bytes, align 8
  br label %if.end125

do.body103:                                       ; preds = %do.end82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_rx.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_rx, %if.then115)) #9
          to label %do.end121 [label %if.then115], !srcloc !186

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @el3_rx.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %30) #9
  br label %do.end121

do.end121:                                        ; preds = %if.then115, %do.body103
  %41 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_dropped, align 8
  %inc123 = add i32 %42, 1
  store i32 %inc123, ptr %rx_dropped, align 8
  br label %if.end125

if.end125:                                        ; preds = %do.end121, %if.then85, %sw.bb53, %sw.bb49, %sw.bb45, %sw.bb42, %sw.bb39, %sw.bb, %if.then32.if.end125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %44, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %45 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 64) #9, !srcloc !189
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end125
  %i.0.i = phi i32 [ 100, %if.end125 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.then13.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %46 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_addr, align 32
  %add4.i = add i32 %47, 14
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %48 = inttoptr i32 %add6.i to ptr
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %50 = and i16 %49, 16
  %tobool.not.i = icmp eq i16 %50, 0
  br i1 %tobool.not.i, label %while.body.i.tc589_wait_for_completion.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.tc589_wait_for_completion.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc589_wait_for_completion.exit

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 16384) #12
  br label %tc589_wait_for_completion.exit

tc589_wait_for_completion.exit:                   ; preds = %if.then13.i, %while.body.i.tc589_wait_for_completion.exit_crit_edge
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #9, !srcloc !191
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  %conv25 = sext i16 %52 to i32
  %and26 = and i32 %conv25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %worklimit.013)
  %cmp = icmp ugt i32 %worklimit.013, 1
  %or.cond = select i1 %tobool27.not, i1 %cmp, i1 false
  br i1 %or.cond, label %tc589_wait_for_completion.exit.while.body_crit_edge, label %while.end

tc589_wait_for_completion.exit.while.body_crit_edge: ; preds = %tc589_wait_for_completion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %tc589_wait_for_completion.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %phi.cmp = icmp eq i32 %dec, 0
  br i1 %phi.cmp, label %if.then128, label %while.end.if.end129_crit_edge

while.end.if.end129_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then128:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #12
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %while.end.if.end129_crit_edge, %do.end17.if.end129_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pop_tx_status(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 11
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %add27 = add i32 %1, 14
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %3 = inttoptr i32 %add29 to ptr
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.051 = phi i32 [ 32, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  %conv = zext i8 %4 to i32
  %and3 = and i32 %conv, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body
  %and5 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %6, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 88) #9, !srcloc !189
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then7
  %i.0.i = phi i32 [ 100, %if.then7 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.then13.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  %add4.i = add i32 %9, 14
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %10 = inttoptr i32 %add6.i to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %12 = and i16 %11, 16
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %while.body.i.if.end8_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.if.end8_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 22528) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then13.i, %while.body.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and10 = and i32 %conv, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.for.inc_crit_edge, label %do.body13

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body13:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pop_tx_status.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pop_tx_status, %if.then19)) #9
          to label %do.body24 [label %if.then19], !srcloc !186

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pop_tx_status.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv) #9
  br label %do.body24

do.body24:                                        ; preds = %if.then19, %do.body13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 72) #9, !srcloc !189
  %13 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_aborted_errors, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx_aborted_errors, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.body24, %if.end8.for.inc_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !285
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !233
  %dec = add nsw i32 %i.051, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_stats(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_stats.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_stats, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @update_stats.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !286
  tail call void @arm_heavy_mb() #9
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %2 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 176) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1544) #9, !srcloc !189
  %and19 = and i32 %1, 1048575
  %add20 = or i32 %and19, -18874368
  %3 = inttoptr i32 %add20 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  %conv = zext i8 %4 to i32
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %5 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_carrier_errors, align 4
  %add24 = add i32 %6, %conv
  store i32 %add24, ptr %tx_carrier_errors, align 4
  %add26 = add i32 %1, 1
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %7 = inttoptr i32 %add28 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  %conv32 = zext i8 %8 to i32
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %9 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_heartbeat_errors, align 4
  %add34 = add i32 %10, %conv32
  store i32 %add34, ptr %tx_heartbeat_errors, align 4
  %add36 = add i32 %1, 2
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %11 = inttoptr i32 %add38 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  %add43 = add i32 %1, 3
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %13 = inttoptr i32 %add45 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  %conv49 = zext i8 %14 to i32
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %15 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %collisions, align 4
  %add51 = add i32 %16, %conv49
  store i32 %add51, ptr %collisions, align 4
  %add53 = add i32 %1, 4
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %17 = inttoptr i32 %add55 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %conv59 = zext i8 %18 to i32
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %19 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_window_errors, align 8
  %add61 = add i32 %20, %conv59
  store i32 %add61, ptr %tx_window_errors, align 8
  %add63 = add i32 %1, 5
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %21 = inttoptr i32 %add65 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  %conv69 = zext i8 %22 to i32
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %23 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_fifo_errors, align 8
  %add71 = add i32 %24, %conv69
  store i32 %add71, ptr %rx_fifo_errors, align 8
  %add73 = add i32 %1, 6
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %25 = inttoptr i32 %add75 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  %conv79 = zext i8 %26 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %27 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_packets, align 4
  %add81 = add i32 %28, %conv79
  store i32 %add81, ptr %tx_packets, align 4
  %add83 = add i32 %1, 7
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %29 = inttoptr i32 %add85 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !295
  %add90 = add i32 %1, 8
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %31 = inttoptr i32 %add92 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #9, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  %add97 = add i32 %1, 10
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %33 = inttoptr i32 %add99 to ptr
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %33) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !297
  %add104 = add i32 %1, 12
  %and105 = and i32 %add104, 1048575
  %add106 = or i32 %and105, -18874368
  %35 = inttoptr i32 %add106 to ptr
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %35) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !299
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 264) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !300
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 168) #9, !srcloc !189
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %1)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_tuple(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !63, !64, !66, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !162, !164, !166, !167, !168, !170, !172, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__UNIQUE_ID_author345, !1, !"__UNIQUE_ID_author345", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 148, i32 1}
!2 = !{ptr @__UNIQUE_ID_description346, !3, !"__UNIQUE_ID_description346", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 149, i32 1}
!4 = !{ptr @__UNIQUE_ID_file347, !5, !"__UNIQUE_ID_file347", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 150, i32 1}
!6 = !{ptr @__UNIQUE_ID_license348, !5, !"__UNIQUE_ID_license348", i1 false, i1 false}
!7 = !{ptr @__param_if_port, !8, !"__param_if_port", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 155, i32 1}
!9 = !{ptr @__UNIQUE_ID_if_porttype349, !8, !"__UNIQUE_ID_if_porttype349", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_3c589_cs__365_965_tc589_driver_init6, !11, !"__initcall__kmod_3c589_cs__365_965_tc589_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 965, i32 1}
!12 = !{ptr @__exitcall_tc589_driver_exit, !11, !"__exitcall_tc589_driver_exit", i1 false, i1 false}
!13 = !{ptr @__param_str_if_port, !8, !"__param_str_if_port", i1 false, i1 false}
!14 = !{ptr @if_port, !8, !"if_port", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 958, i32 11}
!17 = !{ptr @tc589_driver, !18, !"tc589_driver", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 956, i32 29}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 199, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tc589_probe.__UNIQUE_ID_ddebug350, !20, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!24 = !{ptr @tc589_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 209, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @el3_netdev_ops, !28, !"el3_netdev_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 182, i32 36}
!29 = !{ptr @el3_open.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 518, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 521, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @el3_open.__UNIQUE_ID_ddebug353, !33, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 694, i32 21}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 734, i32 20}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 735, i32 34}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 735, i32 43}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 738, i32 20}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 739, i32 34}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 739, i32 41}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 743, i32 23}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 750, i32 23}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 610, i32 2}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug356, !55, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 616, i32 4}
!60 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug357, !59, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 623, i32 4}
!63 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug358, !62, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 644, i32 22}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 661, i32 20}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 672, i32 2}
!70 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug359, !69, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 823, i32 2}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @el3_rx.__UNIQUE_ID_ddebug361, !72, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 857, i32 4}
!77 = !{ptr @el3_rx.__UNIQUE_ID_ddebug362, !76, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 868, i32 5}
!80 = !{ptr @el3_rx.__UNIQUE_ID_ddebug363, !79, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 877, i32 20}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 555, i32 4}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pop_tx_status.__UNIQUE_ID_ddebug354, !84, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 790, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @update_stats.__UNIQUE_ID_ddebug360, !88, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 373, i32 20}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 909, i32 2}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @el3_close.__UNIQUE_ID_ddebug364, !94, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 570, i32 2}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @el3_start_xmit.__UNIQUE_ID_ddebug355, !98, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 497, i32 21}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 142, i32 35}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 142, i32 43}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 142, i32 54}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 142, i32 65}
!111 = !{ptr @if_names, !112, !"if_names", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 142, i32 20}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 531, i32 19}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 429, i32 19}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 433, i32 19}
!119 = !{ptr @netdev_ethtool_ops, !120, !"netdev_ethtool_ops", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 488, i32 33}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 485, i32 3}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 243, i32 43}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 243, i32 50}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 243, i32 57}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 243, i32 64}
!131 = !{ptr @tc589_config.ram_split, !132, !"ram_split", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 243, i32 28}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 247, i32 2}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @tc589_config.__UNIQUE_ID_ddebug352, !134, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 251, i32 3}
!139 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @tc589_config._entry, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @tc589_config._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 294, i32 4}
!145 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @tc589_config._entry.56, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @tc589_config._entry_ptr.59, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 312, i32 3}
!150 = !{ptr @tc589_config._entry.60, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tc589_config._entry_ptr.62, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 317, i32 3}
!154 = !{ptr @tc589_config._entry.63, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tc589_config._entry_ptr.65, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 321, i32 19}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 322, i32 13}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 322, i32 21}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 324, i32 19}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 228, i32 2}
!166 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @tc589_detach.__UNIQUE_ID_ddebug351, !165, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 947, i32 2}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 949, i32 2}
!172 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 950, i32 2}
!175 = !{ptr @tc589_ids, !176, !"tc589_ids", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/3com/3c589_cs.c", i32 945, i32 38}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 2148977385, i64 2148977390, i64 2148977403, i64 2148977447, i64 2148977481, i64 2148977502}
!187 = !{!"auto-init"}
!188 = !{i64 2156582926}
!189 = !{i64 6174210}
!190 = !{i64 2156591439}
!191 = !{i64 6174410}
!192 = !{i64 2156592330}
!193 = !{i64 2156592991}
!194 = !{i64 2156585832}
!195 = !{i64 6175248}
!196 = !{i64 2156586686}
!197 = !{i64 2156616303}
!198 = !{i64 2156676981}
!199 = !{i64 2156677477}
!200 = !{i64 2156677967}
!201 = !{i64 2156678456}
!202 = !{i64 2156679006}
!203 = !{i64 2156679510}
!204 = !{i64 2156680046}
!205 = !{i64 2156680555}
!206 = !{i64 2156681441}
!207 = !{i64 2156623548}
!208 = !{i64 2156624162}
!209 = !{i64 2156624645}
!210 = !{i64 2156625716}
!211 = !{i64 2156625989}
!212 = !{i64 2156673782}
!213 = !{i64 2156597587}
!214 = !{i64 2156598501}
!215 = !{i64 2156599164}
!216 = !{i64 6175028}
!217 = !{i64 2156599454}
!218 = !{i64 2156600117}
!219 = !{i64 2156600440}
!220 = !{i64 2156601345}
!221 = !{i64 2156601999}
!222 = !{i64 2156602653}
!223 = !{i64 2156603307}
!224 = !{i64 2156603630}
!225 = !{i64 2156590249}
!226 = !{i64 2156591173}
!227 = !{i64 2156616563}
!228 = !{i64 2156604204}
!229 = !{i64 2156604705}
!230 = !{i64 2156605175}
!231 = !{i64 2156605718}
!232 = !{i64 2156606193}
!233 = !{i64 6174633}
!234 = !{i64 2156606576}
!235 = !{i64 2156607134}
!236 = !{i64 2156607662}
!237 = !{i64 2156608316}
!238 = !{i64 2156608970}
!239 = !{i64 2156609293}
!240 = !{i64 2156609807}
!241 = !{i64 2156610300}
!242 = !{i64 2156610787}
!243 = !{i64 2156611285}
!244 = !{i64 2156611837}
!245 = !{i64 2156612481}
!246 = !{i64 2156644853}
!247 = !{i64 2156645145}
!248 = !{i64 767708, i64 767769}
!249 = !{i64 770440}
!250 = !{!"branch_weights", i32 1, i32 2000}
!251 = !{i64 770725}
!252 = !{i64 2156647247}
!253 = !{i64 2156648161}
!254 = !{i64 2156648920}
!255 = !{i64 2156649435}
!256 = !{i64 2156649951}
!257 = !{i64 2156650214}
!258 = !{i64 2156650770}
!259 = !{i64 2156593314}
!260 = !{i64 2156593810}
!261 = !{i64 2156594269}
!262 = !{i64 2156594736}
!263 = !{i64 2156595243}
!264 = !{i64 2156595851}
!265 = !{i64 2156596405}
!266 = !{i64 2156597013}
!267 = !{i64 2156629287}
!268 = !{i64 2156629954}
!269 = !{i64 2156634769}
!270 = !{i64 2156635291}
!271 = !{i64 2156635859}
!272 = !{i64 2156636760}
!273 = !{i64 2156637083}
!274 = !{i64 2156637594}
!275 = !{i64 2156638081}
!276 = !{i64 2156638584}
!277 = !{i64 2156639109}
!278 = !{i64 2156639627}
!279 = !{i64 2156642982}
!280 = !{i64 2156666963}
!281 = !{i64 2156667626}
!282 = !{i64 2156668293}
!283 = !{i64 2156617082}
!284 = !{i64 2156619681}
!285 = !{i64 2156620128}
!286 = !{i64 2156657965}
!287 = !{i64 2156658523}
!288 = !{i64 2156659055}
!289 = !{i64 2156659336}
!290 = !{i64 2156659617}
!291 = !{i64 2156659898}
!292 = !{i64 2156660179}
!293 = !{i64 2156660460}
!294 = !{i64 2156660741}
!295 = !{i64 2156661022}
!296 = !{i64 2156661303}
!297 = !{i64 2156661957}
!298 = !{i64 2156662611}
!299 = !{i64 2156662934}
!300 = !{i64 2156663448}
