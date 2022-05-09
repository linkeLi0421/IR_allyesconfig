; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/8390/axnet_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/8390/axnet_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.anon.123 = type { i8, i8 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.ifreq = type { %union.anon.105, %union.anon.106 }
%union.anon.105 = type { [16 x i8] }
%union.anon.106 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.e8390_pkt_hdr = type { i8, i8, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@__UNIQUE_ID_author345 = internal constant [60 x i8] c"axnet_cs.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [57 x i8] c"axnet_cs.description=Asix AX88190 PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [49 x i8] c"axnet_cs.file=drivers/net/ethernet/8390/axnet_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [21 x i8] c"axnet_cs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_axnet_cs__357_733_axnet_cs_driver_init6 = internal global ptr @axnet_cs_driver_init, section ".initcall6.init", align 4
@axnet_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @axnet_probe, ptr @axnet_detach, ptr @axnet_suspend, ptr @axnet_resume, ptr null, ptr @axnet_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_axnet_cs_driver_exit = internal global ptr @axnet_cs_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"axnet_cs\00", [23 x i8] zeroinitializer }, align 32
@axnet_ids = internal constant { [29 x %struct.pcmcia_device_id], [380 x i8] } { [29 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 259, i16 364, i16 129, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 394, i16 769, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 447, i16 9000, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 623, i16 769, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 623, i16 771, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 623, i16 777, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 628, i16 4358, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 -30207, i16 -15957, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 539, i16 514, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 -1, i16 4240, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1236279463, i32 295487996, i32 0, i32 0], [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 176, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1262611229, i32 -1710036118, i32 0, i32 -1415846417], [4 x ptr] [ptr @.str.68, ptr @.str.69, ptr null, ptr @.str.51], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 156860987, i32 -1415846417, i32 0, i32 0], [4 x ptr] [ptr @.str.70, ptr @.str.51, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1428862594, i32 -1136949279, i32 0, i32 0], [4 x ptr] [ptr @.str.71, ptr @.str.72, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 16415688, i32 15306956, i32 0, i32 0], [4 x ptr] [ptr @.str.73, ptr @.str.74, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1136165410, i32 2026238987, i32 0, i32 0], [4 x ptr] [ptr @.str.75, ptr @.str.76, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 1130850501, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.78, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 1930295086, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.79, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 985387105, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.80, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1432563669, i32 1723607696, i32 0, i32 0], [4 x ptr] [ptr @.str.81, ptr @.str.82, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1417570012, i32 591059650, i32 0, i32 0], [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 120835201, i32 589306280, i32 0, i32 0], [4 x ptr] [ptr @.str.85, ptr @.str.86, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1209925780, i32 -115673591, i32 0, i32 0], [4 x ptr] [ptr @.str.87, ptr @.str.88, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1700291133, i32 1090181237, i32 0, i32 0], [4 x ptr] [ptr @.str.89, ptr @.str.90, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 2083183876, i32 0, i32 0], [4 x ptr] [ptr @.str.91, ptr @.str.92, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 2129813782, i32 0, i32 0], [4 x ptr] [ptr @.str.91, ptr @.str.93, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 774316120, i32 0, i32 0], [4 x ptr] [ptr @.str.91, ptr @.str.94, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 144, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2113247306, i32 0, i32 0, i32 -1415846417], [4 x ptr] [ptr @.str.95, ptr null, ptr null, ptr @.str.51], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [380 x i8] zeroinitializer }, align 32
@axnet_probe.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axnet_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/8390/axnet_cs.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axnet_attach()\0A\00", [16 x i8] zeroinitializer }, align 32
@axnet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ei_local->page_lock\00", [43 x i8] zeroinitializer }, align 32
@axnet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @axnet_open, ptr @axnet_close, ptr @axnet_start_xmit, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @axnet_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axnet_tx_timeout, ptr null, ptr null, ptr null, ptr @get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@axnet_open.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axnet_open\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axnet_open('%s')\0A\00", [46 x i8] zeroinitializer }, align 32
@axnet_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&info->watchdog)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Interrupted while interrupts are masked!\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s, isr=%#2x imr=%#2x\0A\00", [41 x i8] zeroinitializer }, align 32
@ax_interrupt.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ax_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt(isr=%#2.2x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"interrupt from stopped card\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Too much work at interrupt, status %#2.2x\0A\00", [53 x i8] zeroinitializer }, align 32
@ei_rx_overrun.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ei_rx_overrun\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Receiver overrun\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mismatched read page pointers %2x vs %2x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bogus packet size: %d, status=%#2x nxpg=%#2x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't allocate a sk_buff of size %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bogus packet: status=%#2x nxpg=%#2x size=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"next frame inconsistency, %#2x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: bogus last_tx_buffer %d, tx1=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: bogus last_tx_buffer %d, tx2=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"trigger_send() called with the transmitter busy\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt(s) dropped!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MII is missing!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s link beat\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"autonegotiation complete: %dbaseT-%cD selected\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"link partner did not autonegotiate\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Hw. address read/write mismap %d\0A\00", [62 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@axnet_close.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axnet_close\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axnet_close('%s')\0A\00", [45 x i8] zeroinitializer }, align 32
@axnet_start_xmit.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axnet_start_xmit\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"idle transmitter tx2=%d, lasttx=%d, txing=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@axnet_start_xmit.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"idle transmitter, tx1=%d, lasttx=%d, txing=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@axnet_start_xmit.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No Tx buffers free! tx1=%d tx2=%d last=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@axnet_tx_timeout.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axnet_tx_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Tx timed out, %s TSR=%#2x, ISR=%#2x, t=%d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"excess collisions.\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lost interrupt?\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cable problem?\00", [17 x i8] zeroinitializer }, align 32
@axnet_config.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axnet_config\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axnet_config(0x%p)\0A\00", [44 x i8] zeroinitializer }, align 32
@axnet_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015axnet_cs: this is not an AX88190 card!\0A\00", [54 x i8] zeroinitializer }, align 32
@axnet_config._entry_ptr = internal global ptr @axnet_config._entry, section ".printk_index", align 4
@axnet_config._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015axnet_cs: use pcnet_cs instead.\0A\00", [61 x i8] zeroinitializer }, align 32
@axnet_config._entry_ptr.50 = internal global ptr @axnet_config._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AX88190\00", [24 x i8] zeroinitializer }, align 32
@axnet_config._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015axnet_cs: register_netdev() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@axnet_config._entry_ptr.54 = internal global ptr @axnet_config._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Asix AX88%d90: io %#3lx, irq %d, hw_addr %pM\0A\00", [50 x i8] zeroinitializer }, align 32
@axnet_config.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.56, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"  MII transceiver at index %d, status %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  No MII transceivers found!\0A\00", [34 x i8] zeroinitializer }, align 32
@__const.get_prom.program_seq = private unnamed_addr constant [13 x %struct.anon.123] [%struct.anon.123 { i8 33, i8 0 }, %struct.anon.123 { i8 1, i8 14 }, %struct.anon.123 { i8 0, i8 10 }, %struct.anon.123 { i8 0, i8 11 }, %struct.anon.123 { i8 0, i8 15 }, %struct.anon.123 { i8 -1, i8 7 }, %struct.anon.123 { i8 96, i8 12 }, %struct.anon.123 { i8 2, i8 13 }, %struct.anon.123 { i8 16, i8 10 }, %struct.anon.123 { i8 0, i8 11 }, %struct.anon.123 { i8 0, i8 8 }, %struct.anon.123 { i8 4, i8 9 }, %struct.anon.123 { i8 10, i8 0 }], align 1
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"axnet_reset_8390() did not complete\0A\00", [59 x i8] zeroinitializer }, align 32
@block_input.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block_input\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[bi=%d]\0A\00", [23 x i8] zeroinitializer }, align 32
@block_output.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"block_output\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: [bo=%d]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axnet_cs: %s: [bo=%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@axnet_detach.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axnet_detach\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axnet_detach(0x%p)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AmbiCom,Inc.\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fast Ethernet PC Card(AMB8110)\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fast Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"16-bit PC Card\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ASIX\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Billionton\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LNA-100B\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CHEETAH ETHERCARD\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EN2228\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CNet\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CNF301\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"corega K.K.\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"corega FEther PCC-TXD\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"corega FEtherII PCC-TXD\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"corega FEther PCC-TXM\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Dynalink\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L100C16\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IO DATA\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ETXPCM\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Linksys\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EtherFast 10/100 PC Card (PCMPC100 V3)\00", [57 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MELCO\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LPC3-TX\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NETGEAR\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FA411\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCMCIA\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100BASE\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FastEtherCard\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FEP501\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Network Everywhere\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 65535]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 65534]
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"axnet_cs_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 724, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 726, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"axnet_ids\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 691, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 146, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 153, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"axnet_netdev_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 128, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 474, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 487, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1114, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1117, i32 20 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1126, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1137, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1182, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1471, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1371, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1387, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1401, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1422, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1435, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1269, i32 20 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1288, i32 20 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1703, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 565, i32 23 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 580, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 588, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 588, i32 44 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 588, i32 54 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 592, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 595, i32 20 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1666, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 500, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1000, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1011, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1018, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 926, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 280, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 303, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 304, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 308, i32 22 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 354, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 358, i32 22 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 362, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 365, i32 21 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 538, i32 18 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 657, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 677, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 171, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 702, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 703, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 704, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 705, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 706, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 707, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 708, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 709, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 710, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 711, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 712, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 713, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 714, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 715, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 716, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 717, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 718, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.392 = private constant [40 x i8] c"../drivers/net/ethernet/8390/axnet_cs.c\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 719, i32 2 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__exitcall_axnet_cs_driver_exit, ptr @__initcall__kmod_axnet_cs__357_733_axnet_cs_driver_init6, ptr @axnet_config._entry, ptr @axnet_config._entry.48, ptr @axnet_config._entry.52, ptr @axnet_config._entry_ptr, ptr @axnet_config._entry_ptr.50, ptr @axnet_config._entry_ptr.54, ptr @axnet_cs_driver_exit, ptr @axnet_cs_driver, ptr @.str, ptr @axnet_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @axnet_probe.__key, ptr @.str.4, ptr @axnet_netdev_ops, ptr @.str.5, ptr @.str.6, ptr @axnet_open.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_ids to i32), i32 1508, i32 1888, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_config._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axnet_config._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @axnet_cs_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axnet_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @axnet_cs_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_probe.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axnet_probe.__UNIQUE_ID_ddebug349, ptr noundef %dev3, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 196, i32 noundef 1, i32 noundef 1) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %page_lock = getelementptr i8, ptr %call4, i32 2368
  tail call void @__raw_spin_lock_init(ptr noundef %page_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @axnet_probe.__key, i16 noundef signext 3) #7
  %add.ptr.i26 = getelementptr i8, ptr %call4, i32 2420
  %0 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %link, ptr %add.ptr.i26, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %2 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %config_flags, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @axnet_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %5 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %watchdog_timeo, align 4
  %call14 = tail call fastcc i32 @axnet_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axnet_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_detach.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_detach, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axnet_detach.__UNIQUE_ID_ddebug350, ptr noundef %dev3, ptr noundef nonnull @.str.65, ptr noundef %link) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #7
  tail call void @pcmcia_disable_device(ptr noundef %link) #7
  tail call void @free_netdev(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_resume(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %active_low = getelementptr i8, ptr %1, i32 2496
  %4 = ptrtoint ptr %active_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @pcmcia_write_config_byte(ptr noundef %link, i32 noundef 2, i8 noundef zeroext 4) #7
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  tail call void @axnet_reset_8390(ptr noundef %1)
  tail call fastcc void @AX88190_init(ptr noundef %1, i32 noundef 1)
  tail call void @netif_device_attach(ptr noundef %1) #7
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
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
define internal fastcc i32 @axnet_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_config.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_config, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axnet_config.__UNIQUE_ID_ddebug351, ptr noundef %dev4, ptr noundef nonnull @.str.46, ptr noundef %link) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %config_regs = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 13
  %2 = ptrtoint ptr %config_regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 99, ptr %config_regs, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %3 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config_flags, align 4
  %or = or i32 %4, 2049
  store i32 %or, ptr %config_flags, align 4
  %call5 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @axnet_configcheck, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end7, label %do.end.failed_crit_edge

do.end.failed_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end7:                                          ; preds = %do.end
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end7.failed_crit_edge, label %if.end10

if.end7.failed_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end10:                                         ; preds = %if.end7
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %sub.i = add i32 %10, 1
  %add.i = sub i32 %sub.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp12 = icmp eq i32 %add.i, 8
  br i1 %cmp12, label %if.then13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config_flags, align 4
  %or15 = or i32 %14, 2
  store i32 %or15, ptr %config_flags, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  %call17 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.failed_crit_edge

if.end16.failed_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end20:                                         ; preds = %if.end16
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 8
  %irq22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %17 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq22, align 4
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %base_addr, align 32
  %call25 = tail call fastcc i32 @get_prom(ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.end30, label %if.end38

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #10
  br label %failed.sink.split

if.end38:                                         ; preds = %if.end20
  %add.ptr.i245 = getelementptr i8, ptr %1, i32 2304
  %23 = ptrtoint ptr %add.ptr.i245 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.51, ptr %add.ptr.i245, align 4
  %word16 = getelementptr i8, ptr %1, i32 2344
  %24 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %word16, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %word16, align 4
  %tx_start_page = getelementptr i8, ptr %1, i32 2345
  %25 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 64, ptr %tx_start_page, align 1
  %rx_start_page = getelementptr i8, ptr %1, i32 2346
  %26 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 76, ptr %rx_start_page, align 2
  %stop_page = getelementptr i8, ptr %1, i32 2347
  %27 = ptrtoint ptr %stop_page to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %stop_page, align 1
  %reset_8390 = getelementptr i8, ptr %1, i32 2308
  %28 = ptrtoint ptr %reset_8390 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @axnet_reset_8390, ptr %reset_8390, align 4
  %get_8390_hdr = getelementptr i8, ptr %1, i32 2312
  %29 = ptrtoint ptr %get_8390_hdr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @get_8390_hdr, ptr %get_8390_hdr, align 4
  %block_input = getelementptr i8, ptr %1, i32 2320
  %30 = ptrtoint ptr %block_input to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @block_input, ptr %block_input, align 4
  %block_output = getelementptr i8, ptr %1, i32 2316
  %31 = ptrtoint ptr %block_output to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @block_output, ptr %block_output, align 4
  %32 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_addr, align 32
  %add = add i32 %33, 21
  %and = and i32 %add, 1048575
  %add49 = or i32 %and, -18874368
  %34 = inttoptr i32 %add49 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp53.not = icmp eq i8 %35, 0
  %flags57 = getelementptr i8, ptr %1, i32 2492
  %36 = ptrtoint ptr %flags57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags57, align 4
  %. = select i1 %cmp53.not, i32 1, i32 2
  %or58 = or i32 %37, %.
  store i32 %or58, ptr %flags57, align 4
  %flags60 = getelementptr i8, ptr %1, i32 2492
  %and61 = and i32 %or58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end38.if.end72_crit_edge, label %do.body64

if.end38.if.end72_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.body64:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_addr, align 32
  %add68 = add i32 %39, 23
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %40 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 16) #7, !srcloc !207
  br label %if.end72

if.end72:                                         ; preds = %do.body64, %if.end38.if.end72_crit_edge
  %active_low = getelementptr i8, ptr %1, i32 2496
  %41 = ptrtoint ptr %active_low to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %active_low, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end72
  %i.0263 = phi i32 [ 0, %if.end72 ], [ %inc, %for.inc.for.body_crit_edge ]
  %42 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_addr, align 32
  %add76 = add i32 %43, 20
  %call77 = tail call fastcc i32 @mdio_read(i32 noundef %add76, i32 noundef %i.0263, i32 noundef 1)
  %44 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_addr, align 32
  %add79 = add i32 %45, 20
  %call80 = tail call fastcc i32 @mdio_read(i32 noundef %add79, i32 noundef %i.0263, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call77, i32 %call80)
  %cmp81 = icmp eq i32 %call77, %call80
  %46 = freeze i1 %cmp81
  br i1 %46, label %for.body.for.inc_crit_edge, label %switch.early.test

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

switch.early.test:                                ; preds = %for.body
  %47 = zext i32 %call77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call77, label %switch.early.test.if.end120_crit_edge [
    i32 65535, label %switch.early.test.for.inc_crit_edge
    i32 0, label %switch.early.test.for.inc_crit_edge293
  ]

switch.early.test.for.inc_crit_edge293:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

switch.early.test.for.inc_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

switch.early.test.if.end120_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.inc:                                          ; preds = %switch.early.test.for.inc_crit_edge, %switch.early.test.for.inc_crit_edge293, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0263, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then93, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then93:                                        ; preds = %for.inc
  %call94 = tail call i32 @pcmcia_write_config_byte(ptr noundef %link, i32 noundef 2, i8 noundef zeroext 4) #7
  br label %for.body98

for.body98:                                       ; preds = %for.inc117.for.body98_crit_edge, %if.then93
  %i.1265 = phi i32 [ 0, %if.then93 ], [ %inc118, %for.inc117.for.body98_crit_edge ]
  %48 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base_addr, align 32
  %add100 = add i32 %49, 20
  %call101 = tail call fastcc i32 @mdio_read(i32 noundef %add100, i32 noundef %i.1265, i32 noundef 1)
  %50 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base_addr, align 32
  %add103 = add i32 %51, 20
  %call104 = tail call fastcc i32 @mdio_read(i32 noundef %add103, i32 noundef %i.1265, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call101, i32 %call104)
  %cmp105 = icmp eq i32 %call101, %call104
  %52 = freeze i1 %cmp105
  br i1 %52, label %for.body98.for.inc117_crit_edge, label %switch.early.test241

for.body98.for.inc117_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc117

switch.early.test241:                             ; preds = %for.body98
  %53 = zext i32 %call101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call101, label %if.then114 [
    i32 65535, label %switch.early.test241.for.inc117_crit_edge
    i32 0, label %switch.early.test241.for.inc117_crit_edge294
  ]

switch.early.test241.for.inc117_crit_edge294:     ; preds = %switch.early.test241
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc117

switch.early.test241.for.inc117_crit_edge:        ; preds = %switch.early.test241
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc117

if.then114:                                       ; preds = %switch.early.test241
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %active_low to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %active_low, align 4
  br label %if.end120

for.inc117:                                       ; preds = %switch.early.test241.for.inc117_crit_edge, %switch.early.test241.for.inc117_crit_edge294, %for.body98.for.inc117_crit_edge
  %inc118 = add nuw nsw i32 %i.1265, 1
  %exitcond272.not = icmp eq i32 %inc118, 32
  br i1 %exitcond272.not, label %for.inc117.if.end120.thread_crit_edge, label %for.inc117.for.body98_crit_edge

for.inc117.for.body98_crit_edge:                  ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body98

for.inc117.if.end120.thread_crit_edge:            ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.thread

if.end120:                                        ; preds = %if.then114, %switch.early.test.if.end120_crit_edge
  %j.3 = phi i32 [ %call101, %if.then114 ], [ %call77, %switch.early.test.if.end120_crit_edge ]
  %i.2 = phi i32 [ %i.1265, %if.then114 ], [ %i.0263, %switch.early.test.if.end120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.2)
  %cmp121 = icmp ult i32 %i.2, 32
  %spec.select = select i1 %cmp121, i32 %i.2, i32 -1
  br label %if.end120.thread

if.end120.thread:                                 ; preds = %if.end120, %for.inc117.if.end120.thread_crit_edge
  %j.3276 = phi i32 [ %j.3, %if.end120 ], [ %call101, %for.inc117.if.end120.thread_crit_edge ]
  %55 = phi i32 [ %spec.select, %if.end120 ], [ -1, %for.inc117.if.end120.thread_crit_edge ]
  %phy_id = getelementptr i8, ptr %1, i32 2488
  %56 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %phy_id, align 4
  %dev123 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %57 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev123, ptr %parent, align 8
  %call125 = tail call i32 @register_netdev(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126.not = icmp eq i32 %call125, 0
  br i1 %cmp126.not, label %if.end134, label %if.end120.thread.failed.sink.split_crit_edge

if.end120.thread.failed.sink.split_crit_edge:     ; preds = %if.end120.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed.sink.split

if.end134:                                        ; preds = %if.end120.thread
  %58 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags60, align 4
  %and136 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %cond138 = select i1 %tobool137.not, i32 1, i32 7
  %60 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %base_addr, align 32
  %62 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq22, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %64 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %cond138, i32 noundef %61, i32 noundef %63, ptr noundef %65) #10
  %66 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp142.not = icmp eq i32 %67, -1
  br i1 %cmp142.not, label %if.else165, label %do.body146

do.body146:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_config.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_config, %if.then158)) #7
          to label %cleanup [label %if.then158], !srcloc !203

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %phy_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @axnet_config.__UNIQUE_ID_ddebug352, ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef %69, i32 noundef %j.3276) #7
  br label %cleanup

if.else165:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %1, ptr noundef nonnull @.str.57) #10
  br label %cleanup

failed.sink.split:                                ; preds = %if.end120.thread.failed.sink.split_crit_edge, %do.end30
  %.str.53.sink = phi ptr [ @.str.49, %do.end30 ], [ @.str.53, %if.end120.thread.failed.sink.split_crit_edge ]
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.53.sink) #10
  br label %failed

failed:                                           ; preds = %failed.sink.split, %if.end16.failed_crit_edge, %if.end7.failed_crit_edge, %do.end.failed_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #7
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.else165, %if.then158, %do.body146
  %retval.0 = phi i32 [ -19, %failed ], [ 0, %if.then158 ], [ 0, %if.else165 ], [ 0, %do.body146 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2420
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_open.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axnet_open.__UNIQUE_ID_ddebug353, ptr noundef %dev4, ptr noundef nonnull @.str.6, ptr noundef %dev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %add = add i32 %3, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #7, !srcloc !207
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @ei_irq_wrapper, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %open, align 4
  %link_status = getelementptr i8, ptr %dev, i32 2484
  %9 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %link_status, align 4
  %watchdog = getelementptr i8, ptr %dev, i32 2428
  tail call void @init_timer_key(ptr noundef %watchdog, ptr noundef nonnull @ei_watchdog, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @axnet_open.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add17 = add i32 %10, 100
  %call18 = tail call i32 @mod_timer(ptr noundef %watchdog, i32 noundef %add17) #7
  %page_lock.i = getelementptr i8, ptr %dev, i32 2368
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock.i) #7
  tail call fastcc void @AX88190_init(ptr noundef %dev, i32 noundef 1) #7
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock.i, i32 noundef %call3.i) #7
  %irqlock.i = getelementptr i8, ptr %dev, i32 2344
  %13 = ptrtoint ptr %irqlock.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %irqlock.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -9
  store i8 %bf.clear.i, ptr %irqlock.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %do.end.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2420
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_close.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_close, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axnet_close.__UNIQUE_ID_ddebug354, ptr noundef %dev4, ptr noundef nonnull @.str.35, ptr noundef %dev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %page_lock.i = getelementptr i8, ptr %dev, i32 2368
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock.i) #7
  tail call fastcc void @AX88190_init(ptr noundef %dev, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock.i, i32 noundef %call3.i) #7
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #7
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #7
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %open, align 4
  %8 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %watchdog = getelementptr i8, ptr %dev, i32 2428
  %call7 = tail call i32 @del_timer_sync(ptr noundef %watchdog) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %packet = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %packet) #7
  %2 = call ptr @memset(ptr %packet, i32 255, i32 60)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #7
  %add = add i32 %1, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #7, !srcloc !207
  %irqlock = getelementptr i8, ptr %dev, i32 2344
  %8 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %irqlock, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %irqlock, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %6, i32 60)
  %tx1 = getelementptr i8, ptr %dev, i32 2352
  %10 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp10 = icmp eq i16 %11, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tx_start_page = getelementptr i8, ptr %dev, i32 2345
  %12 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_start_page, align 1
  %conv12 = zext i8 %13 to i32
  %conv13 = trunc i32 %9 to i16
  %14 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %tx1, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end123_crit_edge, label %land.lhs.true

if.then.if.end123_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true:                                    ; preds = %if.then
  %tx2 = getelementptr i8, ptr %dev, i32 2354
  %17 = ptrtoint ptr %tx2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tx2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp16 = icmp sgt i16 %18, 0
  br i1 %cmp16, label %do.body20, label %land.lhs.true.if.end123_crit_edge

land.lhs.true.if.end123_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

do.body20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_start_xmit.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_start_xmit, %if.then26)) #7
          to label %if.end123 [label %if.then26], !srcloc !203

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %tx2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx2, align 2
  %conv28 = sext i16 %20 to i32
  %lasttx = getelementptr i8, ptr %dev, i32 2356
  %21 = ptrtoint ptr %lasttx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %lasttx, align 4
  %conv29 = sext i16 %22 to i32
  %23 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load30 = load i8, ptr %irqlock, align 4
  %bf.lshr = lshr i8 %bf.load30, 4
  %bf.clear31 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @axnet_start_xmit.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %bf.cast) #7
  br label %if.end123

if.else:                                          ; preds = %entry
  %tx237 = getelementptr i8, ptr %dev, i32 2354
  %24 = ptrtoint ptr %tx237 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx237, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp39 = icmp eq i16 %25, 0
  br i1 %cmp39, label %if.then41, label %do.body86

if.then41:                                        ; preds = %if.else
  %tx_start_page42 = getelementptr i8, ptr %dev, i32 2345
  %26 = ptrtoint ptr %tx_start_page42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_start_page42, align 1
  %conv43 = zext i8 %27 to i32
  %add44 = add nuw nsw i32 %conv43, 6
  %conv45 = trunc i32 %9 to i16
  %28 = ptrtoint ptr %tx237 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv45, ptr %tx237, align 2
  %msg_enable47 = getelementptr i8, ptr %dev, i32 2416
  %29 = ptrtoint ptr %msg_enable47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable47, align 4
  %and48 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp ne i32 %and48, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp53 = icmp sgt i16 %11, 0
  %or.cond = select i1 %tobool49.not, i1 %cmp53, i1 false
  br i1 %or.cond, label %do.body57, label %if.then41.if.end123_crit_edge

if.then41.if.end123_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

do.body57:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_start_xmit.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_start_xmit, %if.then69)) #7
          to label %if.end123 [label %if.then69], !srcloc !203

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tx1, align 4
  %conv71 = sext i16 %32 to i32
  %lasttx72 = getelementptr i8, ptr %dev, i32 2356
  %33 = ptrtoint ptr %lasttx72 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %lasttx72, align 4
  %conv73 = sext i16 %34 to i32
  %35 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load75 = load i8, ptr %irqlock, align 4
  %bf.lshr76 = lshr i8 %bf.load75, 4
  %bf.clear77 = and i8 %bf.lshr76, 1
  %bf.cast78 = zext i8 %bf.clear77 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @axnet_start_xmit.__UNIQUE_ID_ddebug362, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv71, i32 noundef %conv73, i32 noundef %bf.cast78) #7
  br label %if.end123

do.body86:                                        ; preds = %if.else
  %msg_enable87 = getelementptr i8, ptr %dev, i32 2416
  %36 = ptrtoint ptr %msg_enable87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable87, align 4
  %and88 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body86.do.end115_crit_edge, label %do.body91

do.body86.do.end115_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115

do.body91:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_start_xmit.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_start_xmit, %if.then103)) #7
          to label %do.end115 [label %if.then103], !srcloc !203

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tx1, align 4
  %conv105 = sext i16 %39 to i32
  %40 = ptrtoint ptr %tx237 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tx237, align 2
  %conv107 = sext i16 %41 to i32
  %lasttx108 = getelementptr i8, ptr %dev, i32 2356
  %42 = ptrtoint ptr %lasttx108 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %lasttx108, align 4
  %conv109 = sext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @axnet_start_xmit.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %conv109) #7
  br label %do.end115

do.end115:                                        ; preds = %if.then103, %do.body91, %do.body86.do.end115_crit_edge
  %44 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load117 = load i8, ptr %irqlock, align 4
  %bf.clear118 = and i8 %bf.load117, -9
  store i8 %bf.clear118, ptr %irqlock, align 4
  %45 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i260 = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i260) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 63) #7, !srcloc !207
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call3) #7
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  br label %cleanup

if.end123:                                        ; preds = %if.then69, %do.body57, %if.then41.if.end123_crit_edge, %if.then26, %do.body20, %land.lhs.true.if.end123_crit_edge, %if.then.if.end123_crit_edge
  %output_page.0 = phi i32 [ %conv12, %if.then26 ], [ %conv12, %land.lhs.true.if.end123_crit_edge ], [ %conv12, %if.then.if.end123_crit_edge ], [ %add44, %if.then69 ], [ %add44, %if.then41.if.end123_crit_edge ], [ %conv12, %do.body20 ], [ %add44, %do.body57 ]
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %48)
  %cmp125 = icmp eq i32 %6, %48
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %block_output = getelementptr i8, ptr %dev, i32 2316
  %49 = ptrtoint ptr %block_output to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %block_output, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  tail call void %50(ptr noundef %dev, i32 noundef %6, ptr noundef %52, i32 noundef %output_page.0) #7
  br label %if.end133

if.else128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %53 = call ptr @memset(ptr %packet, i32 0, i32 60)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %56 = call ptr @memcpy(ptr %packet, ptr %55, i32 %48)
  %block_output131 = getelementptr i8, ptr %dev, i32 2316
  %57 = ptrtoint ptr %block_output131 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %block_output131, align 4
  call void %58(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull %packet, i32 noundef %output_page.0) #7
  br label %if.end133

if.end133:                                        ; preds = %if.else128, %if.then127
  %59 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load135 = load i8, ptr %irqlock, align 4
  %60 = and i8 %bf.load135, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool139.not = icmp eq i8 %60, 0
  br i1 %tobool139.not, label %if.then140, label %if.else156

if.then140:                                       ; preds = %if.end133
  %bf.set144 = or i8 %bf.load135, 16
  %61 = ptrtoint ptr %irqlock to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %bf.set144, ptr %irqlock, align 4
  call fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %9, i32 noundef %output_page.0)
  %62 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 12
  %65 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp.not.i.i = icmp eq i32 %66, %64
  br i1 %cmp.not.i.i, label %if.then140.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.then140.netif_trans_update.exit_crit_edge:     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %64, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.then140.netif_trans_update.exit_crit_edge
  %tx_start_page145 = getelementptr i8, ptr %dev, i32 2345
  %68 = ptrtoint ptr %tx_start_page145 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tx_start_page145, align 1
  %conv146 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %output_page.0, i32 %conv146)
  %cmp147 = icmp eq i32 %output_page.0, %conv146
  br i1 %cmp147, label %if.end158.thread, label %if.else152

if.end158.thread:                                 ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %tx1, align 4
  %lasttx151 = getelementptr i8, ptr %dev, i32 2356
  %71 = ptrtoint ptr %lasttx151 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %lasttx151, align 4
  br label %land.lhs.true162

if.else152:                                       ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tx2153 = getelementptr i8, ptr %dev, i32 2354
  %72 = ptrtoint ptr %tx2153 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %tx2153, align 2
  %lasttx154 = getelementptr i8, ptr %dev, i32 2356
  %73 = ptrtoint ptr %lasttx154 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -2, ptr %lasttx154, align 4
  br label %if.end158

if.else156:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %txqueue = getelementptr i8, ptr %dev, i32 2350
  %74 = ptrtoint ptr %txqueue to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %txqueue, align 2
  %inc157 = add i8 %75, 1
  store i8 %inc157, ptr %txqueue, align 2
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.else152
  %76 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %.pr = load i16, ptr %tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool161.not = icmp eq i16 %.pr, 0
  br i1 %tobool161.not, label %if.end158.if.else167_crit_edge, label %if.end158.land.lhs.true162_crit_edge

if.end158.land.lhs.true162_crit_edge:             ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true162

if.end158.if.else167_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else167

land.lhs.true162:                                 ; preds = %if.end158.land.lhs.true162_crit_edge, %if.end158.thread
  %tx2163 = getelementptr i8, ptr %dev, i32 2354
  %77 = ptrtoint ptr %tx2163 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tx2163, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool165.not = icmp eq i16 %78, 0
  br i1 %tobool165.not, label %land.lhs.true162.if.else167_crit_edge, label %if.then166

land.lhs.true162.if.else167_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else167

if.then166:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i265 = getelementptr inbounds %struct.netdev_queue, ptr %80, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i265) #7
  br label %if.end168

if.else167:                                       ; preds = %land.lhs.true162.if.else167_crit_edge, %if.end158.if.else167_crit_edge
  %81 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i267 = getelementptr inbounds %struct.netdev_queue, ptr %82, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i267) #7
  br label %if.end168

if.end168:                                        ; preds = %if.else167, %if.then166
  %83 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load170 = load i8, ptr %irqlock, align 4
  %bf.clear171 = and i8 %bf.load170, -9
  store i8 %bf.clear171, ptr %irqlock, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 63) #7, !srcloc !207
  call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call3) #7
  call void @consume_skb(ptr noundef %skb) #7
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end168, %do.end115
  %tx_bytes.sink275 = phi ptr [ %tx_bytes, %if.end168 ], [ %tx_errors, %do.end115 ]
  %.sink274 = phi i32 [ %9, %if.end168 ], [ 1, %do.end115 ]
  %retval.0 = phi i32 [ 0, %if.end168 ], [ 16, %do.end115 ]
  %84 = ptrtoint ptr %tx_bytes.sink275 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_bytes.sink275, align 4
  %add176 = add i32 %85, %.sink274
  store i32 %add176, ptr %tx_bytes.sink275, align 4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #7
  tail call fastcc void @do_set_multicast_list(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 20
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %entry.sw.bb3_crit_edge
    i32 35145, label %sw.bb9
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy_id = getelementptr i8, ptr %dev, i32 2488
  %3 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_id, align 4
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge
  %6 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ifr_ifru.i, align 2
  %conv5 = zext i16 %7 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_num, align 2
  %10 = and i16 %9, 31
  %and = zext i16 %10 to i32
  %call7 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %conv5, i32 noundef %and)
  %conv8 = trunc i32 %call7 to i16
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %11 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv8, ptr %val_out, align 2
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %12 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ifr_ifru.i, align 2
  %conv11 = zext i16 %13 to i32
  %reg_num12 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg_num12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg_num12, align 2
  %16 = and i16 %15, 31
  %and14 = zext i16 %16 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val_in, align 2
  %shl.i = shl i32 %conv11, 23
  %shl1.i = shl nuw nsw i32 %and14, 18
  %or.i = or i32 %shl1.i, %shl.i
  %and.i.i.i = and i32 %add, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %19 = inttoptr i32 %add.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb9
  %bits.05.i.i = phi i32 [ 0, %sw.bb9 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 8) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 9) #7, !srcloc !207
  %inc.i.i = add nuw nsw i32 %bits.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.body.preheader.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.preheader.i:                             ; preds = %for.body.i.i
  %conv15 = zext i16 %18 to i32
  %or3.i = or i32 %or.i, %conv15
  %or4.i = or i32 %or3.i, 1342308352
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.030.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 31, %for.body.preheader.i ]
  %shl5.i = shl nuw i32 1, %i.030.i
  %and.i = and i32 %shl5.i, %or4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv.i = select i1 %tobool.not.i, i8 0, i8 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv.i) #7, !srcloc !207
  %conv7.i = or i8 %conv.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv7.i) #7, !srcloc !207
  %dec.i = add nsw i32 %i.030.i, -1
  %cmp.not.i = icmp eq i32 %i.030.i, 0
  br i1 %cmp.not.i, label %mdio_write.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mdio_write.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 2) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 3) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 2) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 3) #7, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %mdio_write.exit, %sw.bb3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mdio_write.exit ], [ 0, %sw.bb3 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axnet_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @dev_trans_start(ptr noundef %dev) #7
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %3 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_errors, align 4
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #7
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %5 = inttoptr i32 %add7 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %add13 = add i32 %1, 7
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %7 = inttoptr i32 %add15 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call4) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axnet_tx_timeout.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axnet_tx_timeout, %if.then)) #7
          to label %do.end34 [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = zext i8 %8 to i32
  %conv11 = zext i8 %6 to i32
  %sub = sub i32 %2, %call1
  %and27 = and i32 %conv11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool29.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool29.not, ptr @.str.44, ptr @.str.43
  %cond30 = select i1 %tobool28.not, ptr %cond, ptr @.str.42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @axnet_tx_timeout.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond30, i32 noundef %conv11, i32 noundef %conv19, i32 noundef %sub) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool35.not = icmp eq i8 %8, 0
  br i1 %tobool35.not, label %land.lhs.true, label %do.end34.do.body43_crit_edge

do.end34.do.body43_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

land.lhs.true:                                    ; preds = %do.end34
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %9 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool37.not = icmp eq i32 %10, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true.do.body43_crit_edge

land.lhs.true.do.body43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %interface_num = getelementptr i8, ptr %dev, i32 2349
  %11 = ptrtoint ptr %interface_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %interface_num, align 1
  %13 = xor i8 %12, 1
  store i8 %13, ptr %interface_num, align 1
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %land.lhs.true.do.body43_crit_edge, %do.end34.do.body43_crit_edge
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #7
  %reset_8390 = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %reset_8390 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_8390, align 4
  tail call void %15(ptr noundef %dev) #7
  tail call fastcc void @AX88190_init(ptr noundef %dev, i32 noundef 1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call51) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %17) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #7
  %add = add i32 %1, 13
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv8 = zext i8 %5 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %6 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_frame_errors, align 4
  %add10 = add i32 %7, %conv8
  store i32 %add10, ptr %rx_frame_errors, align 4
  %add11 = add i32 %1, 14
  %and.i35 = and i32 %add11, 1048575
  %add.i36 = or i32 %and.i35, -18874368
  %8 = inttoptr i32 %add.i36 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv13 = zext i8 %9 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %10 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_crc_errors, align 8
  %add15 = add i32 %11, %conv13
  store i32 %add15, ptr %rx_crc_errors, align 8
  %add16 = add i32 %1, 15
  %and.i37 = and i32 %add16, 1048575
  %add.i38 = or i32 %and.i37, -18874368
  %12 = inttoptr i32 %add.i38 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv18 = zext i8 %13 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %14 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_missed_errors, align 4
  %add20 = add i32 %15, %conv18
  store i32 %add20, ptr %rx_missed_errors, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ei_irq_wrapper(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stale = getelementptr i8, ptr %dev_id, i32 2476
  %0 = ptrtoint ptr %stale to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stale, align 4
  %call1 = tail call fastcc i32 @ax_interrupt(ptr noundef %dev_id)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ei_watchdog(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
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
  %add = add i32 %5, 20
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %stale = getelementptr i8, ptr %t, i32 48
  %9 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stale, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %add1 = add i32 %5, 7
  %and.i = and i32 %add1, 1048575
  %add.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %13 = and i8 %12, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end10_crit_edge, label %if.then4

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %land.lhs.true
  %fast_poll = getelementptr i8, ptr %t, i32 52
  %14 = ptrtoint ptr %fast_poll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fast_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.then6, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.26) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4.if.end7_crit_edge
  %stale.i = getelementptr i8, ptr %3, i32 2476
  %16 = ptrtoint ptr %stale.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %stale.i, align 4
  %call1.i = tail call fastcc i32 @ax_interrupt(ptr noundef %3) #7
  %17 = ptrtoint ptr %fast_poll to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %fast_poll, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %fast_poll11 = getelementptr i8, ptr %t, i32 52
  %18 = ptrtoint ptr %fast_poll11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fast_poll11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %19, -1
  %20 = ptrtoint ptr %fast_poll11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec, ptr %fast_poll11, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %phy_id = getelementptr i8, ptr %t, i32 60
  %21 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %call22 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %22, i32 noundef 1)
  %conv23 = trunc i32 %call22 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv23)
  %tobool24.not = icmp eq i16 %conv23, 0
  %conv25 = and i32 %call22, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv25)
  %cmp26 = icmp eq i32 %conv25, 65535
  %or.cond = or i1 %tobool24.not, %cmp26
  br i1 %or.cond, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.27) #10
  %23 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %phy_id, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %conv33 = and i16 %conv23, 4
  %link_status = getelementptr i8, ptr %t, i32 56
  %24 = ptrtoint ptr %link_status to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv33, i16 %25)
  %cmp36.not = icmp eq i16 %conv33, %25
  br i1 %cmp36.not, label %if.end30.cleanup_crit_edge, label %if.then38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.end30
  %26 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_id, align 4
  %call40 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %27, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv33)
  %tobool43.not = icmp eq i16 %conv33, 0
  %cond = select i1 %tobool43.not, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond) #10
  br i1 %tobool43.not, label %if.then38.if.end62_crit_edge, label %if.then45

if.then38.if.end62_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then45:                                        ; preds = %if.then38
  %conv41 = trunc i32 %call40 to i16
  %and47 = and i32 %call40, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %conv50 = select i1 %tobool48.not, i8 0, i8 -128
  %duplex_flag = getelementptr i8, ptr %t, i32 58
  %28 = ptrtoint ptr %duplex_flag to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv50, ptr %duplex_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv41)
  %tobool51.not = icmp eq i16 %conv41, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %and54 = and i32 %call40, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, i32 10, i32 100
  %cond60 = select i1 %tobool48.not, i32 72, i32 70
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %cond56, i32 noundef %cond60) #10
  br label %if.end61

if.else:                                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.32) #10
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then52
  tail call fastcc void @AX88190_init(ptr noundef %3, i32 noundef 1)
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then38.if.end62_crit_edge
  %29 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv33, ptr %link_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end30.cleanup_crit_edge, %if.then28, %if.end17.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %.sink110 = phi i32 [ 1, %if.then13 ], [ 100, %if.end30.cleanup_crit_edge ], [ 100, %if.end62 ], [ 100, %if.end17.cleanup_crit_edge ], [ 100, %entry.cleanup_crit_edge ], [ 100, %if.then28 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add65 = add i32 %30, %.sink110
  %expires67 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %expires67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add65, ptr %expires67, align 4
  tail call void @add_timer(ptr noundef %t) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax_interrupt(ptr noundef %dev_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %page_lock = getelementptr i8, ptr %dev_id, i32 2368
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #7
  %irqlock = getelementptr i8, ptr %dev_id, i32 2344
  %2 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %irqlock, align 4
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body20, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %1, 7
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv14 = zext i8 %5 to i32
  %add15 = add i32 %1, 15
  %and.i2 = and i32 %add15, 1048575
  %add.i3 = or i32 %and.i2, -18874368
  %6 = inttoptr i32 %add.i3 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv17 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev_id, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %conv14, i32 noundef %conv17) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call3) #7
  br label %cleanup

do.body20:                                        ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev_id, i32 2416
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body20.do.end38_crit_edge, label %do.body23

do.body20.do.end38_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.body23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_interrupt.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_interrupt, %if.then29)) #7
          to label %do.end38 [label %if.then29], !srcloc !203

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %add30 = add i32 %1, 7
  %and.i4 = and i32 %add30, 1048575
  %add.i5 = or i32 %and.i4, -18874368
  %10 = inttoptr i32 %add.i5 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv32 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_interrupt.__UNIQUE_ID_ddebug364, ptr noundef %dev_id, ptr noundef nonnull @.str.12, i32 noundef %conv32) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %do.body23, %do.body20.do.end38_crit_edge
  %add39 = add i32 %1, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i6 = and i32 %add39, 1048575
  %add.i7 = or i32 %and.i6, -18874368
  %12 = inttoptr i32 %add.i7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #7, !srcloc !207
  %13 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load41 = load i8, ptr %irqlock, align 4
  %bf.set = or i8 %bf.load41, 8
  store i8 %bf.set, ptr %irqlock, align 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp46.not44 = icmp eq i8 %14, 0
  br i1 %cmp46.not44, label %do.end38.if.end136_crit_edge, label %land.rhs.lr.ph

do.end38.if.end136_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add i32 %1, 15
  %.pre55 = and i32 %.pre, 1048575
  %.pre56 = or i32 %.pre55, -18874368
  %.pre57 = inttoptr i32 %.pre56 to ptr
  br label %if.end136

land.rhs.lr.ph:                                   ; preds = %do.end38
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 17
  %tx_heartbeat_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 19
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 20
  %add105 = add i32 %1, 13
  %and.i20 = and i32 %add105, 1048575
  %add.i21 = or i32 %and.i20, -18874368
  %15 = inttoptr i32 %add.i21 to ptr
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 13
  %add109 = add i32 %1, 14
  %and.i22 = and i32 %add109, 1048575
  %add.i23 = or i32 %and.i22, -18874368
  %16 = inttoptr i32 %add.i23 to ptr
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 12
  %add114 = add i32 %1, 15
  %and.i24 = and i32 %add114, 1048575
  %add.i25 = or i32 %and.i24, -18874368
  %17 = inttoptr i32 %add.i25 to ptr
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 15
  br label %land.rhs

land.rhs:                                         ; preds = %if.end119.land.rhs_crit_edge, %land.rhs.lr.ph
  %18 = phi i8 [ %14, %land.rhs.lr.ph ], [ %45, %if.end119.land.rhs_crit_edge ]
  %nr_serviced.046 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end119.land.rhs_crit_edge ]
  %handled.045 = phi i32 [ 0, %land.rhs.lr.ph ], [ 1, %if.end119.land.rhs_crit_edge ]
  %conv4547 = zext i8 %18 to i32
  %inc = add nuw nsw i32 %nr_serviced.046, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %nr_serviced.046)
  %exitcond54.not = icmp eq i32 %nr_serviced.046, 11
  br i1 %exitcond54.not, label %land.lhs.true, label %while.body

while.body:                                       ; preds = %land.rhs
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp51 = icmp eq i8 %18, -1
  %or.cond = select i1 %tobool.i.not, i1 true, i1 %cmp51
  br i1 %or.cond, label %do.body54, label %if.end64

do.body54:                                        ; preds = %while.body
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 4
  %and56 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body54.do.end61_crit_edge, label %if.then58

do.body54.do.end61_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

if.then58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.13) #10
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body54.do.end61_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %18) #7, !srcloc !207
  br label %if.end136

if.end64:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %18) #7, !srcloc !207
  br label %for.body

for.body:                                         ; preds = %if.end79.for.body_crit_edge, %if.end64
  %i.042 = phi i32 [ 0, %if.end64 ], [ %inc83, %if.end79.for.body_crit_edge ]
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  %and761 = and i8 %23, %18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and761)
  %tobool77.not = icmp eq i8 %and761, 0
  br i1 %tobool77.not, label %for.body.for.end_crit_edge, label %if.end79

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end79:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %18) #7, !srcloc !207
  %inc83 = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc83, 10
  br i1 %exitcond.not, label %if.end79.for.end_crit_edge, label %if.end79.for.body_crit_edge

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end79.for.end_crit_edge, %for.body.for.end_crit_edge
  %and84 = and i32 %conv4547, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.else87, label %if.then86

if.then86:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ei_rx_overrun(ptr noundef %dev_id)
  br label %if.end92

if.else87:                                        ; preds = %for.end
  %and88 = and i32 %conv4547, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else87.if.end92_crit_edge, label %if.then90

if.else87.if.end92_crit_edge:                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then90:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ei_receive(ptr noundef %dev_id)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.else87.if.end92_crit_edge, %if.then86
  %and93 = and i32 %conv4547, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else96, label %if.then95

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ei_tx_intr(ptr noundef %dev_id)
  br label %if.end101

if.else96:                                        ; preds = %if.end92
  %and97 = and i32 %conv4547, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else96.if.end101_crit_edge, label %if.then99

if.else96.if.end101_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then99:                                        ; preds = %if.else96
  %24 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_addr, align 32
  %add.i18 = add i32 %25, 4
  %and.i.i = and i32 %add.i18, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %26 = inttoptr i32 %add.i.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv.i = zext i8 %27 to i32
  %and.i19 = and i8 %27, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i19)
  %tobool.not.i = icmp eq i8 %and.i19, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ei_tx_intr(ptr noundef %dev_id) #7
  br label %if.end101

if.else.i:                                        ; preds = %if.then99
  %28 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %and3.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then5.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc7.i = add i32 %31, 1
  store i32 %inc7.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.else.i.if.end.i_crit_edge
  %and9.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then11.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %tx_heartbeat_errors.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_heartbeat_errors.i, align 4
  %inc13.i = add i32 %33, 1
  store i32 %inc13.i, ptr %tx_heartbeat_errors.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i.if.end14.i_crit_edge
  %and16.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end101_crit_edge, label %if.then18.i

if.end14.i.if.end101_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_window_errors.i, align 8
  %inc20.i = add i32 %35, 1
  store i32 %inc20.i, ptr %tx_window_errors.i, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then18.i, %if.end14.i.if.end101_crit_edge, %if.then.i, %if.else96.if.end101_crit_edge, %if.then95
  %and102 = and i32 %conv4547, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end119_crit_edge, label %if.then104

if.end101.if.end119_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv107 = zext i8 %36 to i32
  %37 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_frame_errors, align 4
  %add108 = add i32 %38, %conv107
  store i32 %add108, ptr %rx_frame_errors, align 4
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv111 = zext i8 %39 to i32
  %40 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_crc_errors, align 8
  %add113 = add i32 %41, %conv111
  store i32 %add113, ptr %rx_crc_errors, align 8
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %conv116 = zext i8 %42 to i32
  %43 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_missed_errors, align 4
  %add118 = add i32 %44, %conv116
  store i32 %add118, ptr %rx_missed_errors, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then104, %if.end101.if.end119_crit_edge
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %cmp46.not = icmp eq i8 %45, 0
  br i1 %cmp46.not, label %if.end119.if.end136_crit_edge, label %if.end119.land.rhs_crit_edge

if.end119.land.rhs_crit_edge:                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end119.if.end136_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

land.lhs.true:                                    ; preds = %land.rhs
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 4
  %and122 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %land.lhs.true.if.end136_crit_edge, label %if.then127

land.lhs.true.if.end136_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then127:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp128.not = icmp eq i8 %18, -1
  br i1 %cmp128.not, label %if.then127.if.end131_crit_edge, label %if.then130

if.then127.if.end131_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then130:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.14, i32 noundef %conv4547) #10
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.then127.if.end131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 63) #7, !srcloc !207
  br label %if.end136

if.end136:                                        ; preds = %if.end131, %land.lhs.true.if.end136_crit_edge, %if.end119.if.end136_crit_edge, %do.end61, %do.end38.if.end136_crit_edge
  %.pre-phi = phi ptr [ %.pre57, %do.end38.if.end136_crit_edge ], [ %17, %do.end61 ], [ %17, %if.end131 ], [ %17, %land.lhs.true.if.end136_crit_edge ], [ %17, %if.end119.if.end136_crit_edge ]
  %handled.1 = phi i32 [ 0, %do.end38.if.end136_crit_edge ], [ %handled.045, %do.end61 ], [ 1, %if.end131 ], [ %handled.045, %land.lhs.true.if.end136_crit_edge ], [ 1, %if.end119.if.end136_crit_edge ]
  %48 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load138 = load i8, ptr %irqlock, align 4
  %bf.clear139 = and i8 %bf.load138, -9
  store i8 %bf.clear139, ptr %irqlock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %.pre-phi, i8 63) #7, !srcloc !207
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool143.not = icmp ne i32 %handled.1, 0
  %cond = zext i1 %tobool143.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %cond, %if.end136 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ei_rx_overrun(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %4 = and i8 %3, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 33) #7, !srcloc !207
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body6

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ei_rx_overrun.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ei_rx_overrun, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !203

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ei_rx_overrun.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body6, %entry.do.end14_crit_edge
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %7 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496000) #7
  %add15 = add i32 %1, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i53 = and i32 %add15, 1048575
  %add.i54 = or i32 %and.i53, -18874368
  %10 = inttoptr i32 %add.i54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #7, !srcloc !207
  %add16 = add i32 %1, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i55 = and i32 %add16, 1048575
  %add.i56 = or i32 %and.i55, -18874368
  %11 = inttoptr i32 %add.i56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #7, !srcloc !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool17.not = icmp eq i8 %4, 0
  br i1 %tobool17.not, label %do.end14.if.end27_crit_edge, label %if.then18

do.end14.if.end27_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then18:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %add19 = add i32 %1, 7
  %and.i57 = and i32 %add19, 1048575
  %add.i58 = or i32 %and.i57, -18874368
  %12 = inttoptr i32 %add.i58 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %14 = and i8 %13, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24.not = icmp ne i8 %14, 0
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %do.end14.if.end27_crit_edge
  %must_resend.1 = phi i1 [ true, %do.end14.if.end27_crit_edge ], [ %tobool24.not, %if.then18 ]
  %add28 = add i32 %1, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i59 = and i32 %add28, 1048575
  %add.i60 = or i32 %and.i59, -18874368
  %15 = inttoptr i32 %add.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 2) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 34) #7, !srcloc !207
  tail call fastcc void @ei_receive(ptr noundef %dev)
  %duplex_flag = getelementptr i8, ptr %dev, i32 2486
  %16 = ptrtoint ptr %duplex_flag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %duplex_flag, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %17) #7, !srcloc !207
  br i1 %must_resend.1, label %if.end27.if.end36_crit_edge, label %if.then34

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 38) #7, !srcloc !207
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end27.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ei_receive(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %rx_frame = alloca %struct.e8390_pkt_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_frame) #7
  %2 = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %rx_frame, i32 0, i32 1
  %3 = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %rx_frame, i32 0, i32 2
  %sub = add i32 %1, 6
  %and.i = and i32 %sub, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %add2 = add i32 %1, 3
  %and.i203 = and i32 %add2, 1048575
  %add.i204 = or i32 %and.i203, -18874368
  %5 = inttoptr i32 %add.i204 to ptr
  %stop_page = getelementptr i8, ptr %dev, i32 2347
  %rx_start_page = getelementptr i8, ptr %dev, i32 2346
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %current_page = getelementptr i8, ptr %dev, i32 2348
  %get_8390_hdr = getelementptr i8, ptr %dev, i32 2312
  %rx_errors114 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %block_input = getelementptr i8, ptr %dev, i32 2320
  %stats87 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %6 = ptrtoint ptr %rx_frame to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rx_frame, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup139.while.body_crit_edge, %entry
  %inc211 = phi i32 [ 1, %entry ], [ %inc, %cleanup139.while.body_crit_edge ]
  %7 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #7, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %8 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #7, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %add4 = add i8 %8, 1
  %9 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stop_page, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add4, i8 %10)
  %cmp8.not = icmp ult i8 %add4, %10
  br i1 %cmp8.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_start_page, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %this_frame.0 = phi i8 [ %12, %if.then ], [ %add4, %while.body.if.end_crit_edge ]
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %conv10 = zext i8 %this_frame.0 to i32
  %15 = ptrtoint ptr %current_page to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %current_page, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %this_frame.0, i8 %16)
  %cmp12.not = icmp eq i8 %this_frame.0, %16
  br i1 %cmp12.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true14

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true14:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %this_frame.0)
  %cmp16.not = icmp eq i8 %this_frame.0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp19.not = icmp eq i8 %7, -1
  %or.cond = select i1 %cmp16.not, i1 %cmp19.not, i1 false
  br i1 %or.cond, label %land.lhs.true14.if.end25_crit_edge, label %if.then21

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  %conv24 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv10, i32 noundef %conv24) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true14.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %this_frame.0, i8 %7)
  %cmp28 = icmp eq i8 %this_frame.0, %7
  br i1 %cmp28, label %if.end25.while.end_crit_edge, label %if.end31

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end31:                                         ; preds = %if.end25
  %conv26 = zext i8 %this_frame.0 to i32
  %conv33 = shl nuw nsw i32 %conv26, 8
  %17 = ptrtoint ptr %get_8390_hdr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_8390_hdr, align 4
  call void %18(ptr noundef %dev, ptr noundef nonnull %rx_frame, i32 noundef %conv26) #7
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 2
  %conv35 = zext i16 %20 to i32
  %sub36 = add nsw i32 %conv35, -4
  %21 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_frame, align 4
  %conv37 = zext i8 %22 to i32
  %23 = add i16 %20, -1523
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1459, i16 %23)
  %24 = icmp ult i16 %23, -1459
  br i1 %24, label %do.body, label %if.else

do.body:                                          ; preds = %if.end31
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and50 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body.do.end_crit_edge, label %if.then52

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %conv57 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv57) #10
  br label %do.end

do.end:                                           ; preds = %if.then52, %do.body.do.end_crit_edge
  %29 = ptrtoint ptr %rx_errors114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_errors114, align 8
  %inc59 = add i32 %30, 1
  store i32 %inc59, ptr %rx_errors114, align 8
  br label %if.end123.sink.split

if.else:                                          ; preds = %if.end31
  %and62 = and i32 %conv37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and62)
  %cmp63 = icmp eq i32 %and62, 1
  br i1 %cmp63, label %if.then65, label %do.body99

if.then65:                                        ; preds = %if.else
  %add66 = add nsw i32 %conv35, -2
  %call.i = call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add66, i32 noundef 2592) #7
  %cmp68 = icmp eq ptr %call.i, null
  br i1 %cmp68, label %do.body71, label %if.else81

do.body71:                                        ; preds = %if.then65
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and73 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body71.cleanup_crit_edge, label %if.then75

do.body71.cleanup_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then75:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %sub36) #10
  br label %cleanup

if.else81:                                        ; preds = %if.then65
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr.i205, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %36, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call82 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub36) #7
  %37 = ptrtoint ptr %block_input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %block_input, align 4
  %add84 = or i32 %conv33, 4
  call void %38(ptr noundef %dev, i32 noundef %sub36, ptr noundef nonnull %call.i, i32 noundef %add84) #7
  %call85 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %call85, ptr %protocol, align 8
  %call86 = call i32 @netif_rx(ptr noundef nonnull %call.i) #7
  %40 = ptrtoint ptr %stats87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stats87, align 8
  %inc88 = add i32 %41, 1
  store i32 %inc88, ptr %stats87, align 8
  %42 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_bytes, align 8
  %add90 = add i32 %43, %sub36
  store i32 %add90, ptr %rx_bytes, align 8
  %and91 = and i32 %conv37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else81.if.end123_crit_edge, label %if.else81.if.end123.sink.split_crit_edge

if.else81.if.end123.sink.split_crit_edge:         ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.sink.split

if.else81.if.end123_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

cleanup:                                          ; preds = %if.then75, %do.body71.cleanup_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %44 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_dropped, align 8
  %inc80 = add i32 %45, 1
  store i32 %inc80, ptr %rx_dropped, align 8
  br label %while.end

do.body99:                                        ; preds = %if.else
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 4
  %and101 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body99.do.end112_crit_edge, label %if.then103

do.body99.do.end112_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end112

if.then103:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %2, align 1
  %conv107 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv37, i32 noundef %conv107, i32 noundef %conv35) #10
  br label %do.end112

do.end112:                                        ; preds = %if.then103, %do.body99.do.end112_crit_edge
  %50 = ptrtoint ptr %rx_errors114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_errors114, align 8
  %inc115 = add i32 %51, 1
  store i32 %inc115, ptr %rx_errors114, align 8
  %and116 = and i32 %conv37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.end112.if.end123_crit_edge, label %do.end112.if.end123.sink.split_crit_edge

do.end112.if.end123.sink.split_crit_edge:         ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.sink.split

do.end112.if.end123_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.end123.sink.split:                             ; preds = %do.end112.if.end123.sink.split_crit_edge, %if.else81.if.end123.sink.split_crit_edge, %do.end
  %multicast.sink212 = phi ptr [ %rx_length_errors, %do.end ], [ %multicast, %if.else81.if.end123.sink.split_crit_edge ], [ %rx_fifo_errors, %do.end112.if.end123.sink.split_crit_edge ]
  %52 = ptrtoint ptr %multicast.sink212 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %multicast.sink212, align 8
  %inc95 = add i32 %53, 1
  store i32 %inc95, ptr %multicast.sink212, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.end123.sink.split, %do.end112.if.end123_crit_edge, %if.else81.if.end123_crit_edge
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %2, align 1
  %56 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %stop_page, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp128.not = icmp ult i8 %55, %57
  br i1 %cmp128.not, label %if.end123.cleanup139_crit_edge, label %if.then130

if.end123.cleanup139_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

if.then130:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %conv125 = zext i8 %55 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv125) #10
  %58 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rx_start_page, align 2
  br label %cleanup139

cleanup139:                                       ; preds = %if.then130, %if.end123.cleanup139_crit_edge
  %next_frame.0 = phi i8 [ %59, %if.then130 ], [ %55, %if.end123.cleanup139_crit_edge ]
  %60 = ptrtoint ptr %current_page to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %next_frame.0, ptr %current_page, align 4
  %sub136 = add i8 %next_frame.0, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %sub136) #7, !srcloc !207
  %inc = add nuw nsw i32 %inc211, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %cleanup139.while.end_crit_edge, label %cleanup139.while.body_crit_edge

cleanup139.while.body_crit_edge:                  ; preds = %cleanup139
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup139.while.end_crit_edge:                   ; preds = %cleanup139
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup139.while.end_crit_edge, %cleanup, %if.end25.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_frame) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ei_tx_intr(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %conv = zext i8 %3 to i32
  %txqueue = getelementptr i8, ptr %dev, i32 2350
  %4 = ptrtoint ptr %txqueue to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %txqueue, align 2
  %dec = add i8 %5, -1
  store i8 %dec, ptr %txqueue, align 2
  %tx1 = getelementptr i8, ptr %dev, i32 2352
  %6 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx1, align 4
  %conv4 = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp slt i16 %7, 0
  br i1 %cmp, label %if.then, label %if.else35

if.then:                                          ; preds = %entry
  %lasttx = getelementptr i8, ptr %dev, i32 2356
  %8 = ptrtoint ptr %lasttx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lasttx, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %9, label %if.then13 [
    i16 1, label %if.then.if.end_crit_edge
    i16 -1, label %if.then.if.end_crit_edge188
  ]

if.then.if.end_crit_edge188:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = sext i16 %9 to i32
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %12, i32 noundef %conv6, i32 noundef %conv4) #10
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge188
  %13 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %tx1, align 4
  %tx2 = getelementptr i8, ptr %dev, i32 2354
  %14 = ptrtoint ptr %tx2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp20 = icmp sgt i16 %15, 0
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %txing = getelementptr i8, ptr %dev, i32 2344
  %16 = ptrtoint ptr %txing to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %txing, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %txing, align 4
  %conv24186 = zext i16 %15 to i32
  %tx_start_page = getelementptr i8, ptr %dev, i32 2345
  %17 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_start_page, align 1
  %conv25 = zext i8 %18 to i32
  %add26 = add nuw nsw i32 %conv25, 6
  tail call fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %conv24186, i32 noundef %add26)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 12
  %22 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp.not.i.i = icmp eq i32 %23, %21
  br i1 %cmp.not.i.i, label %if.then22.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.then22.netif_trans_update.exit_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %21, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.then22.netif_trans_update.exit_crit_edge
  %25 = ptrtoint ptr %tx2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %tx2, align 2
  %26 = ptrtoint ptr %lasttx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %lasttx, align 4
  br label %if.end81

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %lasttx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 20, ptr %lasttx, align 4
  %txing30 = getelementptr i8, ptr %dev, i32 2344
  %28 = ptrtoint ptr %txing30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load31 = load i8, ptr %txing30, align 4
  %bf.clear32 = and i8 %bf.load31, -17
  store i8 %bf.clear32, ptr %txing30, align 4
  br label %if.end81

if.else35:                                        ; preds = %entry
  %tx236 = getelementptr i8, ptr %dev, i32 2354
  %29 = ptrtoint ptr %tx236 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tx236, align 2
  %conv37 = sext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp38 = icmp slt i16 %30, 0
  br i1 %cmp38, label %if.then40, label %if.else35.if.end81_crit_edge

if.else35.if.end81_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then40:                                        ; preds = %if.else35
  %lasttx41 = getelementptr i8, ptr %dev, i32 2356
  %31 = ptrtoint ptr %lasttx41 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %lasttx41, align 4
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %32, label %if.then50 [
    i16 2, label %if.then40.if.end56_crit_edge
    i16 -2, label %if.then40.if.end56_crit_edge189
  ]

if.then40.if.end56_crit_edge189:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then40.if.end56_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then50:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %conv42 = sext i16 %32 to i32
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %35, i32 noundef %conv42, i32 noundef %conv37) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.then40.if.end56_crit_edge, %if.then40.if.end56_crit_edge189
  %36 = ptrtoint ptr %tx236 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %tx236, align 2
  %37 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp60 = icmp sgt i16 %38, 0
  br i1 %cmp60, label %if.then62, label %if.else73

if.then62:                                        ; preds = %if.end56
  %txing63 = getelementptr i8, ptr %dev, i32 2344
  %39 = ptrtoint ptr %txing63 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load64 = load i8, ptr %txing63, align 4
  %bf.set66 = or i8 %bf.load64, 16
  store i8 %bf.set66, ptr %txing63, align 4
  %conv68187 = zext i16 %38 to i32
  %tx_start_page69 = getelementptr i8, ptr %dev, i32 2345
  %40 = ptrtoint ptr %tx_start_page69 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_start_page69, align 1
  %conv70 = zext i8 %41 to i32
  tail call fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %conv68187, i32 noundef %conv70)
  %_tx.i.i180 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i180 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i180, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i181 = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 12
  %45 = ptrtoint ptr %trans_start.i.i181 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %trans_start.i.i181, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.not.i.i182 = icmp eq i32 %46, %44
  br i1 %cmp.not.i.i182, label %if.then62.netif_trans_update.exit184_crit_edge, label %do.body5.i.i183

if.then62.netif_trans_update.exit184_crit_edge:   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_trans_update.exit184

do.body5.i.i183:                                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %trans_start.i.i181 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %44, ptr %trans_start.i.i181, align 16
  br label %netif_trans_update.exit184

netif_trans_update.exit184:                       ; preds = %do.body5.i.i183, %if.then62.netif_trans_update.exit184_crit_edge
  %48 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %tx1, align 4
  %49 = ptrtoint ptr %lasttx41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %lasttx41, align 4
  br label %if.end81

if.else73:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %lasttx41 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 10, ptr %lasttx41, align 4
  %txing75 = getelementptr i8, ptr %dev, i32 2344
  %51 = ptrtoint ptr %txing75 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load76 = load i8, ptr %txing75, align 4
  %bf.clear77 = and i8 %bf.load76, -17
  store i8 %bf.clear77, ptr %txing75, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else73, %netif_trans_update.exit184, %if.else35.if.end81_crit_edge, %if.else, %netif_trans_update.exit
  %and82 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool.not = icmp eq i32 %and82, 0
  br i1 %tobool.not, label %if.end81.if.end84_crit_edge, label %if.then83

if.end81.if.end84_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %52 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %collisions, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %collisions, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81.if.end84_crit_edge
  %and85 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else90, label %if.then87

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %54 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_packets, align 4
  %inc89 = add i32 %55, 1
  store i32 %inc89, ptr %tx_packets, align 4
  br label %if.end126

if.else90:                                        ; preds = %if.end84
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %56 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_errors, align 4
  %inc92 = add i32 %57, 1
  store i32 %inc92, ptr %tx_errors, align 4
  %and93 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else90.if.end101_crit_edge, label %if.then95

if.else90.if.end101_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then95:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #9
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %58 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_aborted_errors, align 8
  %inc97 = add i32 %59, 1
  store i32 %inc97, ptr %tx_aborted_errors, align 8
  %collisions99 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %60 = ptrtoint ptr %collisions99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %collisions99, align 4
  %add100 = add i32 %61, 16
  store i32 %add100, ptr %collisions99, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then95, %if.else90.if.end101_crit_edge
  %and102 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end107_crit_edge, label %if.then104

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %62 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_carrier_errors, align 4
  %inc106 = add i32 %63, 1
  store i32 %inc106, ptr %tx_carrier_errors, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end101.if.end107_crit_edge
  %and108 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %64 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_fifo_errors, align 8
  %inc112 = add i32 %65, 1
  store i32 %inc112, ptr %tx_fifo_errors, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %and114 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end119_crit_edge, label %if.then116

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %66 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_heartbeat_errors, align 4
  %inc118 = add i32 %67, 1
  store i32 %inc118, ptr %tx_heartbeat_errors, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.end113.if.end119_crit_edge
  %and120 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end126_crit_edge, label %if.then122

if.end119.if.end126_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %68 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_window_errors, align 8
  %inc124 = add i32 %69, 1
  store i32 %inc124, ptr %tx_window_errors, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.end119.if.end126_crit_edge, %if.then87
  %_tx.i.i185 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %70 = ptrtoint ptr %_tx.i.i185 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_tx.i.i185, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %71) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %length, i32 noundef %start_page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = trunc i32 %length to i8
  %add = add i32 %1, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i17 = and i32 %add, 1048575
  %add.i18 = or i32 %and.i17, -18874368
  %5 = inttoptr i32 %add.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv3) #7, !srcloc !207
  %shr = lshr i32 %length, 8
  %conv4 = trunc i32 %shr to i8
  %add5 = add i32 %1, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i19 = and i32 %add5, 1048575
  %add.i20 = or i32 %and.i19, -18874368
  %6 = inttoptr i32 %add.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv4) #7, !srcloc !207
  %conv6 = trunc i32 %start_page to i8
  %add7 = add i32 %1, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i21 = and i32 %add7, 1048575
  %add.i22 = or i32 %and.i21, -18874368
  %7 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv6) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 38) #7, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdio_read(i32 noundef %addr, i32 noundef %phy_id, i32 noundef %loc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %loc
  %and.i.i = and i32 %addr, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %0 = inttoptr i32 %add.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %bits.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 8) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 9) #7, !srcloc !207
  %inc.i = add nuw nsw i32 %bits.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.preheader:                               ; preds = %for.body.i
  %or1 = or i32 %or, 251904
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.039 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 14, %for.body.preheader ]
  %shl3 = shl nuw i32 1, %i.039
  %and = and i32 %shl3, %or1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool.not, i8 0, i8 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #7, !srcloc !207
  %conv5 = or i8 %conv, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv5) #7, !srcloc !207
  %dec = add nsw i32 %i.039, -1
  %cmp.not = icmp eq i32 %i.039, 0
  br i1 %cmp.not, label %for.body.for.body9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %retval2.041 = phi i32 [ %or15, %for.body9.for.body9_crit_edge ], [ 0, %for.body.for.body9_crit_edge ]
  %i.140 = phi i32 [ %dec17, %for.body9.for.body9_crit_edge ], [ 19, %for.body.for.body9_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #7, !srcloc !207
  %shl10 = shl i32 %retval2.041, 1
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %2 = lshr i8 %1, 2
  %.lobit = and i8 %2, 1
  %3 = zext i8 %.lobit to i32
  %or15 = or i32 %shl10, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 3) #7, !srcloc !207
  %dec17 = add nsw i32 %i.140, -1
  %cmp7 = icmp ugt i32 %i.140, 1
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.end18

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.end18:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  %and19 = and i32 %retval2.041, 65535
  ret i32 %and19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @AX88190_init(ptr noundef %dev, i32 noundef %startp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %word16 = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %word16, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 33) #7, !srcloc !207
  %conv = select i1 %tobool.not, i8 72, i8 73
  %add2 = add i32 %1, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i103 = and i32 %add2, 1048575
  %add.i104 = or i32 %and.i103, -18874368
  %5 = inttoptr i32 %add.i104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #7, !srcloc !207
  %add3 = add i32 %1, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i105 = and i32 %add3, 1048575
  %add.i106 = or i32 %and.i105, -18874368
  %6 = inttoptr i32 %add.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #7, !srcloc !207
  %add4 = add i32 %1, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i107 = and i32 %add4, 1048575
  %add.i108 = or i32 %and.i107, -18874368
  %7 = inttoptr i32 %add.i108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #7, !srcloc !207
  %add5 = add i32 %1, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i109 = and i32 %add5, 1048575
  %add.i110 = or i32 %and.i109, -18874368
  %8 = inttoptr i32 %add.i110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 96) #7, !srcloc !207
  %add6 = add i32 %1, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i111 = and i32 %add6, 1048575
  %add.i112 = or i32 %and.i111, -18874368
  %9 = inttoptr i32 %add.i112 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 2) #7, !srcloc !207
  %tx_start_page = getelementptr i8, ptr %dev, i32 2345
  %10 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_start_page, align 1
  %add7 = add i32 %1, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i113 = and i32 %add7, 1048575
  %add.i114 = or i32 %and.i113, -18874368
  %12 = inttoptr i32 %add.i114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %11) #7, !srcloc !207
  %tx2 = getelementptr i8, ptr %dev, i32 2354
  %13 = ptrtoint ptr %tx2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %tx2, align 2
  %tx1 = getelementptr i8, ptr %dev, i32 2352
  %14 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %tx1, align 4
  %rx_start_page = getelementptr i8, ptr %dev, i32 2346
  %15 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rx_start_page, align 2
  %add8 = add i32 %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i115 = and i32 %add8, 1048575
  %add.i116 = or i32 %and.i115, -18874368
  %17 = inttoptr i32 %add.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %16) #7, !srcloc !207
  %stop_page = getelementptr i8, ptr %dev, i32 2347
  %18 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stop_page, align 1
  %sub = add i8 %19, -1
  %add11 = add i32 %1, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i117 = and i32 %add11, 1048575
  %add.i118 = or i32 %and.i117, -18874368
  %20 = inttoptr i32 %add.i118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %sub) #7, !srcloc !207
  %21 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_start_page, align 2
  %current_page = getelementptr i8, ptr %dev, i32 2348
  %23 = ptrtoint ptr %current_page to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %current_page, align 4
  %24 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stop_page, align 1
  %add14 = add i32 %1, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i119 = and i32 %add14, 1048575
  %add.i120 = or i32 %and.i119, -18874368
  %26 = inttoptr i32 %add.i120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %25) #7, !srcloc !207
  %add15 = add i32 %1, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i121 = and i32 %add15, 1048575
  %add.i122 = or i32 %and.i121, -18874368
  %27 = inttoptr i32 %add.i122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -1) #7, !srcloc !207
  %add16 = add i32 %1, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i123 = and i32 %add16, 1048575
  %add.i124 = or i32 %and.i123, -18874368
  %28 = inttoptr i32 %add.i124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 97) #7, !srcloc !207
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr, align 64
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %32) #7, !srcloc !207
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %37)
  %cmp28.not = icmp eq i8 %33, %37
  br i1 %cmp28.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %41) #7, !srcloc !207
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %43 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_addr, align 64
  %arrayidx26.1 = getelementptr i8, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx26.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %46)
  %cmp28.not.1 = icmp eq i8 %42, %46
  br i1 %cmp28.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 1) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %47 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %48, i32 2
  %49 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %50) #7, !srcloc !207
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %52 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr, align 64
  %arrayidx26.2 = getelementptr i8, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx26.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %55)
  %cmp28.not.2 = icmp eq i8 %51, %55
  br i1 %cmp28.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 2) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %56 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %57, i32 3
  %58 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %59) #7, !srcloc !207
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %61 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_addr, align 64
  %arrayidx26.3 = getelementptr i8, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx26.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %64)
  %cmp28.not.3 = icmp eq i8 %60, %64
  br i1 %cmp28.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 3) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %65 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.4, align 1
  %add20.4 = add i32 %1, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i127.4 = and i32 %add20.4, 1048575
  %add.i128.4 = or i32 %and.i127.4, -18874368
  %69 = inttoptr i32 %add.i128.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 %68) #7, !srcloc !207
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %71 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_addr, align 64
  %arrayidx26.4 = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx26.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %74)
  %cmp28.not.4 = icmp eq i8 %70, %74
  br i1 %cmp28.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 4) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %75 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %76, i32 5
  %77 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.5, align 1
  %add20.5 = add i32 %1, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i127.5 = and i32 %add20.5, 1048575
  %add.i128.5 = or i32 %and.i127.5, -18874368
  %79 = inttoptr i32 %add.i128.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %78) #7, !srcloc !207
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %81 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_addr, align 64
  %arrayidx26.5 = getelementptr i8, ptr %82, i32 5
  %83 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx26.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %84)
  %cmp28.not.5 = icmp eq i8 %80, %84
  br i1 %cmp28.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 5) #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %85 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rx_start_page, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %86) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 33) #7, !srcloc !207
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %87 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %88, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %89 = ptrtoint ptr %tx2 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %tx2, align 2
  %90 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %tx1, align 4
  %91 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load35 = load i8, ptr %word16, align 4
  %bf.clear36 = and i8 %bf.load35, -17
  store i8 %bf.clear36, ptr %word16, align 4
  %flags = getelementptr i8, ptr %dev, i32 2492
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags, align 4
  %and = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %for.inc.5.if.end43_crit_edge, label %do.body

for.inc.5.if.end43_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %add39 = add i32 %1, 23
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %94 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 16) #7, !srcloc !207
  br label %if.end43

if.end43:                                         ; preds = %do.body, %for.inc.5.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startp)
  %tobool44.not = icmp eq i32 %startp, 0
  br i1 %tobool44.not, label %if.end43.if.end53_crit_edge, label %if.then45

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -1) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 63) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 34) #7, !srcloc !207
  %duplex_flag = getelementptr i8, ptr %dev, i32 2486
  %95 = ptrtoint ptr %duplex_flag to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %duplex_flag, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %96) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 68) #7, !srcloc !207
  tail call fastcc void @do_set_multicast_list(ptr noundef %dev)
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.end43.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_set_multicast_list(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %mcfilter = getelementptr i8, ptr %dev, i32 2336
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %mcfilter to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %mcfilter, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.if.end6_crit_edge, label %if.then1

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then1:                                         ; preds = %if.then
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %7 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.053.i = load ptr, ptr %mc.i, align 4
  %cmp.not54.i = icmp eq ptr %ha.053.i, %mc.i
  br i1 %cmp.not54.i, label %if.then1.if.end6_crit_edge, label %if.then1.cond.end.i_crit_edge

if.then1.cond.end.i_crit_edge:                    ; preds = %if.then1
  br label %cond.end.i

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %if.then1.cond.end.i_crit_edge
  %ha.055.i = phi ptr [ %ha.0.i, %cond.end.i.cond.end.i_crit_edge ], [ %ha.053.i, %if.then1.cond.end.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.055.i, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #11
  %8 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %shr26.i = lshr i8 %10, 2
  %and27.i = and i8 %shr26.i, 7
  %shl28.i = shl i8 1, %and27.i
  %11 = lshr i8 %10, 5
  %shr29.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr i8, ptr %mcfilter, i32 %shr29.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv31.i = or i8 %13, %shl28.i
  store i8 %conv31.i, ptr %arrayidx.i, align 1
  %14 = ptrtoint ptr %ha.055.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0.i = load ptr, ptr %ha.055.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp.not.i, label %cond.end.i.if.end6_crit_edge, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.end.i.if.end6_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %mcfilter to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 -1, ptr %mcfilter, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %cond.end.i.if.end6_crit_edge, %if.then1.if.end6_crit_edge, %if.then.if.end6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 96) #7, !srcloc !207
  %add9 = add i32 %1, 8
  %arrayidx = getelementptr i8, ptr %dev, i32 2336
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50 = and i32 %add9, 1048575
  %add.i51 = or i32 %and.i50, -18874368
  %19 = inttoptr i32 %add.i51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %18) #7, !srcloc !207
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 2337
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1, align 1
  %add10.1 = add i32 %1, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50.1 = and i32 %add10.1, 1048575
  %add.i51.1 = or i32 %and.i50.1, -18874368
  %22 = inttoptr i32 %add.i51.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %21) #7, !srcloc !207
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 2338
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2, align 1
  %add10.2 = add i32 %1, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50.2 = and i32 %add10.2, 1048575
  %add.i51.2 = or i32 %and.i50.2, -18874368
  %25 = inttoptr i32 %add.i51.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %24) #7, !srcloc !207
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 2339
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.3, align 1
  %add10.3 = add i32 %1, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50.3 = and i32 %add10.3, 1048575
  %add.i51.3 = or i32 %and.i50.3, -18874368
  %28 = inttoptr i32 %add.i51.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %27) #7, !srcloc !207
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 2340
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.4, align 1
  %add10.4 = add i32 %1, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50.4 = and i32 %add10.4, 1048575
  %add.i51.4 = or i32 %and.i50.4, -18874368
  %31 = inttoptr i32 %add.i51.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %30) #7, !srcloc !207
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 2341
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.5, align 1
  %add10.5 = add i32 %1, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50.5 = and i32 %add10.5, 1048575
  %add.i51.5 = or i32 %and.i50.5, -18874368
  %34 = inttoptr i32 %add.i51.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %33) #7, !srcloc !207
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 2342
  %35 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.6, align 1
  %add10.6 = add i32 %1, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50.6 = and i32 %add10.6, 1048575
  %add.i51.6 = or i32 %and.i50.6, -18874368
  %37 = inttoptr i32 %add.i51.6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %36) #7, !srcloc !207
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 2343
  %38 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.7, align 1
  %add10.7 = add i32 %1, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i50.7 = and i32 %add10.7, 1048575
  %add.i51.7 = or i32 %and.i50.7, -18874368
  %40 = inttoptr i32 %add.i51.7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %39) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 32) #7, !srcloc !207
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and13 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %add16 = add i32 %1, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i54 = and i32 %add16, 1048575
  %add.i55 = or i32 %and.i54, -18874368
  %43 = inttoptr i32 %add.i55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 92) #7, !srcloc !207
  br label %if.end29

if.else17:                                        ; preds = %if.end6
  %and19 = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.else17.if.then24_crit_edge

if.else17.if.then24_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.else17
  %count22 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %44 = ptrtoint ptr %count22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp23 = icmp eq i32 %45, 0
  br i1 %cmp23, label %if.else26, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.else17.if.then24_crit_edge
  %add25 = add i32 %1, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i56 = and i32 %add25, 1048575
  %add.i57 = or i32 %and.i56, -18874368
  %46 = inttoptr i32 %add.i57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 76) #7, !srcloc !207
  br label %if.end29

if.else26:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %add27 = add i32 %1, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i58 = and i32 %add27, 1048575
  %add.i59 = or i32 %and.i58, -18874368
  %47 = inttoptr i32 %add.i59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 68) #7, !srcloc !207
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then24, %if.then15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 34) #7, !srcloc !207
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axnet_configcheck(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %config_index, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  %arrayidx3 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %end4 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %end4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end4, align 4
  %add = add i32 %10, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp5 = icmp ult i32 %add, 32
  br i1 %cmp5, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, -25
  store i32 %and.i, ptr %flags.i, align 4
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3, align 4
  %flags3.i = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags3.i, align 4
  %and4.i = and i32 %16, -25
  store i32 %and4.i, ptr %flags3.i, align 4
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp.i = icmp eq i32 %20, 32
  br i1 %cmp.i, label %if.end7.if.end27.i_crit_edge, label %if.else.i

if.end7.if.end27.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.end7.if.end27.i_crit_edge
  %.sink.i = phi ptr [ %22, %if.else.i ], [ %18, %if.end7.if.end27.i_crit_edge ]
  %.sink66.i = phi i32 [ 8, %if.else.i ], [ 16, %if.end7.if.end27.i_crit_edge ]
  %flags9.i = getelementptr inbounds %struct.resource, ptr %.sink.i, i32 0, i32 3
  %23 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags9.i, align 4
  %or.i = or i32 %24, %.sink66.i
  store i32 %or.i, ptr %flags9.i, align 4
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp30.i = icmp eq i32 %28, 0
  br i1 %cmp30.i, label %for.cond.preheader.i, label %if.else44.i

for.cond.preheader.i:                             ; preds = %if.end27.i
  %io_lines.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add43.i = add nuw nsw i32 %j.065.i, 32
  %cmp32.i = icmp ult i32 %j.065.i, 992
  br i1 %cmp32.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.return_crit_edge

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %j.065.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add43.i, %for.cond.i.for.body.i_crit_edge ]
  %xor.i = xor i32 %j.065.i, 768
  %29 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resource, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %xor.i, ptr %30, align 4
  %add.i = or i32 %xor.i, 16
  %32 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx3, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %33, align 4
  %35 = ptrtoint ptr %io_lines.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %io_lines.i, align 4
  %call.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp40.i = icmp eq i32 %call.i, 0
  br i1 %cmp40.i, label %for.body.i.return_crit_edge, label %for.cond.i

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else44.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call45.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #7
  br label %return

return:                                           ; preds = %if.else44.i, %for.body.i.return_crit_edge, %for.cond.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -19, %if.end.return_crit_edge ], [ %call45.i, %if.else44.i ], [ 0, %for.body.i.return_crit_edge ], [ %call.i, %for.cond.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_prom(ptr nocapture noundef readonly %link) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %config_base = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %9 = getelementptr inbounds i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -1, ptr %9, align 1
  %11 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config_base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %12)
  %cmp.not = icmp eq i32 %12, 960
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @axnet_reset_8390(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add7 = add i32 %3, 16
  %and = and i32 %add7, 1048575
  %add8 = or i32 %and, -18874368
  %23 = inttoptr i32 %add8 to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #7, !srcloc !215
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  %conv12 = trunc i16 %25 to i8
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv12, ptr %addr, align 1
  %27 = lshr i16 %25, 8
  %conv14 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv14, ptr %4, align 1
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #7, !srcloc !215
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  %conv12.1 = trunc i16 %30 to i8
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12.1, ptr %5, align 1
  %32 = lshr i16 %30, 8
  %conv14.1 = trunc i16 %32 to i8
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv14.1, ptr %6, align 1
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #7, !srcloc !215
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  %conv12.2 = trunc i16 %35 to i8
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv12.2, ptr %7, align 1
  %37 = lshr i16 %35, 8
  %conv14.2 = trunc i16 %37 to i8
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv14.2, ptr %8, align 1
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end ]
  %arrayidx = getelementptr [13 x %struct.anon.123], ptr @__const.get_prom.program_seq, i32 0, i32 %i.038
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %offset = getelementptr [13 x %struct.anon.123], ptr @__const.get_prom.program_seq, i32 0, i32 %i.038, i32 1
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %offset, align 1
  %conv = zext i8 %42 to i32
  %add = add i32 %3, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %43 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %40) #7, !srcloc !207
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.cond3.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.cond3.preheader ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axnet_reset_8390(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dmaing, align 4
  %bf.clear3 = and i8 %bf.load, -21
  store i8 %bf.clear3, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 33) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %add5 = add i32 %1, 31
  %and = and i32 %add5, 1048575
  %add6 = or i32 %and, -18874368
  %4 = inttoptr i32 %add6 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %5) #7, !srcloc !207
  %add13 = add i32 %1, 7
  %and.i33 = and i32 %add13, 1048575
  %add.i34 = or i32 %and.i33, -18874368
  %6 = inttoptr i32 %add.i34 to ptr
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp16.not = icmp sgt i8 %7, -1
  br i1 %cmp16.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #7
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.037, %for.body.for.end_crit_edge ], [ 100, %if.end.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -128) #7, !srcloc !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.lcssa)
  %cmp19 = icmp eq i32 %i.0.lcssa, 100
  br i1 %cmp19, label %if.then21, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_8390_hdr(ptr nocapture noundef readonly %dev, ptr noundef %hdr, i32 noundef %ring_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #7, !srcloc !207
  %conv = trunc i32 %ring_page to i8
  %add1 = add i32 %1, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i11 = and i32 %add1, 1048575
  %add.i12 = or i32 %and.i11, -18874368
  %3 = inttoptr i32 %add.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i13 = and i32 %1, 1048575
  %add.i14 = or i32 %and.i13, -18874368
  %4 = inttoptr i32 %add.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 10) #7, !srcloc !207
  %add3 = add i32 %1, 16
  %and = and i32 %add3, 1048575
  %add4 = or i32 %and, -18874368
  %5 = inttoptr i32 %add4 to ptr
  tail call void @__raw_readsw(ptr noundef nonnull %5, ptr noundef %hdr, i32 noundef 2) #7
  %count = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %count, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @block_input(ptr noundef %dev, i32 noundef %count, ptr nocapture noundef readonly %skb, i32 noundef %ring_offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp.not = icmp eq i32 %count, 4
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.if.end9_crit_edge, label %do.body1

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_input.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_input, %if.then6)) #7
          to label %if.end9 [label %if.then6], !srcloc !203

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %count, 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @block_input.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %add) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body1, %entry.if.end9_crit_edge
  %conv = trunc i32 %ring_offset to i8
  %add11 = add i32 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %add11, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #7, !srcloc !207
  %7 = lshr i32 %ring_offset, 8
  %conv12 = trunc i32 %7 to i8
  %add13 = add i32 %1, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i43 = and i32 %add13, 1048575
  %add.i44 = or i32 %and.i43, -18874368
  %8 = inttoptr i32 %add.i44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv12) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i45 = and i32 %1, 1048575
  %add.i46 = or i32 %and.i45, -18874368
  %9 = inttoptr i32 %add.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 10) #7, !srcloc !207
  %add15 = add i32 %1, 16
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %10 = inttoptr i32 %add17 to ptr
  %shr19 = ashr i32 %count, 1
  tail call void @__raw_readsw(ptr noundef nonnull %10, ptr noundef %3, i32 noundef %shr19) #7
  %and20 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end9.if.end29_crit_edge, label %if.then22

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then22:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #7, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %3, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end9.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @block_output(ptr noundef %dev, i32 noundef %count, ptr noundef %buf, i32 noundef %start_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_output.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_output, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @block_output.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.63, ptr noundef %dev, i32 noundef %count) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %count, 1
  %spec.select = add i32 %and, %count
  %add = add i32 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #7, !srcloc !207
  %conv = trunc i32 %start_page to i8
  %add6 = add i32 %1, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i19 = and i32 %add6, 1048575
  %add.i20 = or i32 %and.i19, -18874368
  %3 = inttoptr i32 %add.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv) #7, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %and.i21 = and i32 %1, 1048575
  %add.i22 = or i32 %and.i21, -18874368
  %4 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 18) #7, !srcloc !207
  %add8 = add i32 %1, 16
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %5 = inttoptr i32 %add10 to ptr
  %shr = ashr i32 %spec.select, 1
  tail call void @__raw_writesw(ptr noundef nonnull %5, ptr noundef %buf, i32 noundef %shr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !40, !41, !43, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !124, !126, !127, !129, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !190, !192}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__UNIQUE_ID_author345, !1, !"__UNIQUE_ID_author345", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 70, i32 1}
!2 = !{ptr @__UNIQUE_ID_description346, !3, !"__UNIQUE_ID_description346", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 71, i32 1}
!4 = !{ptr @__UNIQUE_ID_file347, !5, !"__UNIQUE_ID_file347", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 72, i32 1}
!6 = !{ptr @__UNIQUE_ID_license348, !5, !"__UNIQUE_ID_license348", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_axnet_cs__357_733_axnet_cs_driver_init6, !8, !"__initcall__kmod_axnet_cs__357_733_axnet_cs_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 733, i32 1}
!9 = !{ptr @__exitcall_axnet_cs_driver_exit, !8, !"__exitcall_axnet_cs_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 726, i32 11}
!12 = !{ptr @axnet_cs_driver, !13, !"axnet_cs_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 724, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 146, i32 5}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @axnet_probe.__UNIQUE_ID_ddebug349, !15, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!19 = !{ptr @axnet_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 153, i32 5}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @axnet_netdev_ops, !23, !"axnet_netdev_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 128, i32 36}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 474, i32 5}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @axnet_open.__UNIQUE_ID_ddebug353, !25, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!28 = !{ptr @axnet_open.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 487, i32 5}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1114, i32 10}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1116, i32 10}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1117, i32 20}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1126, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ax_interrupt.__UNIQUE_ID_ddebug364, !38, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1137, i32 4}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1182, i32 10}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1186, i32 21}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1471, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ei_rx_overrun.__UNIQUE_ID_ddebug365, !48, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1371, i32 20}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1387, i32 4}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1401, i32 5}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1422, i32 4}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1435, i32 21}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1269, i32 20}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1288, i32 20}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1703, i32 20}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 565, i32 23}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 580, i32 19}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 588, i32 19}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 588, i32 44}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 588, i32 54}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 592, i32 20}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 595, i32 20}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1666, i32 20}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 500, i32 5}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @axnet_close.__UNIQUE_ID_ddebug354, !84, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1000, i32 4}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @axnet_start_xmit.__UNIQUE_ID_ddebug361, !88, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1011, i32 4}
!93 = !{ptr @axnet_start_xmit.__UNIQUE_ID_ddebug362, !92, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 1018, i32 3}
!96 = !{ptr @axnet_start_xmit.__UNIQUE_ID_ddebug363, !95, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 926, i32 2}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @axnet_tx_timeout.__UNIQUE_ID_ddebug358, !98, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!101 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 280, i32 5}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @axnet_config.__UNIQUE_ID_ddebug351, !105, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 303, i32 2}
!110 = !{ptr @axnet_config._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @axnet_config._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 304, i32 2}
!114 = !{ptr @axnet_config._entry.48, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @axnet_config._entry_ptr.50, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 308, i32 22}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 354, i32 2}
!120 = !{ptr @axnet_config._entry.52, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @axnet_config._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 358, i32 22}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 362, i32 2}
!126 = !{ptr @axnet_config.__UNIQUE_ID_ddebug352, !125, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 365, i32 21}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 538, i32 18}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 657, i32 2}
!133 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @block_input.__UNIQUE_ID_ddebug355, !132, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 677, i32 5}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @block_output.__UNIQUE_ID_ddebug356, !136, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!139 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 171, i32 5}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @axnet_detach.__UNIQUE_ID_ddebug350, !141, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 702, i32 2}
!146 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 703, i32 2}
!149 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 704, i32 2}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 705, i32 2}
!154 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 706, i32 2}
!157 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 707, i32 2}
!160 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 708, i32 2}
!163 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 709, i32 2}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 710, i32 2}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 711, i32 2}
!170 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 712, i32 2}
!173 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 713, i32 2}
!176 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 714, i32 2}
!179 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 715, i32 2}
!182 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 716, i32 2}
!185 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 717, i32 2}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 718, i32 2}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 719, i32 2}
!192 = !{ptr @axnet_ids, !193, !"axnet_ids", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/8390/axnet_cs.c", i32 691, i32 38}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{i64 2148741346, i64 2148741351, i64 2148741364, i64 2148741408, i64 2148741442, i64 2148741463}
!204 = !{i64 6807398}
!205 = !{i64 2156655688}
!206 = !{i64 2156655937}
!207 = !{i64 6807003}
!208 = !{i64 2154343059}
!209 = !{i64 2156685864}
!210 = !{i64 2156686189}
!211 = !{i64 2154341074}
!212 = !{i64 2156703787}
!213 = !{i64 2156704663}
!214 = !{i64 2156717405}
!215 = !{i64 6806780}
!216 = !{i64 2156649335}
!217 = !{i64 2156666116}
!218 = !{i64 2156665931}
!219 = !{i64 2156671514}
