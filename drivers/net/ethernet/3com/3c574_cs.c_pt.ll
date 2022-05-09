; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/3com/3c574_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/3com/3c574_cs.c"
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
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author341 = internal constant [60 x i8] c"3c574_cs.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [62 x i8] c"3c574_cs.description=3Com 3c574 series PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [49 x i8] c"3c574_cs.file=drivers/net/ethernet/3com/3c574_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [21 x i8] c"3c574_cs.license=GPL\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [28 x i8] c"3c574_cs.max_interrupt_work\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype345 = internal constant [41 x i8] c"3c574_cs.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [21 x i8] c"3c574_cs.full_duplex\00", align 1
@full_duplex = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype346 = internal constant [34 x i8] c"3c574_cs.parmtype=full_duplex:int\00", section ".modinfo", align 1
@__param_str_auto_polarity = internal constant [23 x i8] c"3c574_cs.auto_polarity\00", align 1
@auto_polarity = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_auto_polarity = internal constant %struct.kernel_param { ptr @__param_str_auto_polarity, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @auto_polarity } }, section "__param", align 4
@__UNIQUE_ID_auto_polaritytype347 = internal constant [36 x i8] c"3c574_cs.parmtype=auto_polarity:int\00", section ".modinfo", align 1
@__initcall__kmod_3c574_cs__366_1164_tc574_driver_init6 = internal global ptr @tc574_driver_init, section ".initcall6.init", align 4
@tc574_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @tc574_probe, ptr @tc574_detach, ptr @tc574_suspend, ptr @tc574_resume, ptr null, ptr @tc574_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_tc574_driver_exit = internal global ptr @tc574_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3c574_cs\00", [23 x i8] zeroinitializer }, align 32
@tc574_ids = internal constant { [3 x %struct.pcmcia_device_id], [36 x i8] } { [3 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 257, i16 1396, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 523, i16 257, i16 1366, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.78 }, %struct.pcmcia_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tc574_probe.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tc574_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/3com/3c574_cs.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"3c574_attach()\0A\00", [16 x i8] zeroinitializer }, align 32
@tc574_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lp->window_lock\00", [47 x i8] zeroinitializer }, align 32
@el3_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @el3_open, ptr @el3_close, ptr @el3_start_xmit, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @el3_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @el3_tx_timeout, ptr null, ptr null, ptr null, ptr @el3_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@el3_open.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"el3_open\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: opened, status %4.4x.\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"command 0x%04x did not complete!\0A\00", [62 x i8] zeroinitializer }, align 32
@mii_preamble_required = internal global { i1, [31 x i8] } zeroinitializer, align 32
@el3_close.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 1, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"el3_close\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: shutting down ethercard.\0A\00", [34 x i8] zeroinitializer }, align 32
@update_stats.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"update_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: updating the statistics.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"3c574_cs: %s: updating the statistics.\0A\00", [56 x i8] zeroinitializer }, align 32
@el3_start_xmit.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"el3_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: el3_start_xmit(length = %ld) called, status %4.4x.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"3c574_cs: %s: el3_start_xmit(length = %ld) called, status %4.4x.\0A\00", [62 x i8] zeroinitializer }, align 32
@pop_tx_status.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pop_tx_status\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: transmit error: status 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"3c574_cs: %s: transmit error: status 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@el3_ioctl.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"el3_ioctl\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: In ioct(%-.6s, %#4.4x) %4.4x %4.4x %4.4x %4.4x.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"3c574_cs: %s: In ioct(%-.6s, %#4.4x) %4.4x %4.4x %4.4x %4.4x.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transmit timed out!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"  irq status %04x, rx status %04x, tx status %02x, tx free %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"  diagnostics: fifo %04x net %04x ethernet %04x media %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@tc574_config.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc574_config\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"3c574_config()\0A\00", [16 x i8] zeroinitializer }, align 32
@tc574_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\0153c574_cs: IO port conflict at 0x%03lx-0x%03lx\0A\00", [47 x i8] zeroinitializer }, align 32
@tc574_config._entry_ptr = internal global ptr @tc574_config._entry, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"3Com 3c574\00", [21 x i8] zeroinitializer }, align 32
@tc574_config._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0163c574_cs:   ASIC rev %d,\00", [37 x i8] zeroinitializer }, align 32
@tc574_config._entry_ptr.31 = internal global ptr @tc574_config._entry.29, section ".printk_index", align 4
@tc574_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&lp->media)\00", [19 x i8] zeroinitializer }, align 32
@tc574_config.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.33, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  MII transceiver at index %d, status %x.\0A\00", [53 x i8] zeroinitializer }, align 32
@tc574_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0153c574_cs:   No MII transceivers found!\0A\00", [54 x i8] zeroinitializer }, align 32
@tc574_config._entry_ptr.36 = internal global ptr @tc574_config._entry.34, section ".printk_index", align 4
@tc574_config._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\0153c574_cs: register_netdev() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@tc574_config._entry_ptr.39 = internal global ptr @tc574_config._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s at io %#3lx, irq %d, hw_addr %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c" %dK FIFO split %s Rx:Tx, %sMII interface.\0A\00", [52 x i8] zeroinitializer }, align 32
@ram_split = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"autoselect \00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@el3_interrupt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"el3_interrupt\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: interrupt, status %4.4x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"3c574_cs: %s: interrupt, status %4.4x.\0A\00", [56 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.47, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Interrupt from dead card\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"3c574_cs: %s: Interrupt from dead card\0A\00", [56 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.49, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  TX room bit was handled.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"3c574_cs:   TX room bit was handled.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"adapter failure, FIFO diagnostic register %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.52, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Too much work in interrupt, status %4.4x.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"3c574_cs: %s: Too much work in interrupt, status %4.4x.\0A\00", [39 x i8] zeroinitializer }, align 32
@el3_interrupt.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.54, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: exiting interrupt, status %4.4x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"3c574_cs: %s: exiting interrupt, status %4.4x.\0A\00", [48 x i8] zeroinitializer }, align 32
@el3_rx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"el3_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: in rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"3c574_cs: %s: in rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", [34 x i8] zeroinitializer }, align 32
@el3_rx.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.59, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"  Receiving packet size %d status %4.4x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"3c574_cs:   Receiving packet size %d status %4.4x.\0A\00", [44 x i8] zeroinitializer }, align 32
@el3_rx.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.61, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: couldn't allocate a sk_buff of size %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"3c574_cs: %s: couldn't allocate a sk_buff of size %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt(s) dropped!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s link beat\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"autonegotiation restarted\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"autonegotiation complete: %dbaseT-%cD selected\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"link partner did not autonegotiate\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"remote fault detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jabber detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5:3\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3:1\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1:1\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3:5\00", [28 x i8] zeroinitializer }, align 32
@tc574_detach.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc574_detach\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"3c574_detach()\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cis/3CCFEM556.cis\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 109, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 112, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"auto_polarity\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 115, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"tc574_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1155, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1157, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"tc574_ids\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1148, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 266, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 276, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"el3_netdev_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 249, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 686, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 496, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"mii_preamble_required\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1119, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 955, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 736, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 720, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1041, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 696, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 475, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 480, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 315, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 356, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 365, i32 14 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 372, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 379, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 400, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 409, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 425, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 429, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 431, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant [10 x i8] c"ram_split\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 301, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 434, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 434, i32 45 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 778, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 787, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 797, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 819, i32 24 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 837, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 847, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 989, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1011, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1022, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 874, i32 21 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 897, i32 21 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 898, i32 39 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 898, i32 48 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 902, i32 22 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 906, i32 22 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 911, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 921, i32 21 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 923, i32 21 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 301, i32 35 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 301, i32 42 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 301, i32 49 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 301, i32 56 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 292, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private constant [40 x i8] c"../drivers/net/ethernet/3com/3c574_cs.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1150, i32 2 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_auto_polaritytype347, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_full_duplextype346, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_max_interrupt_worktype345, ptr @__exitcall_tc574_driver_exit, ptr @__initcall__kmod_3c574_cs__366_1164_tc574_driver_init6, ptr @__param_auto_polarity, ptr @__param_full_duplex, ptr @__param_max_interrupt_work, ptr @tc574_config._entry, ptr @tc574_config._entry.29, ptr @tc574_config._entry.34, ptr @tc574_config._entry.37, ptr @tc574_config._entry_ptr, ptr @tc574_config._entry_ptr.31, ptr @tc574_config._entry_ptr.36, ptr @tc574_config._entry_ptr.39, ptr @tc574_driver_exit, ptr @max_interrupt_work, ptr @full_duplex, ptr @auto_polarity, ptr @tc574_driver, ptr @.str, ptr @tc574_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tc574_probe.__key, ptr @.str.4, ptr @el3_netdev_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mii_preamble_required, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @tc574_config.__key, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @ram_split, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_polarity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_ids to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el3_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_preamble_required to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_config._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc574_config._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ram_split to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc574_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @tc574_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc574_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @tc574_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc574_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc574_probe.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc574_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc574_probe.__UNIQUE_ID_ddebug348, ptr noundef %dev3, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 112, i32 noundef 1, i32 noundef 1) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %priv, align 8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %add.ptr.i, align 4
  %window_lock = getelementptr i8, ptr %call4, i32 2372
  tail call void @__raw_spin_lock_init(ptr noundef %window_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @tc574_probe.__key, i16 noundef signext 3) #6
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %end, align 4
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
  store i32 80, ptr %watchdog_timeo, align 4
  %call16 = tail call fastcc i32 @tc574_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc574_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc574_detach.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc574_detach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc574_detach.__UNIQUE_ID_ddebug349, ptr noundef %dev3, ptr noundef nonnull @.str.77) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #6
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  tail call void @free_netdev(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc574_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc574_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call fastcc void @tc574_reset(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #6
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
define internal fastcc i32 @tc574_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %addr, align 2, !annotation !195
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !195
  %5 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc574_config.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc574_config, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc574_config.__UNIQUE_ID_ddebug350, ptr noundef %dev4, ptr noundef nonnull @.str.26) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 14
  %8 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %io_lines, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add = add nuw nsw i32 %j.0354, 32
  %cmp = icmp ult i32 %j.0354, 992
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.failed_crit_edge

for.cond.failed_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end
  %j.0354 = phi i32 [ 0, %do.end ], [ %add, %for.cond.for.body_crit_edge ]
  %xor = xor i32 %j.0354, 768
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %xor, ptr %10, align 4
  %call5 = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.end11, label %for.cond

if.end11:                                         ; preds = %for.body
  %call12 = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @el3_interrupt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.failed_crit_edge

if.end11.failed_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.failed_crit_edge

if.end15.failed_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end19:                                         ; preds = %if.end15
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 8
  %irq20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %14 = ptrtoint ptr %irq20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq20, align 4
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %base_addr, align 32
  %call25 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext -120, ptr noundef nonnull %buf) #6
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %tobool26.not = icmp ne ptr %21, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call25)
  %cmp27 = icmp ugt i32 %call25, 5
  %or.cond = select i1 %tobool26.not, i1 %cmp27, i1 false
  br i1 %or.cond, label %for.body31.preheader, label %if.else

for.body31.preheader:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv = zext i8 %23 to i16
  %24 = shl nuw i16 %conv, 8
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %addr, align 2
  %arrayidx32.1 = getelementptr i8, ptr %21, i32 2
  %26 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx32.1, align 1
  %conv.1 = zext i8 %27 to i16
  %28 = shl nuw i16 %conv.1, 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %3, align 2
  %arrayidx32.2 = getelementptr i8, ptr %21, i32 4
  %30 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx32.2, align 1
  %conv.2 = zext i8 %31 to i16
  %32 = shl nuw i16 %conv.2, 8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %5, align 2
  call void @kfree(ptr noundef nonnull %21) #6
  %.pre = add i32 %18, 14
  %.pre362 = and i32 %.pre, 1048575
  %.pre363 = or i32 %.pre362, -18874368
  %.pre364 = inttoptr i32 %.pre363 to ptr
  br label %if.end66

if.else:                                          ; preds = %if.end19
  call void @kfree(ptr noundef %21) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  call void @arm_heavy_mb() #6
  %add39 = add i32 %18, 14
  %and = and i32 %add39, 1048575
  %add40 = or i32 %and, -18874368
  %34 = inttoptr i32 %add40 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 8) #6, !srcloc !197
  %add1.i = add i32 %18, 10
  %and.i = and i32 %add1.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %35 = inttoptr i32 %add2.i to ptr
  %add14.i = add i32 %18, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %36 = inttoptr i32 %add16.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 2562) #6, !srcloc !197
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else
  %timer.023.i = phi i32 [ 1620, %if.else ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %37 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %35) #6, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %.mask.i = and i16 %37, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp11.i = icmp eq i16 %.mask.i, 0
  %dec.i = add nsw i32 %timer.023.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer.023.i)
  %cmp.not.i = icmp eq i32 %timer.023.i, 0
  %or.cond.i = select i1 %cmp11.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %read_eeprom.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

read_eeprom.exit:                                 ; preds = %for.body.i
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #6, !srcloc !199
  %39 = call i16 @llvm.bswap.i16(i16 %38) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %addr, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 2818) #6, !srcloc !197
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %read_eeprom.exit
  %timer.023.i.1 = phi i32 [ 1620, %read_eeprom.exit ], [ %dec.i.1, %for.body.i.1.for.body.i.1_crit_edge ]
  %41 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %35) #6, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %.mask.i.1 = and i16 %41, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.1)
  %cmp11.i.1 = icmp eq i16 %.mask.i.1, 0
  %dec.i.1 = add nsw i32 %timer.023.i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer.023.i.1)
  %cmp.not.i.1 = icmp eq i32 %timer.023.i.1, 0
  %or.cond.i.1 = select i1 %cmp11.i.1, i1 true, i1 %cmp.not.i.1
  br i1 %or.cond.i.1, label %read_eeprom.exit.1, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.1

read_eeprom.exit.1:                               ; preds = %for.body.i.1
  %42 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #6, !srcloc !199
  %43 = call i16 @llvm.bswap.i16(i16 %42) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %3, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 3074) #6, !srcloc !197
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %for.body.i.2.for.body.i.2_crit_edge, %read_eeprom.exit.1
  %timer.023.i.2 = phi i32 [ 1620, %read_eeprom.exit.1 ], [ %dec.i.2, %for.body.i.2.for.body.i.2_crit_edge ]
  %45 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %35) #6, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %.mask.i.2 = and i16 %45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.2)
  %cmp11.i.2 = icmp eq i16 %.mask.i.2, 0
  %dec.i.2 = add nsw i32 %timer.023.i.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer.023.i.2)
  %cmp.not.i.2 = icmp eq i32 %timer.023.i.2, 0
  %or.cond.i.2 = select i1 %cmp11.i.2, i1 true, i1 %cmp.not.i.2
  br i1 %or.cond.i.2, label %read_eeprom.exit.2, label %for.body.i.2.for.body.i.2_crit_edge

for.body.i.2.for.body.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.2

read_eeprom.exit.2:                               ; preds = %for.body.i.2
  %46 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #6, !srcloc !199
  %47 = call i16 @llvm.bswap.i16(i16 %46) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %5, align 2
  %49 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24672, i16 %50)
  %cmp54 = icmp eq i16 %50, 24672
  br i1 %cmp54, label %do.end59, label %read_eeprom.exit.2.if.end66_crit_edge

read_eeprom.exit.2.if.end66_crit_edge:            ; preds = %read_eeprom.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end59:                                         ; preds = %read_eeprom.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base_addr, align 32
  %add63 = add i32 %52, 15
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %52, i32 noundef %add63) #9
  br label %failed

if.end66:                                         ; preds = %read_eeprom.exit.2.if.end66_crit_edge, %for.body31.preheader
  %.pre-phi = phi ptr [ %34, %read_eeprom.exit.2.if.end66_crit_edge ], [ %.pre364, %for.body31.preheader ]
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #6
  %arrayidx67 = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 19, i32 1
  %53 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %54, null
  %.str.28. = select i1 %tobool68.not, ptr @.str.28, ptr %54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  call void @arm_heavy_mb() #6
  %add77 = add i32 %18, 22
  %and78 = and i32 %add77, 1048575
  %add79 = or i32 %and78, -18874368
  %55 = inttoptr i32 %add79 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %55, i16 16) #6, !srcloc !197
  %add81 = add i32 %18, 2
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %56 = inttoptr i32 %add83 to ptr
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #6, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %55, i16 0) #6, !srcloc !197
  %58 = lshr i8 %57, 3
  %59 = zext i8 %58 to i32
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %59) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %.pre-phi, i16 776) #6, !srcloc !197
  %and109 = and i32 %18, 1048575
  %add110 = or i32 %and109, -18874368
  %60 = inttoptr i32 %add110 to ptr
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #6, !srcloc !207
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %default_media = getelementptr i8, ptr %1, i32 2313
  %63 = ptrtoint ptr %default_media to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %default_media, align 1
  %sh.diff = lshr i32 %62, 16
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 112
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.shl, %bf.clear
  %and116 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  %64 = lshr exact i32 %and116, 17
  %65 = trunc i32 %64 to i8
  %bf.set122 = or i8 %bf.set, %65
  %66 = ptrtoint ptr %default_media to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %bf.set122, ptr %default_media, align 1
  %media = getelementptr i8, ptr %1, i32 2316
  call void @init_timer_key(ptr noundef %media, ptr noundef nonnull @media_check, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @tc574_config.__key) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  %add130 = add i32 %18, 8
  %and131 = and i32 %add130, 1048575
  %add132 = or i32 %and131, -18874368
  %67 = inttoptr i32 %add132 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %67, i16 16512) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %67, i16 16576) #6, !srcloc !197
  call fastcc void @tc574_wait_for_completion(ptr noundef %1, i32 noundef 22528)
  call fastcc void @tc574_wait_for_completion(ptr noundef %1, i32 noundef 10240)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %67, i16 16512) #6, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %.pre-phi, i16 1032) #6, !srcloc !197
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %for.inc189.do.body.i.preheader_crit_edge, %if.end66
  %phy.0357 = phi i32 [ 1, %if.end66 ], [ %inc190, %for.inc189.do.body.i.preheader_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %dec1.i = phi i32 [ %dec.i341, %do.body.i.do.body.i_crit_edge ], [ 31, %do.body.i.preheader ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %67, i16 1536) #6, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %67, i16 1792) #6, !srcloc !197
  %dec.i341 = add nsw i32 %dec1.i, -1
  %cmp.not.i342 = icmp eq i32 %dec1.i, 0
  br i1 %cmp.not.i342, label %mdio_sync.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

mdio_sync.exit:                                   ; preds = %do.body.i
  %and159 = and i32 %phy.0357, 31
  %call160 = call fastcc i32 @mdio_read(i32 noundef %18, i32 noundef %and159, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call160)
  %cmp161.not = icmp eq i32 %call160, 65535
  br i1 %cmp161.not, label %for.inc189, label %if.then163

if.then163:                                       ; preds = %mdio_sync.exit
  %conv165 = trunc i32 %and159 to i8
  %phys = getelementptr i8, ptr %1, i32 2312
  %70 = ptrtoint ptr %phys to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv165, ptr %phys, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc574_config.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc574_config, %if.then178)) #6
          to label %do.end182 [label %if.then178], !srcloc !194

if.then178:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  %dev179 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tc574_config.__UNIQUE_ID_ddebug351, ptr noundef %dev179, ptr noundef nonnull @.str.33, i32 noundef %phy.0357, i32 noundef %call160) #6
  br label %do.end182

do.end182:                                        ; preds = %if.then178, %if.then163
  %and183 = and i32 %call160, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %cmp184 = icmp eq i32 %and183, 0
  br i1 %cmp184, label %if.then186, label %do.end182.for.end191_crit_edge

do.end182.for.end191_crit_edge:                   ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end191

if.then186:                                       ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mii_preamble_required, align 1
  br label %for.end191

for.inc189:                                       ; preds = %mdio_sync.exit
  %inc190 = add nuw nsw i32 %phy.0357, 1
  %exitcond.not = icmp eq i32 %inc190, 33
  br i1 %exitcond.not, label %for.inc189.cleanup221_crit_edge, label %for.inc189.do.body.i.preheader_crit_edge

for.inc189.do.body.i.preheader_crit_edge:         ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.preheader

for.inc189.cleanup221_crit_edge:                  ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup221

for.end191:                                       ; preds = %if.then186, %do.end182.for.end191_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %phy.0357)
  %cmp192 = icmp ugt i32 %phy.0357, 32
  br i1 %cmp192, label %for.end191.cleanup221_crit_edge, label %if.end200

for.end191.cleanup221_crit_edge:                  ; preds = %for.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup221

if.end200:                                        ; preds = %for.end191
  %71 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %phys, align 4
  %conv202 = zext i8 %72 to i32
  %call203 = call fastcc i32 @mdio_read(i32 noundef %18, i32 noundef %conv202, i32 noundef 16)
  %or = or i32 %call203, 64
  %73 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %phys, align 4
  %conv205 = zext i8 %74 to i32
  call fastcc void @mdio_write(i32 noundef %18, i32 noundef %conv205, i32 noundef 16, i32 noundef %or)
  %75 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %phys, align 4
  %conv207 = zext i8 %76 to i32
  %call208 = call fastcc i32 @mdio_read(i32 noundef %18, i32 noundef %conv207, i32 noundef 4)
  %conv209 = trunc i32 %call208 to i16
  %advertising = getelementptr i8, ptr %1, i32 2308
  %77 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv209, ptr %advertising, align 4
  %78 = load i32, ptr @full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool210.not = icmp eq i32 %78, 0
  br i1 %tobool210.not, label %if.end200.cleanup.cont223_crit_edge, label %if.then211

if.end200.cleanup.cont223_crit_edge:              ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.cont223

if.then211:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  %conv215 = and i16 %conv209, -673
  %79 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv215, ptr %advertising, align 4
  %80 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %phys, align 4
  %conv217 = zext i8 %81 to i32
  %conv219 = zext i16 %conv215 to i32
  call fastcc void @mdio_write(i32 noundef %18, i32 noundef %conv217, i32 noundef 4, i32 noundef %conv219)
  br label %cleanup.cont223

cleanup221:                                       ; preds = %for.end191.cleanup221_crit_edge, %for.inc189.cleanup221_crit_edge
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %failed

cleanup.cont223:                                  ; preds = %if.then211, %if.end200.cleanup.cont223_crit_edge
  %dev224 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %82 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %dev224, ptr %parent, align 8
  %call226 = call i32 @register_netdev(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227.not = icmp eq i32 %call226, 0
  br i1 %cmp227.not, label %if.end235, label %do.end232

do.end232:                                        ; preds = %cleanup.cont223
  call void @__sanitizer_cov_trace_pc() #8
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #9
  br label %failed

if.end235:                                        ; preds = %cleanup.cont223
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base_addr, align 32
  %85 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq20, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %87 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull %.str.28., i32 noundef %84, i32 noundef %86, ptr noundef %88) #9
  %and238 = and i32 %62, 7
  %shl = shl nuw nsw i32 8, %and238
  %shr240 = and i32 %sh.diff, 3
  %arrayidx241 = getelementptr [4 x ptr], ptr @ram_split, i32 0, i32 %shr240
  %89 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx241, align 4
  %cond244 = select i1 %tobool117.not, ptr @.str.43, ptr @.str.42
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %shl, ptr noundef %90, ptr noundef nonnull %cond244) #9
  br label %cleanup245

failed:                                           ; preds = %do.end232, %cleanup221, %do.end59, %if.end15.failed_crit_edge, %if.end11.failed_crit_edge, %for.cond.failed_crit_edge
  call void @pcmcia_disable_device(ptr noundef %link) #6
  br label %cleanup245

cleanup245:                                       ; preds = %failed, %if.end235
  %retval.0 = phi i32 [ -19, %failed ], [ 0, %if.end235 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call fastcc void @tc574_reset(ptr noundef %dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 100
  %media = getelementptr i8, ptr %dev, i32 2316
  %expires = getelementptr i8, ptr %dev, i32 2324
  %7 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %media) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_open.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_open, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !194

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  %add9 = add i32 %9, 14
  %and = and i32 %add9, 1048575
  %add10 = or i32 %and, -18874368
  %10 = inttoptr i32 %add10 to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #6, !srcloc !199
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el3_open.__UNIQUE_ID_ddebug352, ptr noundef %dev8, ptr noundef nonnull @.str.6, ptr noundef %dev, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_close.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_close, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el3_close.__UNIQUE_ID_ddebug365, ptr noundef %dev4, ptr noundef nonnull @.str.9, ptr noundef %dev) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %3) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.if.end51_crit_edge, label %if.then7

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %4 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 176) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 24) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 80) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 8) #6, !srcloc !197
  %window_lock = getelementptr i8, ptr %dev, i32 2372
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  tail call fastcc void @update_stats(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 112) #6, !srcloc !197
  br label %if.end51

if.end51:                                         ; preds = %if.then7, %do.end.if.end51_crit_edge
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 23
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %media = getelementptr i8, ptr %dev, i32 2316
  %call52 = tail call i32 @del_timer_sync(ptr noundef %media) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_start_xmit.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_start_xmit, %if.then)) #6
          to label %do.body9 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %4 = inttoptr i32 %add4 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #6, !srcloc !199
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_start_xmit.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.15, ptr noundef %dev, i32 noundef %3, i32 noundef %conv) #6
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %window_lock = getelementptr i8, ptr %dev, i32 2372
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  %len18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len18, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %9 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_bytes, align 4
  %add19 = add i32 %10, %8
  store i32 %add19, ptr %tx_bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len18, align 4
  %conv24 = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %add25 = add i32 %1, 16
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %14 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %13) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #6, !srcloc !197
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len18, align 4
  %add41 = add i32 %18, 3
  %shr = lshr i32 %add41, 2
  tail call void @__raw_writesl(ptr noundef nonnull %14, ptr noundef %16, i32 noundef %shr) #6
  %add43 = add i32 %1, 12
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %19 = inttoptr i32 %add45 to ptr
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %19) #6, !srcloc !199
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp2(i16 1537, i16 %21)
  %cmp50 = icmp ult i16 %21, 1537
  br i1 %cmp50, label %if.then52, label %do.body9.if.end60_crit_edge

do.body9.if.end60_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then52:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %add56 = add i32 %1, 14
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %24 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 -32623) #6, !srcloc !197
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %do.body9.if.end60_crit_edge
  tail call fastcc void @pop_tx_status(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call13) #6
  tail call void @consume_skb(ptr noundef %skb) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %window_lock = getelementptr i8, ptr %dev, i32 2372
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
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
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %add.i = add i32 %1, 14
  %and1.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and1.i, -18874368
  %4 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 3968) #6, !srcloc !197
  br label %set_rx_mode.exit

if.else.i:                                        ; preds = %entry
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %and4.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool5.not.i, i1 false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add18.i = add i32 %1, 14
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %7 = inttoptr i32 %add20.i to ptr
  br i1 %or.cond.i, label %do.body15.i, label %do.body7.i

do.body7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 1920) #6, !srcloc !197
  br label %set_rx_mode.exit

do.body15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 1408) #6, !srcloc !197
  br label %set_rx_mode.exit

set_rx_mode.exit:                                 ; preds = %do.body15.i, %do.body7.i, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %phys = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phys, align 4
  %4 = and i8 %3, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_ioctl.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_ioctl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ifr_ifru.i, align 2
  %conv6 = zext i16 %6 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_num, align 2
  %conv7 = zext i16 %8 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val_in, align 2
  %conv8 = zext i16 %10 to i32
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %11 = ptrtoint ptr %val_out to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %val_out, align 2
  %conv9 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_ioctl.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %do.end.sw.bb12_crit_edge
    i32 35145, label %sw.bb55
  ]

do.end.sw.bb12_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i8 %4 to i16
  %14 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv10, ptr %ifr_ifru.i, align 2
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %do.end.sw.bb12_crit_edge
  %window_lock = getelementptr i8, ptr %dev, i32 2372
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  %add = add i32 %1, 14
  %and23 = and i32 %add, 1048575
  %add24 = or i32 %and23, -18874368
  %15 = inttoptr i32 %add24 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  %17 = lshr i16 %16, 5
  %18 = and i16 %17, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 1032) #6, !srcloc !197
  %19 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ifr_ifru.i, align 2
  %21 = and i16 %20, 31
  %and38 = zext i16 %21 to i32
  %reg_num39 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %22 = ptrtoint ptr %reg_num39 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reg_num39, align 2
  %24 = and i16 %23, 31
  %and41 = zext i16 %24 to i32
  %call42 = tail call fastcc i32 @mdio_read(i32 noundef %1, i32 noundef %and38, i32 noundef %and41)
  %conv43 = trunc i32 %call42 to i16
  %val_out44 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %25 = ptrtoint ptr %val_out44 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv43, ptr %val_out44, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %26 = or i16 %18, 2048
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %27) #6, !srcloc !197
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call18) #6
  br label %cleanup

sw.bb55:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %window_lock65 = getelementptr i8, ptr %dev, i32 2372
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock65) #6
  %add73 = add i32 %1, 14
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %28 = inttoptr i32 %add75 to ptr
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  %30 = lshr i16 %29, 5
  %31 = and i16 %30, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 1032) #6, !srcloc !197
  %32 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ifr_ifru.i, align 2
  %34 = and i16 %33, 31
  %and90 = zext i16 %34 to i32
  %reg_num91 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %35 = ptrtoint ptr %reg_num91 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %reg_num91, align 2
  %37 = and i16 %36, 31
  %and93 = zext i16 %37 to i32
  %val_in94 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %val_in94 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %val_in94, align 2
  %conv95 = zext i16 %39 to i32
  tail call fastcc void @mdio_write(i32 noundef %1, i32 noundef %and90, i32 noundef %and93, i32 noundef %conv95)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %40 = or i16 %31, 2048
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %41) #6, !srcloc !197
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock65, i32 noundef %call67) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb55, %sw.bb12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb55 ], [ 0, %sw.bb12 ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @el3_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %add.i = add i32 %3, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 264) #6, !srcloc !197
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #6, !srcloc !199
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  %conv.i = zext i16 %6 to i32
  %add8.i = add i32 %3, 24
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %7 = inttoptr i32 %add10.i to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #6, !srcloc !199
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %conv14.i = zext i16 %9 to i32
  %add16.i = add i32 %3, 27
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %10 = inttoptr i32 %add18.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  %conv22.i = zext i8 %11 to i32
  %add24.i = add i32 %3, 12
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %12 = inttoptr i32 %add26.i to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #6, !srcloc !199
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  %conv30.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv.i, i32 noundef %conv14.i, i32 noundef %conv22.i, i32 noundef %conv30.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 1032) #6, !srcloc !197
  %add39.i = add i32 %3, 4
  %and40.i = and i32 %add39.i, 1048575
  %add41.i = or i32 %and40.i, -18874368
  %15 = inttoptr i32 %add41.i to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #6, !srcloc !199
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  %conv45.i = zext i16 %17 to i32
  %add47.i = add i32 %3, 6
  %and48.i = and i32 %add47.i, 1048575
  %add49.i = or i32 %and48.i, -18874368
  %18 = inttoptr i32 %add49.i to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #6, !srcloc !199
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  %conv53.i = zext i16 %20 to i32
  %add55.i = add i32 %3, 8
  %and56.i = and i32 %add55.i, 1048575
  %add57.i = or i32 %and56.i, -18874368
  %21 = inttoptr i32 %add57.i to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #6, !srcloc !199
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  %conv61.i = zext i16 %23 to i32
  %add63.i = add i32 %3, 10
  %and64.i = and i32 %add63.i, 1048575
  %add65.i = or i32 %and64.i, -18874368
  %24 = inttoptr i32 %add65.i to ptr
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %24) #6, !srcloc !199
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  %conv69.i = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv45.i, i32 noundef %conv53.i, i32 noundef %conv61.i, i32 noundef %conv69.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 264) #6, !srcloc !197
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %27 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %tx_errors, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 12
  %32 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i.i = icmp eq i32 %33, %31
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %31, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_addr, align 32
  %add.i9 = add i32 %36, 14
  %and.i10 = and i32 %add.i9, 1048575
  %add1.i11 = or i32 %and.i10, -18874368
  %37 = inttoptr i32 %add1.i11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 88) #6, !srcloc !197
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %netif_trans_update.exit
  %i.0.i = phi i32 [ 1500, %netif_trans_update.exit ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.then13.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_addr, align 32
  %add4.i = add i32 %39, 14
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %40 = inttoptr i32 %add6.i to ptr
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %42 = and i16 %41, 16
  %tobool.not.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i, label %while.body.i.tc574_wait_for_completion.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.tc574_wait_for_completion.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc574_wait_for_completion.exit

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 22528) #9
  br label %tc574_wait_for_completion.exit

tc574_wait_for_completion.exit:                   ; preds = %if.then13.i, %while.body.i.tc574_wait_for_completion.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  tail call void @arm_heavy_mb() #6
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %43 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 72) #6, !srcloc !197
  %44 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %45) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @el3_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %window_lock = getelementptr i8, ptr %dev, i32 2372
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  tail call fastcc void @update_stats(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc574_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %3, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 4096) #6, !srcloc !197
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 1500, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.then13.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  %add4.i = add i32 %6, 14
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %7 = inttoptr i32 %add6.i to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %9 = and i16 %8, 16
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %while.body.i.do.body48_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.do.body48_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 16) #9
  br label %do.body48

do.body48:                                        ; preds = %if.then13.i, %while.body.i.do.body48_crit_edge
  %window_lock = getelementptr i8, ptr %dev, i32 2372
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  tail call void @arm_heavy_mb() #6
  %add = add i32 %1, 28
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %10 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  tail call void @arm_heavy_mb() #6
  %add14 = add i32 %1, 22
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %11 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  tail call void @arm_heavy_mb() #6
  %add21 = add i32 %1, 14
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %12 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 520) #6, !srcloc !197
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %and31 = and i32 %1, 1048575
  %add32 = or i32 %and31, -18874368
  %17 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %16) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1, align 1
  %add30.1 = add i32 %1, 1
  %and31.1 = and i32 %add30.1, 1048575
  %add32.1 = or i32 %and31.1, -18874368
  %22 = inttoptr i32 %add32.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %21) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %add30.2 = add i32 %1, 2
  %and31.2 = and i32 %add30.2, 1048575
  %add32.2 = or i32 %and31.2, -18874368
  %27 = inttoptr i32 %add32.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %26) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 1
  %add30.3 = add i32 %1, 3
  %and31.3 = and i32 %add30.3, 1048575
  %add32.3 = or i32 %and31.3, -18874368
  %32 = inttoptr i32 %add32.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %31) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.4, align 1
  %add30.4 = add i32 %1, 4
  %and31.4 = and i32 %add30.4, 1048575
  %add32.4 = or i32 %and31.4, -18874368
  %37 = inttoptr i32 %add32.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %36) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %39, i32 5
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.5, align 1
  %add30.5 = add i32 %1, 5
  %and31.5 = and i32 %add30.5, 1048575
  %add32.5 = or i32 %and31.5, -18874368
  %42 = inttoptr i32 %add32.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %41) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %add41 = add i32 %1, 6
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %43 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %add41.1 = add i32 %1, 8
  %and42.1 = and i32 %add41.1, 1048575
  %add43.1 = or i32 %and42.1, -18874368
  %44 = inttoptr i32 %add43.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %add41.2 = add i32 %1, 10
  %and42.2 = and i32 %add41.2, 1048575
  %add43.2 = or i32 %and42.2, -18874368
  %45 = inttoptr i32 %add43.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 776) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  tail call void @arm_heavy_mb() #6
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %46 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %47)
  %cmp58 = icmp ugt i32 %47, 1500
  %conv60 = select i1 %cmp58, i8 64, i8 0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv60) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  tail call void @arm_heavy_mb() #6
  %autoselect = getelementptr i8, ptr %dev, i32 2313
  %48 = ptrtoint ptr %autoselect to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %autoselect, align 1
  %49 = and i8 %bf.load, -128
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 17
  %or = or i32 %51, 6422555
  %52 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %52) #6, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 16512) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 16576) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 264) #6, !srcloc !197
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base_addr, align 32
  %add.i328 = add i32 %55, 14
  %and.i329 = and i32 %add.i328, 1048575
  %add1.i330 = or i32 %and.i329, -18874368
  %56 = inttoptr i32 %add1.i330 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %56, i16 88) #6, !srcloc !197
  br label %while.cond.i334

while.cond.i334:                                  ; preds = %while.body.i339.while.cond.i334_crit_edge, %do.body48
  %i.0.i331 = phi i32 [ 1500, %do.body48 ], [ %dec.i332, %while.body.i339.while.cond.i334_crit_edge ]
  %dec.i332 = add nsw i32 %i.0.i331, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i332)
  %cmp.not.i333 = icmp eq i32 %dec.i332, 0
  br i1 %cmp.not.i333, label %if.then13.i340, label %while.body.i339

while.body.i339:                                  ; preds = %while.cond.i334
  %57 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base_addr, align 32
  %add4.i335 = add i32 %58, 14
  %and5.i336 = and i32 %add4.i335, 1048575
  %add6.i337 = or i32 %and5.i336, -18874368
  %59 = inttoptr i32 %add6.i337 to ptr
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %59) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %61 = and i16 %60, 16
  %tobool.not.i338 = icmp eq i16 %61, 0
  br i1 %tobool.not.i338, label %while.body.i339.tc574_wait_for_completion.exit341_crit_edge, label %while.body.i339.while.cond.i334_crit_edge

while.body.i339.while.cond.i334_crit_edge:        ; preds = %while.body.i339
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i334

while.body.i339.tc574_wait_for_completion.exit341_crit_edge: ; preds = %while.body.i339
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc574_wait_for_completion.exit341

if.then13.i340:                                   ; preds = %while.cond.i334
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 22528) #9
  br label %tc574_wait_for_completion.exit341

tc574_wait_for_completion.exit341:                ; preds = %if.then13.i340, %while.body.i339.tc574_wait_for_completion.exit341_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base_addr, align 32
  %add.i343 = add i32 %63, 14
  %and.i344 = and i32 %add.i343, 1048575
  %add1.i345 = or i32 %and.i344, -18874368
  %64 = inttoptr i32 %add1.i345 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %64, i16 40) #6, !srcloc !197
  br label %while.cond.i349

while.cond.i349:                                  ; preds = %while.body.i354.while.cond.i349_crit_edge, %tc574_wait_for_completion.exit341
  %i.0.i346 = phi i32 [ 1500, %tc574_wait_for_completion.exit341 ], [ %dec.i347, %while.body.i354.while.cond.i349_crit_edge ]
  %dec.i347 = add nsw i32 %i.0.i346, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i347)
  %cmp.not.i348 = icmp eq i32 %dec.i347, 0
  br i1 %cmp.not.i348, label %if.then13.i355, label %while.body.i354

while.body.i354:                                  ; preds = %while.cond.i349
  %65 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base_addr, align 32
  %add4.i350 = add i32 %66, 14
  %and5.i351 = and i32 %add4.i350, 1048575
  %add6.i352 = or i32 %and5.i351, -18874368
  %67 = inttoptr i32 %add6.i352 to ptr
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %67) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %69 = and i16 %68, 16
  %tobool.not.i353 = icmp eq i16 %69, 0
  br i1 %tobool.not.i353, label %while.body.i354.tc574_wait_for_completion.exit356_crit_edge, label %while.body.i354.while.cond.i349_crit_edge

while.body.i354.while.cond.i349_crit_edge:        ; preds = %while.body.i354
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i349

while.body.i354.tc574_wait_for_completion.exit356_crit_edge: ; preds = %while.body.i354
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc574_wait_for_completion.exit356

if.then13.i355:                                   ; preds = %while.cond.i349
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 10240) #9
  br label %tc574_wait_for_completion.exit356

tc574_wait_for_completion.exit356:                ; preds = %if.then13.i355, %while.body.i354.tc574_wait_for_completion.exit356_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  %call104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 776) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 16512) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 176) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 1544) #6, !srcloc !197
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %add141.7 = add i32 %1, 7
  %and142.7 = and i32 %add141.7, 1048575
  %add143.7 = or i32 %and142.7, -18874368
  %78 = inttoptr i32 %add143.7 to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %add141.9 = add i32 %1, 9
  %and142.9 = and i32 %add141.9, 1048575
  %add143.9 = or i32 %and142.9, -18874368
  %81 = inttoptr i32 %add143.9 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %add151 = add i32 %1, 10
  %and152 = and i32 %add151, 1048575
  %add153 = or i32 %and152, -18874368
  %83 = inttoptr i32 %add153 to ptr
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %83) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  %add158 = add i32 %1, 12
  %and159 = and i32 %add158, 1048575
  %add160 = or i32 %and159, -18874368
  %85 = inttoptr i32 %add160 to ptr
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %85) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !267
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 1032) #6, !srcloc !197
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  %add179 = add i32 %1, 13
  %and180 = and i32 %add179, 1048575
  %add181 = or i32 %and180, -18874368
  %88 = inttoptr i32 %add181 to ptr
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 16384) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 264) #6, !srcloc !197
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call104) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %tc574_wait_for_completion.exit356
  %dec1.i = phi i32 [ 31, %tc574_wait_for_completion.exit356 ], [ %dec.i360, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 1536) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 1792) #6, !srcloc !197
  %dec.i360 = add nsw i32 %dec1.i, -1
  %cmp.not.i361 = icmp eq i32 %dec1.i, 0
  br i1 %cmp.not.i361, label %mdio_sync.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

mdio_sync.exit:                                   ; preds = %do.body.i
  %phys = getelementptr i8, ptr %dev, i32 2312
  %90 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %phys, align 4
  %conv200 = zext i8 %91 to i32
  %advertising = getelementptr i8, ptr %dev, i32 2308
  %92 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %advertising, align 4
  %conv201 = zext i16 %93 to i32
  tail call fastcc void @mdio_write(i32 noundef %1, i32 noundef %conv200, i32 noundef 4, i32 noundef %conv201)
  %94 = load i32, ptr @auto_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool202.not = icmp eq i32 %94, 0
  br i1 %tobool202.not, label %if.then, label %mdio_sync.exit.do.body210_crit_edge

mdio_sync.exit.do.body210_crit_edge:              ; preds = %mdio_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body210

if.then:                                          ; preds = %mdio_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %phys, align 4
  %conv204 = zext i8 %96 to i32
  %call205 = tail call fastcc i32 @mdio_read(i32 noundef %1, i32 noundef %conv204, i32 noundef 16)
  %or206 = or i32 %call205, 32
  %97 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %phys, align 4
  %conv208 = zext i8 %98 to i32
  tail call fastcc void @mdio_write(i32 noundef %1, i32 noundef %conv208, i32 noundef 16, i32 noundef %or206)
  br label %do.body210

do.body210:                                       ; preds = %if.then, %mdio_sync.exit.do.body210_crit_edge
  %call218 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  %99 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %base_addr, align 32
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i, align 8
  %and.i363 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i363)
  %tobool.not.i364 = icmp eq i32 %and.i363, 0
  br i1 %tobool.not.i364, label %if.else.i, label %do.body.i366

do.body.i366:                                     ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %add.i365 = add i32 %100, 14
  %and1.i = and i32 %add.i365, 1048575
  %add2.i = or i32 %and1.i, -18874368
  %103 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %103, i16 3968) #6, !srcloc !197
  br label %set_rx_mode.exit

if.else.i:                                        ; preds = %do.body210
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %104 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i = icmp eq i32 %105, 0
  %and4.i = and i32 %102, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool5.not.i, i1 false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add18.i = add i32 %100, 14
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %106 = inttoptr i32 %add20.i to ptr
  br i1 %or.cond.i, label %do.body15.i, label %do.body7.i

do.body7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %106, i16 1920) #6, !srcloc !197
  br label %set_rx_mode.exit

do.body15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %106, i16 1408) #6, !srcloc !197
  br label %set_rx_mode.exit

set_rx_mode.exit:                                 ; preds = %do.body15.i, %do.body7.i, %do.body.i366
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call218) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !272
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 168) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 32) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 72) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 -136) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !276
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 26984) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !277
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 -17552) #6, !srcloc !197
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tc574_wait_for_completion(ptr noundef %dev, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %cmd to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  %add = add i32 %2, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %0) #6, !srcloc !197
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 1500, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  %dec = add nsw i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.then13, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %add4 = add i32 %5, 14
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %6 = inttoptr i32 %add6 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %8 = and i16 %7, 16
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %while.body.if.end14_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %cmd) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %while.body.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdio_write(i32 noundef %ioaddr, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 23
  %shl1 = shl i32 %location, 18
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, %value
  %or3 = or i32 %or2, 1342308352
  %add = add i32 %ioaddr, 8
  %.b = load i1, ptr @mii_preamble_required, align 1
  %and.i = and i32 %add, 1048575
  %add1.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add1.i to ptr
  br i1 %.b, label %entry.do.body.i_crit_edge, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

for.body.preheader:                               ; preds = %do.body.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %dec1.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 31, %entry.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 1536) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 1792) #6, !srcloc !197
  %dec.i = add nsw i32 %dec1.i, -1
  %cmp.not.i = icmp eq i32 %dec1.i, 0
  br i1 %cmp.not.i, label %do.body.i.for.body.preheader_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i.for.body.preheader_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.cond16.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 256) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 256) #6, !srcloc !197
  ret void

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.044 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 31, %for.body.preheader ]
  %shl4 = shl nuw i32 1, %i.044
  %and = and i32 %shl4, %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  tail call void @arm_heavy_mb() #6
  %conv = select i1 %tobool5.not, i16 1024, i16 1536
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 %conv) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !281
  tail call void @arm_heavy_mb() #6
  %1 = or i16 %conv, 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 %1) #6, !srcloc !197
  %dec = add nsw i32 %i.044, -1
  %cmp.not = icmp eq i32 %i.044, 0
  br i1 %cmp.not, label %for.cond16.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdio_read(i32 noundef %ioaddr, i32 noundef %phy_id, i32 noundef %location) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %location
  %or1 = or i32 %or, 251904
  %add = add i32 %ioaddr, 8
  %.b = load i1, ptr @mii_preamble_required, align 1
  %and.i = and i32 %add, 1048575
  %add1.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add1.i to ptr
  br i1 %.b, label %entry.do.body.i_crit_edge, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %dec1.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 31, %entry.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 1536) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 1792) #6, !srcloc !197
  %dec.i = add nsw i32 %dec1.i, -1
  %cmp.not.i = icmp eq i32 %dec1.i, 0
  br i1 %cmp.not.i, label %do.body.i.for.body.preheader_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i.for.body.preheader_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.056 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 14, %for.body.preheader ]
  %shl3 = shl nuw i32 1, %i.056
  %and = and i32 %shl3, %or1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !282
  tail call void @arm_heavy_mb() #6
  %conv = select i1 %tobool4.not, i16 1024, i16 1536
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 %conv) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %1 = or i16 %conv, 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 %1) #6, !srcloc !197
  %dec = add nsw i32 %i.056, -1
  %cmp.not = icmp eq i32 %i.056, 0
  br i1 %cmp.not, label %for.body.do.body19_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.body19_crit_edge:                     ; preds = %for.body
  br label %do.body19

do.body19:                                        ; preds = %do.body19.do.body19_crit_edge, %for.body.do.body19_crit_edge
  %i.158 = phi i32 [ %dec42, %do.body19.do.body19_crit_edge ], [ 19, %for.body.do.body19_crit_edge ]
  %retval2.057 = phi i32 [ %or34, %do.body19.do.body19_crit_edge ], [ 0, %for.body.do.body19_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !284
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 0) #6, !srcloc !197
  %shl25 = shl i32 %retval2.057, 1
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %0) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !285
  %3 = lshr i16 %2, 9
  %.lobit = and i16 %3, 1
  %4 = zext i16 %.lobit to i32
  %or34 = or i32 %shl25, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %0, i16 256) #6, !srcloc !197
  %dec42 = add nsw i32 %i.158, -1
  %cmp16 = icmp ugt i32 %i.158, 1
  br i1 %cmp16, label %do.body19.do.body19_crit_edge, label %for.end43

do.body19.do.body19_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

for.end43:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %and44 = and i32 %retval2.057, 65535
  ret i32 %and44
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_stats(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_stats.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_stats, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_stats.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.12, ptr noundef %dev) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !288
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1544) #6, !srcloc !197
  %and19 = and i32 %1, 1048575
  %add20 = or i32 %and19, -18874368
  %4 = inttoptr i32 %add20 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !289
  %conv24 = zext i8 %5 to i32
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %6 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_carrier_errors, align 4
  %add25 = add i32 %7, %conv24
  store i32 %add25, ptr %tx_carrier_errors, align 4
  %add27 = add i32 %1, 1
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %8 = inttoptr i32 %add29 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !290
  %conv33 = zext i8 %9 to i32
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %10 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_heartbeat_errors, align 4
  %add35 = add i32 %11, %conv33
  store i32 %add35, ptr %tx_heartbeat_errors, align 4
  %add37 = add i32 %1, 2
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %12 = inttoptr i32 %add39 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !291
  %add44 = add i32 %1, 3
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %14 = inttoptr i32 %add46 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !292
  %conv50 = zext i8 %15 to i32
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %16 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %collisions, align 4
  %add52 = add i32 %17, %conv50
  store i32 %add52, ptr %collisions, align 4
  %add54 = add i32 %1, 4
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %18 = inttoptr i32 %add56 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !293
  %conv60 = zext i8 %19 to i32
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %20 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_window_errors, align 8
  %add62 = add i32 %21, %conv60
  store i32 %add62, ptr %tx_window_errors, align 8
  %add64 = add i32 %1, 5
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %22 = inttoptr i32 %add66 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !294
  %conv70 = zext i8 %23 to i32
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %24 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fifo_errors, align 8
  %add72 = add i32 %25, %conv70
  store i32 %add72, ptr %rx_fifo_errors, align 8
  %add74 = add i32 %1, 6
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %26 = inttoptr i32 %add76 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !295
  %conv80 = zext i8 %27 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %28 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_packets, align 4
  %add82 = add i32 %29, %conv80
  store i32 %add82, ptr %tx_packets, align 4
  %add84 = add i32 %1, 9
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %30 = inttoptr i32 %add86 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !296
  %32 = and i8 %31, 48
  %and91 = zext i8 %32 to i32
  %shl = shl nuw nsw i32 %and91, 4
  %33 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_packets, align 4
  %add94 = add i32 %shl, %34
  store i32 %add94, ptr %tx_packets, align 4
  %add96 = add i32 %1, 7
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %35 = inttoptr i32 %add98 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !297
  %add103 = add i32 %1, 8
  %and104 = and i32 %add103, 1048575
  %add105 = or i32 %and104, -18874368
  %37 = inttoptr i32 %add105 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  %add110 = add i32 %1, 10
  %and111 = and i32 %add110, 1048575
  %add112 = or i32 %and111, -18874368
  %39 = inttoptr i32 %add112 to ptr
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %39) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !299
  %add117 = add i32 %1, 12
  %and118 = and i32 %add117, 1048575
  %add119 = or i32 %and118, -18874368
  %41 = inttoptr i32 %add119 to ptr
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %41) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !301
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 1032) #6, !srcloc !197
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !302
  %add138 = add i32 %1, 13
  %and139 = and i32 %add138, 1048575
  %add140 = or i32 %and139, -18874368
  %44 = inttoptr i32 %add140 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !303
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !304
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 264) #6, !srcloc !197
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pop_tx_status(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 27
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %add24 = add i32 %1, 14
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %3 = inttoptr i32 %add26 to ptr
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.048 = phi i32 [ 32, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !305
  %conv = zext i8 %4 to i32
  %and3 = and i32 %conv, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  %and5 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %6, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 88) #6, !srcloc !197
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then7
  %i.0.i = phi i32 [ 1500, %if.then7 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
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
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %12 = and i16 %11, 16
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %while.body.i.if.end8_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.if.end8_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 22528) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then13.i, %while.body.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and10 = and i32 %conv, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.for.inc_crit_edge, label %do.body

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pop_tx_status.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pop_tx_status, %if.then18)) #6
          to label %do.body21 [label %if.then18], !srcloc !194

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pop_tx_status.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.18, ptr noundef %dev, i32 noundef %conv) #6
  br label %do.body21

do.body21:                                        ; preds = %if.then18, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !306
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 72) #6, !srcloc !197
  %13 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_aborted_errors, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx_aborted_errors, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.body21, %if.end8.for.inc_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !307
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !251
  %dec = add nsw i32 %i.048, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el3_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_interrupt_work, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !194

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %5, 14
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %6 = inttoptr i32 %add6 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #6, !srcloc !199
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !308
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.46, ptr noundef %dev_id, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %window_lock = getelementptr i8, ptr %dev_id, i32 2372
  tail call void @_raw_spin_lock(ptr noundef %window_lock) #6
  %add12 = add i32 %5, 14
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %9 = inttoptr i32 %add14 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #6, !srcloc !199
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !309
  %conv18313 = zext i16 %11 to i32
  %and19314 = and i32 %conv18313, 177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19314)
  %tobool20.not315 = icmp eq i32 %and19314, 0
  br i1 %tobool20.not315, label %do.end.do.body193_crit_edge, label %while.body.lr.ph

do.end.do.body193_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body193

while.body.lr.ph:                                 ; preds = %do.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %add110 = add i32 %5, 4
  %and111 = and i32 %add110, 1048575
  %add112 = or i32 %and111, -18874368
  %12 = inttoptr i32 %add112 to ptr
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 14
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 66, i32 1
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i280332 = icmp ne i32 %15, 0
  %and22333 = and i32 %conv18313, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and22333)
  %cmp.not334 = icmp eq i32 %and22333, 8192
  %or.cond335 = select i1 %tobool.i280332, i1 %cmp.not334, i1 false
  br i1 %or.cond335, label %while.body.lr.ph.if.end43_crit_edge, label %while.body.lr.ph.do.body25_crit_edge

while.body.lr.ph.do.body25_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

while.body.lr.ph.if.end43_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end43

while.body:                                       ; preds = %do.body186
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i280 = icmp ne i32 %18, 0
  %and22 = and i32 %conv18, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and22)
  %cmp.not = icmp eq i32 %and22, 8192
  %or.cond = select i1 %tobool.i280, i1 %cmp.not, i1 false
  br i1 %or.cond, label %while.body.if.end43_crit_edge, label %while.body.do.body25_crit_edge

while.body.do.body25_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

while.body.if.end43_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.body25:                                        ; preds = %while.body.do.body25_crit_edge, %while.body.lr.ph.do.body25_crit_edge
  %handled.0316.lcssa = phi i32 [ 0, %while.body.lr.ph.do.body25_crit_edge ], [ 1, %while.body.do.body25_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then37)) #6
          to label %do.body193 [label %if.then37], !srcloc !194

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.48, ptr noundef %dev_id) #6
  br label %do.body193

if.end43:                                         ; preds = %while.body.if.end43_crit_edge, %while.body.lr.ph.if.end43_crit_edge
  %work_budget.0317337 = phi i32 [ %dec, %while.body.if.end43_crit_edge ], [ %0, %while.body.lr.ph.if.end43_crit_edge ]
  %conv18318336 = phi i32 [ %conv18, %while.body.if.end43_crit_edge ], [ %conv18313, %while.body.lr.ph.if.end43_crit_edge ]
  %and44 = and i32 %conv18318336, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end48_crit_edge, label %if.then46

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call fastcc i32 @el3_rx(ptr noundef %dev_id, i32 noundef %work_budget.0317337)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43.if.end48_crit_edge
  %work_budget.1 = phi i32 [ %call47, %if.then46 ], [ %work_budget.0317337, %if.end43.if.end48_crit_edge ]
  %and49 = and i32 %conv18318336, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end75_crit_edge, label %do.body52

if.end48.if.end75_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.body52:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then64)) #6
          to label %do.body68 [label %if.then64], !srcloc !194

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.50) #6
  br label %do.body68

do.body68:                                        ; preds = %if.then64, %do.body52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !310
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 2152) #6, !srcloc !197
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %20) #6
  br label %if.end75

if.end75:                                         ; preds = %do.body68, %if.end48.if.end75_crit_edge
  %and76 = and i32 %conv18318336, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end79_crit_edge, label %if.then78

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pop_tx_status(ptr noundef %dev_id)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end75.if.end79_crit_edge
  %and80 = and i32 %conv18318336, 162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end156_crit_edge, label %if.then82

if.end79.if.end156_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then82:                                        ; preds = %if.end79
  %and83 = and i32 %conv18318336, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then82.if.end86_crit_edge, label %if.then85

if.then82.if.end86_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then85:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @update_stats(ptr noundef %dev_id)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then82.if.end86_crit_edge
  %and87 = and i32 %conv18318336, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.if.end98_crit_edge, label %if.then89

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %call90 = tail call fastcc i32 @el3_rx(ptr noundef %dev_id, i32 noundef %work_budget.1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !311
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 8296) #6, !srcloc !197
  br label %if.end98

if.end98:                                         ; preds = %if.then89, %if.end86.if.end98_crit_edge
  %work_budget.2 = phi i32 [ %call90, %if.then89 ], [ %work_budget.1, %if.end86.if.end98_crit_edge ]
  %and99 = and i32 %conv18318336, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end156_crit_edge, label %if.then101

if.end98.if.end156_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then101:                                       ; preds = %if.end98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 1032) #6, !srcloc !197
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #6, !srcloc !199
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 264) #6, !srcloc !197
  %conv123 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev_id, ptr noundef nonnull @.str.51, i32 noundef %conv123) #9
  %and125 = and i32 %conv123, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.then101.if.end135_crit_edge, label %if.then127

if.then101.if.end135_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then127:                                       ; preds = %if.then101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %24, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 88) #6, !srcloc !197
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then127
  %i.0.i = phi i32 [ 1500, %if.then127 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.then13.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr, align 32
  %add4.i = add i32 %27, 14
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %28 = inttoptr i32 %add6.i to ptr
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %30 = and i16 %29, 16
  %tobool.not.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i, label %while.body.i.tc574_wait_for_completion.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.tc574_wait_for_completion.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc574_wait_for_completion.exit

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev_id, ptr noundef nonnull @.str.7, i32 noundef 22528) #9
  br label %tc574_wait_for_completion.exit

tc574_wait_for_completion.exit:                   ; preds = %if.then13.i, %while.body.i.tc574_wait_for_completion.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 72) #6, !srcloc !197
  br label %if.end135

if.end135:                                        ; preds = %tc574_wait_for_completion.exit, %if.then101.if.end135_crit_edge
  %and137 = and i32 %conv123, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end135.do.body148_crit_edge, label %if.then139

if.end135.do.body148_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body148

if.then139:                                       ; preds = %if.end135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_addr, align 32
  %add.i282 = add i32 %32, 14
  %and.i283 = and i32 %add.i282, 1048575
  %add1.i284 = or i32 %and.i283, -18874368
  %33 = inttoptr i32 %add1.i284 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 40) #6, !srcloc !197
  br label %while.cond.i288

while.cond.i288:                                  ; preds = %while.body.i293.while.cond.i288_crit_edge, %if.then139
  %i.0.i285 = phi i32 [ 1500, %if.then139 ], [ %dec.i286, %while.body.i293.while.cond.i288_crit_edge ]
  %dec.i286 = add nsw i32 %i.0.i285, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i286)
  %cmp.not.i287 = icmp eq i32 %dec.i286, 0
  br i1 %cmp.not.i287, label %if.then13.i294, label %while.body.i293

while.body.i293:                                  ; preds = %while.cond.i288
  %34 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_addr, align 32
  %add4.i289 = add i32 %35, 14
  %and5.i290 = and i32 %add4.i289, 1048575
  %add6.i291 = or i32 %and5.i290, -18874368
  %36 = inttoptr i32 %add6.i291 to ptr
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %38 = and i16 %37, 16
  %tobool.not.i292 = icmp eq i16 %38, 0
  br i1 %tobool.not.i292, label %while.body.i293.tc574_wait_for_completion.exit295_crit_edge, label %while.body.i293.while.cond.i288_crit_edge

while.body.i293.while.cond.i288_crit_edge:        ; preds = %while.body.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i288

while.body.i293.tc574_wait_for_completion.exit295_crit_edge: ; preds = %while.body.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc574_wait_for_completion.exit295

if.then13.i294:                                   ; preds = %while.cond.i288
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev_id, ptr noundef nonnull @.str.7, i32 noundef 10240) #9
  br label %tc574_wait_for_completion.exit295

tc574_wait_for_completion.exit295:                ; preds = %if.then13.i294, %while.body.i293.tc574_wait_for_completion.exit295_crit_edge
  %39 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_addr, align 32
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 8
  %and.i297 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297)
  %tobool.not.i298 = icmp eq i32 %and.i297, 0
  br i1 %tobool.not.i298, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %tc574_wait_for_completion.exit295
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %add.i299 = add i32 %40, 14
  %and1.i = and i32 %add.i299, 1048575
  %add2.i = or i32 %and1.i, -18874368
  %43 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 3968) #6, !srcloc !197
  br label %set_rx_mode.exit

if.else.i:                                        ; preds = %tc574_wait_for_completion.exit295
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp eq i32 %45, 0
  %and4.i = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool5.not.i, i1 false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add18.i = add i32 %40, 14
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %46 = inttoptr i32 %add20.i to ptr
  br i1 %or.cond.i, label %do.body15.i, label %do.body7.i

do.body7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %46, i16 1920) #6, !srcloc !197
  br label %set_rx_mode.exit

do.body15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %46, i16 1408) #6, !srcloc !197
  br label %set_rx_mode.exit

set_rx_mode.exit:                                 ; preds = %do.body15.i, %do.body7.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 32) #6, !srcloc !197
  br label %do.body148

do.body148:                                       ; preds = %set_rx_mode.exit, %if.end135.do.body148_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !317
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 616) #6, !srcloc !197
  br label %if.end156

if.end156:                                        ; preds = %do.body148, %if.end98.if.end156_crit_edge, %if.end79.if.end156_crit_edge
  %work_budget.3 = phi i32 [ %work_budget.2, %do.body148 ], [ %work_budget.2, %if.end98.if.end156_crit_edge ], [ %work_budget.1, %if.end79.if.end156_crit_edge ]
  %dec = add i32 %work_budget.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp157 = icmp slt i32 %dec, 0
  br i1 %cmp157, label %do.body160, label %do.body186

do.body160:                                       ; preds = %if.end156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then172)) #6
          to label %do.body178 [label %if.then172], !srcloc !194

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.53, ptr noundef %dev_id, i32 noundef %conv18318336) #6
  br label %do.body178

do.body178:                                       ; preds = %if.then172, %do.body160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !318
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 -152) #6, !srcloc !197
  br label %do.body193

do.body186:                                       ; preds = %if.end156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !319
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 16744) #6, !srcloc !197
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #6, !srcloc !199
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !309
  %conv18 = zext i16 %48 to i32
  %and19 = and i32 %conv18, 177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body186.do.body193_crit_edge, label %while.body

do.body186.do.body193_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body193

do.body193:                                       ; preds = %do.body186.do.body193_crit_edge, %do.body178, %if.then37, %do.body25, %do.end.do.body193_crit_edge
  %handled.1 = phi i32 [ %handled.0316.lcssa, %if.then37 ], [ 1, %do.body178 ], [ %handled.0316.lcssa, %do.body25 ], [ 0, %do.end.do.body193_crit_edge ], [ 1, %do.body186.do.body193_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_interrupt.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_interrupt, %if.then205)) #6
          to label %do.end218 [label %if.then205], !srcloc !194

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #6, !srcloc !199
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  %conv215 = zext i16 %50 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_interrupt.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.55, ptr noundef %dev_id, i32 noundef %conv215) #6
  br label %do.end218

do.end218:                                        ; preds = %if.then205, %do.body193
  tail call void @_raw_spin_unlock(ptr noundef %window_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool220.not = icmp ne i32 %handled.1, 0
  %cond = zext i1 %tobool220.not to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end218, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.end218 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_tuple(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @media_check(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %5, 14
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %9 = inttoptr i32 %add1 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end.if.end69_crit_edge, label %land.lhs.true

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end
  %add7 = add i32 %5, 26
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %12 = inttoptr i32 %add9 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp eq i8 %13, -1
  br i1 %cmp, label %if.then15, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.63) #9
  br label %do.body19

do.body19:                                        ; preds = %if.then17, %if.then15.do.body19_crit_edge
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !323
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not = icmp eq i32 %and.i, 0
  br i1 %tobool31.not, label %if.then46, label %do.end35

do.end35:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 64
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call36 = tail call i32 @el3_interrupt(i32 noundef %18, ptr noundef %3)
  br label %do.body48

if.then46:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %irq265 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 64
  %19 = ptrtoint ptr %irq265 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq265, align 4
  %call36266 = tail call i32 @el3_interrupt(i32 noundef %20, ptr noundef %3)
  tail call void @trace_hardirqs_on() #6
  br label %do.body48

do.body48:                                        ; preds = %if.then46, %do.end35
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !324
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool56.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool56.not, label %if.then60, label %do.body48.do.end63_crit_edge, !prof !325

do.body48.do.end63_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body48.do.end63_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #6, !srcloc !326
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
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i16 %24, -1
  %25 = ptrtoint ptr %fast_poll70 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %dec, ptr %fast_poll70, align 2
  br label %cleanup

do.body79:                                        ; preds = %if.end69
  %window_lock = getelementptr i8, ptr %t, i32 56
  %call86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %window_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !327
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 1032) #6, !srcloc !197
  %phys = getelementptr i8, ptr %t, i32 -4
  %26 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %phys, align 4
  %conv98 = zext i8 %27 to i32
  %call99 = tail call fastcc i32 @mdio_read(i32 noundef %5, i32 noundef %conv98, i32 noundef 1)
  %conv100 = trunc i32 %call99 to i16
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %phys, align 4
  %conv102 = zext i8 %29 to i32
  %call103 = tail call fastcc i32 @mdio_read(i32 noundef %5, i32 noundef %conv102, i32 noundef 5)
  %conv104 = trunc i32 %call103 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !328
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 264) #6, !srcloc !197
  %conv112 = and i32 %call99, 65535
  %media_status = getelementptr i8, ptr %t, i32 48
  %30 = ptrtoint ptr %media_status to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %media_status, align 4
  %conv113 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv112, i32 %conv113)
  %cmp114.not = icmp eq i32 %conv112, %conv113
  br i1 %cmp114.not, label %do.body79.if.end200_crit_edge, label %if.then116

do.body79.if.end200_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end200

if.then116:                                       ; preds = %do.body79
  %xor = xor i32 %call99, %conv113
  %and120 = and i32 %xor, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then116.if.end127_crit_edge, label %if.then122

if.then116.if.end127_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then122:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %and125 = and i32 %conv113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  %cond = select i1 %tobool126.not, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.then116.if.end127_crit_edge
  %32 = ptrtoint ptr %media_status to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %media_status, align 4
  %conv130 = zext i16 %33 to i32
  %xor131 = xor i32 %call99, %conv130
  %and132 = and i32 %xor131, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end127.if.end188_crit_edge, label %if.then134

if.end127.if.end188_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.then134:                                       ; preds = %if.end127
  %partner135 = getelementptr i8, ptr %t, i32 -6
  %34 = ptrtoint ptr %partner135 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %partner135, align 2
  %35 = and i16 %33, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool139.not = icmp eq i16 %35, 0
  br i1 %tobool139.not, label %if.else, label %if.then140

if.then140:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.67) #9
  br label %do.body159

if.else:                                          ; preds = %if.then134
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv104)
  %tobool141.not = icmp eq i16 %conv104, 0
  br i1 %tobool141.not, label %if.else156, label %if.then142

if.then142:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %advertising = getelementptr i8, ptr %t, i32 -8
  %36 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %advertising, align 4
  %conv143 = zext i16 %37 to i32
  %and145 = and i32 %call103, %conv143
  %conv146 = trunc i32 %and145 to i16
  %38 = ptrtoint ptr %partner135 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv146, ptr %partner135, align 2
  %and149 = and i32 %and145, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  %cond151 = select i1 %tobool150.not, i32 10, i32 100
  %and153 = and i32 %and145, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %cond155 = select i1 %tobool154.not, i32 72, i32 70
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.68, i32 noundef %cond151, i32 noundef %cond155) #9
  br label %do.body159

if.else156:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.69) #9
  br label %do.body159

do.body159:                                       ; preds = %if.else156, %if.then142, %if.then140
  %partner.0 = phi i32 [ %call103, %if.then140 ], [ %and145, %if.then142 ], [ 0, %if.else156 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !329
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 776) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !330
  tail call void @arm_heavy_mb() #6
  %and170 = and i32 %partner.0, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  %cond172 = select i1 %tobool171.not, i8 0, i8 32
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %39 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %40)
  %cmp173 = icmp ugt i32 %40, 1500
  %cond175 = select i1 %cmp173, i8 64, i8 0
  %or = or i8 %cond175, %cond172
  %add177 = add i32 %5, 6
  %and178 = and i32 %add177, 1048575
  %add179 = or i32 %and178, -18874368
  %41 = inttoptr i32 %add179 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %or) #6, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 264) #6, !srcloc !197
  br label %if.end188

if.end188:                                        ; preds = %do.body159, %if.end127.if.end188_crit_edge
  %and190 = and i32 %call99, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end188.if.end193_crit_edge, label %if.then192

if.end188.if.end193_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

if.then192:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.70) #9
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end188.if.end193_crit_edge
  %and195 = and i32 %call99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end193.if.end198_crit_edge, label %if.then197

if.end193.if.end198_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.71) #9
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.end193.if.end198_crit_edge
  %42 = ptrtoint ptr %media_status to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv100, ptr %media_status, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.end198, %do.body79.if.end200_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %window_lock, i32 noundef %call86) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end200, %if.then72, %entry.cleanup_crit_edge
  %.sink267 = phi i32 [ 2, %if.then72 ], [ 100, %entry.cleanup_crit_edge ], [ 100, %if.end200 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add202 = add i32 %43, %.sink267
  %expires204 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %44 = ptrtoint ptr %expires204 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add202, ptr %expires204, align 4
  tail call void @add_timer(ptr noundef %t) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @el3_rx(ptr noundef %dev, i32 noundef %worklimit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_rx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_rx, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %1, 14
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #6, !srcloc !199
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  %conv = zext i16 %4 to i32
  %add8 = add i32 %1, 24
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %5 = inttoptr i32 %add10 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #6, !srcloc !199
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !333
  %conv14 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_rx.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.58, ptr noundef %dev, i32 noundef %conv, i32 noundef %conv14) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add16 = add i32 %1, 24
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #6, !srcloc !199
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !334
  %conv22161 = sext i16 %10 to i32
  %and23162 = and i32 %conv22161, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23162)
  %tobool24.not163 = icmp eq i32 %and23162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %worklimit)
  %cmp164 = icmp sgt i32 %worklimit, 0
  %or.cond165 = and i1 %tobool24.not163, %cmp164
  br i1 %or.cond165, label %while.body.lr.ph, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %rx_frame_errors48 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %rx_length_errors44 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %add80 = add i32 %1, 16
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %11 = inttoptr i32 %add82 to ptr
  %stats90 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  br label %while.body

while.body:                                       ; preds = %tc574_wait_for_completion.exit.while.body_crit_edge, %while.body.lr.ph
  %conv22167 = phi i32 [ %conv22161, %while.body.lr.ph ], [ %conv22, %tc574_wait_for_completion.exit.while.body_crit_edge ]
  %12 = phi i16 [ %10, %while.body.lr.ph ], [ %52, %tc574_wait_for_completion.exit.while.body_crit_edge ]
  %worklimit.addr.0166 = phi i32 [ %worklimit, %while.body.lr.ph ], [ %dec, %tc574_wait_for_completion.exit.while.body_crit_edge ]
  %dec = add nsw i32 %worklimit.addr.0166, -1
  %and27 = and i32 %conv22167, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %while.body
  %13 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and31 = lshr i16 %12, 11
  %15 = and i16 %and31, 7
  %16 = zext i16 %15 to i32
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %16, label %if.then29.if.end118_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
    i32 2, label %sw.bb39
    i32 3, label %sw.bb42
    i32 4, label %sw.bb46
    i32 5, label %sw.bb50
  ]

if.then29.if.end118_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

sw.bb:                                            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors, align 4
  %inc35 = add i32 %19, 1
  store i32 %inc35, ptr %rx_over_errors, align 4
  br label %if.end118

sw.bb36:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %rx_length_errors44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_length_errors44, align 8
  %inc38 = add i32 %21, 1
  store i32 %inc38, ptr %rx_length_errors44, align 8
  br label %if.end118

sw.bb39:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %rx_frame_errors48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_frame_errors48, align 4
  %inc41 = add i32 %23, 1
  store i32 %inc41, ptr %rx_frame_errors48, align 4
  br label %if.end118

sw.bb42:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %rx_length_errors44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_length_errors44, align 8
  %inc45 = add i32 %25, 1
  store i32 %inc45, ptr %rx_length_errors44, align 8
  br label %if.end118

sw.bb46:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %rx_frame_errors48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors48, align 4
  %inc49 = add i32 %27, 1
  store i32 %inc49, ptr %rx_frame_errors48, align 4
  br label %if.end118

sw.bb50:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_crc_errors, align 8
  %inc52 = add i32 %29, 1
  store i32 %inc52, ptr %rx_crc_errors, align 8
  br label %if.end118

if.else:                                          ; preds = %while.body
  %and54 = and i16 %12, 2047
  %30 = zext i16 %and54 to i32
  %add57 = add nuw nsw i32 %30, 5
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add57, i32 noundef 2592) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_rx.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_rx, %if.then71)) #6
          to label %do.end76 [label %if.then71], !srcloc !194

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_rx.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.60, i32 noundef %30, i32 noundef %conv22167) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %if.else
  %cmp77.not = icmp eq ptr %call.i, null
  br i1 %cmp77.not, label %do.body96, label %if.then79

if.then79:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
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
  %call85 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %30) #6
  %add87 = add nuw nsw i32 %30, 3
  %35 = lshr i32 %add87, 2
  tail call void @__raw_readsl(ptr noundef nonnull %11, ptr noundef %call85, i32 noundef %35) #6
  %call88 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #6
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %call88, ptr %protocol, align 8
  %call89 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #6
  %37 = ptrtoint ptr %stats90 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats90, align 8
  %inc91 = add i32 %38, 1
  store i32 %inc91, ptr %stats90, align 8
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 8
  %add94 = add i32 %40, %30
  store i32 %add94, ptr %rx_bytes, align 8
  br label %if.end118

do.body96:                                        ; preds = %do.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el3_rx.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el3_rx, %if.then108)) #6
          to label %do.end114 [label %if.then108], !srcloc !194

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @el3_rx.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.62, ptr noundef %dev, i32 noundef %30) #6
  br label %do.end114

do.end114:                                        ; preds = %if.then108, %do.body96
  %41 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_dropped, align 8
  %inc116 = add i32 %42, 1
  store i32 %inc116, ptr %rx_dropped, align 8
  br label %if.end118

if.end118:                                        ; preds = %do.end114, %if.then79, %sw.bb50, %sw.bb46, %sw.bb42, %sw.bb39, %sw.bb36, %sw.bb, %if.then29.if.end118_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 32
  %add.i = add i32 %44, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %45 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 64) #6, !srcloc !197
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end118
  %i.0.i = phi i32 [ 1500, %if.end118 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
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
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  %50 = and i16 %49, 16
  %tobool.not.i = icmp eq i16 %50, 0
  br i1 %tobool.not.i, label %while.body.i.tc574_wait_for_completion.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.tc574_wait_for_completion.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tc574_wait_for_completion.exit

if.then13.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 16384) #9
  br label %tc574_wait_for_completion.exit

tc574_wait_for_completion.exit:                   ; preds = %if.then13.i, %while.body.i.tc574_wait_for_completion.exit_crit_edge
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #6, !srcloc !199
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !334
  %conv22 = sext i16 %52 to i32
  %and23 = and i32 %conv22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %worklimit.addr.0166)
  %cmp = icmp sgt i32 %worklimit.addr.0166, 1
  %or.cond = select i1 %tobool24.not, i1 %cmp, i1 false
  br i1 %or.cond, label %tc574_wait_for_completion.exit.while.body_crit_edge, label %tc574_wait_for_completion.exit.while.end_crit_edge

tc574_wait_for_completion.exit.while.end_crit_edge: ; preds = %tc574_wait_for_completion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

tc574_wait_for_completion.exit.while.body_crit_edge: ; preds = %tc574_wait_for_completion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %tc574_wait_for_completion.exit.while.end_crit_edge, %do.end.while.end_crit_edge
  %worklimit.addr.0.lcssa = phi i32 [ %worklimit, %do.end.while.end_crit_edge ], [ %dec, %tc574_wait_for_completion.exit.while.end_crit_edge ]
  ret i32 %worklimit.addr.0.lcssa
}

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
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 102, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 103, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 104, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_max_interrupt_work, !8, !"__param_max_interrupt_work", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 109, i32 1}
!9 = !{ptr @__UNIQUE_ID_max_interrupt_worktype345, !8, !"__UNIQUE_ID_max_interrupt_worktype345", i1 false, i1 false}
!10 = !{ptr @__param_full_duplex, !11, !"__param_full_duplex", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 112, i32 1}
!12 = !{ptr @__UNIQUE_ID_full_duplextype346, !11, !"__UNIQUE_ID_full_duplextype346", i1 false, i1 false}
!13 = !{ptr @__param_auto_polarity, !14, !"__param_auto_polarity", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 115, i32 1}
!15 = !{ptr @__UNIQUE_ID_auto_polaritytype347, !14, !"__UNIQUE_ID_auto_polaritytype347", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_3c574_cs__366_1164_tc574_driver_init6, !17, !"__initcall__kmod_3c574_cs__366_1164_tc574_driver_init6", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1164, i32 1}
!18 = !{ptr @__exitcall_tc574_driver_exit, !17, !"__exitcall_tc574_driver_exit", i1 false, i1 false}
!19 = !{ptr @__param_str_max_interrupt_work, !8, !"__param_str_max_interrupt_work", i1 false, i1 false}
!20 = !{ptr @max_interrupt_work, !8, !"max_interrupt_work", i1 false, i1 false}
!21 = !{ptr @__param_str_full_duplex, !11, !"__param_str_full_duplex", i1 false, i1 false}
!22 = !{ptr @full_duplex, !11, !"full_duplex", i1 false, i1 false}
!23 = !{ptr @__param_str_auto_polarity, !14, !"__param_str_auto_polarity", i1 false, i1 false}
!24 = !{ptr @auto_polarity, !14, !"auto_polarity", i1 false, i1 false}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1157, i32 11}
!27 = !{ptr @tc574_driver, !28, !"tc574_driver", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1155, i32 29}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 266, i32 2}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tc574_probe.__UNIQUE_ID_ddebug348, !30, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!34 = !{ptr @tc574_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 276, i32 2}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @el3_netdev_ops, !38, !"el3_netdev_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 249, i32 36}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 686, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @el3_open.__UNIQUE_ID_ddebug352, !40, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 496, i32 22}
!45 = distinct !{null, !46, !"mii_preamble_required", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 213, i32 13}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1119, i32 2}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @el3_close.__UNIQUE_ID_ddebug365, !48, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 955, i32 2}
!53 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @update_stats.__UNIQUE_ID_ddebug360, !52, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!55 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 736, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @el3_start_xmit.__UNIQUE_ID_ddebug354, !57, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!60 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 720, i32 4}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pop_tx_status.__UNIQUE_ID_ddebug353, !62, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!65 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1041, i32 2}
!68 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @el3_ioctl.__UNIQUE_ID_ddebug364, !67, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!70 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 696, i32 21}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 475, i32 19}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 480, i32 19}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 315, i32 2}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tc574_config.__UNIQUE_ID_ddebug350, !78, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 356, i32 4}
!83 = !{ptr @tc574_config._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @tc574_config._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 365, i32 14}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 372, i32 3}
!89 = !{ptr @tc574_config._entry.29, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tc574_config._entry_ptr.31, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @tc574_config.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 379, i32 2}
!93 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 400, i32 5}
!96 = !{ptr @tc574_config.__UNIQUE_ID_ddebug351, !95, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 409, i32 4}
!99 = !{ptr @tc574_config._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @tc574_config._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 425, i32 3}
!103 = !{ptr @tc574_config._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @tc574_config._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 429, i32 19}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 431, i32 19}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 434, i32 29}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 434, i32 45}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 778, i32 2}
!115 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug355, !114, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!117 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 787, i32 4}
!120 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug356, !119, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!121 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 797, i32 4}
!124 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug357, !123, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!125 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 819, i32 24}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 837, i32 4}
!130 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug358, !129, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!131 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 847, i32 2}
!134 = !{ptr @el3_interrupt.__UNIQUE_ID_ddebug359, !133, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!135 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 989, i32 2}
!138 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @el3_rx.__UNIQUE_ID_ddebug361, !137, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!140 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1011, i32 4}
!143 = !{ptr @el3_rx.__UNIQUE_ID_ddebug362, !142, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!144 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1022, i32 5}
!147 = !{ptr @el3_rx.__UNIQUE_ID_ddebug363, !146, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!148 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 874, i32 21}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 897, i32 21}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 898, i32 39}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 898, i32 48}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 902, i32 22}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 906, i32 22}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 911, i32 22}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 921, i32 21}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 923, i32 21}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 301, i32 35}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 301, i32 42}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 301, i32 49}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 301, i32 56}
!175 = !{ptr @ram_split, !176, !"ram_split", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 301, i32 20}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 292, i32 2}
!179 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @tc574_detach.__UNIQUE_ID_ddebug349, !178, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1150, i32 2}
!183 = !{ptr @tc574_ids, !184, !"tc574_ids", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/3com/3c574_cs.c", i32 1148, i32 38}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2148985388, i64 2148985393, i64 2148985406, i64 2148985450, i64 2148985484, i64 2148985505}
!195 = !{!"auto-init"}
!196 = !{i64 2156596810}
!197 = !{i64 5052213}
!198 = !{i64 2156622201}
!199 = !{i64 5052413}
!200 = !{i64 2156623152}
!201 = !{i64 2156623850}
!202 = !{i64 2156599401}
!203 = !{i64 5053031}
!204 = !{i64 2156599911}
!205 = !{i64 2156600171}
!206 = !{i64 2156602315}
!207 = !{i64 5053251}
!208 = !{i64 2156603252}
!209 = !{i64 2156603764}
!210 = !{i64 2156605542}
!211 = !{i64 2156607320}
!212 = !{i64 2156607873}
!213 = !{i64 2156624136}
!214 = !{i64 2156624669}
!215 = !{i64 2156655165}
!216 = !{i64 2156724081}
!217 = !{i64 2156724577}
!218 = !{i64 2156725067}
!219 = !{i64 2156725619}
!220 = !{i64 2156726505}
!221 = !{i64 2156662728}
!222 = !{i64 2156663350}
!223 = !{i64 2156663831}
!224 = !{i64 2156664899}
!225 = !{i64 2156665177}
!226 = !{i64 2156719457}
!227 = !{i64 2156715708}
!228 = !{i64 2156716031}
!229 = !{i64 2156716627}
!230 = !{i64 2156717938}
!231 = !{i64 2156718261}
!232 = !{i64 2156718857}
!233 = !{i64 2156614439}
!234 = !{i64 2156615353}
!235 = !{i64 2156616023}
!236 = !{i64 2156616314}
!237 = !{i64 2156616976}
!238 = !{i64 2156617299}
!239 = !{i64 2156618204}
!240 = !{i64 2156618858}
!241 = !{i64 2156619512}
!242 = !{i64 2156620166}
!243 = !{i64 2156620489}
!244 = !{i64 2156621003}
!245 = !{i64 2156621927}
!246 = !{i64 2156655425}
!247 = !{i64 2156630161}
!248 = !{i64 2156630638}
!249 = !{i64 2156631182}
!250 = !{i64 2156631657}
!251 = !{i64 5052636}
!252 = !{i64 2156632021}
!253 = !{i64 2156632554}
!254 = !{i64 2156633052}
!255 = !{i64 2156633481}
!256 = !{i64 5052833}
!257 = !{i64 2156634050}
!258 = !{i64 2156635828}
!259 = !{i64 2156636381}
!260 = !{i64 2156638607}
!261 = !{i64 2156639118}
!262 = !{i64 2156639612}
!263 = !{i64 2156640170}
!264 = !{i64 2156640702}
!265 = !{i64 2156641356}
!266 = !{i64 2156642010}
!267 = !{i64 2156642333}
!268 = !{i64 2156642867}
!269 = !{i64 2156643150}
!270 = !{i64 2156643410}
!271 = !{i64 2156643963}
!272 = !{i64 2156644841}
!273 = !{i64 2156645334}
!274 = !{i64 2156645821}
!275 = !{i64 2156646319}
!276 = !{i64 2156646871}
!277 = !{i64 2156647526}
!278 = !{i64 2156628833}
!279 = !{i64 2156629312}
!280 = !{i64 2156627863}
!281 = !{i64 2156628346}
!282 = !{i64 2156625226}
!283 = !{i64 2156625709}
!284 = !{i64 2156626196}
!285 = !{i64 2156627057}
!286 = !{i64 2156627326}
!287 = !{i64 2156695226}
!288 = !{i64 2156695549}
!289 = !{i64 2156696081}
!290 = !{i64 2156696362}
!291 = !{i64 2156696643}
!292 = !{i64 2156696924}
!293 = !{i64 2156697205}
!294 = !{i64 2156697486}
!295 = !{i64 2156697767}
!296 = !{i64 2156698048}
!297 = !{i64 2156698329}
!298 = !{i64 2156698610}
!299 = !{i64 2156699264}
!300 = !{i64 2156699918}
!301 = !{i64 2156700241}
!302 = !{i64 2156700775}
!303 = !{i64 2156701058}
!304 = !{i64 2156701381}
!305 = !{i64 2156655947}
!306 = !{i64 2156658652}
!307 = !{i64 2156659098}
!308 = !{i64 2156668586}
!309 = !{i64 2156669253}
!310 = !{i64 2156674178}
!311 = !{i64 2156674700}
!312 = !{i64 2156675268}
!313 = !{i64 2156676213}
!314 = !{i64 2156676536}
!315 = !{i64 2156677047}
!316 = !{i64 2156677534}
!317 = !{i64 2156678037}
!318 = !{i64 2156681184}
!319 = !{i64 2156681702}
!320 = !{i64 2156685166}
!321 = !{i64 2156687037}
!322 = !{i64 2156687326}
!323 = !{i64 775711, i64 775772}
!324 = !{i64 778443}
!325 = !{!"branch_weights", i32 1, i32 2000}
!326 = !{i64 778728}
!327 = !{i64 2156689442}
!328 = !{i64 2156690016}
!329 = !{i64 2156690590}
!330 = !{i64 2156691125}
!331 = !{i64 2156691578}
!332 = !{i64 2156705033}
!333 = !{i64 2156705703}
!334 = !{i64 2156706381}
