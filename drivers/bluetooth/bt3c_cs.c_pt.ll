; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/bt3c_cs.c_pt.bc'
source_filename = "../drivers/bluetooth/bt3c_cs.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.bt3c_info = type { ptr, ptr, %struct.spinlock, %struct.sk_buff_head, i32, i32, i32, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.hci_event_hdr = type { i8, i8 }
%struct.hci_acl_hdr = type { i16, i16 }
%struct.hci_sco_hdr = type <{ i16, i8 }>

@__UNIQUE_ID_author481 = internal constant [53 x i8] c"bt3c_cs.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description482 = internal constant [72 x i8] c"bt3c_cs.description=Bluetooth driver for the 3Com Bluetooth PCMCIA card\00", section ".modinfo", align 1
@__UNIQUE_ID_file483 = internal constant [39 x i8] c"bt3c_cs.file=drivers/bluetooth/bt3c_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license484 = internal constant [20 x i8] c"bt3c_cs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware485 = internal constant [29 x i8] c"bt3c_cs.firmware=BT3CPCC.bin\00", section ".modinfo", align 1
@__initcall__kmod_bt3c_cs__486_749_bt3c_driver_init6 = internal global ptr @bt3c_driver_init, section ".initcall6.init", align 4
@bt3c_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @bt3c_probe, ptr @bt3c_detach, ptr null, ptr null, ptr null, ptr @bt3c_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_bt3c_driver_exit = internal global ptr @bt3c_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt3c_cs\00", [24 x i8] zeroinitializer }, align 32
@bt3c_ids = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -271709647, i32 0, i32 -724657406, i32 0], [4 x ptr] [ptr @.str.19, ptr null, ptr @.str.20, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No usable port range found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Very strange (stat=0x%04x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: Antenna %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown device\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't allocate mem for new packet\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unknown HCI packet with type 0x%02x received\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Very strange\0A\00", [18 x i8] zeroinitializer }, align 32
@bt3c_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&(info->lock)\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT3CPCC.bin\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware request failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware loading failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad address in firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Checksum error in firmware\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3COM\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bluetooth PC Card\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 127, i64 255]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"bt3c_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 742, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 744, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"bt3c_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 736, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 703, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 354, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 358, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 222, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 241, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 271, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 206, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 544, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 555, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 571, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 573, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 582, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 592, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1984, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 470, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 499, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [31 x i8] c"../drivers/bluetooth/bt3c_cs.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 737, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author481, ptr @__UNIQUE_ID_description482, ptr @__UNIQUE_ID_file483, ptr @__UNIQUE_ID_firmware485, ptr @__UNIQUE_ID_license484, ptr @__exitcall_bt3c_driver_exit, ptr @__initcall__kmod_bt3c_cs__486_749_bt3c_driver_init6, ptr @bt3c_driver_exit, ptr @bt3c_driver, ptr @.str, ptr @bt3c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bt3c_open.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @skb_queue_head_init.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt3c_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt3c_ids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt3c_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @bt3c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bt3c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @bt3c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_probe(ptr noundef %link) #2 align 64 {
entry:
  %b.i.i.i = alloca [9 x i8], align 8
  %tmp.i.i.i = alloca i32, align 4
  %tn.i.i.i = alloca i32, align 4
  %size.i.i.i = alloca i32, align 4
  %addr.i.i.i = alloca i32, align 4
  %fcs.i.i.i = alloca i32, align 4
  %firmware.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %link, ptr %call.i, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %2 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_flags, align 4
  %or = or i32 %3, 2561
  store i32 %or, ptr %config_flags, align 4
  %call.i8 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @bt3c_check_config, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i, label %if.end.found_port.i_crit_edge, label %for.cond.i

if.end.found_port.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %found_port.i

for.cond.i:                                       ; preds = %if.end
  %call.1.i = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @bt3c_check_config, ptr noundef nonnull inttoptr (i32 1 to ptr)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.found_port.i_crit_edge, label %for.cond.1.i

for.cond.i.found_port.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %found_port.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.i = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @bt3c_check_config_notpicky, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.1.i.found_port.i_crit_edge, label %if.end4.i

for.cond.1.i.found_port.i_crit_edge:              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %found_port.i

if.end4.i:                                        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1) #6
  br label %failed.i

found_port.i:                                     ; preds = %for.cond.1.i.found_port.i_crit_edge, %for.cond.i.found_port.i_crit_edge, %if.end.found_port.i_crit_edge
  %call5.i = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @bt3c_interrupt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %found_port.i.failed.i_crit_edge

found_port.i.failed.i_crit_edge:                  ; preds = %found_port.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

if.end8.i:                                        ; preds = %found_port.i
  %call9.i = tail call i32 @pcmcia_enable_device(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.end12.i, label %if.end8.i.failed.i_crit_edge

if.end8.i.failed.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i.i) #6
  %4 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware.i.i, align 4, !annotation !68
  %lock.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @bt3c_open.__key, i16 noundef signext 3) #6
  %txq.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 3
  %lock.i.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %5 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %txq.i.i, ptr %txq.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %txq.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %rx_state.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %rx_state.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_state.i.i, align 4
  %rx_count.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rx_count.i.i, align 4
  %rx_skb.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %rx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_skb.i.i, align 4
  %call.i.i.i = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %bt3c_open.exit.thread31.i, label %if.end.i.i

bt3c_open.exit.thread31.i:                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i.i) #6
  br label %failed.i

if.end.i.i:                                       ; preds = %if.end12.i
  %hdev2.i.i = getelementptr inbounds %struct.bt3c_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %hdev2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %hdev2.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %bus.i.i, align 2
  %driver_data.i.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 204, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i.i.i, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %15, i32 0, i32 21
  %parent.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 204, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev.i.i, ptr %parent.i.i, align 8
  %open.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 232
  %17 = ptrtoint ptr %open.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bt3c_hci_open, ptr %open.i.i, align 8
  %close.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 233
  %18 = ptrtoint ptr %close.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bt3c_hci_close, ptr %close.i.i, align 4
  %flush.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 234
  %19 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bt3c_hci_flush, ptr %flush.i.i, align 8
  %send.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 237
  %20 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bt3c_hci_send_frame, ptr %send.i.i, align 4
  %21 = load ptr, ptr %call.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %21, i32 0, i32 21
  %call6.i.i = call i32 @request_firmware(ptr noundef nonnull %firmware.i.i, ptr noundef nonnull @.str.12, ptr noundef %dev5.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.bt3c_open.exit.i_crit_edge, label %if.end8.i.i

if.end.i.i.bt3c_open.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_open.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %22 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %firmware.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %b.i.i.i) #6
  %28 = call ptr @memset(ptr %b.i.i.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  %29 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tn.i.i.i) #6
  %30 = ptrtoint ptr %tn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %tn.i.i.i, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i.i) #6
  %31 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %size.i.i.i, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #6
  %32 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %addr.i.i.i, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fcs.i.i.i) #6
  %33 = ptrtoint ptr %fcs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %fcs.i.i.i, align 4, !annotation !68
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %resource.i.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resource.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  %add.i.i.i.i.i = add i32 %39, 2
  %and2.i.i.i.i.i = and i32 %add.i.i.i.i.i, 1048575
  %add3.i.i.i.i.i = or i32 %and2.i.i.i.i.i, -18874368
  %40 = inttoptr i32 %add3.i.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 64) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %add9.i.i.i.i.i = add i32 %39, 3
  %and10.i.i.i.i.i = and i32 %add9.i.i.i.i.i, 1048575
  %add11.i.i.i.i.i = or i32 %and10.i.i.i.i.i, -18874368
  %41 = inttoptr i32 %add11.i.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -128) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  %and2.i3.i.i.i.i = and i32 %39, 1048575
  %add3.i4.i.i.i.i = or i32 %and2.i3.i.i.i.i, -18874368
  %42 = inttoptr i32 %add3.i4.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 4) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %add9.i6.i.i.i.i = add i32 %39, 1
  %and10.i7.i.i.i.i = and i32 %add9.i6.i.i.i.i, 1048575
  %add11.i8.i.i.i.i = or i32 %and10.i7.i.i.i.i, -18874368
  %43 = inttoptr i32 %add11.i8.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 4) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 64) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -128) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 4) #6, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 64) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -128) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 4) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 4) #6, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 3650716) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not199.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not199.i.i.i, label %if.end8.i.i.while.end.i.i.i_crit_edge, label %while.body.preheader.i.i.i

if.end8.i.i.while.end.i.i.i_crit_edge:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i.i

while.body.preheader.i.i.i:                       ; preds = %if.end8.i.i
  %46 = getelementptr inbounds i8, ptr %b.i.i.i, i32 8
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end69.i.i.i.while.body.i.i.i_crit_edge, %while.body.preheader.i.i.i
  %count.addr.0201.i.i.i = phi i32 [ %sub75.i.i.i, %if.end69.i.i.i.while.body.i.i.i_crit_edge ], [ %27, %while.body.preheader.i.i.i ]
  %ptr.0200.i.i.i = phi ptr [ %add.ptr72.i.i.i, %if.end69.i.i.i.while.body.i.i.i_crit_edge ], [ %25, %while.body.preheader.i.i.i ]
  %47 = ptrtoint ptr %ptr.0200.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ptr.0200.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %48)
  %cmp.not.i.i.i = icmp eq i8 %48, 83
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17) #6
  br label %bt3c_load_firmware.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %49 = call ptr @memset(ptr %b.i.i.i, i32 0, i32 9)
  %add.ptr.i.i.i = getelementptr i8, ptr %ptr.0200.i.i.i, i32 2
  %50 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %add.ptr.i.i.i, align 1
  %52 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %b.i.i.i, align 8
  %call.i.i.i.i = call i32 @_kstrtoul(ptr noundef nonnull %b.i.i.i, i32 noundef 16, ptr noundef nonnull %size.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.end.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge, label %if.end8.i.i.i

if.end.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_load_firmware.exit.thread.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %46, align 8
  %add.ptr11.i.i.i = getelementptr i8, ptr %ptr.0200.i.i.i, i32 4
  %54 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %add.ptr11.i.i.i, align 1
  %56 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %b.i.i.i, align 8
  %call.i143.i.i.i = call i32 @_kstrtoul(ptr noundef nonnull %b.i.i.i, i32 noundef 16, ptr noundef nonnull %addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i.i.i)
  %cmp14.i.i.i = icmp slt i32 %call.i143.i.i.i, 0
  br i1 %cmp14.i.i.i, label %if.end8.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge, label %if.end17.i.i.i

if.end8.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_load_firmware.exit.thread.i.i

if.end17.i.i.i:                                   ; preds = %if.end8.i.i.i
  %57 = call ptr @memset(ptr %b.i.i.i, i32 0, i32 9)
  %58 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i.i.i, align 4
  %mul.i.i.i = shl i32 %59, 1
  %add.ptr21.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %60 = ptrtoint ptr %add.ptr21.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %add.ptr21.i.i.i, align 1
  %62 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %b.i.i.i, align 8
  %call.i144.i.i.i = call i32 @_kstrtoul(ptr noundef nonnull %b.i.i.i, i32 noundef 16, ptr noundef nonnull %fcs.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i.i.i)
  %cmp24.i.i.i = icmp slt i32 %call.i144.i.i.i, 0
  br i1 %cmp24.i.i.i, label %if.end17.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge, label %if.end27.i.i.i

if.end17.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_load_firmware.exit.thread.i.i

if.end27.i.i.i:                                   ; preds = %if.end17.i.i.i
  %63 = call ptr @memset(ptr %b.i.i.i, i32 0, i32 9)
  %64 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %tmp.i.i.i, align 4
  %65 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp29193.not.i.i.i = icmp eq i32 %66, 0
  br i1 %cmp29193.not.i.i.i, label %if.end27.i.i.i.for.end.i.i.i_crit_edge, label %if.end27.i.i.i.for.body.i.i.i_crit_edge

if.end27.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end27.i.i.i
  br label %for.body.i.i.i

if.end27.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %if.end39.i.i.i.for.body.i.i.i_crit_edge, %if.end27.i.i.i.for.body.i.i.i_crit_edge
  %i.0194.i.i.i = phi i32 [ %inc.i.i.i, %if.end39.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end27.i.i.i.for.body.i.i.i_crit_edge ]
  %mul32.i.i.i = shl i32 %i.0194.i.i.i, 1
  %add.ptr34.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul32.i.i.i
  %67 = ptrtoint ptr %add.ptr34.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %add.ptr34.i.i.i, align 1
  %69 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %b.i.i.i, align 8
  %call36.i.i.i = call i32 @kstrtouint(ptr noundef nonnull %b.i.i.i, i32 noundef 16, ptr noundef nonnull %tn.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %if.end39.i.i.i, label %for.body.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge

for.body.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_load_firmware.exit.thread.i.i

if.end39.i.i.i:                                   ; preds = %for.body.i.i.i
  %70 = ptrtoint ptr %tn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tn.i.i.i, align 4
  %72 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tmp.i.i.i, align 4
  %add.i.i.i = add i32 %73, %71
  store i32 %add.i.i.i, ptr %tmp.i.i.i, align 4
  %inc.i.i.i = add nuw i32 %i.0194.i.i.i, 1
  %74 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i.i.i, align 4
  %cmp29.i.i.i = icmp ult i32 %inc.i.i.i, %75
  br i1 %cmp29.i.i.i, label %if.end39.i.i.i.for.body.i.i.i_crit_edge, label %if.end39.i.i.i.for.end.i.i.i_crit_edge

if.end39.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

if.end39.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %if.end39.i.i.i.for.end.i.i.i_crit_edge, %if.end27.i.i.i.for.end.i.i.i_crit_edge
  %76 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tmp.i.i.i, align 4
  %78 = ptrtoint ptr %fcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fcs.i.i.i, align 4
  %add40.i.i.i = add i32 %79, %77
  %and.i.i.i = and i32 %add40.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i.i.i)
  %cmp41.not.i.i.i = icmp eq i32 %and.i.i.i, 255
  br i1 %cmp41.not.i.i.i, label %if.end44.i.i.i, label %if.then43.i.i.i

if.then43.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18) #6
  br label %bt3c_load_firmware.exit.i.i

if.end44.i.i.i:                                   ; preds = %for.end.i.i.i
  %arrayidx45.i.i.i = getelementptr i8, ptr %ptr.0200.i.i.i, i32 1
  %80 = ptrtoint ptr %arrayidx45.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx45.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %81)
  %cmp47.i.i.i = icmp eq i8 %81, 51
  br i1 %cmp47.i.i.i, label %if.then49.i.i.i, label %if.end44.i.i.i.if.end69.i.i.i_crit_edge

if.end44.i.i.i.if.end69.i.i.i_crit_edge:          ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i.i.i

if.then49.i.i.i:                                  ; preds = %if.end44.i.i.i
  %82 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  %conv1.i.i.i.i = trunc i32 %83 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv1.i.i.i.i) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %84 = lshr i32 %83, 8
  %conv8.i.i.i.i = trunc i32 %84 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv8.i.i.i.i) #6, !srcloc !70
  %85 = call ptr @memset(ptr %b.i.i.i, i32 0, i32 9)
  %86 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %size.i.i.i, align 4
  %88 = and i32 %87, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp53197.not.i.i.i = icmp eq i32 %88, 4
  br i1 %cmp53197.not.i.i.i, label %if.then49.i.i.i.if.end69.i.i.i_crit_edge, label %for.body55.preheader.i.i.i

if.then49.i.i.i.if.end69.i.i.i_crit_edge:         ; preds = %if.then49.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i.i.i

for.body55.preheader.i.i.i:                       ; preds = %if.then49.i.i.i
  %add.ptr58.i.i.i = getelementptr i8, ptr %ptr.0200.i.i.i, i32 12
  br label %for.body55.i.i.i

for.body55.i.i.i:                                 ; preds = %if.end64.i.i.i.for.body55.i.i.i_crit_edge, %for.body55.preheader.i.i.i
  %i.1198.i.i.i = phi i32 [ %inc67.i.i.i, %if.end64.i.i.i.for.body55.i.i.i_crit_edge ], [ 0, %for.body55.preheader.i.i.i ]
  %mul57.i.i.i = shl i32 %i.1198.i.i.i, 2
  %add.ptr59.i.i.i = getelementptr i8, ptr %add.ptr58.i.i.i, i32 %mul57.i.i.i
  %89 = ptrtoint ptr %add.ptr59.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %add.ptr59.i.i.i, align 1
  %91 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %b.i.i.i, align 8
  %call61.i.i.i = call i32 @kstrtouint(ptr noundef nonnull %b.i.i.i, i32 noundef 16, ptr noundef nonnull %tmp.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i.i)
  %tobool62.not.i.i.i = icmp eq i32 %call61.i.i.i, 0
  br i1 %tobool62.not.i.i.i, label %if.end64.i.i.i, label %for.body55.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge

for.body55.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge: ; preds = %for.body55.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_load_firmware.exit.thread.i.i

if.end64.i.i.i:                                   ; preds = %for.body55.i.i.i
  %92 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tmp.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  %conv1.i145.i.i.i = trunc i32 %93 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv1.i145.i.i.i) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %94 = lshr i32 %93, 8
  %conv8.i148.i.i.i = trunc i32 %94 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv8.i148.i.i.i) #6, !srcloc !70
  %inc67.i.i.i = add nuw nsw i32 %i.1198.i.i.i, 1
  %95 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size.i.i.i, align 4
  %sub.i.i.i = add i32 %96, -4
  %div120.i.i.i = lshr i32 %sub.i.i.i, 1
  %cmp53.i.i.i = icmp ult i32 %inc67.i.i.i, %div120.i.i.i
  br i1 %cmp53.i.i.i, label %if.end64.i.i.i.for.body55.i.i.i_crit_edge, label %if.end64.i.i.i.if.end69.i.i.i_crit_edge

if.end64.i.i.i.if.end69.i.i.i_crit_edge:          ; preds = %if.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i.i.i

if.end64.i.i.i.for.body55.i.i.i_crit_edge:        ; preds = %if.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body55.i.i.i

if.end69.i.i.i:                                   ; preds = %if.end64.i.i.i.if.end69.i.i.i_crit_edge, %if.then49.i.i.i.if.end69.i.i.i_crit_edge, %if.end44.i.i.i.if.end69.i.i.i_crit_edge
  %97 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size.i.i.i, align 4
  %mul70.i.i.i = shl i32 %98, 1
  %add71.i.i.i = add i32 %mul70.i.i.i, 6
  %add.ptr72.i.i.i = getelementptr i8, ptr %ptr.0200.i.i.i, i32 %add71.i.i.i
  %sub75.i.i.i = sub i32 %count.addr.0201.i.i.i, %add71.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %sub75.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end69.i.i.i.while.end.i.i.i_crit_edge, label %if.end69.i.i.i.while.body.i.i.i_crit_edge

if.end69.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i

if.end69.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %if.end69.i.i.i.while.end.i.i.i_crit_edge, %if.end8.i.i.while.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 3650716) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 48) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  call void @arm_heavy_mb() #6
  %add76.i.i.i = add i32 %39, 4
  %and77.i.i.i = and i32 %add76.i.i.i, 1048575
  %add78.i.i.i = or i32 %and77.i.i.i, -18874368
  %100 = inttoptr i32 %add78.i.i.i to ptr
  %101 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #6, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %102 = or i8 %101, 64
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 %102) #6, !srcloc !70
  br label %bt3c_load_firmware.exit.i.i

bt3c_load_firmware.exit.thread.i.i:               ; preds = %for.body55.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge, %for.body.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge, %if.end17.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge, %if.end8.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge, %if.end.i.i.i.bt3c_load_firmware.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fcs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tn.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %b.i.i.i) #6
  %103 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %firmware.i.i, align 4
  call void @release_firmware(ptr noundef %104) #6
  br label %bt3c_open.exit.i

bt3c_load_firmware.exit.i.i:                      ; preds = %while.end.i.i.i, %if.then43.i.i.i, %if.then.i.i.i
  %cmp10.i.i = phi i1 [ true, %if.then.i.i.i ], [ true, %if.then43.i.i.i ], [ false, %while.end.i.i.i ]
  %err.0.i.i.i = phi i32 [ -14, %if.then.i.i.i ], [ -84, %if.then43.i.i.i ], [ 0, %while.end.i.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 3650716) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 6) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 112) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 5) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 112) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 1) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 112) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 0) #6, !srcloc !70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fcs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tn.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %b.i.i.i) #6
  %106 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %firmware.i.i, align 4
  call void @release_firmware(ptr noundef %107) #6
  br i1 %cmp10.i.i, label %bt3c_load_firmware.exit.i.i.bt3c_open.exit.i_crit_edge, label %if.end12.i.i

bt3c_load_firmware.exit.i.i.bt3c_open.exit.i_crit_edge: ; preds = %bt3c_load_firmware.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_open.exit.i

if.end12.i.i:                                     ; preds = %bt3c_load_firmware.exit.i.i
  call void @msleep(i32 noundef 1000) #6
  %call13.i.i = call i32 @hci_register_dev(ptr noundef nonnull %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end12.i.i.bt3c_open.exit.i_crit_edge, label %bt3c_open.exit.thread.i

if.end12.i.i.bt3c_open.exit.i_crit_edge:          ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_open.exit.i

bt3c_open.exit.thread.i:                          ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i.i) #6
  br label %cleanup

bt3c_open.exit.i:                                 ; preds = %if.end12.i.i.bt3c_open.exit.i_crit_edge, %bt3c_load_firmware.exit.i.i.bt3c_open.exit.i_crit_edge, %bt3c_load_firmware.exit.thread.i.i, %if.end.i.i.bt3c_open.exit.i_crit_edge
  %.str.15.sink.i.i = phi ptr [ @.str.13, %if.end.i.i.bt3c_open.exit.i_crit_edge ], [ @.str.14, %bt3c_load_firmware.exit.thread.i.i ], [ @.str.14, %bt3c_load_firmware.exit.i.i.bt3c_open.exit.i_crit_edge ], [ @.str.15, %if.end12.i.i.bt3c_open.exit.i_crit_edge ]
  %err.0.i.i = phi i32 [ %call6.i.i, %if.end.i.i.bt3c_open.exit.i_crit_edge ], [ -22, %bt3c_load_firmware.exit.thread.i.i ], [ %err.0.i.i.i, %bt3c_load_firmware.exit.i.i.bt3c_open.exit.i_crit_edge ], [ %call13.i.i, %if.end12.i.i.bt3c_open.exit.i_crit_edge ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.15.sink.i.i) #6
  %108 = ptrtoint ptr %hdev2.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %hdev2.i.i, align 4
  call void @hci_free_dev(ptr noundef nonnull %call.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp14.not.i = icmp eq i32 %err.0.i.i, 0
  br i1 %cmp14.not.i, label %bt3c_open.exit.i.cleanup_crit_edge, label %bt3c_open.exit.i.failed.i_crit_edge

bt3c_open.exit.i.failed.i_crit_edge:              ; preds = %bt3c_open.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

bt3c_open.exit.i.cleanup_crit_edge:               ; preds = %bt3c_open.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

failed.i:                                         ; preds = %bt3c_open.exit.i.failed.i_crit_edge, %bt3c_open.exit.thread31.i, %if.end8.i.failed.i_crit_edge, %found_port.i.failed.i_crit_edge, %if.end4.i
  %109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv, align 8
  %hdev1.i.i.i = getelementptr inbounds %struct.bt3c_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %hdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hdev1.i.i.i, align 4
  %tobool.not.i.i27.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i27.i, label %failed.i.bt3c_release.exit.i_crit_edge, label %if.end.i.i28.i

failed.i.bt3c_release.exit.i_crit_edge:           ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_release.exit.i

if.end.i.i28.i:                                   ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i.i.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %112, i32 0, i32 204, i32 8
  %113 = ptrtoint ptr %driver_data.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver_data.i.i.i.i.i.i.i, align 4
  %txq.i.i.i.i.i = getelementptr inbounds %struct.bt3c_info, ptr %114, i32 0, i32 3
  call void @skb_queue_purge(ptr noundef %txq.i.i.i.i.i) #6
  call void @hci_unregister_dev(ptr noundef nonnull %112) #6
  call void @hci_free_dev(ptr noundef nonnull %112) #6
  br label %bt3c_release.exit.i

bt3c_release.exit.i:                              ; preds = %if.end.i.i28.i, %failed.i.bt3c_release.exit.i_crit_edge
  call void @pcmcia_disable_device(ptr noundef %link) #6
  br label %cleanup

cleanup:                                          ; preds = %bt3c_release.exit.i, %bt3c_open.exit.i.cleanup_crit_edge, %bt3c_open.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -19, %bt3c_release.exit.i ], [ 0, %bt3c_open.exit.i.cleanup_crit_edge ], [ 0, %bt3c_open.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bt3c_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hdev1.i.i = getelementptr inbounds %struct.bt3c_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.bt3c_release.exit_crit_edge, label %if.end.i.i

entry.bt3c_release.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_release.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i.i, align 4
  %txq.i.i.i.i = getelementptr inbounds %struct.bt3c_info, ptr %5, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %txq.i.i.i.i) #6
  tail call void @hci_unregister_dev(ptr noundef nonnull %3) #6
  tail call void @hci_free_dev(ptr noundef nonnull %3) #6
  br label %bt3c_release.exit

bt3c_release.exit:                                ; preds = %if.end.i.i, %entry.bt3c_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_check_config(ptr noundef %p_dev, ptr noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv_data, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %0 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %io_lines, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.not = icmp eq i32 %4, 8
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %end, align 4
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -25
  store i32 %and, ptr %flags, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_check_config_notpicky(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %0 = ptrtoint ptr %io_lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -25
  store i32 %and, ptr %flags, align 4
  %6 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %end, align 4
  %8 = load ptr, ptr %resource, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1016, ptr %8, align 4
  %10 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %io_lines, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 760, ptr %12, align 4
  %14 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %io_lines, align 4
  %call.1 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool12.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool12.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1000, ptr %16, align 4
  %18 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %io_lines, align 4
  %call.2 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool12.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool12.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 744, ptr %20, align 4
  %22 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %io_lines, align 4
  %call.3 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool12.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool12.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %26 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %io_lines, align 4
  %call.4 = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool12.not.4 = icmp eq i32 %call.4, 0
  %spec.select = select i1 %tobool12.not.4, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %for.cond.3, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ %spec.select, %for.cond.3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_interrupt(i32 noundef %irq, ptr noundef %dev_inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_inst, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hdev = getelementptr inbounds %struct.bt3c_info, ptr %dev_inst, i32 0, i32 1
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %dev_inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_inst, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %lock = getelementptr inbounds %struct.bt3c_info, ptr %dev_inst, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %add = add i32 %7, 4
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool5.not = icmp sgt i8 %9, -1
  br i1 %tobool5.not, label %if.end.if.end40_crit_edge, label %if.then6

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then6:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %add.i.i = add i32 %7, 2
  %and2.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %10 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 1) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %add9.i.i = add i32 %7, 3
  %and10.i.i = and i32 %add9.i.i, 1048575
  %add11.i.i = or i32 %and10.i.i, -18874368
  %11 = inttoptr i32 %add11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 112) #6, !srcloc !70
  %and.i.i = and i32 %7, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add1.i.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %add4.i.i = add i32 %7, 1
  %and5.i.i = and i32 %add4.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %14 = inttoptr i32 %add6.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %conv11.i.i = zext i8 %13 to i32
  %16 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.then15 [
    i8 127, label %if.then11
    i8 -1, label %if.then6.if.end40_crit_edge
  ]

if.then6.if.end40_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %conv10.i.i = zext i8 %15 to i32
  %shl.i.i = shl nuw nsw i32 %conv10.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv11.i.i
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, i32 noundef %or.i.i) #6
  br label %if.end40

if.then15:                                        ; preds = %if.then6
  %and16 = and i32 %conv11.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then15.if.end24_crit_edge, label %if.then18

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 2) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 112) #6, !srcloc !70
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %19 = and i8 %17, 16
  %20 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not = icmp eq i8 %19, 0
  %cond = select i1 %tobool23.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull %cond) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then15.if.end24_crit_edge
  %and25 = and i32 %conv11.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.end.i

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end.i:                                         ; preds = %if.end24
  %22 = ptrtoint ptr %dev_inst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_inst, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %add.i.i.i = add i32 %27, 2
  %and2.i.i.i = and i32 %add.i.i.i, 1048575
  %add3.i.i.i = or i32 %and2.i.i.i, -18874368
  %28 = inttoptr i32 %add3.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 6) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %add9.i.i.i = add i32 %27, 3
  %and10.i.i.i = and i32 %add9.i.i.i, 1048575
  %add11.i.i.i = or i32 %and10.i.i.i, -18874368
  %29 = inttoptr i32 %add11.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 112) #6, !srcloc !70
  %and.i.i.i = and i32 %27, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %30 = inttoptr i32 %add1.i.i.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %add4.i.i.i = add i32 %27, 1
  %and5.i.i.i = and i32 %add4.i.i.i, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %32 = inttoptr i32 %add6.i.i.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %conv10.i.i.i = zext i8 %33 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv10.i.i.i, 8
  %conv11.i.i.i = zext i8 %31 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv11.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -128) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 116) #6, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp152.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp152.not.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %rx_skb.i = getelementptr inbounds %struct.bt3c_info, ptr %dev_inst, i32 0, i32 7
  %rx_state.i = getelementptr inbounds %struct.bt3c_info, ptr %dev_inst, i32 0, i32 5
  %rx_count.i = getelementptr inbounds %struct.bt3c_info, ptr %dev_inst, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end98.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %size.0153.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end98.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %size.0153.i, 1
  %34 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdev, align 4
  %byte_rx.i = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 199, i32 8
  %36 = ptrtoint ptr %byte_rx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %byte_rx.i, align 8
  %inc2.i = add i32 %37, 1
  store i32 %inc2.i, ptr %byte_rx.i, align 8
  %38 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_skb.i, align 4
  %tobool3.not.i = icmp eq ptr %39, null
  br i1 %tobool3.not.i, label %if.then4.i, label %while.body.i.if.end11.i_crit_edge

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then4.i:                                       ; preds = %while.body.i
  %40 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %rx_state.i, align 4
  %41 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rx_count.i, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 1036, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %bt_skb_alloc.exit.i

bt_skb_alloc.exit.i:                              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %45, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %46 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i.i, ptr %rx_skb.i, align 4
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rx_skb.i, align 4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7) #6
  br label %if.end28

if.end11.i:                                       ; preds = %bt_skb_alloc.exit.i, %while.body.i.if.end11.i_crit_edge
  %48 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp13.i = icmp eq i32 %49, 0
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %51 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_skb.i, align 4
  br i1 %cmp13.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end11.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %50, ptr %cb.i, align 8
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %55 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_skb.i, align 4
  %cb28.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cb28.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cb28.i, align 8
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %58, label %sw.default.i [
    i8 4, label %sw.bb.i
    i8 2, label %sw.bb34.i
    i8 3, label %sw.bb37.i
  ]

sw.bb.i:                                          ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %rx_state.i, align 4
  %61 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %rx_count.i, align 4
  br label %if.end98.i

sw.bb34.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %rx_state.i, align 4
  %63 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %rx_count.i, align 4
  br label %if.end98.i

sw.bb37.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3, ptr %rx_state.i, align 4
  %65 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %rx_count.i, align 4
  br label %if.end98.i

sw.default.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv31.i = zext i8 %58 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, i32 noundef %conv31.i) #6
  %66 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hdev, align 4
  %stat46.i = getelementptr inbounds %struct.hci_dev, ptr %67, i32 0, i32 199
  %68 = ptrtoint ptr %stat46.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %stat46.i, align 8
  %inc47.i = add i32 %69, 1
  store i32 %inc47.i, ptr %stat46.i, align 8
  %70 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %71, i32 noundef 0) #6
  %72 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rx_skb.i, align 4
  br label %if.end98.i

if.else.i:                                        ; preds = %if.end11.i
  %call.i.i = tail call ptr @skb_put(ptr noundef %52, i32 noundef 1) #6
  %73 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %50, ptr %call.i.i, align 1
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %75 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_count.i, align 4
  %dec.i = add i32 %76, -1
  store i32 %dec.i, ptr %rx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp67.i = icmp eq i32 %dec.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %if.else.i.if.end98.i_crit_edge

if.else.i.if.end98.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.i

if.then69.i:                                      ; preds = %if.else.i
  %77 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_state.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %78, label %if.then69.i.if.end98.i_crit_edge [
    i32 1, label %sw.bb71.i
    i32 2, label %sw.bb77.i
    i32 3, label %sw.bb84.i
    i32 4, label %sw.bb91.i
  ]

if.then69.i.if.end98.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.i

sw.bb71.i:                                        ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_skb.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %81, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %84 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %rx_state.i, align 4
  %plen.i = getelementptr inbounds %struct.hci_event_hdr, ptr %83, i32 0, i32 1
  %85 = ptrtoint ptr %plen.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %plen.i, align 1
  %conv75.i = zext i8 %86 to i32
  %87 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv75.i, ptr %rx_count.i, align 4
  br label %if.end98.i

sw.bb77.i:                                        ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_skb.i, align 4
  %data.i144.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 19
  %90 = ptrtoint ptr %data.i144.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i144.i, align 4
  %dlen80.i = getelementptr inbounds %struct.hci_acl_hdr, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %dlen80.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %dlen80.i, align 1
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #6
  %conv81.i = zext i16 %94 to i32
  %95 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 4, ptr %rx_state.i, align 4
  %96 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv81.i, ptr %rx_count.i, align 4
  br label %if.end98.i

sw.bb84.i:                                        ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_skb.i, align 4
  %data.i145.i = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 19
  %99 = ptrtoint ptr %data.i145.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i145.i, align 4
  %101 = ptrtoint ptr %rx_state.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %rx_state.i, align 4
  %dlen88.i = getelementptr inbounds %struct.hci_sco_hdr, ptr %100, i32 0, i32 1
  %102 = ptrtoint ptr %dlen88.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dlen88.i, align 1
  %conv89.i = zext i8 %103 to i32
  %104 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv89.i, ptr %rx_count.i, align 4
  br label %if.end98.i

sw.bb91.i:                                        ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hdev, align 4
  %107 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rx_skb.i, align 4
  %call94.i = tail call i32 @hci_recv_frame(ptr noundef %106, ptr noundef %108) #6
  %109 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %rx_skb.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %sw.bb91.i, %sw.bb84.i, %sw.bb77.i, %sw.bb71.i, %if.then69.i.if.end98.i_crit_edge, %if.else.i.if.end98.i_crit_edge, %sw.default.i, %sw.bb37.i, %sw.bb34.i, %sw.bb.i
  %exitcond.not.i = icmp eq i32 %inc.i, %or.i.i.i
  br i1 %exitcond.not.i, label %if.end98.i.while.end.i_crit_edge, label %if.end98.i.while.body.i_crit_edge

if.end98.i.while.body.i_crit_edge:                ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end98.i.while.end.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end98.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 6) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 112) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #6, !srcloc !70
  br label %if.end28

if.end28:                                         ; preds = %while.end.i, %if.then9.i, %if.end24.if.end28_crit_edge
  %and29 = and i32 %conv11.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %tx_state = getelementptr inbounds %struct.bt3c_info, ptr %dev_inst, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #6
  tail call fastcc void @bt3c_write_wakeup(ptr noundef nonnull %dev_inst)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 1) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 112) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %9) #6, !srcloc !70
  br label %if.end40

if.end40:                                         ; preds = %if.end32, %if.then11, %if.then6.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %r.0 = phi i32 [ 0, %if.end.if.end40_crit_edge ], [ 1, %if.then6.if.end40_crit_edge ], [ 1, %if.end32 ], [ 1, %if.then11 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.end40 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bt3c_write_wakeup(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #6
  br label %do.end

if.end:                                           ; preds = %entry
  %tx_state = getelementptr inbounds %struct.bt3c_info, ptr %info, i32 0, i32 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body:                                          ; preds = %if.end
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body.do.end_crit_edge, label %if.end8

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end8:                                          ; preds = %do.body
  %txq = getelementptr inbounds %struct.bt3c_info, ptr %info, i32 0, i32 3
  %call9 = tail call ptr @skb_dequeue(ptr noundef %txq) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #6
  br label %do.end

if.end13:                                         ; preds = %if.end8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 6
  %8 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %add.i.i = add i32 %5, 2
  %and2.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %10 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -128) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %add9.i.i = add i32 %5, 3
  %and10.i.i = and i32 %add9.i.i, 1048575
  %add11.i.i = or i32 %and10.i.i, -18874368
  %11 = inttoptr i32 %add11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 112) #6, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.i = icmp sgt i32 %9, 0
  %and2.i1.i = and i32 %5, 1048575
  %add3.i2.i = or i32 %and2.i1.i, -18874368
  %12 = inttoptr i32 %add3.i2.i to ptr
  %add9.i3.i = add i32 %5, 1
  %and10.i4.i = and i32 %add9.i3.i, 1048575
  %add11.i5.i = or i32 %and10.i4.i, -18874368
  %13 = inttoptr i32 %add11.i5.i to ptr
  br i1 %cmp6.i, label %if.end13.while.body.i_crit_edge, label %if.end13.bt3c_write.exit_crit_edge

if.end13.bt3c_write.exit_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_write.exit

if.end13.while.body.i_crit_edge:                  ; preds = %if.end13
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end13.while.body.i_crit_edge
  %actual.07.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end13.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %7, i32 %actual.07.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %15) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #6, !srcloc !70
  %inc.i = add nuw nsw i32 %actual.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %while.body.i.bt3c_write.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.bt3c_write.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bt3c_write.exit

bt3c_write.exit:                                  ; preds = %while.body.i.bt3c_write.exit_crit_edge, %if.end13.bt3c_write.exit_crit_edge
  %actual.0.lcssa.i = phi i32 [ 0, %if.end13.bt3c_write.exit_crit_edge ], [ %9, %while.body.i.bt3c_write.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 5) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 112) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %conv1.i2.i.i = trunc i32 %actual.0.lcssa.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv1.i2.i.i) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %16 = lshr i32 %actual.0.lcssa.i, 8
  %conv8.i5.i.i = trunc i32 %16 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv8.i5.i.i) #6, !srcloc !70
  %17 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %actual.0.lcssa.i, i32 %18)
  %cmp.not = icmp eq i32 %actual.0.lcssa.i, %18
  br i1 %cmp.not, label %bt3c_write.exit.if.end18_crit_edge, label %if.then17

bt3c_write.exit.if.end18_crit_edge:               ; preds = %bt3c_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %bt3c_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %bt3c_write.exit.if.end18_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call9, i32 noundef 0) #6
  %hdev = getelementptr inbounds %struct.bt3c_info, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 199, i32 9
  %21 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %byte_tx, align 4
  %add = add i32 %22, %actual.0.lcssa.i
  store i32 %add, ptr %byte_tx, align 4
  br label %do.end

do.end:                                           ; preds = %if.end18, %if.then11, %do.body.do.end_crit_edge, %if.end.do.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bt3c_hci_open(ptr nocapture noundef readnone %hdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_hci_close(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %txq.i = getelementptr inbounds %struct.bt3c_info, ptr %1, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %txq.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_hci_flush(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %txq = getelementptr inbounds %struct.bt3c_info, ptr %1, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt3c_hci_send_frame(ptr nocapture noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %sco_tx.sink27 = phi ptr [ %sco_tx, %sw.bb4 ], [ %acl_tx, %sw.bb1 ], [ %cmd_tx, %sw.bb ]
  %5 = ptrtoint ptr %sco_tx.sink27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sco_tx.sink27, align 8
  %inc6 = add i32 %6, 1
  store i32 %inc6, ptr %sco_tx.sink27, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %call7 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cb, align 8
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %call7, align 1
  %txq = getelementptr inbounds %struct.bt3c_info, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #6
  %lock = getelementptr inbounds %struct.bt3c_info, ptr %1, i32 0, i32 2
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call fastcc void @bt3c_write_wakeup(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__UNIQUE_ID_author481, !1, !"__UNIQUE_ID_author481", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_description482, !3, !"__UNIQUE_ID_description482", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file483, !5, !"__UNIQUE_ID_file483", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 62, i32 1}
!6 = !{ptr @__UNIQUE_ID_license484, !5, !"__UNIQUE_ID_license484", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware485, !8, !"__UNIQUE_ID_firmware485", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 63, i32 1}
!9 = !{ptr @__initcall__kmod_bt3c_cs__486_749_bt3c_driver_init6, !10, !"__initcall__kmod_bt3c_cs__486_749_bt3c_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 749, i32 1}
!11 = !{ptr @__exitcall_bt3c_driver_exit, !10, !"__exitcall_bt3c_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 744, i32 11}
!14 = !{ptr @bt3c_driver, !15, !"bt3c_driver", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 742, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 703, i32 2}
!18 = distinct !{null, !19, !"base", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 664, i32 22}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 354, i32 4}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 358, i32 5}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 222, i32 3}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 241, i32 5}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 271, i32 5}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 206, i32 4}
!34 = !{ptr @bt3c_open.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 544, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 555, i32 3}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 571, i32 36}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 573, i32 3}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 582, i32 3}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 592, i32 3}
!47 = !{ptr @skb_queue_head_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 470, i32 4}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 499, i32 4}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 737, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bt3c_ids, !58, !"bt3c_ids", i1 false, i1 false}
!58 = !{!"../drivers/bluetooth/bt3c_cs.c", i32 736, i32 38}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i64 2157704726}
!70 = !{i64 6335982}
!71 = !{i64 2157705073}
!72 = !{i64 2157705583}
!73 = !{i64 2157705931}
!74 = !{i64 2157713405}
!75 = !{i64 6336377}
!76 = !{i64 2157713221}
!77 = !{i64 2157709737}
!78 = !{i64 2157706671}
!79 = !{i64 2157706954}
!80 = !{i64 2157708420}
!81 = !{i64 2157709309}
!82 = !{i64 2157710314}
