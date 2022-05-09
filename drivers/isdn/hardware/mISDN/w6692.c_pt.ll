; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/w6692.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/w6692.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.w6692map = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.w6692_hw = type { %struct.list_head, ptr, [20 x i8], i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i8, i8, i8, [2 x %struct.w6692_ch], %struct.dchannel, [64 x i8] }
%struct.w6692_ch = type { %struct.bchannel, i32, %struct.timer_list, i8 }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.145 = type { ptr }
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
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author459 = internal constant [26 x i8] c"w6692.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [45 x i8] c"w6692.file=drivers/isdn/hardware/mISDN/w6692\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [21 x i8] c"w6692.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version462 = internal constant [18 x i8] c"w6692.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"w6692\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [12 x i8] c"w6692.debug\00", align 1
@__param_ops_debug = internal constant %struct.kernel_param_ops { i32 0, ptr @set_debug, ptr @param_get_uint, ptr null }, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @__param_ops_debug, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debug463 = internal constant [34 x i8] c"w6692.parm=debug:W6692 debug mask\00", section ".modinfo", align 1
@__param_str_led = internal constant [10 x i8] c"w6692.led\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@led = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_led = internal constant %struct.kernel_param { ptr @__param_str_led, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @led } }, section "__param", align 4
@__UNIQUE_ID_ledtype464 = internal constant [24 x i8] c"w6692.parmtype=led:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_led465 = internal constant [60 x i8] c"w6692.parm=led:W6692 LED support bitmask (one bit per card)\00", section ".modinfo", align 1
@__param_str_pots = internal constant [11 x i8] c"w6692.pots\00", align 1
@pots = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pots = internal constant %struct.kernel_param { ptr @__param_str_pots, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @pots } }, section "__param", align 4
@__UNIQUE_ID_potstype466 = internal constant [25 x i8] c"w6692.parmtype=pots:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pots467 = internal constant [62 x i8] c"w6692.parm=pots:W6692 POTS support bitmask (one bit per card)\00", section ".modinfo", align 1
@w6692_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @w6692_ids, ptr @w6692_probe, ptr @w6692_remove_pci, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_w6692__514_1415_w6692_init6 = internal global ptr @w6692_init, section ".initcall6.init", align 4
@__exitcall_w6692_cleanup = internal global ptr @w6692_cleanup, section ".exitcall.exit", align 4
@card_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@Cards = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @Cards, ptr @Cards }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card_lock\00", [22 x i8] zeroinitializer }, align 32
@w6692_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 1653, i32 5890, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @w6692_map to i32), i32 0 }, %struct.pci_device_id { i32 4176, i32 26258, i32 5868, i32 13321, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @w6692_map, i64 16) to i32), i32 0 }, %struct.pci_device_id { i32 4176, i32 26258, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @w6692_map, i64 8) to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@w6692_map = internal constant { [3 x %struct.w6692map], [40 x i8] } { [3 x %struct.w6692map] [%struct.w6692map { i32 0, ptr @.str.4 }, %struct.w6692map { i32 1, ptr @.str.5 }, %struct.w6692map { i32 2, ptr @.str.6 }], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Dynalink/AsusCom IS64PH\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Winbond W6692\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USR W6692\00", [22 x i8] zeroinitializer }, align 32
@w6692_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016No kmem for w6692 card\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"w6692_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/isdn/hardware/mISDN/w6692.c\00", [60 x i8] zeroinitializer }, align 32
@w6692_probe._entry_ptr = internal global ptr @w6692_probe._entry, section ".printk_index", align 4
@w6692_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mISDN_w6692: found adapter %s at %s\0A\00", [57 x i8] zeroinitializer }, align 32
@w6692_probe._entry_ptr.12 = internal global ptr @w6692_probe._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w6692.%d\00", [23 x i8] zeroinitializer }, align 32
@w6692_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@setup_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015W6692 %d cards installed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_instance\00", [17 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr = internal global ptr @setup_instance._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@W6692_ph_bh.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.9, ptr @.str.18, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"W6692_ph_bh\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: TE unknown state %02x dch state %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@W6692_ph_bh.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.9, ptr @.str.19, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: TE newstate %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@W6692_fill_Dfifo.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.9, ptr @.str.21, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"W6692_fill_Dfifo\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: fill_Dfifo\0A\00", [16 x i8] zeroinitializer }, align 32
@W6692_fill_Dfifo.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.9, ptr @.str.22, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: fill_Dfifo dbusytimer running\0A\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"D-send %s %d \00", [18 x i8] zeroinitializer }, align 32
@W6692_fill_Dfifo.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.9, ptr @.str.24, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@w6692_dctrl.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.9, ptr @.str.27, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"w6692_dctrl\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: DCTRL: %x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@w6692_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.9, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: cannot get module\0A\00", [39 x i8] zeroinitializer }, align 32
@w6692_dctrl._entry_ptr = internal global ptr @w6692_dctrl._entry, section ".printk_index", align 4
@w6692_dctrl.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.9, ptr @.str.29, i8 1, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: dev(%d) close from %p\0A\00", [37 x i8] zeroinitializer }, align 32
@w6692_dctrl.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.9, ptr @.str.30, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unknown DCTRL command %x\0A\00", [34 x i8] zeroinitializer }, align 32
@open_dchannel.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.9, ptr @.str.32, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_dchannel\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s dev(%d) open from %p\0A\00", [35 x i8] zeroinitializer }, align 32
@channel_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: unknown CTRL OP %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_ctrl\00", [19 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr = internal global ptr @channel_ctrl._entry, section ".printk_index", align 4
@w6692_l2l1B._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.9, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s unknown prim(%x,%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"w6692_l2l1B\00", [20 x i8] zeroinitializer }, align 32
@w6692_l2l1B._entry_ptr = internal global ptr @w6692_l2l1B._entry, section ".printk_index", align 4
@W6692_fill_Bfifo.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.9, ptr @.str.38, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"W6692_fill_Bfifo\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: fill Bfifo\0A\00", [16 x i8] zeroinitializer }, align 32
@W6692_fill_Bfifo.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.9, ptr @.str.39, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: fill Bfifo%d/%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-send %s %d \00", [47 x i8] zeroinitializer }, align 32
@W6692_fill_Bfifo.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.9, ptr @.str.24, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@w6692_mode.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.9, ptr @.str.42, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"w6692_mode\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: B%d protocol %x-->%x\0A\00", [38 x i8] zeroinitializer }, align 32
@w6692_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.9, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: protocol %x not known\0A\00", [35 x i8] zeroinitializer }, align 32
@w6692_mode._entry_ptr = internal global ptr @w6692_mode._entry, section ".printk_index", align 4
@w6692_bctrl.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.9, ptr @.str.45, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"w6692_bctrl\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s cmd:%x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@w6692_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.9, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s unknown prim(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@w6692_bctrl._entry_ptr = internal global ptr @w6692_bctrl._entry, section ".printk_index", align 4
@setup_w6692._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.9, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: config port %x-%x already in use\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setup_w6692\00", [20 x i8] zeroinitializer }, align 32
@setup_w6692._entry_ptr = internal global ptr @setup_w6692._entry, section ".printk_index", align 4
@setup_w6692._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.9, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\015%s ISTA=%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@setup_w6692._entry_ptr.51 = internal global ptr @setup_w6692._entry.49, section ".printk_index", align 4
@setup_w6692._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.9, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\015%s IMASK=%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@setup_w6692._entry_ptr.54 = internal global ptr @setup_w6692._entry.52, section ".printk_index", align 4
@setup_w6692._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.9, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s D_EXIR=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@setup_w6692._entry_ptr.57 = internal global ptr @setup_w6692._entry.55, section ".printk_index", align 4
@setup_w6692._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.9, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s D_EXIM=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@setup_w6692._entry_ptr.60 = internal global ptr @setup_w6692._entry.58, section ".printk_index", align 4
@setup_w6692._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.9, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s D_RSTA=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@setup_w6692._entry_ptr.63 = internal global ptr @setup_w6692._entry.61, section ".printk_index", align 4
@W6692Version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.9, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: Winbond W6692 version: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"W6692Version\00", [19 x i8] zeroinitializer }, align 32
@W6692Version._entry_ptr = internal global ptr @W6692Version._entry, section ".printk_index", align 4
@W6692Ver = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V00\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V01\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V10\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V11\00", [28 x i8] zeroinitializer }, align 32
@init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.9, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: couldn't get interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_card\00", [22 x i8] zeroinitializer }, align 32
@init_card._entry_ptr = internal global ptr @init_card._entry, section ".printk_index", align 4
@init_card._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.9, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: IRQ %d count %d\0A\00", [41 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.74 = internal global ptr @init_card._entry.72, section ".printk_index", align 4
@init_card._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.9, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: IRQ(%d) getting no IRQs during init %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.77 = internal global ptr @init_card._entry.75, section ".printk_index", align 4
@w6692_irq.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.9, ptr @.str.79, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w6692_irq\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: ista %02x\0A\00", [17 x i8] zeroinitializer }, align 32
@w6692_irq.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.9, ptr @.str.80, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: W6692 spurious XINT!\0A\00", [38 x i8] zeroinitializer }, align 32
@W6692B_interrupt.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.9, ptr @.str.82, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"W6692B_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: B%d EXIR %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@W6692B_interrupt.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.9, ptr @.str.83, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: B%d RDOV proto=%x\0A\00", [41 x i8] zeroinitializer }, align 32
@W6692B_interrupt.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.9, ptr @.str.84, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: B%d CRC error\0A\00", [45 x i8] zeroinitializer }, align 32
@W6692B_interrupt.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.9, ptr @.str.85, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: B%d message abort\0A\00", [41 x i8] zeroinitializer }, align 32
@W6692B_interrupt.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.9, ptr @.str.83, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@W6692B_interrupt.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.9, ptr @.str.86, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: B%d RDOV IRQ proto=%x\0A\00", [37 x i8] zeroinitializer }, align 32
@W6692B_interrupt.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.9, ptr @.str.87, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: B%d star %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@W6692B_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.81, ptr @.str.9, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: B%d XDOW proto=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@W6692B_interrupt._entry_ptr = internal global ptr @W6692B_interrupt._entry, section ".printk_index", align 4
@W6692B_interrupt._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.81, ptr @.str.9, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: B%d XDUN proto=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@W6692B_interrupt._entry_ptr.91 = internal global ptr @W6692B_interrupt._entry.89, section ".printk_index", align 4
@W6692_empty_Bfifo.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.9, ptr @.str.93, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"W6692_empty_Bfifo\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: empty_Bfifo %d\0A\00", [44 x i8] zeroinitializer }, align 32
@W6692_empty_Bfifo.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.9, ptr @.str.94, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: empty_Bfifo ISDN_P_NONE\0A\00", [35 x i8] zeroinitializer }, align 32
@W6692_empty_Bfifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.92, ptr @.str.9, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s.B%d: No bufferspace for %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@W6692_empty_Bfifo._entry_ptr = internal global ptr @W6692_empty_Bfifo._entry, section ".printk_index", align 4
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-recv %s %d \00", [47 x i8] zeroinitializer }, align 32
@W6692_empty_Bfifo.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.9, ptr @.str.24, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@handle_rxD.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str.9, ptr @.str.98, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"handle_rxD\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: D-channel RDOV\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_rxD.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str.9, ptr @.str.99, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: D-channel CRC error\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_rxD.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str.9, ptr @.str.100, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: D-channel ABORT\0A\00", [43 x i8] zeroinitializer }, align 32
@W6692_empty_Dfifo.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.9, ptr @.str.102, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"W6692_empty_Dfifo\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: empty_Dfifo %d\0A\00", [44 x i8] zeroinitializer }, align 32
@W6692_empty_Dfifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.9, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: D receive out of memory\0A\00", [33 x i8] zeroinitializer }, align 32
@W6692_empty_Dfifo._entry_ptr = internal global ptr @W6692_empty_Dfifo._entry, section ".printk_index", align 4
@W6692_empty_Dfifo.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.9, ptr @.str.104, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: empty_Dfifo overrun %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"D-recv %s %d \00", [18 x i8] zeroinitializer }, align 32
@W6692_empty_Dfifo.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.9, ptr @.str.24, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@handle_statusD.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.107, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_statusD\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: D_EXIR %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.108, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: D-channel underrun/collision\0A\00", [62 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.98, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@handle_statusD.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.109, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: spurious TIN2 interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.110, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: spurious MOC interrupt MOSR %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.111, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: ISC CIR %02X\0A\00", [46 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.112, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: ph_state_change %x -> %x\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.113, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: SCC SQR %02X\0A\00", [46 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.114, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: spurious WEXP interrupt!\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_statusD.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.9, ptr @.str.115, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: spurious TEXP interrupt!\0A\00", [34 x i8] zeroinitializer }, align 32
@d_retransmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.9, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: %s without TX_BUSY\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"d_retransmit\00", [19 x i8] zeroinitializer }, align 32
@d_retransmit._entry_ptr = internal global ptr @d_retransmit._entry, section ".printk_index", align 4
@d_retransmit._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.9, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: XDU no TX_BUSY\0A\00", [42 x i8] zeroinitializer }, align 32
@d_retransmit._entry_ptr.120 = internal global ptr @d_retransmit._entry.118, section ".printk_index", align 4
@ph_command.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.121, ptr @.str.9, ptr @.str.122, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ph_command\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ph_command %x\0A\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@initW6692.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&card->dch.timer)\00", [45 x i8] zeroinitializer }, align 32
@initW6692._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.9, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015%s: W_XADDR=%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initW6692\00", [22 x i8] zeroinitializer }, align 32
@initW6692._entry_ptr = internal global ptr @initW6692._entry, section ".printk_index", align 4
@dbusy_timer_handler.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.126, ptr @.str.9, ptr @.str.127, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dbusy_timer_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: D-Channel Busy RBCH %02x STAR %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@dbusy_timer_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.9, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: W6692 D-Channel Busy no tx_idx\0A\00", [58 x i8] zeroinitializer }, align 32
@dbusy_timer_handler._entry_ptr = internal global ptr @dbusy_timer_handler._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@w6692_l1callback.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.129, ptr @.str.9, ptr @.str.130, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w6692_l1callback\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: cmd(%x) state(%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@w6692_l1callback.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.129, ptr @.str.9, ptr @.str.131, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s unknown command %x\0A\00", [37 x i8] zeroinitializer }, align 32
@w6692_remove_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.9, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s: drvdata already removed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w6692_remove_pci\00", [47 x i8] zeroinitializer }, align 32
@w6692_remove_pci._entry_ptr = internal global ptr @w6692_remove_pci._entry, section ".printk_index", align 4
@w6692_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.9, i32 1404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015Winbond W6692 PCI driver Rev. %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"w6692_init\00", [21 x i8] zeroinitializer }, align 32
@w6692_init._entry_ptr = internal global ptr @w6692_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 4, i64 7, i64 8, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2048]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.141 = internal global [9 x i64] [i64 7, i64 32, i64 258, i64 514, i64 33538, i64 33794, i64 35330, i64 35586, i64 35842]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 33, i64 34]
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 105, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 75, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 76, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [5 x i8] c"pots\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 77, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"w6692_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1393, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [10 x i8] c"card_lock\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"Cards\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 71, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 72, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"w6692_ids\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1381, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant [10 x i8] c"w6692_map\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 35, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 37, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 38, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 39, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1346, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1357, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1278, i32 44 }
@___asan_gen_.209 = private unnamed_addr constant [10 x i8] c"w6692_cnt\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 74, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1284, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1317, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 234, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 238, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 280, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 295, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 301, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 303, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1184, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1195, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1198, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1206, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1160, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1016, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 971, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 490, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 508, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 521, i32 27 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 592, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 624, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1032, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1050, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1218, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1227, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1230, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1233, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1236, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1239, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 157, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [9 x i8] c"W6692Ver\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 149, i32 20 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 149, i32 34 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 149, i32 41 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 149, i32 48 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 149, i32 55 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 905, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 917, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 920, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 780, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 795, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 655, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 661, i32 5 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 669, i32 6 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 676, i32 6 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 716, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 728, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 732, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 750, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 451, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 453, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 469, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 477, i32 27 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 342, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 348, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 354, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 247, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 251, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 257, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 266, i32 27 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 392, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 395, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 406, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 409, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 414, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 417, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 435, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 439, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 441, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 323, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 328, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 178, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 836, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 881, i32 5 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 813, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 823, i32 5 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1100, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1150, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1378, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.609 = private constant [39 x i8] c"../drivers/isdn/hardware/mISDN/w6692.c\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1404, i32 2 }
@llvm.compiler.used = appending global [200 x ptr] [ptr @W6692B_interrupt._entry, ptr @W6692B_interrupt._entry.89, ptr @W6692B_interrupt._entry_ptr, ptr @W6692B_interrupt._entry_ptr.91, ptr @W6692Version._entry, ptr @W6692Version._entry_ptr, ptr @W6692_empty_Bfifo._entry, ptr @W6692_empty_Bfifo._entry_ptr, ptr @W6692_empty_Dfifo._entry, ptr @W6692_empty_Dfifo._entry_ptr, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_debug463, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_led465, ptr @__UNIQUE_ID_ledtype464, ptr @__UNIQUE_ID_license461, ptr @__UNIQUE_ID_pots467, ptr @__UNIQUE_ID_potstype466, ptr @__UNIQUE_ID_version462, ptr @__exitcall_w6692_cleanup, ptr @__initcall__kmod_w6692__514_1415_w6692_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_led, ptr @__param_pots, ptr @channel_ctrl._entry, ptr @channel_ctrl._entry_ptr, ptr @d_retransmit._entry, ptr @d_retransmit._entry.118, ptr @d_retransmit._entry_ptr, ptr @d_retransmit._entry_ptr.120, ptr @dbusy_timer_handler._entry, ptr @dbusy_timer_handler._entry_ptr, ptr @initW6692._entry, ptr @initW6692._entry_ptr, ptr @init_card._entry, ptr @init_card._entry.72, ptr @init_card._entry.75, ptr @init_card._entry_ptr, ptr @init_card._entry_ptr.74, ptr @init_card._entry_ptr.77, ptr @setup_instance._entry, ptr @setup_instance._entry_ptr, ptr @setup_w6692._entry, ptr @setup_w6692._entry.49, ptr @setup_w6692._entry.52, ptr @setup_w6692._entry.55, ptr @setup_w6692._entry.58, ptr @setup_w6692._entry.61, ptr @setup_w6692._entry_ptr, ptr @setup_w6692._entry_ptr.51, ptr @setup_w6692._entry_ptr.54, ptr @setup_w6692._entry_ptr.57, ptr @setup_w6692._entry_ptr.60, ptr @setup_w6692._entry_ptr.63, ptr @w6692_bctrl._entry, ptr @w6692_bctrl._entry_ptr, ptr @w6692_cleanup, ptr @w6692_dctrl._entry, ptr @w6692_dctrl._entry_ptr, ptr @w6692_init._entry, ptr @w6692_init._entry_ptr, ptr @w6692_l2l1B._entry, ptr @w6692_l2l1B._entry_ptr, ptr @w6692_mode._entry, ptr @w6692_mode._entry_ptr, ptr @w6692_probe._entry, ptr @w6692_probe._entry.10, ptr @w6692_probe._entry_ptr, ptr @w6692_probe._entry_ptr.12, ptr @w6692_remove_pci._entry, ptr @w6692_remove_pci._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @led, ptr @pots, ptr @w6692_driver, ptr @card_lock, ptr @Cards, ptr @.str.3, ptr @w6692_ids, ptr @w6692_map, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @w6692_cnt, ptr @setup_instance.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @W6692Ver, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @initW6692.__key, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pots to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Cards to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_l2l1B._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_w6692._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_w6692._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_w6692._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_w6692._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_w6692._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_w6692._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W6692Version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W6692Ver to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W6692B_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W6692B_interrupt._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W6692_empty_Bfifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W6692_empty_Dfifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d_retransmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d_retransmit._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initW6692.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initW6692._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbusy_timer_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_remove_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w6692_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w6692_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @w6692_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.2) #11
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @w6692_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_debug(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @card_lock) #8
  %card.08 = load ptr, ptr @Cards, align 4
  %cmp.not9 = icmp eq ptr %card.08, @Cards
  br i1 %cmp.not9, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %card.010 = phi ptr [ %card.0, %for.body.for.body_crit_edge ], [ %card.08, %if.then.for.body_crit_edge ]
  %0 = load i32, ptr @debug, align 4
  %debug.i = getelementptr inbounds %struct.w6692_hw, ptr %card.010, i32 0, i32 15, i32 15
  %1 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %debug.i, align 4
  %debug1.i = getelementptr inbounds %struct.w6692_hw, ptr %card.010, i32 0, i32 14, i32 0, i32 0, i32 21
  %2 = ptrtoint ptr %debug1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %0, ptr %debug1.i, align 8
  %debug5.i = getelementptr %struct.w6692_hw, ptr %card.010, i32 0, i32 14, i32 1, i32 0, i32 21
  %3 = ptrtoint ptr %debug5.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %debug5.i, align 4
  %4 = ptrtoint ptr %card.010 to i32
  call void @__asan_load4_noabort(i32 %4)
  %card.0 = load ptr, ptr %card.010, align 4
  %cmp.not = icmp eq ptr %card.0, @Cards
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @card_lock) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2096) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev2, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %subtype3 = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %subtype3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %subtype3, align 8
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

do.end10:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.w6692map, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end10.pci_name.exit_crit_edge

do.end10.pci_name.exit_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end10.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %do.end10.pci_name.exit_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %9, ptr noundef %retval.0.i.i) #11
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  %addr = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %irq14 = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq14, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %name.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 2
  %21 = load i32, ptr @w6692_cnt, align 4
  %add.i = add i32 %21, 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 19, ptr noundef nonnull @.str.13, i32 noundef %add.i) #8
  %call1.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #8
  %22 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %22, ptr noundef nonnull @Cards) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %pci_name.exit.list_add_tail.exit.i_crit_edge

pci_name.exit.list_add_tail.exit.i_crit_edge:     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @Cards, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %22, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %pci_name.exit.list_add_tail.exit.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call1.i) #8
  %26 = load i32, ptr @w6692_cnt, align 4
  %shl.i = shl nuw i32 1, %26
  %fmask.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %fmask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl.i, ptr %fmask.i, align 4
  %28 = load i32, ptr @debug, align 4
  %debug.i.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 15
  %29 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %debug.i.i, align 4
  %debug1.i.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 21
  %30 = ptrtoint ptr %debug1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %debug1.i.i, align 8
  %debug5.i.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 21
  %31 = ptrtoint ptr %debug5.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %debug5.i.i, align 4
  %lock.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @setup_instance.__key, i16 noundef signext 3) #8
  %dch.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15
  %call14.i = tail call i32 @mISDN_initdchannel(ptr noundef %dch.i, i32 noundef 300, ptr noundef nonnull @W6692_ph_bh) #8
  %Dprotocols.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 2
  %32 = ptrtoint ptr %Dprotocols.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %Dprotocols.i, align 8
  %send.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 0, i32 7
  %33 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @w6692_l2l1D, ptr %send.i, align 8
  %ctrl.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 0, i32 9
  %34 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @w6692_dctrl, ptr %ctrl.i, align 8
  %Bprotocols.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 3
  %35 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %Bprotocols.i, align 4
  %hw.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 6
  %36 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %hw.i, align 4
  %nrbchan.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 4
  %37 = ptrtoint ptr %nrbchan.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %nrbchan.i, align 8
  %channelmap.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 5
  %bchannels.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0
  %call28.i = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx.i, i16 noundef zeroext 2056, i16 noundef zeroext 64) #8
  %hw32.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 5
  %38 = ptrtoint ptr %hw32.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %hw32.i, align 4
  %nr.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %nr.i, align 4
  %nr41.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %nr41.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %nr41.i, align 4
  %send46.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 7
  %41 = ptrtoint ptr %send46.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @w6692_l2l1B, ptr %send46.i, align 8
  %ctrl51.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 9
  %42 = ptrtoint ptr %ctrl51.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @w6692_bctrl, ptr %ctrl51.i, align 8
  %43 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %channelmap.i, align 4
  %conv1.i.i = or i8 %44, 2
  store i8 %conv1.i.i, ptr %channelmap.i, align 4
  %45 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bchannels.i, align 4
  %call.i.i172.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %bchannels.i, ptr noundef %46) #8
  br i1 %call.i.i172.i, label %if.end.i.i174.i, label %list_add_tail.exit.i.list_add.exit.i_crit_edge

list_add_tail.exit.i.list_add.exit.i_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i174.i:                                  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx.i, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %arrayidx.i, align 8
  %prev3.i.i173.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i173.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %bchannels.i, ptr %prev3.i.i173.i, align 4
  %50 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx.i, ptr %bchannels.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i174.i, %list_add_tail.exit.i.list_add.exit.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1
  %call28.1.i = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx.1.i, i16 noundef zeroext 2056, i16 noundef zeroext 64) #8
  %hw32.1.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 5
  %51 = ptrtoint ptr %hw32.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %hw32.1.i, align 8
  %nr.1.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %nr.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %nr.1.i, align 8
  %nr41.1.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %nr41.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %nr41.1.i, align 8
  %send46.1.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 7
  %54 = ptrtoint ptr %send46.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @w6692_l2l1B, ptr %send46.1.i, align 4
  %ctrl51.1.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 9
  %55 = ptrtoint ptr %ctrl51.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @w6692_bctrl, ptr %ctrl51.1.i, align 4
  %56 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channelmap.i, align 4
  %conv1.i.1.i = or i8 %57, 4
  store i8 %conv1.i.1.i, ptr %channelmap.i, align 4
  %58 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bchannels.i, align 4
  %call.i.i172.1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.1.i, ptr noundef %bchannels.i, ptr noundef %59) #8
  br i1 %call.i.i172.1.i, label %if.end.i.i174.1.i, label %list_add.exit.i.list_add.exit.1.i_crit_edge

list_add.exit.i.list_add.exit.1.i_crit_edge:      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.1.i

if.end.i.i174.1.i:                                ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.1.i, ptr %prev1.i.i.1.i, align 4
  %61 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %arrayidx.1.i, align 4
  %prev3.i.i173.1.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i173.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %bchannels.i, ptr %prev3.i.i173.1.i, align 8
  %63 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %arrayidx.1.i, ptr %bchannels.i, align 4
  br label %list_add.exit.1.i

list_add.exit.1.i:                                ; preds = %if.end.i.i174.1.i, %list_add.exit.i.list_add.exit.1.i_crit_edge
  %64 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr, align 8
  %call.i.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %65, i32 noundef 256, ptr noundef %name.i, i32 noundef 0) #8
  %tobool.not.i.i39 = icmp eq ptr %call.i.i, null
  %66 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr, align 8
  br i1 %tobool.not.i.i39, label %setup_w6692.exit.i, label %if.end.i.i40

if.end.i.i40:                                     ; preds = %list_add.exit.1.i
  %add.i.i.i.i = add i32 %67, 68
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %68 = inttoptr i32 %add1.i.i.i.i to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %70 = lshr i8 %69, 6
  %71 = zext i8 %70 to i32
  %arrayidx.i.i.i = getelementptr [4 x ptr], ptr @W6692Ver, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call1.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i, ptr noundef %73) #11
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr, align 8
  %addr7.i.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %76 = ptrtoint ptr %addr7.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %addr7.i.i, align 4
  %add9.i.i = add i32 %75, 64
  %addr12.i.i = getelementptr %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %77 = ptrtoint ptr %addr12.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add9.i.i, ptr %addr12.i.i, align 8
  %add.i.i.i = add i32 %75, 20
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %78 = inttoptr i32 %add1.i.i.i to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %80 = load i32, ptr @debug, align 4
  %and.i175.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175.i)
  %tobool14.not.i.i = icmp eq i32 %and.i175.i, 0
  br i1 %tobool14.not.i.i, label %if.end.i.i40.if.end23.i.i_crit_edge, label %do.end18.i.i

if.end.i.i40.if.end23.i.i_crit_edge:              ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

do.end18.i.i:                                     ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %79 to i32
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name.i, i32 noundef %conv.i.i) #11
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %do.end18.i.i, %if.end.i.i40.if.end23.i.i_crit_edge
  %81 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr, align 8
  %add.i100.i.i = add i32 %82, 24
  %and.i101.i.i = and i32 %add.i100.i.i, 1048575
  %add1.i102.i.i = or i32 %and.i101.i.i, -18874368
  %83 = inttoptr i32 %add1.i102.i.i to ptr
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %83) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %85 = load i32, ptr @debug, align 4
  %and26.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end23.i.i.if.end36.i.i_crit_edge, label %do.end31.i.i

if.end23.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i

do.end31.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv25.i.i = zext i8 %84 to i32
  %call35.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i, i32 noundef %conv25.i.i) #11
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %do.end31.i.i, %if.end23.i.i.if.end36.i.i_crit_edge
  %86 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr, align 8
  %add.i104.i.i = add i32 %87, 28
  %and.i105.i.i = and i32 %add.i104.i.i, 1048575
  %add1.i106.i.i = or i32 %and.i105.i.i, -18874368
  %88 = inttoptr i32 %add1.i106.i.i to ptr
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %90 = load i32, ptr @debug, align 4
  %and39.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end36.i.i.if.end49.i.i_crit_edge, label %do.end44.i.i

if.end36.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

do.end44.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv38.i.i = zext i8 %89 to i32
  %call48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i, i32 noundef %conv38.i.i) #11
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %do.end44.i.i, %if.end36.i.i.if.end49.i.i_crit_edge
  %91 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %addr, align 8
  %add.i108.i.i = add i32 %92, 32
  %and.i109.i.i = and i32 %add.i108.i.i, 1048575
  %add1.i110.i.i = or i32 %and.i109.i.i, -18874368
  %93 = inttoptr i32 %add1.i110.i.i to ptr
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %93) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %95 = load i32, ptr @debug, align 4
  %and52.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end49.i.i.if.end62.i.i_crit_edge, label %do.end57.i.i

if.end49.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i.i

do.end57.i.i:                                     ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv51.i.i = zext i8 %94 to i32
  %call61.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i, i32 noundef %conv51.i.i) #11
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %do.end57.i.i, %if.end49.i.i.if.end62.i.i_crit_edge
  %96 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr, align 8
  %add.i112.i.i = add i32 %97, 40
  %and.i113.i.i = and i32 %add.i112.i.i, 1048575
  %add1.i114.i.i = or i32 %and.i113.i.i, -18874368
  %98 = inttoptr i32 %add1.i114.i.i to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %100 = load i32, ptr @debug, align 4
  %and65.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i)
  %tobool66.not.i.i = icmp eq i32 %and65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end62.i.i.if.end.i_crit_edge, label %do.end70.i.i

if.end62.i.i.if.end.i_crit_edge:                  ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end70.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv64.i.i = zext i8 %99 to i32
  %call74.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name.i, i32 noundef %conv64.i.i) #11
  br label %if.end.i

setup_w6692.exit.i:                               ; preds = %list_add.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %67, 255
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, i32 noundef %67, i32 noundef %add.i.i) #11
  br label %error_setup.i

if.end.i:                                         ; preds = %do.end70.i.i, %if.end62.i.i.if.end.i_crit_edge
  %101 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev2, align 8
  %dev66.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %call69.i = tail call i32 @mISDN_register_device(ptr noundef %dch.i, ptr noundef %dev66.i, ptr noundef %name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.end.i.error_reg.i_crit_edge

if.end.i.error_reg.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_reg.i

if.end72.i:                                       ; preds = %if.end.i
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %addr, align 8
  %add.i.i.i176.i = add i32 %104, 24
  %and.i.i.i177.i = and i32 %add.i.i.i176.i, 1048575
  %add1.i.i.i178.i = or i32 %and.i.i.i177.i, -18874368
  %105 = inttoptr i32 %add1.i.i.i178.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 -1) #8, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #8
  %106 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq14, align 8
  %call.i.i180.i = tail call i32 @request_threaded_irq(i32 noundef %107, ptr noundef nonnull @w6692_irq, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180.i)
  %tobool.not.i181.i = icmp eq i32 %call.i.i180.i, 0
  br i1 %tobool.not.i181.i, label %while.cond.preheader.i.i, label %do.end9.i.i

while.cond.preheader.i.i:                         ; preds = %if.end72.i
  %imask.i.i.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 9
  %irqcnt.i.i = getelementptr inbounds %struct.w6692_hw, ptr %call7.i.i, i32 0, i32 4
  br label %do.body17.i.i

do.end9.i.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irq14, align 8
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name.i, i32 noundef %109) #11
  br label %error_init.i

do.body17.i.i:                                    ; preds = %do.end48.i.i.do.body17.i.i_crit_edge, %while.cond.preheader.i.i
  %dec89.i.i = phi i32 [ 2, %while.cond.preheader.i.i ], [ %dec.i.i, %do.end48.i.i.do.body17.i.i_crit_edge ]
  %cnt.088.i.i = phi i32 [ 3, %while.cond.preheader.i.i ], [ %dec89.i.i, %do.end48.i.i.do.body17.i.i_crit_edge ]
  %call25.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  tail call fastcc void @initW6692(ptr noundef %call7.i.i) #8
  %110 = ptrtoint ptr %imask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %imask.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %addr, align 8
  %add.i.i81.i.i = add i32 %113, 24
  %and.i.i82.i.i = and i32 %add.i.i81.i.i, 1048575
  %add1.i.i83.i.i = or i32 %and.i.i82.i.i, -18874368
  %114 = inttoptr i32 %add1.i.i83.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 %111) #8, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call25.i.i) #8
  %call31.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #8
  %115 = load i32, ptr @debug, align 4
  %and.i182.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182.i)
  %tobool32.not.i.i = icmp eq i32 %and.i182.i, 0
  br i1 %tobool32.not.i.i, label %do.body17.i.i.if.end42.i.i_crit_edge, label %do.end36.i.i

do.body17.i.i.if.end42.i.i_crit_edge:             ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i

do.end36.i.i:                                     ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %irq14, align 8
  %118 = ptrtoint ptr %irqcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %irqcnt.i.i, align 4
  %call41.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.i, i32 noundef %117, i32 noundef %119) #11
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.end36.i.i, %do.body17.i.i.if.end42.i.i_crit_edge
  %120 = ptrtoint ptr %irqcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %irqcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool44.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool44.not.i.i, label %do.end48.i.i, label %if.end76.i

do.end48.i.i:                                     ; preds = %if.end42.i.i
  %122 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq14, align 8
  %sub.i.i = sub nuw nsw i32 4, %cnt.088.i.i
  %call53.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name.i, i32 noundef %123, i32 noundef %sub.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %addr, align 8
  %add.i.i85.i.i = add i32 %125, 84
  %and.i.i86.i.i = and i32 %add.i.i85.i.i, 1048575
  %add1.i.i87.i.i = or i32 %and.i.i86.i.i, -18874368
  %126 = inttoptr i32 %add1.i.i87.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 32) #8, !srcloc !370
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %addr, align 8
  %add.i3.i.i.i = add i32 %138, 84
  %and.i4.i.i.i = and i32 %add.i3.i.i.i, 1048575
  %add1.i5.i.i.i = or i32 %and.i4.i.i.i, -18874368
  %139 = inttoptr i32 %add1.i5.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 0) #8, !srcloc !370
  %dec.i.i = add nsw i32 %dec89.i.i, -1
  %tobool15.not.i.i = icmp eq i32 %dec89.i.i, 0
  br i1 %tobool15.not.i.i, label %while.end.i.i, label %do.end48.i.i.do.body17.i.i_crit_edge

do.end48.i.i.do.body17.i.i_crit_edge:             ; preds = %do.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17.i.i

while.end.i.i:                                    ; preds = %do.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq14, align 8
  %call56.i.i = tail call ptr @free_irq(i32 noundef %141, ptr noundef %call7.i.i) #8
  br label %error_init.i

if.end76.i:                                       ; preds = %if.end42.i.i
  %call78.i = tail call i32 @create_l1(ptr noundef %dch.i, ptr noundef nonnull @w6692_l1callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %setup_instance.exit.thread, label %if.end87.i

setup_instance.exit.thread:                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %142 = load i32, ptr @w6692_cnt, align 4
  %inc81.i = add i32 %142, 1
  store i32 %inc81.i, ptr @w6692_cnt, align 4
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %inc81.i) #11
  br label %cleanup

if.end87.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq14, align 8
  %call88.i = tail call ptr @free_irq(i32 noundef %144, ptr noundef %call7.i.i) #8
  br label %error_init.i

error_init.i:                                     ; preds = %if.end87.i, %while.end.i.i, %do.end9.i.i
  %err.0.i = phi i32 [ %call78.i, %if.end87.i ], [ -5, %do.end9.i.i ], [ -5, %while.end.i.i ]
  tail call void @mISDN_unregister_device(ptr noundef %dch.i) #8
  br label %error_reg.i

error_reg.i:                                      ; preds = %error_init.i, %if.end.i.error_reg.i_crit_edge
  %err.1.i = phi i32 [ %call69.i, %if.end.i.error_reg.i_crit_edge ], [ %err.0.i, %error_init.i ]
  %145 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %addr, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %146, i32 noundef 256) #8
  br label %error_setup.i

error_setup.i:                                    ; preds = %error_reg.i, %setup_w6692.exit.i
  %err.2.i = phi i32 [ -5, %setup_w6692.exit.i ], [ %err.1.i, %error_reg.i ]
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx.1.i) #8
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx.i) #8
  %call98.i = tail call i32 @mISDN_freedchannel(ptr noundef %dch.i) #8
  %call105.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #8
  %call.i.i184.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #8
  br i1 %call.i.i184.i, label %if.end.i.i185.i, label %error_setup.i.if.then17_crit_edge

error_setup.i.if.then17_crit_edge:                ; preds = %error_setup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end.i.i185.i:                                  ; preds = %error_setup.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %prev.i.i.i, align 4
  %149 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %prev1.i.i.i.i, align 4
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %150, ptr %148, align 4
  br label %if.then17

if.then17:                                        ; preds = %if.end.i.i185.i, %error_setup.i.if.then17_crit_edge
  %153 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call105.i) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  %155 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %setup_instance.exit.thread, %if.then6, %do.end
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ -12, %do.end ], [ %err.2.i, %if.then17 ], [ 0, %setup_instance.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w6692_remove_pci(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i.i.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i, align 8
  %add.i.i.i = add i32 %3, 24
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %4 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #8, !srcloc !370
  %bc.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 14
  %call5.i = tail call fastcc i32 @w6692_mode(ptr noundef %bc.i, i32 noundef 0) #8
  %arrayidx7.i = getelementptr %struct.w6692_hw, ptr %1, i32 0, i32 14, i32 1
  %call8.i = tail call fastcc i32 @w6692_mode(ptr noundef %arrayidx7.i, i32 noundef 0) #8
  %fmask.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %fmask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmask.i, align 4
  %7 = load i32, ptr @led, align 4
  %and.i = and i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  %subtype.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp9.i = icmp eq i32 %9, 2
  br i1 %cmp9.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %xdata.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %xdata.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %xdata.i, align 1
  %12 = or i8 %11, 4
  store i8 %12, ptr %xdata.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i.i, align 8
  %add.i.i = add i32 %14, 248
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #8, !srcloc !370
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %irq.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 8
  %call15.i = tail call ptr @free_irq(i32 noundef %17, ptr noundef nonnull %1) #8
  %dch.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 15
  %l1.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 15, i32 5
  %18 = ptrtoint ptr %l1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %l1.i, align 8
  %call16.i = tail call i32 @l1_event(ptr noundef %19, i32 noundef 512) #8
  tail call void @mISDN_unregister_device(ptr noundef %dch.i) #8
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i.i, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %21, i32 noundef 256) #8
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx7.i) #8
  tail call void @mISDN_freebchannel(ptr noundef %bc.i) #8
  %call24.i = tail call i32 @mISDN_freedchannel(ptr noundef %dch.i) #8
  %call31.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.release_card.exit_crit_edge

if.end.i.release_card.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_card.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %release_card.exit

release_card.exit:                                ; preds = %if.end.i.i.i, %if.end.i.release_card.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call31.i) #8
  %pdev.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_device(ptr noundef %31) #8
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end4

if.else:                                          ; preds = %entry
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not = icmp eq i32 %35, 0
  br i1 %tobool1.not, label %if.else.if.end4_crit_edge, label %do.end

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.else.if.end4_crit_edge, %release_card.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initdchannel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @W6692_ph_bh(ptr nocapture noundef %dch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %state = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.body [
    i8 1, label %sw.bb
    i8 15, label %sw.bb2
    i8 0, label %sw.bb6
    i8 7, label %sw.bb10
    i8 4, label %sw.bb14
    i8 8, label %sw.bb23
    i8 12, label %sw.bb27
    i8 13, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %5 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state1, align 4
  %l1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %6 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l1, align 8
  %call = tail call i32 @l1_event(ptr noundef %7, i32 noundef 36866) #8
  br label %do.body43

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state3 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %8 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %state3, align 4
  %l14 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %9 = ptrtoint ptr %l14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %l14, align 8
  %call5 = tail call i32 @l1_event(ptr noundef %10, i32 noundef 37890) #8
  br label %do.body43

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state7 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %11 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %state7, align 4
  %l18 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %12 = ptrtoint ptr %l18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l18, align 8
  %call9 = tail call i32 @l1_event(ptr noundef %13, i32 noundef 37378) #8
  br label %do.body43

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state11 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %14 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %state11, align 4
  %l112 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %15 = ptrtoint ptr %l112 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %l112, align 8
  %call13 = tail call i32 @l1_event(ptr noundef %16, i32 noundef 37122) #8
  br label %do.body43

sw.bb14:                                          ; preds = %entry
  %state15 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %17 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp = icmp ult i32 %18, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %state15, align 4
  %l118 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %20 = ptrtoint ptr %l118 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %l118, align 8
  %call19 = tail call i32 @l1_event(ptr noundef %21, i32 noundef 34818) #8
  br label %do.body43

if.else:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %state15, align 4
  %l121 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %23 = ptrtoint ptr %l121 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l121, align 8
  %call22 = tail call i32 @l1_event(ptr noundef %24, i32 noundef 34562) #8
  br label %do.body43

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state24 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %25 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %state24, align 4
  %l125 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %26 = ptrtoint ptr %l125 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %l125, align 8
  %call26 = tail call i32 @l1_event(ptr noundef %27, i32 noundef 33282) #8
  br label %do.body43

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state28 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %28 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %state28, align 4
  %l129 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %29 = ptrtoint ptr %l129 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %l129, align 8
  %call30 = tail call i32 @l1_event(ptr noundef %30, i32 noundef 34050) #8
  br label %do.body43

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state32 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %31 = ptrtoint ptr %state32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %state32, align 4
  %l133 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %32 = ptrtoint ptr %l133 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %l133, align 8
  %call34 = tail call i32 @l1_event(ptr noundef %33, i32 noundef 34306) #8
  br label %do.body43

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_ph_bh.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_ph_bh, %if.then38)) #8
          to label %do.body43 [label %if.then38], !srcloc !371

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %state, align 4
  %conv40 = zext i8 %35 to i32
  %state41 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %36 = ptrtoint ptr %state41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state41, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_ph_bh.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %conv40, i32 noundef %37) #8
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %do.body, %sw.bb31, %sw.bb27, %sw.bb23, %if.else, %if.then, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_ph_bh.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_ph_bh, %if.then55)) #8
          to label %do.end61 [label %if.then55], !srcloc !371

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %name56 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %state58 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %38 = ptrtoint ptr %state58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state58, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_ph_bh.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.19, ptr noundef %name56, i32 noundef %39) #8
  br label %do.end61

do.end61:                                         ; preds = %if.then55, %do.body43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_l2l1D(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr6 = getelementptr i8, ptr %ch, i32 -752
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8193, label %do.body7
    i32 257, label %sw.bb18
    i32 513, label %sw.bb21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %ch, i32 -700
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call12 = tail call i32 @dchannel_senddata(ptr noundef %ch, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %id15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %id15 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %id15, align 1
  tail call fastcc void @W6692_fill_Dfifo(ptr noundef %add.ptr6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #8
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %4, ptr noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %l1 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %5 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l1, align 8
  %call20 = tail call i32 @l1_event(ptr noundef %6, i32 noundef 257) #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %Flags = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags) #8
  %l123 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %7 = ptrtoint ptr %l123 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %l123, align 8
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %cb, align 1
  %call25 = tail call i32 @l1_event(ptr noundef %8, i32 noundef %10) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb18
  %ret.1 = phi i32 [ %call25, %sw.bb21 ], [ %call20, %sw.bb18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool.not = icmp eq i32 %ret.1, 0
  br i1 %tobool.not, label %if.then26, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %sw.epilog.cleanup_crit_edge, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %call12, %if.else ], [ 0, %if.then26 ], [ %ret.1, %sw.epilog.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_dctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr6 = getelementptr i8, ptr %ch, i32 -752
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_dctrl.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_dctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %ch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_dctrl.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %cmd, ptr noundef %arg) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %cmd, label %do.body49 [
    i32 256, label %sw.bb
    i32 512, label %do.body28
    i32 768, label %sw.bb47
  ]

sw.bb:                                            ; preds = %do.end
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.end13, label %if.else

if.else:                                          ; preds = %sw.bb
  %channel.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channel.i, align 1
  %5 = add i8 %4, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %6 = icmp ult i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp7.i = icmp eq i32 %2, 0
  %or.cond = select i1 %6, i1 true, i1 %cmp7.i
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end10.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %if.else
  %conv.i = zext i8 %4 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.w6692_hw, ptr %add.ptr6, i32 0, i32 14, i32 %sub.i
  %Flags.i = getelementptr inbounds %struct.bchannel, ptr %arrayidx.i, i32 0, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end13.thread96, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.thread96:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  %protocol18.i = getelementptr inbounds %struct.mISDNchannel, ptr %arrayidx.i, i32 0, i32 1
  %9 = ptrtoint ptr %protocol18.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %protocol18.i, align 4
  %ch20.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %10 = ptrtoint ptr %ch20.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.i, ptr %ch20.i, align 4
  br label %if.end16

if.end13:                                         ; preds = %sw.bb
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  %call11 = tail call fastcc i32 @open_dchannel(ptr noundef %add.ptr6, ptr noundef %arg, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool14.not = icmp eq i32 %call11, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.end13.if.end16_crit_edge, %if.end13.thread96
  %call17 = tail call zeroext i1 @try_module_get(ptr noundef null) #8
  br i1 %call17, label %if.end16.cleanup_crit_edge, label %do.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %name23 = getelementptr i8, ptr %ch, i32 -740
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name23) #11
  br label %cleanup

do.body28:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_dctrl.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_dctrl, %if.then40)) #8
          to label %do.end46 [label %if.then40], !srcloc !371

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %name41 = getelementptr i8, ptr %ch, i32 -740
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %ch, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %14 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_dctrl.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.29, ptr noundef %name41, i32 noundef %13, ptr noundef %14) #8
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  tail call void @module_put(ptr noundef null) #8
  br label %cleanup

sw.bb47:                                          ; preds = %do.end
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arg, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %16, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 2048, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2048, ptr %arg, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  %l1.i = getelementptr i8, ptr %ch, i32 1072
  %19 = ptrtoint ptr %l1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %l1.i, align 8
  %p1.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %21 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p1.i, align 4
  %and.i = and i32 %22, 255
  %or.i = or i32 %and.i, 39424
  %call.i92 = tail call i32 @l1_event(ptr noundef %20, i32 noundef %or.i) #8
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr i8, ptr %ch, i32 -740
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i, i32 noundef %16) #11
  br label %cleanup

do.body49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_dctrl.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_dctrl, %if.then61)) #8
          to label %cleanup [label %if.then61], !srcloc !371

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %name62 = getelementptr i8, ptr %ch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_dctrl.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.30, ptr noundef %name62, i32 noundef %cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %do.end.i, %sw.bb2.i, %sw.bb.i, %do.end46, %do.end21, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then61 ], [ 0, %do.end46 ], [ %call11, %if.end13.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %do.end21 ], [ -22, %do.end.i ], [ %call.i92, %sw.bb2.i ], [ 0, %sw.bb.i ], [ -22, %do.body49 ], [ -16, %if.end10.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_l2l1B(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %3, label %do.end55 [
    i32 8193, label %do.body4
    i32 257, label %do.body15
    i32 513, label %do.body38
  ]

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call9 = tail call i32 @bchannel_senddata(ptr noundef %ch, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %do.body4.if.end_crit_edge

do.body4.if.end_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @W6692_fill_Bfifo(ptr noundef %ch)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body4.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call9, %do.body4.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  br label %cleanup

do.body15:                                        ; preds = %entry
  %lock21 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 8
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock21) #8
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call28 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end31, label %if.end31.thread

if.end31.thread:                                  ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #8
  br label %if.then34

if.end31:                                         ; preds = %do.body15
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %protocol, align 4
  %call30 = tail call fastcc i32 @w6692_mode(ptr noundef %ch, i32 noundef %6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool33.not = icmp eq i32 %call30, 0
  br i1 %tobool33.not, label %if.end31.if.then34_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %if.end31.if.then34_crit_edge, %if.end31.thread
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %7 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then34.if.then60_crit_edge, label %if.end.i

if.then34.if.then60_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.end.i:                                         ; preds = %if.then34
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then60_crit_edge, label %if.end3.i, !prof !372

if.end.i.if.then60_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %15 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %recv.i, align 4
  %17 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %16(ptr noundef %18, ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.then60_crit_edge, label %if.end3.i.if.then60.sink.split_crit_edge

if.end3.i.if.then60.sink.split_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60.sink.split

if.end3.i.if.then60_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

do.body38:                                        ; preds = %entry
  %lock44 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 8
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock44) #8
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #8
  %call51 = tail call fastcc i32 @w6692_mode(ptr noundef %ch, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock44, i32 noundef %call46) #8
  %peer.i92 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %19 = ptrtoint ptr %peer.i92 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer.i92, align 4
  %tobool.not.i93 = icmp eq ptr %20, null
  br i1 %tobool.not.i93, label %do.body38.if.then60_crit_edge, label %if.end.i96

do.body38.if.then60_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.end.i96:                                       ; preds = %do.body38
  %call.i.i.i.i94 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i95 = icmp eq ptr %call.i.i.i.i94, null
  br i1 %tobool.not.i.i.i95, label %if.end.i96.if.then60_crit_edge, label %if.end3.i106, !prof !372

if.end.i96.if.then60_crit_edge:                   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.end3.i106:                                     ; preds = %if.end.i96
  %data.i.i.i.i97 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i94, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i97, align 4
  %add.ptr.i.i.i.i98 = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i.i98, ptr %data.i.i.i.i97, align 4
  %tail.i.i.i.i99 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i94, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i.i99, align 8
  %add.ptr1.i.i.i.i100 = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i.i100, ptr %tail.i.i.i.i99, align 8
  %cb.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i94, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i.i101 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 514, ptr %cb.i.i101, align 1
  %id6.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i94, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %id6.i.i102 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 65535, ptr %id6.i.i102, align 1
  %recv.i103 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %27 = ptrtoint ptr %recv.i103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %recv.i103, align 4
  %29 = ptrtoint ptr %peer.i92 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer.i92, align 4
  %call5.i104 = tail call i32 %28(ptr noundef %30, ptr noundef nonnull %call.i.i.i.i94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i104)
  %tobool6.not.i105 = icmp eq i32 %call5.i104, 0
  br i1 %tobool6.not.i105, label %if.end3.i106.if.then60_crit_edge, label %if.end3.i106.if.then60.sink.split_crit_edge

if.end3.i106.if.then60.sink.split_crit_edge:      ; preds = %if.end3.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60.sink.split

if.end3.i106.if.then60_crit_edge:                 ; preds = %if.end3.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

do.end55:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %id, align 1
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull @.str.36, i32 noundef %3, i32 noundef %32) #11
  br label %cleanup

if.then60.sink.split:                             ; preds = %if.end3.i106.if.then60.sink.split_crit_edge, %if.end3.i.if.then60.sink.split_crit_edge
  %call.i.i.i.i.sink = phi ptr [ %call.i.i.i.i, %if.end3.i.if.then60.sink.split_crit_edge ], [ %call.i.i.i.i94, %if.end3.i106.if.then60.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.sink) #8
  br label %if.then60

if.then60:                                        ; preds = %if.then60.sink.split, %if.end3.i106.if.then60_crit_edge, %if.end.i96.if.then60_crit_edge, %do.body38.if.then60_crit_edge, %if.end3.i.if.then60_crit_edge, %if.end.i.if.then60_crit_edge, %if.then34.if.then60_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.end55, %if.end31.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %if.then60 ], [ -22, %do.end55 ], [ %call30, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_bctrl.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_bctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_bctrl.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef nonnull @.str.44, i32 noundef %cmd, ptr noundef %arg) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %cmd, label %do.end24 [
    i32 512, label %sw.bb
    i32 768, label %sw.bb20
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #8
  %workq = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 3
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %workq) #8
  %lock = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 8
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #8
  %call18 = tail call fastcc i32 @w6692_mode(ptr noundef %ch, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #8
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %protocol, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %peer, align 4
  tail call void @module_put(ptr noundef null) #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @mISDN_ctrl_bchannel(ptr noundef %ch, ptr noundef %arg) #8
  br label %sw.epilog

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %name26 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name26, ptr noundef nonnull @.str.44, i32 noundef %cmd) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end24, %sw.bb20, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end24 ], [ %call.i, %sw.bb20 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_l1(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_l1callback(ptr noundef %dch, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_l1callback.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_l1callback, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %dch, i32 -740
  %state = getelementptr i8, ptr %dch, i32 -652
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_l1callback.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.130, ptr noundef %name, i32 noundef %cmd, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %cmd, label %do.body95 [
    i32 33538, label %do.body5
    i32 33794, label %do.body17
    i32 35330, label %do.body33
    i32 35842, label %sw.bb53
    i32 35586, label %do.body73
    i32 258, label %sw.bb87
    i32 514, label %sw.bb90
  ]

do.body5:                                         ; preds = %do.end
  %lock = getelementptr i8, ptr %dch, i32 -700
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_l1callback, %if.then.i)) #8
          to label %ph_command.exit [label %if.then.i], !srcloc !371

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr i8, ptr %dch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i, i32 noundef 8) #8
  br label %ph_command.exit

ph_command.exit:                                  ; preds = %if.then.i, %do.body5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i.i = getelementptr i8, ptr %dch, i32 -712
  %3 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i.i, align 8
  %add.i.i = add i32 %4, 92
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 8) #8, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #8
  br label %cleanup

do.body17:                                        ; preds = %do.end
  %lock23 = getelementptr i8, ptr %dch, i32 -700
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock23) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_l1callback, %if.then.i157)) #8
          to label %ph_command.exit162 [label %if.then.i157], !srcloc !371

if.then.i157:                                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %name.i156 = getelementptr i8, ptr %dch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i156, i32 noundef 9) #8
  br label %ph_command.exit162

ph_command.exit162:                               ; preds = %if.then.i157, %do.body17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i.i158 = getelementptr i8, ptr %dch, i32 -712
  %6 = ptrtoint ptr %addr.i.i158 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i158, align 8
  %add.i.i159 = add i32 %7, 92
  %and.i.i160 = and i32 %add.i.i159, 1048575
  %add1.i.i161 = or i32 %and.i.i160, -18874368
  %8 = inttoptr i32 %add1.i.i161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 9) #8, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock23, i32 noundef %call25) #8
  br label %cleanup

do.body33:                                        ; preds = %do.end
  %lock39 = getelementptr i8, ptr %dch, i32 -700
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock39) #8
  %state46 = getelementptr i8, ptr %dch, i32 -652
  %9 = ptrtoint ptr %state46 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp48.not = icmp eq i8 %10, 0
  br i1 %cmp48.not, label %do.body33.if.end51_crit_edge, label %if.then50

do.body33.if.end51_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_l1callback, %if.then.i164)) #8
          to label %ph_command.exit169 [label %if.then.i164], !srcloc !371

if.then.i164:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %name.i163 = getelementptr i8, ptr %dch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i163, i32 noundef 1) #8
  br label %ph_command.exit169

ph_command.exit169:                               ; preds = %if.then.i164, %if.then50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i.i165 = getelementptr i8, ptr %dch, i32 -712
  %11 = ptrtoint ptr %addr.i.i165 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i165, align 8
  %add.i.i166 = add i32 %12, 92
  %and.i.i167 = and i32 %add.i.i166, 1048575
  %add1.i.i168 = or i32 %and.i.i167, -18874368
  %13 = inttoptr i32 %add1.i.i168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 1) #8, !srcloc !370
  br label %if.end51

if.end51:                                         ; preds = %ph_command.exit169, %do.body33.if.end51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_l1callback, %if.then.i171)) #8
          to label %ph_command.exit176 [label %if.then.i171], !srcloc !371

if.then.i171:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %name.i170 = getelementptr i8, ptr %dch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i170, i32 noundef 0) #8
  br label %ph_command.exit176

ph_command.exit176:                               ; preds = %if.then.i171, %if.end51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i.i172 = getelementptr i8, ptr %dch, i32 -712
  %14 = ptrtoint ptr %addr.i.i172 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i172, align 8
  %add.i.i173 = add i32 %15, 92
  %and.i.i174 = and i32 %add.i.i173, 1048575
  %add1.i.i175 = or i32 %and.i.i174, -18874368
  %16 = inttoptr i32 %add1.i.i175 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #8, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock39, i32 noundef %call41) #8
  br label %cleanup

sw.bb53:                                          ; preds = %do.end
  %squeue = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %squeue) #8
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 13
  %17 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_skb, align 4
  %tobool54.not = icmp eq ptr %18, null
  br i1 %tobool54.not, label %sw.bb53.if.end58_crit_edge, label %if.then55

sw.bb53.if.end58_crit_edge:                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then55:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %18) #8
  %19 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %sw.bb53.if.end58_crit_edge
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 14
  %20 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tx_idx, align 8
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 9
  %21 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skb, align 4
  %tobool59.not = icmp eq ptr %22, null
  br i1 %tobool59.not, label %if.end58.if.end63_crit_edge, label %if.then60

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %22) #8
  %23 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end58.if.end63_crit_edge
  %Flags = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call64 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %Flags) #8
  %call66 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end63.cleanup_crit_edge, label %if.then68

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 8
  %call69 = tail call i32 @del_timer(ptr noundef %timer) #8
  br label %cleanup

do.body73:                                        ; preds = %do.end
  %lock79 = getelementptr i8, ptr %dch, i32 -700
  %call81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock79) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_l1callback, %if.then.i178)) #8
          to label %ph_command.exit183 [label %if.then.i178], !srcloc !371

if.then.i178:                                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %name.i177 = getelementptr i8, ptr %dch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i177, i32 noundef 0) #8
  br label %ph_command.exit183

ph_command.exit183:                               ; preds = %if.then.i178, %do.body73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i.i179 = getelementptr i8, ptr %dch, i32 -712
  %24 = ptrtoint ptr %addr.i.i179 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i179, align 8
  %add.i.i180 = add i32 %25, 92
  %and.i.i181 = and i32 %add.i.i180, 1048575
  %add1.i.i182 = or i32 %and.i.i181, -18874368
  %26 = inttoptr i32 %add1.i.i182 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #8, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock79, i32 noundef %call81) #8
  br label %cleanup

sw.bb87:                                          ; preds = %do.end
  %Flags88 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call89 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags88) #8
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %27 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %sw.bb87.cleanup_crit_edge, label %if.end.i

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb87
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i, !prof !372

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %32, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %35 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %recv.i, align 4
  %37 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %36(ptr noundef %38, ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.cleanup_crit_edge, label %if.then7.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #8
  br label %cleanup

sw.bb90:                                          ; preds = %do.end
  %Flags91 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call92 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags91) #8
  %peer.i184 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %39 = ptrtoint ptr %peer.i184 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %peer.i184, align 4
  %tobool.not.i185 = icmp eq ptr %40, null
  br i1 %tobool.not.i185, label %sw.bb90.cleanup_crit_edge, label %if.end.i188

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i188:                                      ; preds = %sw.bb90
  %call.i.i.i.i186 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i187 = icmp eq ptr %call.i.i.i.i186, null
  br i1 %tobool.not.i.i.i187, label %if.end.i188.cleanup_crit_edge, label %if.end3.i198, !prof !372

if.end.i188.cleanup_crit_edge:                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i198:                                     ; preds = %if.end.i188
  %data.i.i.i.i189 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i186, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i.i189, align 4
  %add.ptr.i.i.i.i190 = getelementptr i8, ptr %42, i32 8
  store ptr %add.ptr.i.i.i.i190, ptr %data.i.i.i.i189, align 4
  %tail.i.i.i.i191 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i186, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i.i191, align 8
  %add.ptr1.i.i.i.i192 = getelementptr i8, ptr %44, i32 8
  store ptr %add.ptr1.i.i.i.i192, ptr %tail.i.i.i.i191, align 8
  %cb.i.i193 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i186, i32 0, i32 3
  %45 = ptrtoint ptr %cb.i.i193 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 514, ptr %cb.i.i193, align 1
  %id6.i.i194 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i186, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %id6.i.i194 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 65535, ptr %id6.i.i194, align 1
  %recv.i195 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %47 = ptrtoint ptr %recv.i195 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %recv.i195, align 4
  %49 = ptrtoint ptr %peer.i184 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %peer.i184, align 4
  %call5.i196 = tail call i32 %48(ptr noundef %50, ptr noundef nonnull %call.i.i.i.i186) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i196)
  %tobool6.not.i197 = icmp eq i32 %call5.i196, 0
  br i1 %tobool6.not.i197, label %if.end3.i198.cleanup_crit_edge, label %if.then7.i199

if.end3.i198.cleanup_crit_edge:                   ; preds = %if.end3.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.i199:                                    ; preds = %if.end3.i198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i186) #8
  br label %cleanup

do.body95:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_l1callback.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_l1callback, %if.then107)) #8
          to label %cleanup [label %if.then107], !srcloc !371

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  %name108 = getelementptr i8, ptr %dch, i32 -740
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_l1callback.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.131, ptr noundef %name108, ptr noundef nonnull @.str.129, i32 noundef %cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %do.body95, %if.then7.i199, %if.end3.i198.cleanup_crit_edge, %if.end.i188.cleanup_crit_edge, %sw.bb90.cleanup_crit_edge, %if.then7.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb87.cleanup_crit_edge, %ph_command.exit183, %if.then68, %if.end63.cleanup_crit_edge, %ph_command.exit176, %ph_command.exit162, %ph_command.exit
  %retval.0 = phi i32 [ -1, %if.then107 ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %ph_command.exit183 ], [ 0, %ph_command.exit176 ], [ 0, %ph_command.exit162 ], [ 0, %ph_command.exit ], [ 0, %sw.bb87.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ], [ 0, %if.then7.i ], [ 0, %sw.bb90.cleanup_crit_edge ], [ 0, %if.end.i188.cleanup_crit_edge ], [ 0, %if.end3.i198.cleanup_crit_edge ], [ 0, %if.then7.i199 ], [ -1, %do.body95 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_freebchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_freedchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1_event(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @W6692_fill_Dfifo(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_fill_Dfifo.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_fill_Dfifo, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_fill_Dfifo.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.21, ptr noundef %name) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 13
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 14
  %4 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_idx, align 8
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp10 = icmp ugt i32 %sub, 64
  %. = select i1 %cmp10, i8 8, i8 10
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 64)
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %5
  %add = add i32 %6, %5
  %9 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %tx_idx, align 8
  %addr = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 5
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 8
  %add17 = add i32 %11, 4
  %and = and i32 %add17, 1048575
  %add18 = or i32 %and, -18874368
  %12 = inttoptr i32 %add18 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %12, ptr noundef %add.ptr, i32 noundef %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 8
  %add.i = add i32 %14, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %.) #8, !srcloc !370
  %Flags = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 1
  %call20 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %Flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end9.if.end42_crit_edge, label %do.body23

if.end9.if.end42_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body23:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_fill_Dfifo.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_fill_Dfifo, %if.then35)) #8
          to label %do.end40 [label %if.then35], !srcloc !371

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %name36 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_fill_Dfifo.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.22, ptr noundef %name36) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body23
  %timer = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 8
  %call41 = tail call i32 @del_timer(ptr noundef %timer) #8
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.end9.if.end42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add43 = add i32 %16, 8
  %timer44 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 8
  %expires = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 8, i32 1
  %17 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add43, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer44) #8
  %18 = load i32, ptr @debug, align 4
  %and46 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end42.cleanup_crit_edge, label %if.then48

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %log = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 16
  %name50 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 63, ptr noundef nonnull @.str.23, ptr noundef %name50, i32 noundef %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_fill_Dfifo.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_fill_Dfifo, %if.then65)) #8
          to label %cleanup [label %if.then65], !srcloc !371

if.then65:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %6, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.then48, %if.end42.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_ch_frame(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @open_dchannel(ptr noundef %card, ptr nocapture noundef %rq, ptr noundef %caller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @open_dchannel.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@open_dchannel, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %id = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @open_dchannel.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.32, ptr noundef %name, ptr noundef nonnull @.str.31, i32 noundef %1, ptr noundef %caller) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end4, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %do.end
  %channel = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp5 = icmp eq i8 %5, 1
  br i1 %cmp5, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8:                                          ; preds = %if.end4
  %dch9 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15
  %ch = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dch9, ptr %ch, align 4
  %protocol13 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %protocol13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %protocol13, align 4
  %state = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp15 = icmp eq i32 %9, 7
  br i1 %cmp15, label %if.then17, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then17:                                        ; preds = %if.end8
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch, align 4
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then17.return_crit_edge, label %if.end.i

if.then17.return_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.then17
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.return_crit_edge, label %if.end3.i, !prof !372

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %recv.i, align 4
  %22 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %21(ptr noundef %23, ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.return_crit_edge, label %if.then7.i

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #8
  br label %return

return:                                           ; preds = %if.then7.i, %if.end3.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then17.return_crit_edge, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.return_crit_edge ], [ -22, %if.end4.return_crit_edge ], [ 0, %if.end8.return_crit_edge ], [ 0, %if.then17.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.end3.i.return_crit_edge ], [ 0, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @W6692_fill_Bfifo(ptr noundef %wch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_fill_Bfifo.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_fill_Bfifo, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_fill_Bfifo.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.38, ptr noundef %name) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 17
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %Flags = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %Flags, align 4
  %6 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.end22.thread

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.thread:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %fill = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 8
  br label %if.else25

if.else:                                          ; preds = %do.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 20
  %9 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_idx, align 4
  %sub = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp23 = icmp ugt i32 %sub, 64
  br i1 %cmp23, label %if.end22.do.body34_crit_edge, label %if.end22.if.else25_crit_edge

if.end22.if.else25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else25

if.end22.do.body34_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.else25:                                        ; preds = %if.end22.if.else25_crit_edge, %if.end22.thread
  %count.0148 = phi i32 [ 64, %if.end22.thread ], [ %sub, %if.end22.if.else25_crit_edge ]
  %ptr.0145 = phi ptr [ %fill, %if.end22.thread ], [ %add.ptr, %if.end22.if.else25_crit_edge ]
  %Flags27 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %13 = ptrtoint ptr %Flags27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %Flags27, align 4
  %15 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool29.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool29.not, i8 36, i8 38
  br label %do.body34

do.body34:                                        ; preds = %if.else25, %if.end22.do.body34_crit_edge
  %ptr.0146 = phi ptr [ %add.ptr, %if.end22.do.body34_crit_edge ], [ %ptr.0145, %if.else25 ]
  %cmd.0 = phi i8 [ 36, %if.end22.do.body34_crit_edge ], [ %spec.select, %if.else25 ]
  %count.1 = phi i32 [ 64, %if.end22.do.body34_crit_edge ], [ %count.0148, %if.else25 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_fill_Bfifo.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_fill_Bfifo, %if.then46)) #8
          to label %do.end53 [label %if.then46], !srcloc !371

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %name47 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %tx_idx50 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 20
  %16 = ptrtoint ptr %tx_idx50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_idx50, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_fill_Bfifo.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.39, ptr noundef %name47, i32 noundef %count.1, i32 noundef %17) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then46, %do.body34
  %tx_idx55 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 20
  %18 = ptrtoint ptr %tx_idx55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_idx55, align 4
  %add = add i32 %19, %count.1
  store i32 %add, ptr %tx_idx55, align 4
  %addr = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  br i1 %tobool4.not, label %do.end53.while.body_crit_edge, label %if.else64

do.end53.while.body_crit_edge:                    ; preds = %do.end53
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end53.while.body_crit_edge
  %count.2152 = phi i32 [ %sub63, %while.body.while.body_crit_edge ], [ %count.1, %do.end53.while.body_crit_edge ]
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %add60 = add i32 %21, 132
  %and = and i32 %add60, 1048575
  %add61 = or i32 %and, -18874368
  %22 = inttoptr i32 %add61 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %22, ptr noundef %ptr.0146, i32 noundef 4) #8
  %sub63 = add nsw i32 %count.2152, -4
  %cmp58 = icmp ugt i32 %count.2152, 4
  br i1 %cmp58, label %while.body.while.body_crit_edge, label %while.body.if.end70_crit_edge

while.body.if.end70_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.else64:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %add66 = add i32 %24, 132
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %25 = inttoptr i32 %add68 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %25, ptr noundef %ptr.0146, i32 noundef %count.1) #8
  br label %if.end70

if.end70:                                         ; preds = %if.else64, %while.body.if.end70_crit_edge
  %count.3 = phi i32 [ %count.1, %if.else64 ], [ %sub63, %while.body.if.end70_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %27, 136
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %28 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %cmd.0) #8, !srcloc !370
  %29 = load i32, ptr @debug, align 4
  %and71 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %brmerge = select i1 %tobool72.not, i1 true, i1 %tobool4.not
  br i1 %brmerge, label %if.end70.cleanup_crit_edge, label %if.then74

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %log = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 1
  %30 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr, align 4
  %name77 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %call79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 63, ptr noundef nonnull @.str.40, i32 noundef %31, ptr noundef %name77, i32 noundef %count.3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_fill_Bfifo.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_fill_Bfifo, %if.then92)) #8
          to label %cleanup [label %if.then92], !srcloc !371

if.then92:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %ptr.0146, i32 noundef %count.3, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.then74, %if.end70.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w6692_mode(ptr noundef %wch, i32 noundef %pr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_mode.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_mode, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %state = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_mode.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %3, i32 noundef %5, i32 noundef %pr) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %pr, label %do.end33 [
    i32 0, label %sw.bb
    i32 33, label %sw.bb19
    i32 34, label %sw.bb25
  ]

sw.bb:                                            ; preds = %do.end
  %fmask = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmask, align 4
  %9 = load i32, ptr @pots, align 4
  %and = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %sw.bb.if.end10_crit_edge, label %land.lhs.true

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %sw.bb
  %b_mode = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 3
  %10 = ptrtoint ptr %b_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %b_mode, align 4
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %fmask.i = getelementptr inbounds %struct.w6692_hw, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %fmask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmask.i, align 4
  %and.i = and i32 %16, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then8.if.end10_crit_edge, label %if.end.i

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %17 = and i8 %11, -41
  %18 = ptrtoint ptr %b_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %b_mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i.i = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i, align 4
  %add.i.i = add i32 %20, 140
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %21 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %17) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 4
  %add.i2.i = add i32 %23, 136
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %24 = inttoptr i32 %add1.i4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 97) #8, !srcloc !370
  br label %if.end10

if.end10:                                         ; preds = %if.end.i, %if.then8.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %sw.bb.if.end10_crit_edge
  %b_mode11 = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 3
  %25 = ptrtoint ptr %b_mode11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b_mode11, align 4
  tail call void @mISDN_clear_bchannel(ptr noundef %wch) #8
  %26 = ptrtoint ptr %b_mode11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %b_mode11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %29, 140
  %and.i71 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i71, -18874368
  %30 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %27) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i, align 4
  %add.i73 = add i32 %32, 136
  %and.i74 = and i32 %add.i73, 1048575
  %add1.i75 = or i32 %and.i74, -18874368
  %33 = inttoptr i32 %add1.i75 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 65) #8, !srcloc !370
  %Flags = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %call15 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags) #8
  %call18 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags) #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_mode20 = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 3
  %34 = ptrtoint ptr %b_mode20 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -128, ptr %b_mode20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i76 = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i76, align 4
  %add.i77 = add i32 %36, 140
  %and.i78 = and i32 %add.i77, 1048575
  %add1.i79 = or i32 %and.i78, -18874368
  %37 = inttoptr i32 %add1.i79 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 -128) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %addr.i76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i76, align 4
  %add.i81 = add i32 %39, 148
  %and.i82 = and i32 %add.i81, 1048575
  %add1.i83 = or i32 %and.i82, -18874368
  %40 = inttoptr i32 %add1.i83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %addr.i76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i76, align 4
  %add.i85 = add i32 %42, 136
  %and.i86 = and i32 %add.i85, 1048575
  %add1.i87 = or i32 %and.i86, -18874368
  %43 = inttoptr i32 %add1.i87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 97) #8, !srcloc !370
  %Flags23 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %call24 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags23) #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_mode26 = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 3
  %44 = ptrtoint ptr %b_mode26 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 64, ptr %b_mode26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i88 = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %45 = ptrtoint ptr %addr.i88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i88, align 4
  %add.i89 = add i32 %46, 140
  %and.i90 = and i32 %add.i89, 1048575
  %add1.i91 = or i32 %and.i90, -18874368
  %47 = inttoptr i32 %add1.i91 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 64) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %addr.i88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i88, align 4
  %add.i93 = add i32 %49, 156
  %and.i94 = and i32 %add.i93, 1048575
  %add1.i95 = or i32 %and.i94, -18874368
  %50 = inttoptr i32 %add1.i95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 -1) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %addr.i88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr.i88, align 4
  %add.i97 = add i32 %52, 160
  %and.i98 = and i32 %add.i97, 1048575
  %add1.i99 = or i32 %and.i98, -18874368
  %53 = inttoptr i32 %add1.i99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 -1) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %addr.i88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i88, align 4
  %add.i101 = add i32 %55, 148
  %and.i102 = and i32 %add.i101, 1048575
  %add1.i103 = or i32 %and.i102, -18874368
  %56 = inttoptr i32 %add1.i103 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 0) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %addr.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i88, align 4
  %add.i105 = add i32 %58, 136
  %and.i106 = and i32 %add.i105, 1048575
  %add1.i107 = or i32 %and.i106, -18874368
  %59 = inttoptr i32 %add1.i107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 97) #8, !srcloc !370
  %Flags29 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags29) #8
  br label %sw.epilog

do.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %name35 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name35, i32 noundef %pr) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb19, %if.end10
  %state39 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 4
  %60 = ptrtoint ptr %state39 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %pr, ptr %state39, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end33
  %retval.0 = phi i32 [ -92, %do.end33 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_clear_bchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_ctrl_bchannel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w6692_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %addr.i = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr.i, align 8
  %add.i = add i32 %1, 20
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %conv = zext i8 %3 to i32
  %imask = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 9
  %4 = ptrtoint ptr %imask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %imask, align 8
  %or95 = or i8 %5, %3
  call void @__sanitizer_cov_trace_cmp1(i8 %or95, i8 %5)
  %cmp = icmp eq i8 %or95, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irqcnt = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqcnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %irqcnt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_irq.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_irq, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !371

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_irq.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.79, ptr noundef %name, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %8 = ptrtoint ptr %imask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %imask, align 8
  %neg = xor i8 %9, -1
  %and = and i8 %3, %neg
  %conv16 = zext i8 %and to i32
  %and17 = and i32 %conv16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end.if.end20_crit_edge, label %if.then19

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @W6692B_interrupt(ptr noundef %dev_id, i32 noundef 0)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.end.if.end20_crit_edge
  %and22 = and i32 %conv16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @W6692B_interrupt(ptr noundef %dev_id, i32 noundef 1)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %and27 = and i32 %conv16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end30_crit_edge, label %if.then29

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @handle_rxD(ptr noundef %dev_id)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  %and32 = and i32 %conv16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @W6692_empty_Dfifo(ptr noundef %dev_id, i32 noundef 64)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %and37 = and i32 %conv16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end40_crit_edge, label %if.then39

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end35
  %dch.i = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 15
  %Flags.i = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 15, i32 1
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then39.if.end.i_crit_edge, label %if.then.i

if.then39.if.end.i_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 15, i32 8
  %call2.i = tail call i32 @del_timer(ptr noundef %timer.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then39.if.end.i_crit_edge
  %tx_skb.i = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 15, i32 13
  %10 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_skb.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %tx_idx.i = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 15, i32 14
  %12 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_idx.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp ult i32 %13, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.end16.sink.split.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i.if.end16.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  tail call void @consume_skb(ptr noundef %11) #8
  %call12.i = tail call i32 @get_next_dframe(ptr noundef %dch.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end40_crit_edge, label %if.else.i.if.end16.sink.split.i_crit_edge

if.else.i.if.end16.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split.i

if.else.i.if.end40_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end16.sink.split.i:                            ; preds = %if.else.i.if.end16.sink.split.i_crit_edge, %land.lhs.true.i.if.end16.sink.split.i_crit_edge
  tail call fastcc void @W6692_fill_Dfifo(ptr noundef %dev_id) #8
  br label %if.end40

if.end40:                                         ; preds = %if.end16.sink.split.i, %if.else.i.if.end40_crit_edge, %if.end35.if.end40_crit_edge
  %and42 = and i32 %conv16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end45_crit_edge, label %if.then44

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @handle_statusD(ptr noundef %dev_id)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40.if.end45_crit_edge
  %and47 = and i32 %conv16, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %do.body50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w6692_irq.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w6692_irq, %if.then62)) #8
          to label %cleanup [label %if.then62], !srcloc !371

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %name63 = getelementptr inbounds %struct.w6692_hw, ptr %dev_id, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w6692_irq.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.80, ptr noundef %name63) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body50, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body50 ], [ 1, %if.then62 ], [ 1, %if.end45.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initW6692(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 8
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dbusy_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef nonnull @initW6692.__key) #8
  %bc = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 14
  %call = tail call fastcc i32 @w6692_mode(ptr noundef %bc, i32 noundef 0)
  %arrayidx2 = getelementptr %struct.w6692_hw, ptr %card, i32 0, i32 14, i32 1
  %call3 = tail call fastcc i32 @w6692_mode(ptr noundef %arrayidx2, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr.i, align 8
  %add.i = add i32 %1, 84
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %add.i.i = add i32 %4, 24
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -1) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %add.i90 = add i32 %7, 44
  %and.i91 = and i32 %add.i90, 1048575
  %add1.i92 = or i32 %and.i91, -18874368
  %8 = inttoptr i32 %add1.i92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -1) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %add.i94 = add i32 %10, 56
  %and.i95 = and i32 %add.i94, 1048575
  %add1.i96 = or i32 %and.i95, -18874368
  %11 = inttoptr i32 %add1.i96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -1) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %add.i98 = add i32 %13, 12
  %and.i99 = and i32 %add.i98, 1048575
  %add1.i100 = or i32 %and.i99, -18874368
  %14 = inttoptr i32 %add1.i100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 64) #8, !srcloc !370
  %state = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 13
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@initW6692, %if.then.i)) #8
          to label %ph_command.exit [label %if.then.i], !srcloc !371

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i, i32 noundef 1) #8
  br label %ph_command.exit

ph_command.exit:                                  ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %add.i.i102 = add i32 %17, 92
  %and.i.i103 = and i32 %add.i.i102, 1048575
  %add1.i.i104 = or i32 %and.i.i103, -18874368
  %18 = inttoptr i32 %add1.i.i104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 1) #8, !srcloc !370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@initW6692, %if.then.i106)) #8
          to label %ph_command.exit111 [label %if.then.i106], !srcloc !371

if.then.i106:                                     ; preds = %ph_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name.i105 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i105, i32 noundef 0) #8
  br label %ph_command.exit111

ph_command.exit111:                               ; preds = %if.then.i106, %ph_command.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 8
  %add.i.i108 = add i32 %20, 92
  %and.i.i109 = and i32 %add.i.i108, 1048575
  %add1.i.i110 = or i32 %and.i.i109, -18874368
  %21 = inttoptr i32 %add1.i.i110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #8, !srcloc !370
  %imask = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 9
  %22 = ptrtoint ptr %imask to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 24, ptr %imask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i, align 8
  %add.i113 = add i32 %24, 32
  %and.i114 = and i32 %add.i113, 1048575
  %add1.i115 = or i32 %and.i114, -18874368
  %25 = inttoptr i32 %add1.i115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i116 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 14, i32 0, i32 1
  %26 = ptrtoint ptr %addr.i116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i116, align 4
  %add.i117 = add i32 %27, 148
  %and.i118 = and i32 %add.i117, 1048575
  %add1.i119 = or i32 %and.i118, -18874368
  %28 = inttoptr i32 %add1.i119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i120 = getelementptr %struct.w6692_hw, ptr %card, i32 0, i32 14, i32 1, i32 1
  %29 = ptrtoint ptr %addr.i120 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i120, align 4
  %add.i121 = add i32 %30, 148
  %and.i122 = and i32 %add.i121, 1048575
  %add1.i123 = or i32 %and.i122, -18874368
  %31 = inttoptr i32 %add1.i123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 0) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i, align 8
  %add.i125 = add i32 %33, 8
  %and.i126 = and i32 %add.i125, 1048575
  %add1.i127 = or i32 %and.i126, -18874368
  %34 = inttoptr i32 %add1.i127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 65) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %addr.i116 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i116, align 4
  %add.i129 = add i32 %36, 136
  %and.i130 = and i32 %add.i129, 1048575
  %add1.i131 = or i32 %and.i130, -18874368
  %37 = inttoptr i32 %add1.i131 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 65) #8, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %addr.i120 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i120, align 4
  %add.i133 = add i32 %39, 136
  %and.i134 = and i32 %add.i133, 1048575
  %add1.i135 = or i32 %and.i134, -18874368
  %40 = inttoptr i32 %add1.i135 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 65) #8, !srcloc !370
  %subtype = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 7
  %41 = ptrtoint ptr %subtype to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp = icmp eq i32 %42, 2
  %pctl = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ph_command.exit111
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %pctl to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -128, ptr %pctl, align 1
  %xdata = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 12
  %44 = ptrtoint ptr %xdata to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %xdata, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i, align 8
  %add.i137 = add i32 %46, 104
  %and.i138 = and i32 %add.i137, 1048575
  %add1.i139 = or i32 %and.i138, -18874368
  %47 = inttoptr i32 %add1.i139 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 -128) #8, !srcloc !370
  %48 = ptrtoint ptr %xdata to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %xdata, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i, align 8
  %add.i141 = add i32 %51, 248
  %and.i142 = and i32 %add.i141, 1048575
  %add1.i143 = or i32 %and.i142, -18874368
  %52 = inttoptr i32 %add1.i143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %49) #8, !srcloc !370
  br label %if.end48

if.else:                                          ; preds = %ph_command.exit111
  %53 = ptrtoint ptr %pctl to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -36, ptr %pctl, align 1
  %xaddr = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 11
  %54 = ptrtoint ptr %xaddr to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %xaddr, align 2
  %fmask = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 6
  %55 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fmask, align 4
  %57 = load i32, ptr @pots, align 4
  %and = and i32 %57, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %if.else
  %58 = load i32, ptr @led, align 4
  %and19 = and i32 %58, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end48_crit_edge, label %lor.lhs.false.thread

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end.thread:                                    ; preds = %if.else
  %xdata16 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 12
  %59 = ptrtoint ptr %xdata16 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %xdata16, align 1
  %61 = or i8 %60, 6
  store i8 %61, ptr %xdata16, align 1
  %62 = load i32, ptr @led, align 4
  %and19160 = and i32 %62, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19160)
  %tobool20.not161 = icmp eq i32 %and19160, 0
  br i1 %tobool20.not161, label %if.end.thread.if.then33_crit_edge, label %if.end.thread.if.then33.sink.split_crit_edge

if.end.thread.if.then33.sink.split_crit_edge:     ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33.sink.split

if.end.thread.if.then33_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

lor.lhs.false.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %xdata22 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 12
  br label %if.then33.sink.split

if.then33.sink.split:                             ; preds = %lor.lhs.false.thread, %if.end.thread.if.then33.sink.split_crit_edge
  %xdata16.sink165 = phi ptr [ %xdata22, %lor.lhs.false.thread ], [ %xdata16, %if.end.thread.if.then33.sink.split_crit_edge ]
  %63 = ptrtoint ptr %xdata16.sink165 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %xdata16.sink165, align 1
  %65 = or i8 %64, 4
  store i8 %65, ptr %xdata16.sink165, align 1
  br label %if.then33

if.then33:                                        ; preds = %if.then33.sink.split, %if.end.thread.if.then33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i, align 8
  %add.i145 = add i32 %67, 104
  %and.i146 = and i32 %add.i145, 1048575
  %add1.i147 = or i32 %and.i146, -18874368
  %68 = inttoptr i32 %add1.i147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 -36) #8, !srcloc !370
  %69 = ptrtoint ptr %xaddr to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %xaddr, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr.i, align 8
  %add.i149 = add i32 %72, 244
  %and.i150 = and i32 %add.i149, 1048575
  %add1.i151 = or i32 %and.i150, -18874368
  %73 = inttoptr i32 %add1.i151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %70) #8, !srcloc !370
  %xdata36 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 12
  %74 = ptrtoint ptr %xdata36 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %xdata36, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addr.i, align 8
  %add.i153 = add i32 %77, 248
  %and.i154 = and i32 %add.i153, 1048575
  %add1.i155 = or i32 %and.i154, -18874368
  %78 = inttoptr i32 %add1.i155 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %75) #8, !srcloc !370
  %79 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr.i, align 8
  %add.i157 = add i32 %80, 244
  %and.i158 = and i32 %add.i157, 1048575
  %add1.i159 = or i32 %and.i158, -18874368
  %81 = inttoptr i32 %add1.i159 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %83 = load i32, ptr @debug, align 4
  %and38 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then33.if.end48_crit_edge, label %do.end43

if.then33.if.end48_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end43:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %conv44 = zext i8 %82 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name, i32 noundef %conv44) #11
  br label %if.end48

if.end48:                                         ; preds = %do.end43, %if.then33.if.end48_crit_edge, %if.end.if.end48_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @W6692B_interrupt(ptr noundef %card, i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.w6692_hw, ptr %card, i32 0, i32 14, i32 %ch
  %addr.i = getelementptr %struct.w6692_hw, ptr %card, i32 0, i32 14, i32 %ch, i32 1
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %1, 144
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692B_interrupt.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692B_interrupt, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692B_interrupt.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.82, ptr noundef %name, i32 noundef %5, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv4 = zext i8 %3 to i32
  %and = and i32 %conv4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end111.thread, label %if.then6

if.then6:                                         ; preds = %do.end
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 4
  %add.i393 = add i32 %7, 152
  %and.i394 = and i32 %add.i393, 1048575
  %add1.i395 = or i32 %and.i394, -18874368
  %8 = inttoptr i32 %add1.i395 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  %conv8 = zext i8 %9 to i32
  %and9 = and i32 %conv8, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then6
  %and13 = and i32 %conv8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then11.if.end40_crit_edge, label %land.lhs.true

if.then11.if.end40_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then11
  %Flags = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %Flags, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end40_crit_edge, label %do.body19

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.body19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692B_interrupt.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692B_interrupt, %if.then31)) #8
          to label %if.end40 [label %if.then31], !srcloc !371

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %name32 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr35 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %nr35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr35, align 4
  %state = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 4
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692B_interrupt.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.83, ptr noundef %name32, i32 noundef %14, i32 noundef %16) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %do.body19, %land.lhs.true.if.end40_crit_edge, %if.then11.if.end40_crit_edge
  %Flags42 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %Flags42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %Flags42, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool44.not = icmp eq i32 %19, 0
  br i1 %tobool44.not, label %if.end40.if.end96_crit_edge, label %if.then45

if.end40.if.end96_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then45:                                        ; preds = %if.end40
  %and47 = and i32 %conv8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then45.if.end70_crit_edge, label %do.body50

if.then45.if.end70_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

do.body50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692B_interrupt.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692B_interrupt, %if.then62)) #8
          to label %if.end70 [label %if.then62], !srcloc !371

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %name63 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr66 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %20 = ptrtoint ptr %nr66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr66, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692B_interrupt.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.84, ptr noundef %name63, i32 noundef %21) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then62, %do.body50, %if.then45.if.end70_crit_edge
  %and72 = and i32 %conv8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end96_crit_edge, label %do.body75

if.end70.if.end96_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

do.body75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692B_interrupt.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692B_interrupt, %if.then87)) #8
          to label %if.end96 [label %if.then87], !srcloc !371

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %name88 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr91 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %22 = ptrtoint ptr %nr91 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr91, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692B_interrupt.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.85, ptr noundef %name88, i32 noundef %23) #8
  br label %if.end96

if.end96:                                         ; preds = %if.then87, %do.body75, %if.end70.if.end96_crit_edge, %if.end40.if.end96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 4
  %add.i397 = add i32 %25, 136
  %and.i398 = and i32 %add.i397, 1048575
  %add1.i399 = or i32 %and.i398, -18874368
  %26 = inttoptr i32 %add1.i399 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -32) #8, !srcloc !370
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 9
  %27 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_skb, align 4
  %tobool98.not = icmp eq ptr %28, null
  br i1 %tobool98.not, label %if.end96.if.end111_crit_edge, label %if.then99

if.end96.if.end111_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef nonnull %28, i32 noundef 0) #8
  br label %if.end111

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 4
  %add.i401 = add i32 %30, 172
  %and.i402 = and i32 %add.i401, 1048575
  %add1.i403 = or i32 %and.i402, -18874368
  %31 = inttoptr i32 %add1.i403 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  %33 = and i8 %32, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp = icmp eq i8 %33, 0
  %narrow = select i1 %cmp, i8 64, i8 %33
  %spec.store.select = zext i8 %narrow to i32
  tail call fastcc void @W6692_empty_Bfifo(ptr noundef %arrayidx, i32 noundef %spec.store.select)
  tail call void @recv_Bchannel(ptr noundef %arrayidx, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then99, %if.end96.if.end111_crit_edge
  %and113 = and i32 %conv4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end111.if.end157_crit_edge, label %if.end111.if.end121_crit_edge

if.end111.if.end121_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.end111.if.end157_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.end111.thread:                                 ; preds = %do.end
  %and113429 = and i32 %conv4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113429)
  %tobool114.not430 = icmp eq i32 %and113429, 0
  br i1 %tobool114.not430, label %if.end111.thread.if.end157_crit_edge, label %if.then119

if.end111.thread.if.end157_crit_edge:             ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.then119:                                       ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 4
  %add.i405 = add i32 %35, 152
  %and.i406 = and i32 %add.i405, 1048575
  %add1.i407 = or i32 %and.i406, -18874368
  %36 = inttoptr i32 %add1.i407 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end111.if.end121_crit_edge
  %star.1 = phi i8 [ %37, %if.then119 ], [ %9, %if.end111.if.end121_crit_edge ]
  %38 = and i8 %star.1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool124.not = icmp eq i8 %38, 0
  br i1 %tobool124.not, label %if.else148, label %do.body126

do.body126:                                       ; preds = %if.end121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692B_interrupt.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692B_interrupt, %if.then138)) #8
          to label %do.end147 [label %if.then138], !srcloc !371

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  %name139 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr142 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %39 = ptrtoint ptr %nr142 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr142, align 4
  %state144 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 4
  %41 = ptrtoint ptr %state144 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state144, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692B_interrupt.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.83, ptr noundef %name139, i32 noundef %40, i32 noundef %42) #8
  br label %do.end147

do.end147:                                        ; preds = %if.then138, %do.body126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr.i, align 4
  %add.i409 = add i32 %44, 136
  %and.i410 = and i32 %add.i409, 1048575
  %add1.i411 = or i32 %and.i410, -18874368
  %45 = inttoptr i32 %add1.i411 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 -32) #8, !srcloc !370
  br label %if.end157

if.else148:                                       ; preds = %if.end121
  tail call fastcc void @W6692_empty_Bfifo(ptr noundef %arrayidx, i32 noundef 64)
  %Flags150 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 2
  %46 = ptrtoint ptr %Flags150 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %Flags150, align 4
  %48 = and i32 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool152.not = icmp eq i32 %48, 0
  br i1 %tobool152.not, label %if.else148.if.end157_crit_edge, label %if.then153

if.else148.if.end157_crit_edge:                   ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.then153:                                       ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @recv_Bchannel(ptr noundef %arrayidx, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %if.else148.if.end157_crit_edge, %do.end147, %if.end111.thread.if.end157_crit_edge, %if.end111.if.end157_crit_edge
  %star.2 = phi i8 [ %star.1, %do.end147 ], [ %star.1, %if.then153 ], [ %star.1, %if.else148.if.end157_crit_edge ], [ %9, %if.end111.if.end157_crit_edge ], [ 0, %if.end111.thread.if.end157_crit_edge ]
  %and159 = and i32 %conv4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp ne i32 %and159, 0
  %49 = and i8 %star.2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool164.not = icmp eq i8 %49, 0
  %or.cond = select i1 %tobool160.not, i1 %tobool164.not, i1 false
  br i1 %or.cond, label %do.body166, label %if.end157.if.end189_crit_edge

if.end157.if.end189_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

do.body166:                                       ; preds = %if.end157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692B_interrupt.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692B_interrupt, %if.then178)) #8
          to label %do.end187 [label %if.then178], !srcloc !371

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #10
  %name179 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr182 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %50 = ptrtoint ptr %nr182 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr182, align 4
  %state184 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 4
  %52 = ptrtoint ptr %state184 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state184, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692B_interrupt.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.86, ptr noundef %name179, i32 noundef %51, i32 noundef %53) #8
  br label %do.end187

do.end187:                                        ; preds = %if.then178, %do.body166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 4
  %add.i413 = add i32 %55, 136
  %and.i414 = and i32 %add.i413, 1048575
  %add1.i415 = or i32 %and.i414, -18874368
  %56 = inttoptr i32 %add1.i415 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 -32) #8, !srcloc !370
  br label %if.end189

if.end189:                                        ; preds = %do.end187, %if.end157.if.end189_crit_edge
  %and191 = and i32 %conv4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end189.if.end253_crit_edge, label %if.then193

if.end189.if.end253_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end253

if.then193:                                       ; preds = %if.end189
  %and195 = and i32 %conv4, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.then197, label %if.then193.if.end220_crit_edge

if.then193.if.end220_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220

if.then197:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i, align 4
  %add.i417 = add i32 %58, 152
  %and.i418 = and i32 %add.i417, 1048575
  %add1.i419 = or i32 %and.i418, -18874368
  %59 = inttoptr i32 %add1.i419 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692B_interrupt.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692B_interrupt, %if.then211)) #8
          to label %if.end220 [label %if.then211], !srcloc !371

if.then211:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #10
  %name212 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr215 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %61 = ptrtoint ptr %nr215 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr215, align 4
  %conv216 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692B_interrupt.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.87, ptr noundef %name212, i32 noundef %62, i32 noundef %conv216) #8
  br label %if.end220

if.end220:                                        ; preds = %if.then211, %if.then197, %if.then193.if.end220_crit_edge
  %star.3 = phi i8 [ %star.2, %if.then193.if.end220_crit_edge ], [ %60, %if.then211 ], [ %60, %if.then197 ]
  %63 = and i8 %star.3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool223.not = icmp eq i8 %63, 0
  br i1 %tobool223.not, label %if.end253.critedge, label %do.end227

do.end227:                                        ; preds = %if.end220
  %name229 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr232 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %64 = ptrtoint ptr %nr232 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr232, align 4
  %state234 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 4
  %66 = ptrtoint ptr %state234 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state234, align 4
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name229, i32 noundef %65, i32 noundef %67) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr.i, align 4
  %add.i421 = add i32 %69, 136
  %and.i422 = and i32 %add.i421, 1048575
  %add1.i423 = or i32 %and.i422, -18874368
  %70 = inttoptr i32 %add1.i423 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 33) #8, !srcloc !370
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 17
  %71 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_skb, align 4
  %tobool237.not = icmp eq ptr %72, null
  br i1 %tobool237.not, label %do.end227.cleanup.sink.split_crit_edge, label %if.then238

do.end227.cleanup.sink.split_crit_edge:           ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then238:                                       ; preds = %do.end227
  %Flags240 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 2
  %73 = ptrtoint ptr %Flags240 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %Flags240, align 4
  %75 = and i32 %74, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool242.not = icmp eq i32 %75, 0
  br i1 %tobool242.not, label %if.then243, label %if.then238.cleanup.sink.split_crit_edge

if.then238.cleanup.sink.split_crit_edge:          ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then243:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 20
  %76 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tx_idx, align 4
  br label %cleanup.sink.split

if.end253.critedge:                               ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @send_next(ptr noundef %arrayidx)
  br label %if.end253

if.end253:                                        ; preds = %if.end253.critedge, %if.end189.if.end253_crit_edge
  %and255 = and i32 %conv4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end253.cleanup_crit_edge, label %do.end260

if.end253.cleanup_crit_edge:                      ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end260:                                        ; preds = %if.end253
  %name262 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %nr265 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 1
  %77 = ptrtoint ptr %nr265 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr265, align 4
  %state267 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 4
  %79 = ptrtoint ptr %state267 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state267, align 4
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name262, i32 noundef %78, i32 noundef %80) #11
  %tx_skb270 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 17
  %81 = ptrtoint ptr %tx_skb270 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx_skb270, align 4
  %tobool271.not = icmp eq ptr %82, null
  %Flags283 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 2
  %83 = ptrtoint ptr %Flags283 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %Flags283, align 4
  br i1 %tobool271.not, label %if.else281, label %if.then272

if.then272:                                       ; preds = %do.end260
  %85 = and i32 %84, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool276.not = icmp eq i32 %85, 0
  br i1 %tobool276.not, label %if.then277, label %if.then272.cleanup.sink.split_crit_edge

if.then272.cleanup.sink.split_crit_edge:          ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then277:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #10
  %tx_idx279 = getelementptr inbounds %struct.bchannel, ptr %arrayidx, i32 0, i32 20
  %86 = ptrtoint ptr %tx_idx279 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %tx_idx279, align 4
  br label %cleanup.sink.split

if.else281:                                       ; preds = %do.end260
  %87 = and i32 %84, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool285.not = icmp eq i32 %87, 0
  br i1 %tobool285.not, label %if.else281.cleanup.sink.split_crit_edge, label %if.then286

if.else281.cleanup.sink.split_crit_edge:          ; preds = %if.else281
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then286:                                       ; preds = %if.else281
  call void @__sanitizer_cov_trace_pc() #10
  %call289 = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %Flags283) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then286, %if.else281.cleanup.sink.split_crit_edge, %if.then277, %if.then272.cleanup.sink.split_crit_edge, %if.then243, %if.then238.cleanup.sink.split_crit_edge, %do.end227.cleanup.sink.split_crit_edge
  tail call fastcc void @send_next(ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end253.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_rxD(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr.i, align 8
  %add.i = add i32 %1, 40
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_rxD.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_rxD, %if.then9)) #8
          to label %if.end10 [label %if.then9], !srcloc !371

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_rxD.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.98, ptr noundef %name) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body, %if.then.if.end10_crit_edge
  %and12 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end33_crit_edge, label %do.body15

if.end10.if.end33_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.body15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_rxD.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_rxD, %if.then27)) #8
          to label %if.end33 [label %if.then27], !srcloc !371

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %name28 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_rxD.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.99, ptr noundef %name28) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %do.body15, %if.end10.if.end33_crit_edge
  %and35 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end56_crit_edge, label %do.body38

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_rxD.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_rxD, %if.then50)) #8
          to label %if.end56 [label %if.then50], !srcloc !371

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %name51 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_rxD.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.100, ptr noundef %name51) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %do.body38, %if.end33.if.end56_crit_edge
  %rx_skb = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 9
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  tail call void @consume_skb(ptr noundef %5) #8
  %6 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_skb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %add.i87 = add i32 %8, 8
  %and.i88 = and i32 %add.i87, 1048575
  %add1.i89 = or i32 %and.i88, -18874368
  %9 = inttoptr i32 %add1.i89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -64) #8, !srcloc !370
  br label %if.end66

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %add.i91 = add i32 %11, 72
  %and.i92 = and i32 %add.i91, 1048575
  %add1.i93 = or i32 %and.i92, -18874368
  %12 = inttoptr i32 %add1.i93 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %14 = and i8 %13, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp eq i8 %14, 0
  %narrow = select i1 %cmp, i8 64, i8 %14
  %spec.store.select = zext i8 %narrow to i32
  tail call fastcc void @W6692_empty_Dfifo(ptr noundef %card, i32 noundef %spec.store.select)
  %dch65 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15
  tail call void @recv_Dchannel(ptr noundef %dch65) #8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.end56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @W6692_empty_Dfifo(ptr noundef %card, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_empty_Dfifo.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_empty_Dfifo, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_empty_Dfifo.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.102, ptr noundef %name, i32 noundef %count) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx_skb = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 9
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end20_crit_edge

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then5:                                         ; preds = %do.end
  %maxlen = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 10
  %2 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxlen, align 8
  %add.i = add i32 %3, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end14, label %mI_alloc_skb.exit, !prof !372

mI_alloc_skb.exit:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %8 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %rx_skb, align 4
  br label %if.end20

do.end14:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rx_skb, align 4
  %name16 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 5
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %add.i108 = add i32 %11, 8
  %and.i = and i32 %add.i108, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -128) #8, !srcloc !370
  br label %cleanup

if.end20:                                         ; preds = %mI_alloc_skb.exit, %do.end.if.end20_crit_edge
  %13 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add = add i32 %16, %count
  %maxlen22 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 10
  %17 = ptrtoint ptr %maxlen22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxlen22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %18)
  %cmp.not = icmp ult i32 %add, %18
  br i1 %cmp.not, label %if.end45, label %do.body24

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_empty_Dfifo.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_empty_Dfifo, %if.then36)) #8
          to label %do.end44 [label %if.then36], !srcloc !371

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %name37 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %19 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_skb, align 4
  %len40 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %len40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len40, align 4
  %add41 = add i32 %22, %count
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_empty_Dfifo.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.104, ptr noundef %name37, i32 noundef %add41) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then36, %do.body24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %addr.i109 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 5
  %23 = ptrtoint ptr %addr.i109 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i109, align 8
  %add.i110 = add i32 %24, 8
  %and.i111 = and i32 %add.i110, 1048575
  %add1.i112 = or i32 %and.i111, -18874368
  %25 = inttoptr i32 %add1.i112 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 -128) #8, !srcloc !370
  br label %cleanup

if.end45:                                         ; preds = %if.end20
  %call47 = tail call ptr @skb_put(ptr noundef %14, i32 noundef %count) #8
  %addr = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 5
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 8
  %and = and i32 %27, 1048575
  %add49 = or i32 %and, -18874368
  %28 = inttoptr i32 %add49 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %28, ptr noundef %call47, i32 noundef %count) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr, align 8
  %add.i114 = add i32 %30, 8
  %and.i115 = and i32 %add.i114, 1048575
  %add1.i116 = or i32 %and.i115, -18874368
  %31 = inttoptr i32 %add1.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 -128) #8, !srcloc !370
  %32 = load i32, ptr @debug, align 4
  %and51 = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end45.cleanup_crit_edge, label %if.then53

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %log = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 16
  %name55 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %call57 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 63, ptr noundef nonnull @.str.105, ptr noundef %name55, i32 noundef %count)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_empty_Dfifo.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_empty_Dfifo, %if.then70)) #8
          to label %cleanup [label %if.then70], !srcloc !371

if.then70:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %call47, i32 noundef %count, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.then53, %if.end45.cleanup_crit_edge, %do.end44, %do.end14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_statusD(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr.i, align 8
  %add.i = add i32 %1, 28
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.107, ptr noundef %name, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv5 = zext i8 %3 to i32
  %and = and i32 %conv5, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.if.end26_crit_edge, label %do.body8

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then20)) #8
          to label %do.end25 [label %if.then20], !srcloc !371

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %name21 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.108, ptr noundef %name21) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.body8
  %dch1.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15
  %Flags.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 1
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end25.if.end.i_crit_edge, label %if.then.i

do.end25.if.end.i_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 8
  %call2.i = tail call i32 @del_timer(ptr noundef %timer.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end25.if.end.i_crit_edge
  %4 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %Flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.end.i.if.end26.sink.split.sink.split.i_crit_edge

if.end.i.if.end26.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %tx_skb.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 13
  %6 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_skb.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  %name18.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  br i1 %tobool7.not.i, label %do.end16.i, label %do.end.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name18.i, ptr noundef nonnull @.str.117) #11
  %call11.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %Flags.i) #8
  br label %if.end26.sink.split.sink.split.i

do.end16.i:                                       ; preds = %if.else.i
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name18.i) #11
  %call21.i = tail call i32 @get_next_dframe(ptr noundef %dch1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %do.end16.i.if.end26_crit_edge, label %do.end16.i.if.end26.sink.split.i_crit_edge

do.end16.i.if.end26.sink.split.i_crit_edge:       ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split.i

do.end16.i.if.end26_crit_edge:                    ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26.sink.split.sink.split.i:                 ; preds = %do.end.i, %if.end.i.if.end26.sink.split.sink.split.i_crit_edge
  %tx_idx.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 14
  %8 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_idx.i, align 8
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.end26.sink.split.sink.split.i, %do.end16.i.if.end26.sink.split.i_crit_edge
  tail call fastcc void @W6692_fill_Dfifo(ptr noundef %card) #8
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split.i, %do.end16.i.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %and28 = and i32 %conv5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end49_crit_edge, label %do.body31

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body31:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then43)) #8
          to label %do.end48 [label %if.then43], !srcloc !371

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %name44 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.98, ptr noundef %name44) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %add.i290 = add i32 %10, 8
  %and.i291 = and i32 %add.i290, 1048575
  %add1.i292 = or i32 %and.i291, -18874368
  %11 = inttoptr i32 %add1.i292 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 64) #8, !srcloc !370
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %if.end26.if.end49_crit_edge
  %and51 = and i32 %conv5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end72_crit_edge, label %do.body54

if.end49.if.end72_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.body54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then66)) #8
          to label %if.end72 [label %if.then66], !srcloc !371

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %name67 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.109, ptr noundef %name67) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %do.body54, %if.end49.if.end72_crit_edge
  %and74 = and i32 %conv5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.end97_crit_edge, label %if.then76

if.end72.if.end97_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %add.i294 = add i32 %13, 116
  %and.i295 = and i32 %add.i294, 1048575
  %add1.i296 = or i32 %and.i295, -18874368
  %14 = inttoptr i32 %add1.i296 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then90)) #8
          to label %if.end97 [label %if.then90], !srcloc !371

if.then90:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %name91 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %conv93 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.110, ptr noundef %name91, i32 noundef %conv93) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %if.then76, %if.end72.if.end97_crit_edge
  %and99 = and i32 %conv5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end97.if.end180_crit_edge, label %if.then101

if.end97.if.end180_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then101:                                       ; preds = %if.end97
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %add.i298 = add i32 %17, 88
  %and.i299 = and i32 %add.i298, 1048575
  %add1.i300 = or i32 %and.i299, -18874368
  %18 = inttoptr i32 %add1.i300 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then115)) #8
          to label %do.end121 [label %if.then115], !srcloc !371

if.then115:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %name116 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %conv118 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.111, ptr noundef %name116, i32 noundef %conv118) #8
  br label %do.end121

do.end121:                                        ; preds = %if.then115, %if.then101
  %conv122 = zext i8 %19 to i32
  %and123 = and i32 %conv122, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %do.end121.if.end154_crit_edge, label %if.then125

do.end121.if.end154_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then125:                                       ; preds = %do.end121
  %and127 = and i8 %19, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then141)) #8
          to label %do.end147 [label %if.then141], !srcloc !371

if.then141:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %name142 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %state = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  %conv144 = zext i8 %and127 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.112, ptr noundef %name142, i32 noundef %21, i32 noundef %conv144) #8
  br label %do.end147

do.end147:                                        ; preds = %if.then141, %if.then125
  %state148 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 13
  %22 = ptrtoint ptr %state148 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %and127, ptr %state148, align 4
  %fmask = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 6
  %23 = ptrtoint ptr %fmask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmask, align 4
  %25 = load i32, ptr @led, align 4
  %and149 = and i32 %25, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %do.end147.if.end153_crit_edge, label %if.then151

do.end147.if.end153_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then151:                                       ; preds = %do.end147
  %26 = and i8 %19, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %26)
  %switch = icmp eq i8 %26, 12
  %subtype.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 7
  %27 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i = icmp eq i32 %28, 2
  br i1 %switch, label %lor.lhs.false.i, label %lor.lhs.false.i309

lor.lhs.false.i:                                  ; preds = %if.then151
  br i1 %cmp.i, label %lor.lhs.false.i.if.end153_crit_edge, label %if.end.i303

lor.lhs.false.i.if.end153_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.end.i303:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %xdata6.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 12
  %29 = ptrtoint ptr %xdata6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %xdata6.i, align 1
  %31 = and i8 %30, -5
  store i8 %31, ptr %xdata6.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i, align 8
  %add.i.i = add i32 %33, 248
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %34 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %31) #8, !srcloc !370
  br label %if.end153

lor.lhs.false.i309:                               ; preds = %if.then151
  br i1 %cmp.i, label %lor.lhs.false.i309.if.end153_crit_edge, label %if.end.i311

lor.lhs.false.i309.if.end153_crit_edge:           ; preds = %lor.lhs.false.i309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.end.i311:                                      ; preds = %lor.lhs.false.i309
  call void @__sanitizer_cov_trace_pc() #10
  %xdata6.i310 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 12
  %35 = ptrtoint ptr %xdata6.i310 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %xdata6.i310, align 1
  %37 = or i8 %36, 4
  store i8 %37, ptr %xdata6.i310, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 8
  %add.i19.i = add i32 %39, 248
  %and.i20.i = and i32 %add.i19.i, 1048575
  %add1.i21.i = or i32 %and.i20.i, -18874368
  %40 = inttoptr i32 %add1.i21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %37) #8, !srcloc !370
  br label %if.end153

if.end153:                                        ; preds = %if.end.i311, %lor.lhs.false.i309.if.end153_crit_edge, %if.end.i303, %lor.lhs.false.i.if.end153_crit_edge, %do.end147.if.end153_crit_edge
  %41 = ptrtoint ptr %state148 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %state148, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp.i314 = icmp eq i8 %42, 1
  br i1 %cmp.i314, label %if.then.i315, label %if.end153.W6692_new_ph.exit_crit_edge

if.end153.W6692_new_ph.exit_crit_edge:            ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %W6692_new_ph.exit

if.then.i315:                                     ; preds = %if.end153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ph_command.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then.i.i)) #8
          to label %ph_command.exit.i [label %if.then.i.i], !srcloc !371

if.then.i.i:                                      ; preds = %if.then.i315
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ph_command.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.122, ptr noundef %name.i.i, i32 noundef 15) #8
  br label %ph_command.exit.i

ph_command.exit.i:                                ; preds = %if.then.i.i, %if.then.i315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr.i, align 8
  %add.i.i.i = add i32 %44, 92
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %45 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 15) #8, !srcloc !370
  br label %W6692_new_ph.exit

W6692_new_ph.exit:                                ; preds = %ph_command.exit.i, %if.end153.W6692_new_ph.exit_crit_edge
  %Flags.i316 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 1
  %call.i317 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags.i316) #8
  %workq.i = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 15, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %workq.i) #8
  br label %if.end154

if.end154:                                        ; preds = %W6692_new_ph.exit, %do.end121.if.end154_crit_edge
  %and156 = and i32 %conv122, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end154.if.end180_crit_edge, label %if.then158

if.end154.if.end180_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i, align 8
  %add.i319 = add i32 %48, 96
  %and.i320 = and i32 %add.i319, 1048575
  %add1.i321 = or i32 %and.i320, -18874368
  %49 = inttoptr i32 %add1.i321 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then172)) #8
          to label %if.end180 [label %if.then172], !srcloc !371

if.then172:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %name173 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  %conv175 = zext i8 %50 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.113, ptr noundef %name173, i32 noundef %conv175) #8
  br label %if.end180

if.end180:                                        ; preds = %if.then172, %if.then158, %if.end154.if.end180_crit_edge, %if.end97.if.end180_crit_edge
  %and182 = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end180.if.end203_crit_edge, label %do.body185

if.end180.if.end203_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

do.body185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then197)) #8
          to label %if.end203 [label %if.then197], !srcloc !371

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  %name198 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.114, ptr noundef %name198) #8
  br label %if.end203

if.end203:                                        ; preds = %if.then197, %do.body185, %if.end180.if.end203_crit_edge
  %and205 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.end203.if.end226_crit_edge, label %do.body208

if.end203.if.end226_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

do.body208:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_statusD.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_statusD, %if.then220)) #8
          to label %if.end226 [label %if.then220], !srcloc !371

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #10
  %name221 = getelementptr inbounds %struct.w6692_hw, ptr %card, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_statusD.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.115, ptr noundef %name221) #8
  br label %if.end226

if.end226:                                        ; preds = %if.then220, %do.body208, %if.end203.if.end226_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @W6692_empty_Bfifo(ptr noundef %wch, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_empty_Bfifo.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_empty_Bfifo, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !371

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_empty_Bfifo.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.93, ptr noundef %name, i32 noundef %count) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body11, label %if.end35, !prof !372

do.body11:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_empty_Bfifo.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_empty_Bfifo, %if.then23)) #8
          to label %do.end28 [label %if.then23], !srcloc !371

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %name24 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @W6692_empty_Bfifo.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.94, ptr noundef %name24) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %5, 136
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -96) #8, !srcloc !370
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 9
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb, align 4
  %tobool30.not = icmp eq ptr %8, null
  br i1 %tobool30.not, label %do.end28.cleanup_crit_edge, label %if.then31

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef nonnull %8, i32 noundef 0) #8
  br label %cleanup

if.end35:                                         ; preds = %do.end
  %Flags = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %9 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %Flags, align 4
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool38.not = icmp eq i32 %11, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %dropcnt = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 25
  %12 = ptrtoint ptr %dropcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dropcnt, align 4
  %add = add i32 %13, %count
  store i32 %add, ptr %dropcnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i134 = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i134 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i134, align 4
  %add.i135 = add i32 %15, 136
  %and.i136 = and i32 %add.i135, 1048575
  %add1.i137 = or i32 %and.i136, -18874368
  %16 = inttoptr i32 %add1.i137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -96) #8, !srcloc !370
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %call43 = tail call i32 @bchannel_get_rxbuf(ptr noundef %wch, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end61

if.then45:                                        ; preds = %if.end41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %addr.i138 = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i138 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i138, align 4
  %add.i139 = add i32 %18, 136
  %and.i140 = and i32 %add.i139, 1048575
  %add1.i141 = or i32 %and.i140, -18874368
  %19 = inttoptr i32 %add1.i141 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -96) #8, !srcloc !370
  %rx_skb47 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 9
  %20 = ptrtoint ptr %rx_skb47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_skb47, align 4
  %tobool48.not = icmp eq ptr %21, null
  br i1 %tobool48.not, label %if.then45.do.end55_crit_edge, label %if.then49

if.then45.do.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef nonnull %21, i32 noundef 0) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %if.then45.do.end55_crit_edge
  %name57 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 1
  %22 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name57, i32 noundef %23, i32 noundef %count) #11
  br label %cleanup

if.end61:                                         ; preds = %if.end41
  %rx_skb63 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 9
  %24 = ptrtoint ptr %rx_skb63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_skb63, align 4
  %call64 = tail call ptr @skb_put(ptr noundef %25, i32 noundef %count) #8
  %addr = getelementptr inbounds %struct.w6692_ch, ptr %wch, i32 0, i32 1
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 4
  %add65 = add i32 %27, 128
  %and = and i32 %add65, 1048575
  %add66 = or i32 %and, -18874368
  %28 = inttoptr i32 %add66 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %28, ptr noundef %call64, i32 noundef %count) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr, align 4
  %add.i143 = add i32 %30, 136
  %and.i144 = and i32 %add.i143, 1048575
  %add1.i145 = or i32 %and.i144, -18874368
  %31 = inttoptr i32 %add1.i145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 -96) #8, !srcloc !370
  %32 = load i32, ptr @debug, align 4
  %and68 = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end61.cleanup_crit_edge, label %if.then70

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %log = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 16
  %nr73 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 1
  %33 = ptrtoint ptr %nr73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr73, align 4
  %name74 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %call76 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 63, ptr noundef nonnull @.str.96, i32 noundef %34, ptr noundef %name74, i32 noundef %count)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @W6692_empty_Bfifo.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@W6692_empty_Bfifo, %if.then89)) #8
          to label %cleanup [label %if.then89], !srcloc !371

if.then89:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %call64, i32 noundef %count, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.then70, %if.end61.cleanup_crit_edge, %do.end55, %if.then39, %if.then31, %do.end28.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Bchannel(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_next(ptr noundef %wch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 17
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 20
  %2 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_idx, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @W6692_fill_Bfifo(ptr noundef %wch)
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @consume_skb(ptr noundef %1) #8
  %call = tail call i32 @get_next_bframe(ptr noundef %wch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @W6692_fill_Bfifo(ptr noundef %wch)
  %Flags = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %Flags) #8
  br label %if.end18

if.else11:                                        ; preds = %if.else
  %Flags13 = getelementptr inbounds %struct.bchannel, ptr %wch, i32 0, i32 2
  %6 = ptrtoint ptr %Flags13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %Flags13, align 4
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %if.else11.if.end18_crit_edge, label %if.then16

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @W6692_fill_Bfifo(ptr noundef %wch)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else11.if.end18_crit_edge, %if.then8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_get_rxbuf(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_bframe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Dchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_dframe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbusy_timer_handler(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %Flags = getelementptr i8, ptr %t, i32 -68
  %2 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %Flags, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %do.body1

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %addr.i = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i, align 8
  %add.i = add i32 %6, 68
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %add.i54 = add i32 %10, 36
  %and.i55 = and i32 %add.i54, 1048575
  %add1.i56 = or i32 %and.i55, -18874368
  %11 = inttoptr i32 %add1.i56 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %conv10 = zext i8 %12 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbusy_timer_handler.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbusy_timer_handler, %if.then17)) #8
          to label %do.end19 [label %if.then17], !srcloc !371

if.then17:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %conv8 = zext i8 %8 to i32
  %name = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dbusy_timer_handler.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.127, ptr noundef %name, i32 noundef %conv8, i32 noundef %conv10) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then17, %do.body1
  %and = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %Flags) #8
  br label %if.end38

if.else:                                          ; preds = %do.end19
  %call25 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags) #8
  %tx_idx = getelementptr i8, ptr %t, i32 172
  %13 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool26.not = icmp eq i32 %14, 0
  br i1 %tobool26.not, label %do.end32, label %if.then27

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_idx, align 8
  br label %if.end37

do.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %name34 = getelementptr inbounds %struct.w6692_hw, ptr %1, i32 0, i32 2
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name34) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end32, %if.then27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %add.i58 = add i32 %17, 8
  %and.i59 = and i32 %add.i58, 1048575
  %add1.i60 = or i32 %and.i59, -18874368
  %18 = inttoptr i32 %add1.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 1) #8, !srcloc !370
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !135, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !187, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !222, !223, !225, !226, !228, !230, !231, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !251, !252, !253, !255, !257, !259, !260, !261, !263, !264, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !280, !282, !284, !285, !286, !288, !289, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !350, !351, !352, !353, !355, !356, !357}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 103, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 104, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version462, !6, !"__UNIQUE_ID_version462", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 105, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 106, i32 1}
!13 = !{ptr @__UNIQUE_ID_debug463, !14, !"__UNIQUE_ID_debug463", i1 false, i1 false}
!14 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 107, i32 1}
!15 = !{ptr @__param_led, !16, !"__param_led", i1 false, i1 false}
!16 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 108, i32 1}
!17 = !{ptr @__UNIQUE_ID_ledtype464, !16, !"__UNIQUE_ID_ledtype464", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_led465, !19, !"__UNIQUE_ID_led465", i1 false, i1 false}
!19 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 109, i32 1}
!20 = !{ptr @__param_pots, !21, !"__param_pots", i1 false, i1 false}
!21 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 110, i32 1}
!22 = !{ptr @__UNIQUE_ID_potstype466, !21, !"__UNIQUE_ID_potstype466", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_pots467, !24, !"__UNIQUE_ID_pots467", i1 false, i1 false}
!24 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 111, i32 1}
!25 = !{ptr @__initcall__kmod_w6692__514_1415_w6692_init6, !26, !"__initcall__kmod_w6692__514_1415_w6692_init6", i1 false, i1 false}
!26 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1415, i32 1}
!27 = !{ptr @__exitcall_w6692_cleanup, !28, !"__exitcall_w6692_cleanup", i1 false, i1 false}
!28 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1416, i32 1}
!29 = !{ptr @debug, !30, !"debug", i1 false, i1 false}
!30 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 75, i32 12}
!31 = !{ptr @led, !32, !"led", i1 false, i1 false}
!32 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 76, i32 12}
!33 = !{ptr @pots, !34, !"pots", i1 false, i1 false}
!34 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 77, i32 12}
!35 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!36 = !{ptr @__param_ops_debug, !12, !"__param_ops_debug", i1 false, i1 false}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 72, i32 8}
!39 = !{ptr @card_lock, !38, !"card_lock", i1 false, i1 false}
!40 = !{ptr @Cards, !41, !"Cards", i1 false, i1 false}
!41 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 71, i32 8}
!42 = !{ptr @__param_str_led, !16, !"__param_str_led", i1 false, i1 false}
!43 = !{ptr @__param_str_pots, !21, !"__param_str_pots", i1 false, i1 false}
!44 = !{ptr @w6692_driver, !45, !"w6692_driver", i1 false, i1 false}
!45 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1393, i32 26}
!46 = !{ptr @w6692_ids, !47, !"w6692_ids", i1 false, i1 false}
!47 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1381, i32 35}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 37, i32 15}
!50 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 38, i32 18}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 39, i32 14}
!54 = !{ptr @w6692_map, !55, !"w6692_map", i1 false, i1 false}
!55 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 35, i32 31}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1346, i32 3}
!58 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @w6692_probe._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @w6692_probe._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1357, i32 2}
!64 = !{ptr @w6692_probe._entry.10, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @w6692_probe._entry_ptr.12, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1278, i32 44}
!68 = !{ptr @setup_instance.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1284, i32 2}
!70 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1317, i32 3}
!73 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @setup_instance._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @setup_instance._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @w6692_cnt, !77, !"w6692_cnt", i1 false, i1 false}
!77 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 74, i32 12}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 234, i32 3}
!80 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @W6692_ph_bh.__UNIQUE_ID_ddebug469, !79, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 238, i32 2}
!84 = !{ptr @W6692_ph_bh.__UNIQUE_ID_ddebug470, !83, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 280, i32 2}
!87 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @W6692_fill_Dfifo.__UNIQUE_ID_ddebug474, !86, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 295, i32 3}
!91 = !{ptr @W6692_fill_Dfifo.__UNIQUE_ID_ddebug475, !90, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 301, i32 27}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 303, i32 3}
!96 = !{ptr @W6692_fill_Dfifo.__UNIQUE_ID_ddebug476, !95, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!97 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1184, i32 2}
!100 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @w6692_dctrl.__UNIQUE_ID_ddebug511, !99, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1195, i32 4}
!104 = !{ptr @w6692_dctrl._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @w6692_dctrl._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1198, i32 3}
!108 = !{ptr @w6692_dctrl.__UNIQUE_ID_ddebug512, !107, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!109 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1206, i32 3}
!111 = !{ptr @w6692_dctrl.__UNIQUE_ID_ddebug513, !110, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1160, i32 2}
!114 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @open_dchannel.__UNIQUE_ID_ddebug510, !113, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1016, i32 3}
!118 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @channel_ctrl._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @channel_ctrl._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.35, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 971, i32 3}
!123 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @w6692_l2l1B._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @w6692_l2l1B._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 490, i32 2}
!128 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @W6692_fill_Bfifo.__UNIQUE_ID_ddebug493, !127, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!130 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 508, i32 2}
!132 = !{ptr @W6692_fill_Bfifo.__UNIQUE_ID_ddebug494, !131, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!133 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 521, i32 27}
!135 = !{ptr @W6692_fill_Bfifo.__UNIQUE_ID_ddebug495, !136, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!136 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 523, i32 3}
!137 = !{ptr @.str.41, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 592, i32 2}
!139 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @w6692_mode.__UNIQUE_ID_ddebug496, !138, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!141 = !{ptr @.str.43, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 624, i32 3}
!143 = !{ptr @w6692_mode._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @w6692_mode._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1032, i32 2}
!147 = !{ptr @.str.45, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @w6692_bctrl.__UNIQUE_ID_ddebug507, !146, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!149 = !{ptr @.str.46, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1050, i32 3}
!151 = !{ptr @w6692_bctrl._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @w6692_bctrl._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.47, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1218, i32 3}
!155 = !{ptr @.str.48, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @setup_w6692._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @setup_w6692._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1227, i32 3}
!160 = !{ptr @setup_w6692._entry.49, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @setup_w6692._entry_ptr.51, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1230, i32 3}
!164 = !{ptr @setup_w6692._entry.52, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @setup_w6692._entry_ptr.54, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1233, i32 3}
!168 = !{ptr @setup_w6692._entry.55, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @setup_w6692._entry_ptr.57, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.59, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1236, i32 3}
!172 = !{ptr @setup_w6692._entry.58, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @setup_w6692._entry_ptr.60, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.62, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1239, i32 3}
!176 = !{ptr @setup_w6692._entry.61, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @setup_w6692._entry_ptr.63, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.64, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 157, i32 2}
!180 = !{ptr @.str.65, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @W6692Version._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @W6692Version._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.66, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 149, i32 34}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 149, i32 41}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 149, i32 48}
!189 = !{ptr @.str.69, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 149, i32 55}
!191 = !{ptr @W6692Ver, !192, !"W6692Ver", i1 false, i1 false}
!192 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 149, i32 20}
!193 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 905, i32 3}
!195 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @init_card._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @init_card._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 917, i32 4}
!200 = !{ptr @init_card._entry.72, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @init_card._entry_ptr.74, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 920, i32 4}
!204 = !{ptr @init_card._entry.75, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @init_card._entry_ptr.77, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.78, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 780, i32 2}
!208 = !{ptr @.str.79, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @w6692_irq.__UNIQUE_ID_ddebug504, !207, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!210 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 795, i32 3}
!212 = !{ptr @w6692_irq.__UNIQUE_ID_ddebug505, !211, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!213 = !{ptr @.str.81, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 655, i32 2}
!215 = !{ptr @.str.82, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @W6692B_interrupt.__UNIQUE_ID_ddebug497, !214, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!217 = !{ptr @.str.83, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 661, i32 5}
!219 = !{ptr @W6692B_interrupt.__UNIQUE_ID_ddebug498, !218, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!220 = !{ptr @.str.84, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 669, i32 6}
!222 = !{ptr @W6692B_interrupt.__UNIQUE_ID_ddebug499, !221, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!223 = !{ptr @.str.85, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 676, i32 6}
!225 = !{ptr @W6692B_interrupt.__UNIQUE_ID_ddebug500, !224, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!226 = !{ptr @W6692B_interrupt.__UNIQUE_ID_ddebug501, !227, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!227 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 700, i32 4}
!228 = !{ptr @.str.86, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 716, i32 4}
!230 = !{ptr @W6692B_interrupt.__UNIQUE_ID_ddebug502, !229, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!231 = !{ptr @.str.87, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 728, i32 4}
!233 = !{ptr @W6692B_interrupt.__UNIQUE_ID_ddebug503, !232, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!234 = !{ptr @.str.88, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 732, i32 4}
!236 = !{ptr @W6692B_interrupt._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @W6692B_interrupt._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.90, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 750, i32 3}
!240 = !{ptr @W6692B_interrupt._entry.89, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @W6692B_interrupt._entry_ptr.91, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.92, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 451, i32 2}
!244 = !{ptr @.str.93, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @W6692_empty_Bfifo.__UNIQUE_ID_ddebug490, !243, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!246 = !{ptr @.str.94, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 453, i32 3}
!248 = !{ptr @W6692_empty_Bfifo.__UNIQUE_ID_ddebug491, !247, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!249 = !{ptr @.str.95, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 469, i32 3}
!251 = !{ptr @W6692_empty_Bfifo._entry, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @W6692_empty_Bfifo._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.96, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 477, i32 27}
!255 = !{ptr @W6692_empty_Bfifo.__UNIQUE_ID_ddebug492, !256, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!256 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 479, i32 3}
!257 = !{ptr @.str.97, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 342, i32 4}
!259 = !{ptr @.str.98, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @handle_rxD.__UNIQUE_ID_ddebug477, !258, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!261 = !{ptr @.str.99, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 348, i32 4}
!263 = !{ptr @handle_rxD.__UNIQUE_ID_ddebug478, !262, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!264 = !{ptr @.str.100, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 354, i32 4}
!266 = !{ptr @handle_rxD.__UNIQUE_ID_ddebug479, !265, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!267 = !{ptr @.str.101, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 247, i32 2}
!269 = !{ptr @.str.102, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @W6692_empty_Dfifo.__UNIQUE_ID_ddebug471, !268, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!271 = !{ptr @.str.103, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 251, i32 4}
!273 = !{ptr @W6692_empty_Dfifo._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @W6692_empty_Dfifo._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.104, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 257, i32 3}
!277 = !{ptr @W6692_empty_Dfifo.__UNIQUE_ID_ddebug472, !276, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!278 = !{ptr @.str.105, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 266, i32 27}
!280 = !{ptr @W6692_empty_Dfifo.__UNIQUE_ID_ddebug473, !281, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!281 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 268, i32 3}
!282 = !{ptr @.str.106, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 392, i32 2}
!284 = !{ptr @.str.107, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug480, !283, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!286 = !{ptr @.str.108, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 395, i32 3}
!288 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug481, !287, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!289 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug482, !290, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!290 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 402, i32 3}
!291 = !{ptr @.str.109, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 406, i32 3}
!293 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug483, !292, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!294 = !{ptr @.str.110, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 409, i32 3}
!296 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug484, !295, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!297 = !{ptr @.str.111, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 414, i32 3}
!299 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug485, !298, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!300 = !{ptr @.str.112, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 417, i32 4}
!302 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug486, !301, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!303 = !{ptr @.str.113, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 435, i32 4}
!305 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug487, !304, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!306 = !{ptr @.str.114, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 439, i32 3}
!308 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug488, !307, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!309 = !{ptr @.str.115, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 441, i32 3}
!311 = !{ptr @handle_statusD.__UNIQUE_ID_ddebug489, !310, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!312 = !{ptr @.str.116, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 323, i32 3}
!314 = !{ptr @.str.117, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @d_retransmit._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @d_retransmit._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.119, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 328, i32 3}
!319 = !{ptr @d_retransmit._entry.118, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @d_retransmit._entry_ptr.120, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.121, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 178, i32 2}
!323 = !{ptr @.str.122, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @ph_command.__UNIQUE_ID_ddebug468, !322, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!325 = !{ptr @initW6692.__key, !326, !"__key", i1 false, i1 false}
!326 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 836, i32 2}
!327 = !{ptr @.str.123, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.124, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 881, i32 5}
!330 = !{ptr @.str.125, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @initW6692._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @initW6692._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.126, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 813, i32 3}
!335 = !{ptr @.str.127, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @dbusy_timer_handler.__UNIQUE_ID_ddebug506, !334, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!337 = !{ptr @.str.128, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 823, i32 5}
!339 = !{ptr @dbusy_timer_handler._entry, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @dbusy_timer_handler._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.129, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1100, i32 2}
!343 = !{ptr @.str.130, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @w6692_l1callback.__UNIQUE_ID_ddebug508, !342, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!345 = !{ptr @.str.131, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1150, i32 3}
!347 = !{ptr @w6692_l1callback.__UNIQUE_ID_ddebug509, !346, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!348 = !{ptr @.str.132, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1378, i32 4}
!350 = !{ptr @.str.133, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @w6692_remove_pci._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @w6692_remove_pci._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.134, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/isdn/hardware/mISDN/w6692.c", i32 1404, i32 2}
!355 = !{ptr @.str.135, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @w6692_init._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @w6692_init._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{i64 4232342}
!368 = !{i64 2157223818}
!369 = !{i64 2157224209}
!370 = !{i64 4231947}
!371 = !{i64 2148751336, i64 2148751341, i64 2148751354, i64 2148751398, i64 2148751432, i64 2148751453}
!372 = !{!"branch_weights", i32 1, i32 2000}
!373 = !{i64 2157225190}
!374 = !{i64 2157224801}
