; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/avmfritz.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/avmfritz.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fritzcard = type { %struct.list_head, ptr, [20 x i8], i8, i8, i16, i32, i32, %struct.spinlock, %struct.isac_hw, [2 x %struct.hdlc_hw], [2 x %struct.bchannel], [64 x i8] }
%struct.isac_hw = type { %struct.dchannel, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.timer_list, %struct.wait_queue_head, i8, i8, i8, i8, i8 }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hdlc_hw = type { %union.anon.146, i32 }
%union.anon.146 = type { i32 }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.145 = type { ptr }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
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
%struct.hdlc_stat_reg = type { i8, i8, i8, i8 }

@__UNIQUE_ID_author459 = internal constant [29 x i8] c"avmfritz.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [51 x i8] c"avmfritz.file=drivers/isdn/hardware/mISDN/avmfritz\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [24 x i8] c"avmfritz.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version462 = internal constant [21 x i8] c"avmfritz.version=2.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avmfritz\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [15 x i8] c"avmfritz.debug\00", align 1
@__param_ops_debug = internal constant %struct.kernel_param_ops { i32 0, ptr @set_debug, ptr @param_get_uint, ptr null }, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @__param_ops_debug, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debug463 = internal constant [40 x i8] c"avmfritz.parm=debug:avmfritz debug mask\00", section ".modinfo", align 1
@fcpci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.4, ptr @fcpci_ids, ptr @fritzpci_probe, ptr @fritz_remove_pci, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_avmfritz__483_1162_AVM_init6 = internal global ptr @AVM_init, section ".initcall6.init", align 4
@__exitcall_AVM_cleanup = internal global ptr @AVM_cleanup, section ".exitcall.exit", align 4
@card_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@Cards = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @Cards, ptr @Cards }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fcpci\00", [26 x i8] zeroinitializer }, align 32
@fcpci_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4676, i32 2560, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.5 to i32), i32 0 }, %struct.pci_device_id { i32 4676, i32 3584, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @.str.6 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fritz!Card PCI\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Fritz!Card PCI v2\00", [46 x i8] zeroinitializer }, align 32
@fritzpci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016No kmem for fritzcard\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fritzpci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/isdn/hardware/mISDN/avmfritz.c\00", [57 x i8] zeroinitializer }, align 32
@fritzpci_probe._entry_ptr = internal global ptr @fritzpci_probe._entry, section ".printk_index", align 4
@fritzpci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015mISDN: found adapter %s at %s\0A\00", [63 x i8] zeroinitializer }, align 32
@fritzpci_probe._entry_ptr.12 = internal global ptr @fritzpci_probe._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AVM.%d\00", [25 x i8] zeroinitializer }, align 32
@AVM_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@setup_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.9, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015AVM %d cards installed DEBUG\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_instance\00", [17 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr = internal global ptr @setup_instance._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@avm_dctrl.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.9, ptr @.str.18, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avm_dctrl\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s cmd:%x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@avm_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.9, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: cannot get module\0A\00", [39 x i8] zeroinitializer }, align 32
@avm_dctrl._entry_ptr = internal global ptr @avm_dctrl._entry, section ".printk_index", align 4
@avm_dctrl.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.9, ptr @.str.20, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: dev(%d) close from %p\0A\00", [37 x i8] zeroinitializer }, align 32
@avm_dctrl.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.9, ptr @.str.21, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s unknown command %x\0A\00", [37 x i8] zeroinitializer }, align 32
@channel_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.9, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: %s unknown Op %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_ctrl\00", [19 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr = internal global ptr @channel_ctrl._entry, section ".printk_index", align 4
@hdlc_fill_fifo.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.9, ptr @.str.25, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdlc_fill_fifo\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s.B%d: %d/%d/%d\00", [47 x i8] zeroinitializer }, align 32
@hdlc_fill_fifo.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.9, ptr @.str.26, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s.B%d: fillempty %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-send %s %d \00", [47 x i8] zeroinitializer }, align 32
@hdlc_fill_fifo.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.9, ptr @.str.28, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@modehdlc.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.9, ptr @.str.31, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modehdlc\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: hdlc %c protocol %x-->%x ch %d\0A\00", [60 x i8] zeroinitializer }, align 32
@modehdlc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.9, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: protocol not known %x\0A\00", [35 x i8] zeroinitializer }, align 32
@modehdlc._entry_ptr = internal global ptr @modehdlc._entry, section ".printk_index", align 4
@write_ctrl.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.9, ptr @.str.34, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_ctrl\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: hdlc %c wr%x ctrl %x\0A\00", [38 x i8] zeroinitializer }, align 32
@avm_bctrl.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.9, ptr @.str.18, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avm_bctrl\00", [22 x i8] zeroinitializer }, align 32
@avm_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.35, ptr @.str.9, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s unknown prim(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@avm_bctrl._entry_ptr = internal global ptr @avm_bctrl._entry, section ".printk_index", align 4
@setup_fritz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.9, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: AVM config port %x-%x already in use\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setup_fritz\00", [20 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr = internal global ptr @setup_fritz._entry, section ".printk_index", align 4
@setup_fritz._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.9, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015%s: PCI stat %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.41 = internal global ptr @setup_fritz._entry.39, section ".printk_index", align 4
@setup_fritz._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.9, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: PCI Class %X Rev %d\0A\00", [37 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.44 = internal global ptr @setup_fritz._entry.42, section ".printk_index", align 4
@setup_fritz._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.9, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: HDLC version %x\0A\00", [41 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.47 = internal global ptr @setup_fritz._entry.45, section ".printk_index", align 4
@setup_fritz._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.9, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: PCI V2 stat %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.50 = internal global ptr @setup_fritz._entry.48, section ".printk_index", align 4
@setup_fritz._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.9, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: PCI V2 Class %X Rev %d\0A\00", [34 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.53 = internal global ptr @setup_fritz._entry.51, section ".printk_index", align 4
@setup_fritz._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.9, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.55 = internal global ptr @setup_fritz._entry.54, section ".printk_index", align 4
@setup_fritz._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.38, ptr @.str.9, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: AVM unknown type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.58 = internal global ptr @setup_fritz._entry.56, section ".printk_index", align 4
@setup_fritz._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.38, ptr @.str.9, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s: %s config irq:%d base:0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@setup_fritz._entry_ptr.61 = internal global ptr @setup_fritz._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AVM Fritz!CARD PCI\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AVM Fritz!CARD PCIv2\00", [43 x i8] zeroinitializer }, align 32
@init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.9, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: couldn't get interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_card\00", [22 x i8] zeroinitializer }, align 32
@init_card._entry_ptr = internal global ptr @init_card._entry, section ".printk_index", align 4
@init_card._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.9, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: ISAC init failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.68 = internal global ptr @init_card._entry.66, section ".printk_index", align 4
@init_card._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.9, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: IRQ %d count %d\0A\00", [41 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.71 = internal global ptr @init_card._entry.69, section ".printk_index", align 4
@init_card._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.9, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: IRQ(%d) getting no IRQs during init %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.74 = internal global ptr @init_card._entry.72, section ".printk_index", align 4
@reset_avm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.9, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\015%s: reset\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset_avm\00", [22 x i8] zeroinitializer }, align 32
@reset_avm._entry_ptr = internal global ptr @reset_avm._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@reset_avm._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.9, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\015%s: S0/S1 %x/%x\0A\00", [45 x i8] zeroinitializer }, align 32
@reset_avm._entry_ptr.79 = internal global ptr @reset_avm._entry.77, section ".printk_index", align 4
@avm_fritzv2_interrupt.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.9, ptr @.str.81, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"avm_fritzv2_interrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: irq stat0 %x\0A\00", [46 x i8] zeroinitializer }, align 32
@avm_fritzv2_interrupt.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.9, ptr @.str.82, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: timer irq\0A\00", [17 x i8] zeroinitializer }, align 32
@HDLC_irq_main.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.9, ptr @.str.84, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDLC_irq_main\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: spurious ch1 IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@HDLC_irq_main.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.9, ptr @.str.85, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: spurious ch2 IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@HDLC_irq.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.86, ptr @.str.9, ptr @.str.87, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDLC_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ch%d stat %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@HDLC_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.9, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: ch%d stat %x RDO\0A\00", [40 x i8] zeroinitializer }, align 32
@HDLC_irq._entry_ptr = internal global ptr @HDLC_irq._entry, section ".printk_index", align 4
@HDLC_irq._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.86, ptr @.str.9, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: got invalid frame\0A\00", [39 x i8] zeroinitializer }, align 32
@HDLC_irq._entry_ptr.91 = internal global ptr @HDLC_irq._entry.89, section ".printk_index", align 4
@HDLC_irq._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.86, ptr @.str.9, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: ch%d stat %x XDU %s\0A\00", [37 x i8] zeroinitializer }, align 32
@HDLC_irq._entry_ptr.94 = internal global ptr @HDLC_irq._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_skb\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no tx_skb\00", [22 x i8] zeroinitializer }, align 32
@hdlc_empty_fifo.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str.9, ptr @.str.98, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdlc_empty_fifo\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %s %d\0A\00", [21 x i8] zeroinitializer }, align 32
@hdlc_empty_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.9, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s.B%d: No bufferspace for %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@hdlc_empty_fifo._entry_ptr = internal global ptr @hdlc_empty_fifo._entry, section ".printk_index", align 4
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-recv %s %d \00", [47 x i8] zeroinitializer }, align 32
@hdlc_empty_fifo.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.97, ptr @.str.9, ptr @.str.28, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@avm_fritz_interrupt.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.9, ptr @.str.81, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"avm_fritz_interrupt\00", [44 x i8] zeroinitializer }, align 32
@clear_pending_hdlc_ints.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.9, ptr @.str.103, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clear_pending_hdlc_ints\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: HDLC 1 STA %x\0A\00", [45 x i8] zeroinitializer }, align 32
@clear_pending_hdlc_ints.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.102, ptr @.str.9, ptr @.str.104, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: HDLC 2 STA %x\0A\00", [45 x i8] zeroinitializer }, align 32
@fritz_remove_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.9, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: drvdata already removed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fritz_remove_pci\00", [47 x i8] zeroinitializer }, align 32
@fritz_remove_pci._entry_ptr = internal global ptr @fritz_remove_pci._entry, section ".printk_index", align 4
@AVM_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.9, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015AVM Fritz PCI driver Rev. %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AVM_init\00", [23 x i8] zeroinitializer }, align 32
@AVM_init._entry_ptr = internal global ptr @AVM_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2048]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.113 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 33, i64 34, i64 4294967295]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 163, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 23, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"fcpci_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1141, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant [10 x i8] c"card_lock\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"Cards\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 134, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 135, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1142, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"fcpci_ids\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1132, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1134, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1136, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1094, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1108, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1031, i32 44 }
@___asan_gen_.178 = private unnamed_addr constant [8 x i8] c"AVM_cnt\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 22, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1038, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1069, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 923, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 934, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 937, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 945, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 887, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 470, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 474, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 500, i32 31 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 502, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 343, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 383, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 280, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 843, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 861, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 958, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 968, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 969, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 971, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 980, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 981, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 983, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 990, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 993, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 788, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 797, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 816, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 819, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 754, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 770, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 655, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 670, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 607, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 615, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 531, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 541, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 564, i32 6 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 577, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 398, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 405, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 429, i32 31 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 628, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 737, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 739, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1129, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.461 = private constant [42 x i8] c"../drivers/isdn/hardware/mISDN/avmfritz.c\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1152, i32 2 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @AVM_cleanup, ptr @AVM_init._entry, ptr @AVM_init._entry_ptr, ptr @HDLC_irq._entry, ptr @HDLC_irq._entry.89, ptr @HDLC_irq._entry.92, ptr @HDLC_irq._entry_ptr, ptr @HDLC_irq._entry_ptr.91, ptr @HDLC_irq._entry_ptr.94, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_debug463, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__UNIQUE_ID_version462, ptr @__exitcall_AVM_cleanup, ptr @__initcall__kmod_avmfritz__483_1162_AVM_init6, ptr @__modver_attr, ptr @__param_debug, ptr @avm_bctrl._entry, ptr @avm_bctrl._entry_ptr, ptr @avm_dctrl._entry, ptr @avm_dctrl._entry_ptr, ptr @channel_ctrl._entry, ptr @channel_ctrl._entry_ptr, ptr @fritz_remove_pci._entry, ptr @fritz_remove_pci._entry_ptr, ptr @fritzpci_probe._entry, ptr @fritzpci_probe._entry.10, ptr @fritzpci_probe._entry_ptr, ptr @fritzpci_probe._entry_ptr.12, ptr @hdlc_empty_fifo._entry, ptr @hdlc_empty_fifo._entry_ptr, ptr @init_card._entry, ptr @init_card._entry.66, ptr @init_card._entry.69, ptr @init_card._entry.72, ptr @init_card._entry_ptr, ptr @init_card._entry_ptr.68, ptr @init_card._entry_ptr.71, ptr @init_card._entry_ptr.74, ptr @modehdlc._entry, ptr @modehdlc._entry_ptr, ptr @reset_avm._entry, ptr @reset_avm._entry.77, ptr @reset_avm._entry_ptr, ptr @reset_avm._entry_ptr.79, ptr @setup_fritz._entry, ptr @setup_fritz._entry.39, ptr @setup_fritz._entry.42, ptr @setup_fritz._entry.45, ptr @setup_fritz._entry.48, ptr @setup_fritz._entry.51, ptr @setup_fritz._entry.54, ptr @setup_fritz._entry.56, ptr @setup_fritz._entry.59, ptr @setup_fritz._entry_ptr, ptr @setup_fritz._entry_ptr.41, ptr @setup_fritz._entry_ptr.44, ptr @setup_fritz._entry_ptr.47, ptr @setup_fritz._entry_ptr.50, ptr @setup_fritz._entry_ptr.53, ptr @setup_fritz._entry_ptr.55, ptr @setup_fritz._entry_ptr.58, ptr @setup_fritz._entry_ptr.61, ptr @setup_instance._entry, ptr @setup_instance._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @fcpci_driver, ptr @card_lock, ptr @Cards, ptr @.str.3, ptr @.str.4, ptr @fcpci_ids, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @AVM_cnt, ptr @setup_instance.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcpci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Cards to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcpci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fritzpci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fritzpci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AVM_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avm_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modehdlc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avm_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fritz._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_avm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_avm._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HDLC_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HDLC_irq._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HDLC_irq._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_empty_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fritz_remove_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AVM_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @AVM_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @fcpci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @AVM_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.2) #12
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @fcpci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_debug(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @card_lock) #9
  %card.08 = load ptr, ptr @Cards, align 4
  %cmp.not9 = icmp eq ptr %card.08, @Cards
  br i1 %cmp.not9, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %card.010 = phi ptr [ %card.0, %for.body.for.body_crit_edge ], [ %card.08, %if.then.for.body_crit_edge ]
  %0 = load i32, ptr @debug, align 4
  %debug.i = getelementptr inbounds %struct.fritzcard, ptr %card.010, i32 0, i32 9, i32 0, i32 15
  %1 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %debug.i, align 4
  %debug1.i = getelementptr inbounds %struct.fritzcard, ptr %card.010, i32 0, i32 11, i32 0, i32 21
  %2 = ptrtoint ptr %debug1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %0, ptr %debug1.i, align 8
  %debug4.i = getelementptr %struct.fritzcard, ptr %card.010, i32 0, i32 11, i32 1, i32 21
  %3 = ptrtoint ptr %debug4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %debug4.i, align 4
  %4 = ptrtoint ptr %card.010 to i32
  call void @__asan_load4_noabort(i32 %4)
  %card.0 = load ptr, ptr %card.010, align 4
  %cmp.not = icmp eq ptr %card.0, @Cards
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @card_lock) #9
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
define internal i32 @fritzpci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2168) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3584, i16 %2)
  %cmp = icmp eq i16 %2, 3584
  %spec.select = zext i1 %cmp to i8
  %3 = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %3, align 8
  %pdev6 = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev6, align 8
  %call7 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end13, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.end13:                                         ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %8 = inttoptr i32 %7 to ptr
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end13.pci_name.exit_crit_edge

do.end13.pci_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end13.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %do.end13.pci_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %8, ptr noundef %retval.0.i.i) #12
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 8
  %addr = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %addr, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %conv17 = trunc i32 %17 to i16
  %irq18 = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %irq18 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv17, ptr %irq18, align 2
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %name.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 2
  %20 = load i32, ptr @AVM_cnt, align 4
  %add.i = add i32 %20, 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 19, ptr noundef nonnull @.str.13, i32 noundef %add.i) #9
  %call1.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %21, ptr noundef nonnull @Cards) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %pci_name.exit.list_add_tail.exit.i_crit_edge

pci_name.exit.list_add_tail.exit.i_crit_edge:     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @Cards, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %21, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %pci_name.exit.list_add_tail.exit.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call1.i) #9
  %25 = load i32, ptr @debug, align 4
  %debug.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 15
  %26 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %debug.i.i, align 4
  %debug1.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 21
  %27 = ptrtoint ptr %debug1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %debug1.i.i, align 8
  %debug4.i.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 21
  %28 = ptrtoint ptr %debug4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %debug4.i.i, align 4
  %isac.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9
  %name12.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 3
  %29 = ptrtoint ptr %name12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name.i, ptr %name12.i, align 8
  %lock.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @setup_instance.__key, i16 noundef signext 3) #9
  %hwlock.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 4
  %30 = ptrtoint ptr %hwlock.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %lock.i, ptr %hwlock.i, align 4
  %call20.i = tail call i32 @mISDNisac_init(ptr noundef %isac.i, ptr noundef nonnull %call7.i.i) #9
  %Bprotocols.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %Bprotocols.i, align 4
  %ctrl.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 0, i32 9
  %32 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @avm_dctrl, ptr %ctrl.i, align 8
  %channelmap.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 5
  %bchannels.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0
  %nr.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1
  %33 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %nr.i, align 4
  %34 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %channelmap.i, align 4
  %conv1.i.i = or i8 %35, 2
  store i8 %conv1.i.i, ptr %channelmap.i, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp34.i = icmp eq i8 %37, 1
  %..i = select i1 %cmp34.i, i16 128, i16 32
  %call38.i = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx.i, i16 noundef zeroext 2056, i16 noundef zeroext %..i) #9
  %hw.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 5
  %38 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %hw.i, align 4
  %send.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 7
  %39 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @avm_l2l1B, ptr %send.i, align 8
  %ctrl46.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 9
  %40 = ptrtoint ptr %ctrl46.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @avm_bctrl, ptr %ctrl46.i, align 8
  %nr51.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 2
  %41 = ptrtoint ptr %nr51.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %nr51.i, align 4
  %42 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bchannels.i, align 4
  %call.i.i162.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %bchannels.i, ptr noundef %43) #9
  br i1 %call.i.i162.i, label %if.end.i.i164.i, label %list_add_tail.exit.i.list_add.exit.i_crit_edge

list_add_tail.exit.i.list_add.exit.i_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i164.i:                                  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.i, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %arrayidx.i, align 8
  %prev3.i.i163.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i163.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %bchannels.i, ptr %prev3.i.i163.i, align 4
  %47 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx.i, ptr %bchannels.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i164.i, %list_add_tail.exit.i.list_add.exit.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1
  %nr.1.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %48 = ptrtoint ptr %nr.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %nr.1.i, align 8
  %49 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %channelmap.i, align 4
  %conv1.i.1.i = or i8 %50, 4
  store i8 %conv1.i.1.i, ptr %channelmap.i, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp34.1.i = icmp eq i8 %52, 1
  %..1.i = select i1 %cmp34.1.i, i16 128, i16 32
  %call38.1.i = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx.1.i, i16 noundef zeroext 2056, i16 noundef zeroext %..1.i) #9
  %hw.1.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 5
  %53 = ptrtoint ptr %hw.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %hw.1.i, align 8
  %send.1.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 0, i32 7
  %54 = ptrtoint ptr %send.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @avm_l2l1B, ptr %send.1.i, align 4
  %ctrl46.1.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 0, i32 9
  %55 = ptrtoint ptr %ctrl46.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @avm_bctrl, ptr %ctrl46.1.i, align 4
  %nr51.1.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %nr51.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %nr51.1.i, align 8
  %57 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bchannels.i, align 4
  %call.i.i162.1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.1.i, ptr noundef %bchannels.i, ptr noundef %58) #9
  br i1 %call.i.i162.1.i, label %if.end.i.i164.1.i, label %list_add.exit.i.list_add.exit.1.i_crit_edge

list_add.exit.i.list_add.exit.1.i_crit_edge:      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.1.i

if.end.i.i164.1.i:                                ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx.1.i, ptr %prev1.i.i.1.i, align 4
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %arrayidx.1.i, align 4
  %prev3.i.i163.1.i = getelementptr %struct.fritzcard, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i163.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %bchannels.i, ptr %prev3.i.i163.1.i, align 8
  %62 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %arrayidx.1.i, ptr %bchannels.i, align 4
  br label %list_add.exit.1.i

list_add.exit.1.i:                                ; preds = %if.end.i.i164.1.i, %list_add.exit.i.list_add.exit.1.i_crit_edge
  %63 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr, align 8
  %call.i.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %64, i32 noundef 32, ptr noundef %name.i, i32 noundef 0) #9
  %tobool.not.i.i43 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i43, label %do.end.i.i, label %if.end.i.i44

do.end.i.i:                                       ; preds = %list_add.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr, align 8
  %add.i.i = add i32 %66, 31
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i, i32 noundef %66, i32 noundef %add.i.i) #12
  br label %error.i

if.end.i.i44:                                     ; preds = %list_add.exit.1.i
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %3, align 8
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i8 %68, label %sw.default.i.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb65.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i44
  %70 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr, align 8
  %and.i165.i = and i32 %71, 1048575
  %add7.i.i = or i32 %and.i165.i, -18874368
  %72 = inttoptr i32 %add7.i.i to ptr
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %72) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr, align 8
  %add15.i.i = add i32 %75, 4
  %and16.i.i = and i32 %add15.i.i, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %76 = inttoptr i32 %add17.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 0) #9, !srcloc !251
  %77 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr, align 8
  %add22.i.i = add i32 %78, 20
  %and23.i.i = and i32 %add22.i.i, 1048575
  %add24.i.i = or i32 %and23.i.i, -18874368
  %79 = inttoptr i32 %add24.i.i to ptr
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %79) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %81 = load i32, ptr @debug, align 4
  %and28.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %sw.bb.i.i.if.end61.i_crit_edge, label %do.end33.i.i

sw.bb.i.i.if.end61.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

do.end33.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %82) #12
  br label %do.end136.sink.split.i.i

sw.bb65.i.i:                                      ; preds = %if.end.i.i44
  %83 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr, align 8
  %and68.i.i = and i32 %84, 1048575
  %add69.i.i = or i32 %and68.i.i, -18874368
  %85 = inttoptr i32 %add69.i.i to ptr
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %85) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  %87 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr, align 8
  %add75.i.i = add i32 %88, 20
  %and76.i.i = and i32 %add75.i.i, 1048575
  %add77.i.i = or i32 %and76.i.i, -18874368
  %89 = inttoptr i32 %add77.i.i to ptr
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %89) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %91 = load i32, ptr @debug, align 4
  %and82.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i.i)
  %tobool83.not.i.i = icmp eq i32 %and82.i.i, 0
  br i1 %tobool83.not.i.i, label %sw.bb65.i.i.if.end61.i_crit_edge, label %do.end87.i.i

sw.bb65.i.i.if.end61.i_crit_edge:                 ; preds = %sw.bb65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

do.end87.i.i:                                     ; preds = %sw.bb65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  %call91.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef %92) #12
  br label %do.end136.sink.split.i.i

sw.default.i.i:                                   ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %94, i32 noundef 32) #9
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %3, align 8
  %conv132.i.i = zext i8 %96 to i32
  %call133.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i, i32 noundef %conv132.i.i) #12
  br label %error.i

do.end136.sink.split.i.i:                         ; preds = %do.end87.i.i, %do.end33.i.i
  %.sink188.i.i = phi i32 [ %92, %do.end87.i.i ], [ %82, %do.end33.i.i ]
  %.str.52.sink.i.i = phi ptr [ @.str.52, %do.end87.i.i ], [ @.str.43, %do.end33.i.i ]
  %.sink186.i.i = phi i32 [ %90, %do.end87.i.i ], [ %80, %do.end33.i.i ]
  %ReadISAC_V1.sink.ph.i.i = phi ptr [ @ReadISAC_V2, %do.end87.i.i ], [ @ReadISAC_V1, %do.end33.i.i ]
  %WriteISAC_V1.sink.ph.i.i = phi ptr [ @WriteISAC_V2, %do.end87.i.i ], [ @WriteISAC_V1, %do.end33.i.i ]
  %ReadFiFoISAC_V1.sink.ph.i.i = phi ptr [ @ReadFiFoISAC_V2, %do.end87.i.i ], [ @ReadFiFoISAC_V1, %do.end33.i.i ]
  %WriteFiFoISAC_V1.sink.ph.i.i = phi ptr [ @WriteFiFoISAC_V2, %do.end87.i.i ], [ @WriteFiFoISAC_V1, %do.end33.i.i ]
  %.sink.ph.i.i = phi i32 [ 64, %do.end87.i.i ], [ 16, %do.end33.i.i ]
  %and98.i.i = and i32 %.sink188.i.i, 255
  %shr99.i.i = lshr i32 %.sink188.i.i, 8
  %and100.i.i = and i32 %shr99.i.i, 255
  %call101.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.52.sink.i.i, ptr noundef %name.i, i32 noundef %and98.i.i, i32 noundef %and100.i.i) #12
  %and108.i.i = and i32 %.sink186.i.i, 15
  %call109.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i, i32 noundef %and108.i.i) #12
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end136.sink.split.i.i, %sw.bb65.i.i.if.end61.i_crit_edge, %sw.bb.i.i.if.end61.i_crit_edge
  %ReadISAC_V1.sink.i.i = phi ptr [ @ReadISAC_V1, %sw.bb.i.i.if.end61.i_crit_edge ], [ @ReadISAC_V2, %sw.bb65.i.i.if.end61.i_crit_edge ], [ %ReadISAC_V1.sink.ph.i.i, %do.end136.sink.split.i.i ]
  %WriteISAC_V1.sink.i.i = phi ptr [ @WriteISAC_V1, %sw.bb.i.i.if.end61.i_crit_edge ], [ @WriteISAC_V2, %sw.bb65.i.i.if.end61.i_crit_edge ], [ %WriteISAC_V1.sink.ph.i.i, %do.end136.sink.split.i.i ]
  %ReadFiFoISAC_V1.sink.i.i = phi ptr [ @ReadFiFoISAC_V1, %sw.bb.i.i.if.end61.i_crit_edge ], [ @ReadFiFoISAC_V2, %sw.bb65.i.i.if.end61.i_crit_edge ], [ %ReadFiFoISAC_V1.sink.ph.i.i, %do.end136.sink.split.i.i ]
  %WriteFiFoISAC_V1.sink.i.i = phi ptr [ @WriteFiFoISAC_V1, %sw.bb.i.i.if.end61.i_crit_edge ], [ @WriteFiFoISAC_V2, %sw.bb65.i.i.if.end61.i_crit_edge ], [ %WriteFiFoISAC_V1.sink.ph.i.i, %do.end136.sink.split.i.i ]
  %.sink.i.i = phi i32 [ 16, %sw.bb.i.i.if.end61.i_crit_edge ], [ 64, %sw.bb65.i.i.if.end61.i_crit_edge ], [ %.sink.ph.i.i, %do.end136.sink.split.i.i ]
  %read_reg.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 5
  %97 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %ReadISAC_V1.sink.i.i, ptr %read_reg.i.i, align 8
  %write_reg.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 6
  %98 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %WriteISAC_V1.sink.i.i, ptr %write_reg.i.i, align 4
  %read_fifo.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 7
  %99 = ptrtoint ptr %read_fifo.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %ReadFiFoISAC_V1.sink.i.i, ptr %read_fifo.i.i, align 8
  %write_fifo.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 8
  %100 = ptrtoint ptr %write_fifo.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %WriteFiFoISAC_V1.sink.i.i, ptr %write_fifo.i.i, align 4
  %type64.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 1
  %101 = ptrtoint ptr %type64.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink.i.i, ptr %type64.i.i, align 8
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp.i.i = icmp eq i8 %103, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.62, ptr @.str.63
  %104 = ptrtoint ptr %irq18 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %irq18, align 2
  %conv143.i.i = zext i16 %105 to i32
  %106 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr, align 8
  %call145.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name.i, ptr noundef nonnull %cond.i.i, i32 noundef %conv143.i.i, i32 noundef %107) #12
  %108 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev6, align 8
  %dev65.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %call68.i = tail call i32 @mISDN_register_device(ptr noundef %isac.i, ptr noundef %dev65.i, ptr noundef %name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.end61.i.error_reg.i_crit_edge

if.end61.i.error_reg.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_reg.i

if.end71.i:                                       ; preds = %if.end61.i
  tail call fastcc void @reset_avm(ptr noundef nonnull %call7.i.i) #9
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %cmp.i167.i = icmp eq i8 %111, 1
  %112 = ptrtoint ptr %irq18 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %irq18, align 2
  %conv2.i.i = zext i16 %113 to i32
  %avm_fritzv2_interrupt.avm_fritz_interrupt.i.i = select i1 %cmp.i167.i, ptr @avm_fritzv2_interrupt, ptr @avm_fritz_interrupt
  %call.i117.i.i = tail call i32 @request_threaded_irq(i32 noundef %conv2.i.i, ptr noundef nonnull %avm_fritzv2_interrupt.avm_fritz_interrupt.i.i, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i.i)
  %tobool.not.i170.i = icmp eq i32 %call.i117.i.i, 0
  br i1 %tobool.not.i170.i, label %while.cond.preheader.i.i, label %do.end.i171.i

while.cond.preheader.i.i:                         ; preds = %if.end71.i
  %init.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 11
  %ctrlreg.i.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 4
  %irqcnt.i.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 6
  br label %do.body17.i.i

do.end.i171.i:                                    ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %irq18 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %irq18, align 2
  %conv12.i.i = zext i16 %115 to i32
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i, i32 noundef %conv12.i.i) #12
  br label %if.end81.i

do.body17.i.i:                                    ; preds = %do.end66.i.i.do.body17.i.i_crit_edge, %while.cond.preheader.i.i
  %dec144.i.i = phi i32 [ 2, %while.cond.preheader.i.i ], [ %dec.i.i, %do.end66.i.i.do.body17.i.i_crit_edge ]
  %cnt.0143.i.i = phi i32 [ 3, %while.cond.preheader.i.i ], [ %dec144.i.i, %do.end66.i.i.do.body17.i.i_crit_edge ]
  %call22.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %116 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init.i.i, align 8
  %call28.i.i = tail call i32 %117(ptr noundef %isac.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i172.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i172.i, label %if.end39.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call22.i.i) #9
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name.i, i32 noundef %call28.i.i) #12
  br label %while.end.i.i

if.end39.i.i:                                     ; preds = %do.body17.i.i
  tail call fastcc void @clear_pending_hdlc_ints(ptr noundef %call7.i.i) #9
  %call.i118.i.i = tail call fastcc i32 @modehdlc(ptr noundef %arrayidx.i, i32 noundef -1) #9
  %call3.i.i.i = tail call fastcc i32 @modehdlc(ptr noundef %arrayidx.1.i, i32 noundef -1) #9
  %118 = ptrtoint ptr %ctrlreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ctrlreg.i.i.i, align 1
  %120 = or i8 %119, 8
  store i8 %120, ptr %ctrlreg.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %121 = ptrtoint ptr %ctrlreg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ctrlreg.i.i.i, align 1
  %123 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr, align 8
  %add.i.i.i = add i32 %124, 2
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add3.i.i.i = or i32 %and.i.i.i, -18874368
  %125 = inttoptr i32 %add3.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 %122) #9, !srcloc !256
  %126 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %127)
  %cmp42.i.i = icmp eq i8 %127, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %addr, align 8
  %add.i120.i.i = add i32 %129, 4
  %and.i121.i.i = and i32 %add.i120.i.i, 1048575
  %add1.i.i.i = or i32 %and.i121.i.i, -18874368
  %130 = inttoptr i32 %add1.i.i.i to ptr
  br i1 %cmp42.i.i, label %if.then44.i.i, label %if.else45.i.i

if.then44.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %130, i32 1610612736) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %131 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %addr, align 8
  %add7.i.i.i = add i32 %132, 8
  %and8.i.i.i = and i32 %add7.i.i.i, 1048575
  %add9.i.i.i = or i32 %and8.i.i.i, -18874368
  %133 = inttoptr i32 %add9.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %133, i32 0) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %addr, align 8
  %add.i123.i.i = add i32 %135, 4
  %and.i124.i.i = and i32 %add.i123.i.i, 1048575
  %add1.i125.i.i = or i32 %and.i124.i.i, -18874368
  %136 = inttoptr i32 %add1.i125.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %136, i32 553648128) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %137 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %addr, align 8
  %add7.i126.i.i = add i32 %138, 8
  %and8.i127.i.i = and i32 %add7.i126.i.i, 1048575
  %add9.i128.i.i = or i32 %and8.i127.i.i, -18874368
  %139 = inttoptr i32 %add9.i128.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %139, i32 1090519040) #9, !srcloc !251
  br label %if.end46.i.i

if.else45.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 4) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %addr, align 8
  %add11.i.i.i = add i32 %141, 16
  %and12.i.i.i = and i32 %add11.i.i.i, 1048575
  %add13.i.i.i = or i32 %and12.i.i.i, -18874368
  %142 = inttoptr i32 %add13.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 0) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %143 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %addr, align 8
  %add.i134.i.i = add i32 %144, 4
  %and.i135.i.i = and i32 %add.i134.i.i, 1048575
  %add3.i136.i.i = or i32 %and.i135.i.i, -18874368
  %145 = inttoptr i32 %add3.i136.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 4) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %146 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %addr, align 8
  %add11.i137.i.i = add i32 %147, 17
  %and12.i138.i.i = and i32 %add11.i137.i.i, 1048575
  %add13.i139.i.i = or i32 %and12.i138.i.i, -18874368
  %148 = inttoptr i32 %add13.i139.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 65) #9, !srcloc !256
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.else45.i.i, %if.then44.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call22.i.i) #9
  %call48.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #9
  %149 = load i32, ptr @debug, align 4
  %and.i173.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173.i)
  %tobool49.not.i.i = icmp eq i32 %and.i173.i, 0
  br i1 %tobool49.not.i.i, label %if.end46.i.i.if.end60.i.i_crit_edge, label %do.end53.i.i

if.end46.i.i.if.end60.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i.i

do.end53.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %irq18 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %irq18, align 2
  %conv58.i.i = zext i16 %151 to i32
  %152 = ptrtoint ptr %irqcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %irqcnt.i.i, align 4
  %call59.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name.i, i32 noundef %conv58.i.i, i32 noundef %153) #12
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %do.end53.i.i, %if.end46.i.i.if.end60.i.i_crit_edge
  %154 = ptrtoint ptr %irqcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %irqcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool62.not.i.i = icmp eq i32 %155, 0
  br i1 %tobool62.not.i.i, label %do.end66.i.i, label %setup_instance.exit.thread

do.end66.i.i:                                     ; preds = %if.end60.i.i
  %156 = ptrtoint ptr %irq18 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %irq18, align 2
  %conv71.i.i = zext i16 %157 to i32
  %sub.i.i = sub nuw nsw i32 4, %cnt.0143.i.i
  %call72.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.i, i32 noundef %conv71.i.i, i32 noundef %sub.i.i) #12
  tail call fastcc void @reset_avm(ptr noundef %call7.i.i) #9
  %dec.i.i = add nsw i32 %dec144.i.i, -1
  %tobool15.not.i.i = icmp eq i32 %dec144.i.i, 0
  br i1 %tobool15.not.i.i, label %do.end66.i.i.while.end.i.i_crit_edge, label %do.end66.i.i.do.body17.i.i_crit_edge

do.end66.i.i.do.body17.i.i_crit_edge:             ; preds = %do.end66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17.i.i

do.end66.i.i.while.end.i.i_crit_edge:             ; preds = %do.end66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end66.i.i.while.end.i.i_crit_edge, %if.then30.i.i
  %158 = ptrtoint ptr %irq18 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %irq18, align 2
  %conv76.i.i = zext i16 %159 to i32
  %call77.i.i = tail call ptr @free_irq(i32 noundef %conv76.i.i, ptr noundef %call7.i.i) #9
  br label %if.end81.i

setup_instance.exit.thread:                       ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %160 = load i32, ptr @AVM_cnt, align 4
  %inc75.i = add i32 %160, 1
  store i32 %inc75.i, ptr @AVM_cnt, align 4
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %inc75.i) #12
  br label %cleanup

if.end81.i:                                       ; preds = %while.end.i.i, %do.end.i171.i
  %retval.0.i174.ph.i = phi i32 [ -5, %while.end.i.i ], [ %call.i117.i.i, %do.end.i171.i ]
  tail call void @mISDN_unregister_device(ptr noundef %isac.i) #9
  br label %error_reg.i

error_reg.i:                                      ; preds = %if.end81.i, %if.end61.i.error_reg.i_crit_edge
  %err.0.i = phi i32 [ %call68.i, %if.end61.i.error_reg.i_crit_edge ], [ %retval.0.i174.ph.i, %if.end81.i ]
  %161 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %addr, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %162, i32 noundef 32) #9
  br label %error.i

error.i:                                          ; preds = %error_reg.i, %sw.default.i.i, %do.end.i.i
  %err.1.i = phi i32 [ %err.0.i, %error_reg.i ], [ -5, %do.end.i.i ], [ -19, %sw.default.i.i ]
  %release.i = getelementptr inbounds %struct.fritzcard, ptr %call7.i.i, i32 0, i32 9, i32 10
  %163 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %release.i, align 4
  tail call void %164(ptr noundef %isac.i) #9
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx.1.i) #9
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx.i) #9
  %call97.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %call.i.i175.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #9
  br i1 %call.i.i175.i, label %if.end.i.i176.i, label %error.i.if.then21_crit_edge

error.i.if.then21_crit_edge:                      ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.end.i.i176.i:                                  ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %165 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %prev.i.i.i, align 4
  %167 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %prev1.i.i.i.i, align 4
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %168, ptr %166, align 4
  br label %if.then21

if.then21:                                        ; preds = %if.end.i.i176.i, %error.i.if.then21_crit_edge
  %171 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %172 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call97.i) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  %173 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %setup_instance.exit.thread, %if.then9, %do.end
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ -12, %do.end ], [ %err.1.i, %if.then21 ], [ 0, %setup_instance.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fritz_remove_pci(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ctrlreg.i.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctrlreg.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrlreg.i.i, align 1
  %4 = and i8 %3, -9
  store i8 %4, ptr %ctrlreg.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %ctrlreg.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrlreg.i.i, align 1
  %addr.i.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i.i, align 8
  %add.i.i = add i32 %8, 2
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %9 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #9, !srcloc !256
  %lock.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %bch.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 11
  %call5.i = tail call fastcc i32 @modehdlc(ptr noundef %bch.i, i32 noundef 0) #9
  %arrayidx7.i = getelementptr %struct.fritzcard, ptr %1, i32 0, i32 11, i32 1
  %call8.i = tail call fastcc i32 @modehdlc(ptr noundef %arrayidx7.i, i32 noundef 0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %isac.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9
  %release.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9, i32 10
  %10 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release.i, align 4
  tail call void %11(ptr noundef %isac.i) #9
  %irq.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %irq.i, align 2
  %conv11.i = zext i16 %13 to i32
  %call12.i = tail call ptr @free_irq(i32 noundef %conv11.i, ptr noundef nonnull %1) #9
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx7.i) #9
  tail call void @mISDN_freebchannel(ptr noundef %bch.i) #9
  tail call void @mISDN_unregister_device(ptr noundef %isac.i) #9
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %15, i32 noundef 32) #9
  %pdev.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_device(ptr noundef %17) #9
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %call25.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.release_card.exit_crit_edge

if.then.release_card.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_card.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %release_card.exit

release_card.exit:                                ; preds = %if.end.i.i.i, %if.then.release_card.exit_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call25.i) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %29 = load i32, ptr @AVM_cnt, align 4
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr @AVM_cnt, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not = icmp eq i32 %30, 0
  br i1 %tobool1.not, label %if.else.if.end4_crit_edge, label %do.end

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #12
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
declare dso_local i32 @mISDNisac_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avm_dctrl(ptr nocapture noundef readonly %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avm_dctrl.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avm_dctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avm_dctrl.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.18, ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef %cmd, ptr noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %cmd, label %do.body47 [
    i32 256, label %sw.bb
    i32 512, label %do.body26
    i32 768, label %sw.bb45
  ]

sw.bb:                                            ; preds = %do.end
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.end11, label %if.else

if.else:                                          ; preds = %sw.bb
  %channel.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel.i, align 1
  %7 = add i8 %6, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %7)
  %8 = icmp ult i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7.i = icmp eq i32 %4, 0
  %or.cond = select i1 %8, i1 true, i1 %cmp7.i
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end10.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.else
  %conv.i = zext i8 %6 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %Flags.i = getelementptr %struct.fritzcard, ptr %1, i32 0, i32 11, i32 %sub.i, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11.thread97, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.thread97:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.fritzcard, ptr %1, i32 0, i32 11, i32 %sub.i
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg, align 4
  %protocol18.i = getelementptr inbounds %struct.mISDNchannel, ptr %arrayidx.i, i32 0, i32 1
  %11 = ptrtoint ptr %protocol18.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %protocol18.i, align 4
  %ch20.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %12 = ptrtoint ptr %ch20.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %ch20.i, align 4
  br label %if.end14

if.end11:                                         ; preds = %sw.bb
  %isac = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9
  %open = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9, i32 13
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %open, align 8
  %call9 = tail call i32 %14(ptr noundef %isac, ptr noundef %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool12.not = icmp eq i32 %call9, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.end11.if.end14_crit_edge, %if.end11.thread97
  %call15 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %call15, label %if.end14.cleanup_crit_edge, label %do.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %name21 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name21) #12
  br label %cleanup

do.body26:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avm_dctrl.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avm_dctrl, %if.then38)) #9
          to label %do.end44 [label %if.then38], !srcloc !262

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %name39 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %ch, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %17 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avm_dctrl.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.20, ptr noundef %name39, i32 noundef %16, ptr noundef %17) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %do.body26
  tail call void @module_put(ptr noundef null) #9
  br label %cleanup

sw.bb45:                                          ; preds = %do.end
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arg, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %19, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2048, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2049, ptr %arg, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb45
  %channel.i91 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 1
  %22 = ptrtoint ptr %channel.i91 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %sw.bb2.i.cleanup_crit_edge, label %if.end.i93

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i93:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %isac.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9
  %ctrl.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9, i32 12
  %25 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl.i, align 4
  %call.i92 = tail call i32 %26(ptr noundef %isac.i, i32 noundef 38146, i32 noundef %23) #9
  br label %cleanup

sw.bb7.i:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %isac8.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9
  %ctrl9.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 9, i32 12
  %27 = ptrtoint ptr %ctrl9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl9.i, align 4
  %p1.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %29 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p1.i, align 4
  %call11.i = tail call i32 %28(ptr noundef %isac8.i, i32 noundef 39424, i32 noundef %30) #9
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i, ptr noundef nonnull @.str.23, i32 noundef %19) #12
  br label %cleanup

do.body47:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avm_dctrl.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avm_dctrl, %if.then59)) #9
          to label %cleanup [label %if.then59], !srcloc !262

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %name60 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avm_dctrl.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.21, ptr noundef %name60, ptr noundef nonnull @.str.17, i32 noundef %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body47, %do.end.i, %sw.bb7.i, %if.end.i93, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i, %do.end44, %do.end19, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then59 ], [ 0, %do.end44 ], [ %call9, %if.end11.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %do.end19 ], [ -22, %do.end.i ], [ %call11.i, %sw.bb7.i ], [ %call.i92, %if.end.i93 ], [ 0, %sw.bb.i ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %do.body47 ], [ -16, %if.end10.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avm_l2l1B(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8193, label %do.body1
    i32 257, label %do.body12
    i32 513, label %do.body35
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call6 = tail call i32 @bchannel_senddata(ptr noundef %ch, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %do.body1.if.end_crit_edge

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hdlc_fill_fifo(ptr noundef %ch)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body1.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call6, %do.body1.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

do.body12:                                        ; preds = %entry
  %lock18 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 8
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock18) #9
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end28, label %if.end28.thread

if.end28.thread:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #9
  br label %if.then31

if.end28:                                         ; preds = %do.body12
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %protocol, align 4
  %call27 = tail call fastcc i32 @modehdlc(ptr noundef %ch, i32 noundef %6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool30.not = icmp eq i32 %call27, 0
  br i1 %tobool30.not, label %if.end28.if.then31_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %if.end28.if.then31_crit_edge, %if.end28.thread
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %7 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then31.if.then51_crit_edge, label %if.end.i

if.then31.if.then51_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.end.i:                                         ; preds = %if.then31
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then51_crit_edge, label %if.end3.i, !prof !263

if.end.i.if.then51_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

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
  %call5.i = tail call i32 %16(ptr noundef %18, ptr noundef nonnull %call.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.then51_crit_edge, label %if.end3.i.if.then51.sink.split_crit_edge

if.end3.i.if.then51.sink.split_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.sink.split

if.end3.i.if.then51_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

do.body35:                                        ; preds = %entry
  %lock41 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 8
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock41) #9
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #9
  %call48 = tail call fastcc i32 @modehdlc(ptr noundef %ch, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock41, i32 noundef %call43) #9
  %peer.i79 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %19 = ptrtoint ptr %peer.i79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer.i79, align 4
  %tobool.not.i80 = icmp eq ptr %20, null
  br i1 %tobool.not.i80, label %do.body35.if.then51_crit_edge, label %if.end.i83

do.body35.if.then51_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.end.i83:                                       ; preds = %do.body35
  %call.i.i.i.i81 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i.i.i82 = icmp eq ptr %call.i.i.i.i81, null
  br i1 %tobool.not.i.i.i82, label %if.end.i83.if.then51_crit_edge, label %if.end3.i93, !prof !263

if.end.i83.if.then51_crit_edge:                   ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.end3.i93:                                      ; preds = %if.end.i83
  %data.i.i.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i81, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i84, align 4
  %add.ptr.i.i.i.i85 = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i.i85, ptr %data.i.i.i.i84, align 4
  %tail.i.i.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i81, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i.i86, align 8
  %add.ptr1.i.i.i.i87 = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i.i87, ptr %tail.i.i.i.i86, align 8
  %cb.i.i88 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i81, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i.i88 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 514, ptr %cb.i.i88, align 1
  %id6.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i81, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %id6.i.i89 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 65535, ptr %id6.i.i89, align 1
  %recv.i90 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %27 = ptrtoint ptr %recv.i90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %recv.i90, align 4
  %29 = ptrtoint ptr %peer.i79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer.i79, align 4
  %call5.i91 = tail call i32 %28(ptr noundef %30, ptr noundef nonnull %call.i.i.i.i81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i91)
  %tobool6.not.i92 = icmp eq i32 %call5.i91, 0
  br i1 %tobool6.not.i92, label %if.end3.i93.if.then51_crit_edge, label %if.end3.i93.if.then51.sink.split_crit_edge

if.end3.i93.if.then51.sink.split_crit_edge:       ; preds = %if.end3.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.sink.split

if.end3.i93.if.then51_crit_edge:                  ; preds = %if.end3.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.then51.sink.split:                             ; preds = %if.end3.i93.if.then51.sink.split_crit_edge, %if.end3.i.if.then51.sink.split_crit_edge
  %call.i.i.i.i.sink = phi ptr [ %call.i.i.i.i, %if.end3.i.if.then51.sink.split_crit_edge ], [ %call.i.i.i.i81, %if.end3.i93.if.then51.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.sink) #9
  br label %if.then51

if.then51:                                        ; preds = %if.then51.sink.split, %if.end3.i93.if.then51_crit_edge, %if.end.i83.if.then51_crit_edge, %do.body35.if.then51_crit_edge, %if.end3.i.if.then51_crit_edge, %if.end.i.if.then51_crit_edge, %if.then31.if.then51_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end28.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %if.then51 ], [ -22, %entry.cleanup_crit_edge ], [ %call27, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avm_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avm_bctrl.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avm_bctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avm_bctrl.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.18, ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef %cmd, ptr noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %cmd, label %do.end21 [
    i32 512, label %sw.bb
    i32 768, label %sw.bb17
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #9
  %workq = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 3
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %workq) #9
  %lock = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 8
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #9
  %call15 = tail call fastcc i32 @modehdlc(ptr noundef %ch, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %protocol, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %peer, align 4
  tail call void @module_put(ptr noundef null) #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @mISDN_ctrl_bchannel(ptr noundef %ch, ptr noundef %arg) #9
  br label %sw.epilog

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name23 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name23, ptr noundef nonnull @.str.35, i32 noundef %cmd) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end21, %sw.bb17, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end21 ], [ %call.i, %sw.bb17 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_freebchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdlc_fill_fifo(ptr noundef %bch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %4 = and i32 %3, 1
  %and = xor i32 %4, 1
  %arrayidx = getelementptr %struct.fritzcard, ptr %1, i32 0, i32 10, i32 %and
  %type = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %cond = select i1 %cmp, i32 128, i32 32
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 17
  %7 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %9 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %Flags, align 4
  %11 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end13.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fill = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 8
  %cmd222 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 3
  %12 = ptrtoint ptr %cmd222 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd222, align 1
  %14 = and i8 %13, -2
  store i8 %14, ptr %cmd222, align 1
  br label %if.else20

if.else:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
  %17 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_idx, align 4
  %sub6 = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub6)
  %cmp7 = icmp slt i32 %sub6, 1
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %18
  %cmd = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 3
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cmd, align 1
  %23 = and i8 %22, -2
  store i8 %23, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %cond)
  %cmp17 = icmp ugt i32 %sub6, %cond
  br i1 %cmp17, label %if.end13.do.body_crit_edge, label %if.end13.if.else20_crit_edge

if.end13.if.else20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else20:                                        ; preds = %if.end13.if.else20_crit_edge, %if.end13.thread
  %24 = phi i8 [ %14, %if.end13.thread ], [ %23, %if.end13.if.else20_crit_edge ]
  %cmd228 = phi ptr [ %cmd222, %if.end13.thread ], [ %cmd, %if.end13.if.else20_crit_edge ]
  %count.0227 = phi i32 [ %cond, %if.end13.thread ], [ %sub6, %if.end13.if.else20_crit_edge ]
  %p.0224 = phi ptr [ %fill, %if.end13.thread ], [ %add.ptr, %if.end13.if.else20_crit_edge ]
  %Flags21 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %25 = ptrtoint ptr %Flags21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %Flags21, align 4
  %27 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool23.not = icmp eq i32 %27, 0
  br i1 %tobool23.not, label %if.else20.if.end30_crit_edge, label %if.then24

if.else20.if.end30_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  %28 = or i8 %24, 1
  %29 = ptrtoint ptr %cmd228 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %cmd228, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.else20.if.end30_crit_edge
  br i1 %tobool.not, label %do.body46, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end30.do.body_crit_edge, %if.end13.do.body_crit_edge
  %count.1234 = phi i32 [ %count.0227, %if.end30.do.body_crit_edge ], [ %cond, %if.end13.do.body_crit_edge ]
  %p.0225232 = phi ptr [ %p.0224, %if.end30.do.body_crit_edge ], [ %add.ptr, %if.end13.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdlc_fill_fifo.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdlc_fill_fifo, %if.then37)) #9
          to label %do.end [label %if.then37], !srcloc !262

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr, align 4
  %tx_idx40 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
  %32 = ptrtoint ptr %tx_idx40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_idx40, align 4
  %34 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_skb, align 4
  %len42 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len42, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdlc_fill_fifo.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %31, i32 noundef %count.1234, i32 noundef %33, i32 noundef %37) #9
  br label %do.end

do.end:                                           ; preds = %if.then37, %do.body
  %tx_idx44 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
  %38 = ptrtoint ptr %tx_idx44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_idx44, align 4
  %add = add i32 %39, %count.1234
  store i32 %add, ptr %tx_idx44, align 4
  br label %if.end65

do.body46:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdlc_fill_fifo.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdlc_fill_fifo, %if.then58)) #9
          to label %if.end65 [label %if.then58], !srcloc !262

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %name59 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdlc_fill_fifo.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.26, ptr noundef %name59, i32 noundef %41, i32 noundef %count.0227) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %do.body46, %do.end
  %count.1233 = phi i32 [ %count.0227, %if.then58 ], [ %count.1234, %do.end ], [ %count.0227, %do.body46 ]
  %p.0225231 = phi ptr [ %p.0224, %if.then58 ], [ %p.0225232, %do.end ], [ %p.0224, %do.body46 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1233, i32 %cond)
  %cmp66 = icmp eq i32 %count.1233, %cond
  %42 = trunc i32 %count.1233 to i8
  %conv69 = select i1 %cmp66, i8 0, i8 %42
  %xml = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 2
  %43 = ptrtoint ptr %xml to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv69, ptr %xml, align 2
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp73 = icmp eq i8 %45, 1
  %46 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr, align 4
  br i1 %cmp73, label %if.then75, label %if.else83

if.then75:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %addr.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i = icmp eq i32 %47, 2
  %cond.i = select i1 %cmp.i, i32 28, i32 20
  %add.i = add i32 %52, %cond.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %53 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %50) #9, !srcloc !251
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 8
  %56 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp79 = icmp eq i32 %57, 2
  %cond81 = select i1 %cmp79, i32 24, i32 16
  %add82 = add i32 %cond81, %55
  br label %if.end87

if.else83:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i215 = icmp eq i32 %47, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %58 = select i1 %cmp.i215, i32 16777216, i32 0
  %addr.i216 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %addr.i216 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.i216, align 8
  %add.i217 = add i32 %60, 4
  %and.i218 = and i32 %add.i217, 1048575
  %add1.i219 = or i32 %and.i218, -18874368
  %61 = inttoptr i32 %add1.i219 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 %58) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %65 = ptrtoint ptr %addr.i216 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr.i216, align 8
  %add7.i = add i32 %66, 20
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %67 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 %64) #9, !srcloc !251
  %68 = ptrtoint ptr %addr.i216 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr.i216, align 8
  %add86 = add i32 %69, 16
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.then75
  %addr.0 = phi i32 [ %add82, %if.then75 ], [ %add86, %if.else83 ]
  %and95 = and i32 %addr.0, 1048575
  %add96 = or i32 %and95, -18874368
  %70 = inttoptr i32 %add96 to ptr
  br i1 %tobool.not, label %if.end87.do.body92_crit_edge, label %if.end87.while.body103_crit_edge

if.end87.while.body103_crit_edge:                 ; preds = %if.end87
  br label %while.body103

if.end87.do.body92_crit_edge:                     ; preds = %if.end87
  br label %do.body92

do.body92:                                        ; preds = %do.body92.do.body92_crit_edge, %if.end87.do.body92_crit_edge
  %cnt.0244 = phi i32 [ %add98, %do.body92.do.body92_crit_edge ], [ 0, %if.end87.do.body92_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %p.0225231 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %p.0225231, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %73) #9, !srcloc !251
  %add98 = add i32 %cnt.0244, 4
  %cmp90 = icmp slt i32 %add98, %count.1233
  br i1 %cmp90, label %do.body92.do.body92_crit_edge, label %do.body92.if.end113_crit_edge

do.body92.if.end113_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

do.body92.do.body92_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

while.body103:                                    ; preds = %while.body103.while.body103_crit_edge, %if.end87.while.body103_crit_edge
  %cnt.1242 = phi i32 [ %add111, %while.body103.while.body103_crit_edge ], [ 0, %if.end87.while.body103_crit_edge ]
  %ptr.0241 = phi ptr [ %incdec.ptr, %while.body103.while.body103_crit_edge ], [ %p.0225231, %if.end87.while.body103_crit_edge ]
  %74 = ptrtoint ptr %ptr.0241 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %ptr.0241, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %75) #9, !srcloc !251
  %incdec.ptr = getelementptr i32, ptr %ptr.0241, i32 1
  %add111 = add i32 %cnt.1242, 4
  %cmp101 = icmp slt i32 %add111, %count.1233
  br i1 %cmp101, label %while.body103.while.body103_crit_edge, label %while.body103.if.end113_crit_edge

while.body103.if.end113_crit_edge:                ; preds = %while.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

while.body103.while.body103_crit_edge:            ; preds = %while.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body103

if.end113:                                        ; preds = %while.body103.if.end113_crit_edge, %do.body92.if.end113_crit_edge
  %76 = load i32, ptr @debug, align 4
  %and114 = and i32 %76, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %brmerge = select i1 %tobool115.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end113.cleanup_crit_edge, label %if.then117

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  %log = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 12
  %77 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr, align 4
  %name120 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %call122 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 63, ptr noundef nonnull @.str.27, i32 noundef %78, ptr noundef %name120, i32 noundef %count.1233)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdlc_fill_fifo.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdlc_fill_fifo, %if.then135)) #9
          to label %cleanup [label %if.then135], !srcloc !262

if.then135:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.29, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %p.0225231, i32 noundef %count.1233, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %if.then117, %if.end113.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modehdlc(ptr noundef %bch, i32 noundef %protocol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %4 = and i32 %3, 1
  %and = xor i32 %4, 1
  %arrayidx = getelementptr %struct.fritzcard, ptr %1, i32 0, i32 10, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @modehdlc.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@modehdlc, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  %add = add i32 %6, 64
  %state = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @modehdlc.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %add, i32 noundef %8, i32 noundef %protocol, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx, align 4
  %type = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  %conv7 = select i1 %cmp, i8 32, i8 0
  %12 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %protocol, label %do.end56 [
    i32 -1, label %sw.bb
    i32 0, label %do.end.sw.bb9_crit_edge
    i32 33, label %sw.bb24
    i32 34, label %sw.bb39
  ]

do.end.sw.bb9_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %state8 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %13 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %state8, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb, %do.end.sw.bb9_crit_edge
  %state10 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %14 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %sw.bb9.cleanup_crit_edge, label %if.end14

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %cmd = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 3
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -96, ptr %cmd, align 1
  %17 = or i8 %conv7, 2
  %mode19 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 1
  %18 = ptrtoint ptr %mode19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %mode19, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 5)
  %19 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state10, align 4
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %call21 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags) #9
  %call23 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags) #9
  br label %cleanup

sw.bb24:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %state25 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %20 = ptrtoint ptr %state25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 33, ptr %state25, align 4
  %cmd27 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 3
  %21 = ptrtoint ptr %cmd27 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -96, ptr %cmd27, align 1
  %22 = or i8 %conv7, 2
  %mode32 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %mode32 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %mode32, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 5)
  %24 = ptrtoint ptr %cmd27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -128, ptr %cmd27, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 1)
  %25 = ptrtoint ptr %cmd27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %cmd27, align 1
  %Flags37 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %call38 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags37) #9
  br label %cleanup

sw.bb39:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %state40 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %26 = ptrtoint ptr %state40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 34, ptr %state40, align 4
  %cmd42 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %cmd42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -96, ptr %cmd42, align 1
  %28 = or i8 %conv7, 1
  %mode47 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 1
  %29 = ptrtoint ptr %mode47 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %mode47, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 5)
  %30 = ptrtoint ptr %cmd42 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %cmd42, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 1)
  %31 = ptrtoint ptr %cmd42 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %cmd42, align 1
  %Flags52 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %call53 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags52) #9
  br label %cleanup

do.end56:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name58 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name58, i32 noundef %protocol) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %sw.bb39, %sw.bb24, %if.end14, %sw.bb9.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %do.end56 ], [ 0, %sw.bb9.cleanup_crit_edge ], [ 0, %sw.bb39 ], [ 0, %sw.bb24 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_clear_bchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_ctrl(ptr nocapture noundef readonly %bch, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %4 = and i32 %3, 1
  %and = xor i32 %4, 1
  %arrayidx = getelementptr %struct.fritzcard, ptr %1, i32 0, i32 10, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_ctrl.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  %add = add i32 %6, 64
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_ctrl.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.34, ptr noundef %name, i32 noundef %add, i32 noundef %which, i32 noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %10, label %do.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb6
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %addr.i = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  %cond.i = select i1 %cmp.i, i32 28, i32 20
  %add.i = add i32 %18, %cond.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #9, !srcloc !251
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i18 = icmp eq i32 %21, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %22 = select i1 %cmp.i18, i32 16777216, i32 0
  %addr.i19 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i19, align 8
  %add.i20 = add i32 %24, 4
  %and.i21 = and i32 %add.i20, 1048575
  %add1.i22 = or i32 %and.i21, -18874368
  %25 = inttoptr i32 %add1.i22 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %22) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i19, align 8
  %add7.i = add i32 %30, 20
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %31 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %28) #9, !srcloc !251
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_ctrl_bchannel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadISAC_V1(ptr nocapture noundef readonly %p, i8 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %offset)
  %cmp = icmp ugt i8 %offset, 47
  %conv2 = select i1 %cmp, i8 6, i8 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv2) #9, !srcloc !256
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 8
  %5 = and i8 %offset, 15
  %6 = or i8 %5, 16
  %add5 = zext i8 %6 to i32
  %add8 = add i32 %4, %add5
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %7 = inttoptr i32 %add10 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAC_V1(ptr nocapture noundef readonly %p, i8 noundef zeroext %offset, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %offset)
  %cmp = icmp ugt i8 %offset, 47
  %conv2 = select i1 %cmp, i8 6, i8 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv2) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 8
  %5 = and i8 %offset, 15
  %6 = or i8 %5, 16
  %add8 = zext i8 %6 to i32
  %add11 = add i32 %4, %add8
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %7 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %value) #9, !srcloc !256
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAC_V1(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 2) #9, !srcloc !256
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 8
  %add3 = add i32 %4, 16
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %5 = inttoptr i32 %add5 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %5, ptr noundef %data, i32 noundef %size) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAC_V1(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 2) #9, !srcloc !256
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 8
  %add3 = add i32 %4, 16
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %5 = inttoptr i32 %add5 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %5, ptr noundef %data, i32 noundef %size) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadISAC_V2(ptr nocapture noundef readonly %p, i8 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  %conv = zext i8 %offset to i32
  %0 = shl nuw i32 %conv, 24
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 8
  %add = add i32 %2, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #9, !srcloc !251
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 8
  %add3 = add i32 %5, 8
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %6 = inttoptr i32 %add5 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #9, !srcloc !248
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %conv9 = trunc i32 %8 to i8
  ret i8 %conv9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAC_V2(ptr nocapture noundef readonly %p, i8 noundef zeroext %offset, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %conv = zext i8 %offset to i32
  %0 = shl nuw i32 %conv, 24
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 8
  %add = add i32 %2, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %conv5 = zext i8 %value to i32
  %4 = shl nuw i32 %conv5, 24
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 8
  %add7 = add i32 %6, 8
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %7 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #9, !srcloc !251
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAC_V2(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr nocapture noundef writeonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  tail call void @arm_heavy_mb() #9
  %conv = zext i8 %off to i32
  %0 = shl nuw i32 %conv, 24
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 8
  %add = add i32 %2, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #9, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp14 = icmp sgt i32 %size, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 8
  %add4 = add i32 %5, 8
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %6 = inttoptr i32 %add6 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #9, !srcloc !248
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %conv10 = trunc i32 %8 to i8
  %arrayidx = getelementptr i8, ptr %data, i32 %i.015
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAC_V2(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  tail call void @arm_heavy_mb() #9
  %conv = zext i8 %off to i32
  %0 = shl nuw i32 %conv, 24
  %addr = getelementptr inbounds %struct.fritzcard, ptr %p, i32 0, i32 7
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 8
  %add = add i32 %2, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #9, !srcloc !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp15 = icmp sgt i32 %size, 0
  br i1 %cmp15, label %entry.do.body3_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %i.016 = phi i32 [ %inc, %do.body3.do.body3_crit_edge ], [ 0, %entry.do.body3_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr i8, ptr %data, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %5 to i32
  %6 = shl nuw i32 %conv6, 24
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 8
  %add8 = add i32 %8, 8
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %9 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #9, !srcloc !251
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %do.body3.for.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %do.body3.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_avm(ptr noundef %fc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.epilog.sink.split_crit_edge
    i8 1, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 1, %sw.bb1 ], [ 3, %entry.sw.epilog.sink.split_crit_edge ]
  %ctrlreg2 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 4
  %3 = ptrtoint ptr %ctrlreg2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %ctrlreg2, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.end

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.epilog.if.end_crit_edge
  %ctrlreg.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 4
  %5 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrlreg.i, align 1
  %7 = and i8 %6, -9
  store i8 %7, ptr %ctrlreg.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrlreg.i, align 1
  %addr.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %add.i = add i32 %11, 2
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %12 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %9) #9, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 8
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %19, label %if.end.sw.epilog15_crit_edge [
    i8 0, label %sw.bb6
    i8 1, label %sw.bb13
  ]

if.end.sw.epilog15_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog15

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 6, ptr %ctrlreg.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrlreg.i, align 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 8
  %add.i58 = add i32 %25, 2
  %and3.i59 = and i32 %add.i58, 1048575
  %add4.i60 = or i32 %and3.i59, -18874368
  %26 = inttoptr i32 %add4.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %23) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i, align 8
  %add = add i32 %28, 3
  %and10 = and i32 %add, 1048575
  %add11 = or i32 %and10, -18874368
  %29 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 -128) #9, !srcloc !256
  br label %sw.epilog15

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ctrlreg.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctrlreg.i, align 1
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i, align 8
  %add.i63 = add i32 %34, 2
  %and3.i64 = and i32 %add.i63, 1048575
  %add4.i65 = or i32 %and3.i64, -18874368
  %35 = inttoptr i32 %add4.i65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #9, !srcloc !256
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb13, %sw.bb6, %if.end.sw.epilog15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  %37 = load i32, ptr @debug, align 4
  %and16 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %sw.epilog15.if.end42_crit_edge, label %do.end20

sw.epilog15.if.end42_crit_edge:                   ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end20:                                         ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #11
  %name22 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 2
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 8
  %add25 = add i32 %39, 2
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %40 = inttoptr i32 %add27 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #9, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %conv31 = zext i8 %41 to i32
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i, align 8
  %add34 = add i32 %43, 3
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %44 = inttoptr i32 %add36 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #9, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  %conv40 = zext i8 %45 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name22, i32 noundef %conv31, i32 noundef %conv40) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end20, %sw.epilog15.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avm_fritzv2_interrupt(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %addr = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avm_fritzv2_interrupt.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avm_fritzv2_interrupt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avm_fritzv2_interrupt.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.81, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv7 = zext i8 %3 to i32
  %and8 = and i32 %conv7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %irqcnt = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqcnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %irqcnt, align 4
  %and14 = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @HDLC_irq_main(ptr noundef %dev_id)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %and19 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end24_crit_edge, label %if.then21

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 8
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 1610612736) #9, !srcloc !251
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 8
  %add3.i = add i32 %10, 8
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %11 = inttoptr i32 %add5.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #9, !srcloc !248
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %conv9.i = trunc i32 %13 to i8
  %isac = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 9
  %call23 = tail call i32 @mISDNisac_irq(ptr noundef %isac, i8 noundef zeroext %conv9.i) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end17.if.end24_crit_edge
  %and26 = and i32 %conv7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %do.body29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body29:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avm_fritzv2_interrupt.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avm_fritzv2_interrupt, %if.then41)) #9
          to label %do.body47 [label %if.then41], !srcloc !262

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %name42 = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avm_fritzv2_interrupt.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.82, ptr noundef %name42) #9
  br label %do.body47

do.body47:                                        ; preds = %if.then41, %do.body29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  tail call void @arm_heavy_mb() #9
  %ctrlreg = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrlreg, align 1
  %16 = or i8 %15, 4
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 8
  %add53 = add i32 %18, 2
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %19 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #9, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !285
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrlreg, align 1
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 8
  %add62 = add i32 %24, 2
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %25 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #9, !srcloc !256
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %if.end24.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %do.body47 ], [ 1, %if.end24.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avm_fritz_interrupt(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %addr = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !286
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avm_fritz_interrupt.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avm_fritz_interrupt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avm_fritz_interrupt.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.81, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv7 = zext i8 %3 to i32
  %and8 = and i32 %conv7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and8)
  %cmp = icmp eq i32 %and8, 7
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %irqcnt = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqcnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %irqcnt, align 4
  %and14 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 8
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 4) #9, !srcloc !256
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 8
  %add8.i = add i32 %10, 16
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %11 = inttoptr i32 %add10.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  %isac = getelementptr inbounds %struct.fritzcard, ptr %dev_id, i32 0, i32 9
  %call18 = tail call i32 @mISDNisac_irq(ptr noundef %isac, i8 noundef zeroext %12) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %and21 = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @HDLC_irq_main(ptr noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end19.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.then23 ], [ 1, %if.end19.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_pending_hdlc_ints(ptr noundef %fc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type.i, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %1, label %entry.read_status.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %sw.bb1.i
  ]

entry.read_status.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_status.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %add.i.i = add i32 %4, 20
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #9, !srcloc !248
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  br label %read_status.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr2.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %8 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %add.i8.i = add i32 %9, 4
  %and.i9.i = and i32 %add.i8.i, 1048575
  %add1.i10.i = or i32 %and.i9.i, -18874368
  %10 = inttoptr i32 %add1.i10.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 0) #9, !srcloc !251
  %add3.i.i = add i32 %9, 20
  %and4.i.i = and i32 %add3.i.i, 1048575
  %add5.i.i = or i32 %and4.i.i, -18874368
  %11 = inttoptr i32 %add5.i.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #9, !srcloc !248
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  br label %read_status.exit

read_status.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i, %entry.read_status.exit_crit_edge
  %retval.0.i30 = phi i32 [ %13, %sw.bb1.i ], [ %7, %sw.bb.i ], [ 0, %entry.read_status.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clear_pending_hdlc_ints.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clear_pending_hdlc_ints, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %read_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clear_pending_hdlc_ints.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.103, ptr noundef %name, i32 noundef %retval.0.i30) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %read_status.exit
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 8
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %15, label %do.end.read_status.exit46_crit_edge [
    i8 1, label %sw.bb.i36
    i8 0, label %sw.bb1.i44
  ]

do.end.read_status.exit46_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_status.exit46

sw.bb.i36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i32 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %17 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i32, align 8
  %add.i.i33 = add i32 %18, 28
  %and.i.i34 = and i32 %add.i.i33, 1048575
  %add1.i.i35 = or i32 %and.i.i34, -18874368
  %19 = inttoptr i32 %add1.i.i35 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #9, !srcloc !248
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  br label %read_status.exit46

sw.bb1.i44:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr2.i37 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %22 = ptrtoint ptr %addr2.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr2.i37, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %add.i8.i38 = add i32 %23, 4
  %and.i9.i39 = and i32 %add.i8.i38, 1048575
  %add1.i10.i40 = or i32 %and.i9.i39, -18874368
  %24 = inttoptr i32 %add1.i10.i40 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 16777216) #9, !srcloc !251
  %add3.i.i41 = add i32 %23, 20
  %and4.i.i42 = and i32 %add3.i.i41, 1048575
  %add5.i.i43 = or i32 %and4.i.i42, -18874368
  %25 = inttoptr i32 %add5.i.i43 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #9, !srcloc !248
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  br label %read_status.exit46

read_status.exit46:                               ; preds = %sw.bb1.i44, %sw.bb.i36, %do.end.read_status.exit46_crit_edge
  %retval.0.i45 = phi i32 [ %27, %sw.bb1.i44 ], [ %21, %sw.bb.i36 ], [ 0, %do.end.read_status.exit46_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clear_pending_hdlc_ints.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clear_pending_hdlc_ints, %if.then17)) #9
          to label %do.end22 [label %if.then17], !srcloc !262

if.then17:                                        ; preds = %read_status.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %name18 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clear_pending_hdlc_ints.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.104, ptr noundef %name18, i32 noundef %retval.0.i45) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %read_status.exit46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @HDLC_irq_main(ptr noundef %fc) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %type.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type.i, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %1, label %entry.if.end10_crit_edge [
    i8 1, label %sw.bb.i
    i8 0, label %sw.bb1.i
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %add.i.i = add i32 %4, 20
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #9, !srcloc !248
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  br label %read_status.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr2.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %8 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %add.i8.i = add i32 %9, 4
  %and.i9.i = and i32 %add.i8.i, 1048575
  %add1.i10.i = or i32 %and.i9.i, -18874368
  %10 = inttoptr i32 %add1.i10.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 0) #9, !srcloc !251
  %add3.i.i = add i32 %9, 20
  %and4.i.i = and i32 %add3.i.i, 1048575
  %add5.i.i = or i32 %and4.i.i, -18874368
  %11 = inttoptr i32 %add5.i.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #9, !srcloc !248
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  br label %read_status.exit

read_status.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i53 = phi i32 [ %13, %sw.bb1.i ], [ %7, %sw.bb.i ]
  %and = and i32 %retval.0.i53, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %read_status.exit.if.end10_crit_edge, label %if.then

read_status.exit.if.end10_crit_edge:              ; preds = %read_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %read_status.exit
  %Flags.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 0, i32 2
  %14 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %Flags.i, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %bch.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 11
  %nr.i = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 0, i32 1
  %17 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.Sel_BCS.exit_crit_edge

land.lhs.true.i.Sel_BCS.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %Sel_BCS.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %Flags8.i = getelementptr %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 1, i32 2
  %19 = ptrtoint ptr %Flags8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %Flags8.i, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i = icmp eq i32 %21, 0
  br i1 %tobool10.not.i, label %if.else.i.do.body_crit_edge, label %land.lhs.true11.i

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true11.i:                                ; preds = %if.else.i
  %arrayidx7.i = getelementptr %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 1
  %nr14.i = getelementptr %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 1, i32 1
  %22 = ptrtoint ptr %nr14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr14.i, align 4
  %and15.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.do.body_crit_edge, label %land.lhs.true11.i.Sel_BCS.exit_crit_edge

land.lhs.true11.i.Sel_BCS.exit_crit_edge:         ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %Sel_BCS.exit

land.lhs.true11.i.do.body_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

Sel_BCS.exit:                                     ; preds = %land.lhs.true11.i.Sel_BCS.exit_crit_edge, %land.lhs.true.i.Sel_BCS.exit_crit_edge
  %retval.0.i54 = phi ptr [ %bch.i, %land.lhs.true.i.Sel_BCS.exit_crit_edge ], [ %arrayidx7.i, %land.lhs.true11.i.Sel_BCS.exit_crit_edge ]
  %tobool2.not = icmp eq ptr %retval.0.i54, null
  br i1 %tobool2.not, label %Sel_BCS.exit.do.body_crit_edge, label %if.then3

Sel_BCS.exit.do.body_crit_edge:                   ; preds = %Sel_BCS.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then3:                                         ; preds = %Sel_BCS.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @HDLC_irq(ptr noundef nonnull %retval.0.i54, i32 noundef %retval.0.i53)
  br label %if.end10

do.body:                                          ; preds = %Sel_BCS.exit.do.body_crit_edge, %land.lhs.true11.i.do.body_crit_edge, %if.else.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HDLC_irq_main.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HDLC_irq_main, %if.then8)) #9
          to label %if.end10 [label %if.then8], !srcloc !262

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @HDLC_irq_main.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.84, ptr noundef %name) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.then3, %read_status.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type.i, align 8
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %25, label %if.end10.if.end38_crit_edge [
    i8 1, label %sw.bb.i60
    i8 0, label %sw.bb1.i68
  ]

if.end10.if.end38_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

sw.bb.i60:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i56 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %27 = ptrtoint ptr %addr.i56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i56, align 8
  %add.i.i57 = add i32 %28, 28
  %and.i.i58 = and i32 %add.i.i57, 1048575
  %add1.i.i59 = or i32 %and.i.i58, -18874368
  %29 = inttoptr i32 %add1.i.i59 to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #9, !srcloc !248
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  br label %read_status.exit70

sw.bb1.i68:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %addr2.i61 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 7
  %32 = ptrtoint ptr %addr2.i61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr2.i61, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %add.i8.i62 = add i32 %33, 4
  %and.i9.i63 = and i32 %add.i8.i62, 1048575
  %add1.i10.i64 = or i32 %and.i9.i63, -18874368
  %34 = inttoptr i32 %add1.i10.i64 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 16777216) #9, !srcloc !251
  %add3.i.i65 = add i32 %33, 20
  %and4.i.i66 = and i32 %add3.i.i65, 1048575
  %add5.i.i67 = or i32 %and4.i.i66, -18874368
  %35 = inttoptr i32 %add5.i.i67 to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %35) #9, !srcloc !248
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  br label %read_status.exit70

read_status.exit70:                               ; preds = %sw.bb1.i68, %sw.bb.i60
  %retval.0.i69 = phi i32 [ %37, %sw.bb1.i68 ], [ %31, %sw.bb.i60 ]
  %and12 = and i32 %retval.0.i69, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %read_status.exit70.if.end38_crit_edge, label %if.then14

read_status.exit70.if.end38_crit_edge:            ; preds = %read_status.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then14:                                        ; preds = %read_status.exit70
  %Flags.i71 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 0, i32 2
  %38 = ptrtoint ptr %Flags.i71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %Flags.i71, align 4
  %40 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i72 = icmp eq i32 %40, 0
  br i1 %tobool.not.i72, label %if.then14.if.else.i80_crit_edge, label %land.lhs.true.i77

if.then14.if.else.i80_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i80

land.lhs.true.i77:                                ; preds = %if.then14
  %bch.i73 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 11
  %nr.i74 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 0, i32 1
  %41 = ptrtoint ptr %nr.i74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr.i74, align 4
  %and.i75 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool3.not.i76 = icmp eq i32 %and.i75, 0
  br i1 %tobool3.not.i76, label %land.lhs.true.i77.if.else.i80_crit_edge, label %land.lhs.true.i77.Sel_BCS.exit88_crit_edge

land.lhs.true.i77.Sel_BCS.exit88_crit_edge:       ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %Sel_BCS.exit88

land.lhs.true.i77.if.else.i80_crit_edge:          ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i80

if.else.i80:                                      ; preds = %land.lhs.true.i77.if.else.i80_crit_edge, %if.then14.if.else.i80_crit_edge
  %Flags8.i78 = getelementptr %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 1, i32 2
  %43 = ptrtoint ptr %Flags8.i78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %Flags8.i78, align 4
  %45 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool10.not.i79 = icmp eq i32 %45, 0
  br i1 %tobool10.not.i79, label %if.else.i80.do.body19_crit_edge, label %land.lhs.true11.i85

if.else.i80.do.body19_crit_edge:                  ; preds = %if.else.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

land.lhs.true11.i85:                              ; preds = %if.else.i80
  %arrayidx7.i81 = getelementptr %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 1
  %nr14.i82 = getelementptr %struct.fritzcard, ptr %fc, i32 0, i32 11, i32 1, i32 1
  %46 = ptrtoint ptr %nr14.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr14.i82, align 4
  %and15.i83 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i83)
  %tobool16.not.i84 = icmp eq i32 %and15.i83, 0
  br i1 %tobool16.not.i84, label %land.lhs.true11.i85.do.body19_crit_edge, label %land.lhs.true11.i85.Sel_BCS.exit88_crit_edge

land.lhs.true11.i85.Sel_BCS.exit88_crit_edge:     ; preds = %land.lhs.true11.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %Sel_BCS.exit88

land.lhs.true11.i85.do.body19_crit_edge:          ; preds = %land.lhs.true11.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

Sel_BCS.exit88:                                   ; preds = %land.lhs.true11.i85.Sel_BCS.exit88_crit_edge, %land.lhs.true.i77.Sel_BCS.exit88_crit_edge
  %retval.0.i87 = phi ptr [ %bch.i73, %land.lhs.true.i77.Sel_BCS.exit88_crit_edge ], [ %arrayidx7.i81, %land.lhs.true11.i85.Sel_BCS.exit88_crit_edge ]
  %tobool16.not = icmp eq ptr %retval.0.i87, null
  br i1 %tobool16.not, label %Sel_BCS.exit88.do.body19_crit_edge, label %if.then17

Sel_BCS.exit88.do.body19_crit_edge:               ; preds = %Sel_BCS.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

if.then17:                                        ; preds = %Sel_BCS.exit88
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @HDLC_irq(ptr noundef nonnull %retval.0.i87, i32 noundef %retval.0.i69)
  br label %if.end38

do.body19:                                        ; preds = %Sel_BCS.exit88.do.body19_crit_edge, %land.lhs.true11.i85.do.body19_crit_edge, %if.else.i80.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HDLC_irq_main.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HDLC_irq_main, %if.then31)) #9
          to label %if.end38 [label %if.then31], !srcloc !262

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %name32 = getelementptr inbounds %struct.fritzcard, ptr %fc, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @HDLC_irq_main.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.85, ptr noundef %name32) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %do.body19, %if.then17, %read_status.exit70.if.end38_crit_edge, %if.end10.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNisac_irq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @HDLC_irq(ptr noundef %bch, i32 noundef %stat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %4 = and i32 %3, 1
  %and = xor i32 %4, 1
  %arrayidx = getelementptr %struct.fritzcard, ptr %1, i32 0, i32 10, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HDLC_irq.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HDLC_irq, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @HDLC_irq.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %6, i32 noundef %stat) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  %. = select i1 %cmp, i32 32512, i32 16128
  %.167 = select i1 %cmp, i32 128, i32 32
  %and8 = and i32 %stat, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end.handle_tx_crit_edge, label %if.then10

do.end.handle_tx_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_tx

if.then10:                                        ; preds = %do.end
  %and11 = and i32 %stat, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else34, label %do.end16

do.end16:                                         ; preds = %if.then10
  %name18 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name18, i32 noundef %10, i32 noundef %stat) #12
  %xml = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 2
  %11 = ptrtoint ptr %xml to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %xml, align 2
  %cmd = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 3
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd, align 1
  %14 = or i8 %13, 32
  store i8 %14, ptr %cmd, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 1)
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd, align 1
  %17 = and i8 %16, -33
  store i8 %17, ptr %cmd, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 1)
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 9
  %18 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_skb, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %do.end16.handle_tx_crit_edge, label %if.then31

do.end16.handle_tx_crit_edge:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_tx

if.then31:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_trim(ptr noundef nonnull %19, i32 noundef 0) #9
  br label %handle_tx

if.else34:                                        ; preds = %if.then10
  %and35 = and i32 %., %stat
  %shr = lshr exact i32 %and35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select = select i1 %tobool36.not, i32 %.167, i32 %shr
  tail call fastcc void @hdlc_empty_fifo(ptr noundef %bch, i32 noundef %spec.select)
  %rx_skb39 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 9
  %20 = ptrtoint ptr %rx_skb39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_skb39, align 4
  %tobool40.not = icmp eq ptr %21, null
  br i1 %tobool40.not, label %if.else34.handle_tx_crit_edge, label %if.end42

if.else34.handle_tx_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_tx

if.end42:                                         ; preds = %if.else34
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %22 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %Flags, align 4
  %24 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @recv_Bchannel(ptr noundef %bch, i32 noundef 0, i1 noundef zeroext false) #9
  br label %handle_tx

if.else46:                                        ; preds = %if.end42
  %and47 = and i32 %stat, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else46.handle_tx_crit_edge, label %if.then49

if.else46.handle_tx_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_tx

if.then49:                                        ; preds = %if.else46
  %and50 = and i32 %stat, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 6
  br i1 %cmp51, label %if.then53, label %do.end57

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @recv_Bchannel(ptr noundef %bch, i32 noundef 0, i1 noundef zeroext false) #9
  br label %handle_tx

do.end57:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %name59 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name59) #12
  %25 = ptrtoint ptr %rx_skb39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_skb39, align 4
  tail call void @skb_trim(ptr noundef %26, i32 noundef 0) #9
  br label %handle_tx

handle_tx:                                        ; preds = %do.end57, %if.then53, %if.else46.handle_tx_crit_edge, %if.then45, %if.else34.handle_tx_crit_edge, %if.then31, %do.end16.handle_tx_crit_edge, %do.end.handle_tx_crit_edge
  %and68 = and i32 %stat, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else112, label %do.end73

do.end73:                                         ; preds = %handle_tx
  %name75 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr, align 4
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 17
  %29 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_skb, align 4
  %tobool78.not = icmp eq ptr %30, null
  %cond = select i1 %tobool78.not, ptr @.str.96, ptr @.str.95
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name75, i32 noundef %28, i32 noundef %stat, ptr noundef nonnull %cond) #12
  %31 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_skb, align 4
  %tobool81.not = icmp eq ptr %32, null
  br i1 %tobool81.not, label %do.end73.if.else91_crit_edge, label %land.lhs.true

do.end73.if.else91_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else91

land.lhs.true:                                    ; preds = %do.end73
  %len83 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %len83 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool84.not = icmp eq i32 %34, 0
  br i1 %tobool84.not, label %land.lhs.true.if.else91_crit_edge, label %if.then85

land.lhs.true.if.else91_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else91

if.then85:                                        ; preds = %land.lhs.true
  %Flags86 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %35 = ptrtoint ptr %Flags86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %Flags86, align 4
  %37 = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool88.not = icmp eq i32 %37, 0
  br i1 %tobool88.not, label %if.then89, label %if.then85.if.end99_crit_edge

if.then85.if.end99_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then89:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
  %38 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %tx_idx, align 4
  br label %if.end99

if.else91:                                        ; preds = %land.lhs.true.if.else91_crit_edge, %do.end73.if.else91_crit_edge
  %Flags92 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %39 = ptrtoint ptr %Flags92 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %Flags92, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool94.not = icmp eq i32 %41, 0
  br i1 %tobool94.not, label %if.else91.if.end99_crit_edge, label %if.then95

if.else91.if.end99_crit_edge:                     ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then95:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %Flags92) #9
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.else91.if.end99_crit_edge, %if.then89, %if.then85.if.end99_crit_edge
  %xml101 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 2
  %42 = ptrtoint ptr %xml101 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %xml101, align 2
  %cmd103 = getelementptr inbounds %struct.hdlc_stat_reg, ptr %arrayidx, i32 0, i32 3
  %43 = ptrtoint ptr %cmd103 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cmd103, align 1
  %45 = or i8 %44, -128
  store i8 %45, ptr %cmd103, align 1
  tail call fastcc void @write_ctrl(ptr noundef %bch, i32 noundef 1)
  %46 = ptrtoint ptr %cmd103 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cmd103, align 1
  %48 = and i8 %47, 127
  store i8 %48, ptr %cmd103, align 1
  br label %cleanup.sink.split

if.else112:                                       ; preds = %handle_tx
  %and113 = and i32 %stat, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.else112.cleanup_crit_edge, label %if.else112.cleanup.sink.split_crit_edge

if.else112.cleanup.sink.split_crit_edge:          ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else112.cleanup_crit_edge:                     ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else112.cleanup.sink.split_crit_edge, %if.end99
  tail call fastcc void @HDLC_irq_xpr(ptr noundef %bch)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else112.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdlc_empty_fifo(ptr noundef %bch, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdlc_empty_fifo.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdlc_empty_fifo, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !262

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdlc_empty_fifo.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.98, ptr noundef %name, ptr noundef nonnull @.str.97, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %2 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %Flags, align 4
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dropcnt = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 25
  %5 = ptrtoint ptr %dropcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dropcnt, align 4
  %add = add i32 %6, %count
  store i32 %add, ptr %dropcnt, align 4
  br label %if.end17

if.else:                                          ; preds = %do.end
  %call6 = tail call i32 @bchannel_get_rxbuf(ptr noundef %bch, i32 noundef %count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end10, label %if.end15

do.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %name12 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name12, i32 noundef %8, i32 noundef %count) #12
  br label %cleanup

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 9
  %9 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_skb, align 4
  %call16 = tail call ptr @skb_put(ptr noundef %10, i32 noundef %count) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then5
  %p.0 = phi ptr [ null, %if.then5 ], [ %call16, %if.end15 ]
  %type = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp18 = icmp eq i8 %12, 1
  %addr21 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr21, align 8
  br i1 %cmp18, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %nr22 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %15 = ptrtoint ptr %nr22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp23 = icmp eq i32 %16, 2
  %cond = select i1 %cmp23, i32 24, i32 16
  %add25 = add i32 %cond, %14
  br label %if.end39

if.else26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %add28 = add i32 %14, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  tail call void @arm_heavy_mb() #9
  %nr32 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %17 = ptrtoint ptr %nr32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp33 = icmp eq i32 %18, 2
  %19 = select i1 %cmp33, i32 16777216, i32 0
  %20 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr21, align 8
  %and = and i32 %21, 1048575
  %add37 = or i32 %and, -18874368
  %22 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #9, !srcloc !251
  br label %if.end39

if.end39:                                         ; preds = %if.else26, %if.then20
  %addr.0 = phi i32 [ %add25, %if.then20 ], [ %add28, %if.else26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp40121 = icmp sgt i32 %count, 0
  br i1 %cmp40121, label %while.body.lr.ph, label %if.end39.while.end_crit_edge

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end39
  %and42 = and i32 %addr.0, 1048575
  %add43 = or i32 %and42, -18874368
  %23 = inttoptr i32 %add43 to ptr
  %tobool47.not = icmp eq ptr %p.0, null
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %while.body.lr.ph
  %ptr.0123 = phi ptr [ %p.0, %while.body.lr.ph ], [ %ptr.1, %if.end52.while.body_crit_edge ]
  %cnt.0122 = phi i32 [ 0, %while.body.lr.ph ], [ %add53, %if.end52.while.body_crit_edge ]
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #9, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  br i1 %tobool47.not, label %while.body.if.end52_crit_edge, label %do.body49

while.body.if.end52_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body49:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %ptr.0123 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %ptr.0123, align 1
  %incdec.ptr = getelementptr i32, ptr %ptr.0123, i32 1
  br label %if.end52

if.end52:                                         ; preds = %do.body49, %while.body.if.end52_crit_edge
  %ptr.1 = phi ptr [ %incdec.ptr, %do.body49 ], [ %ptr.0123, %while.body.if.end52_crit_edge ]
  %add53 = add i32 %cnt.0122, 4
  %cmp40 = icmp slt i32 %add53, %count
  br i1 %cmp40, label %if.end52.while.body_crit_edge, label %if.end52.while.end_crit_edge

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %if.end39.while.end_crit_edge
  %tobool54.not = icmp eq ptr %p.0, null
  br i1 %tobool54.not, label %while.end.cleanup_crit_edge, label %land.lhs.true

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %while.end
  %26 = load i32, ptr @debug, align 4
  %and55 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %land.lhs.true.cleanup_crit_edge, label %if.then57

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %log = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 12
  %nr59 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %27 = ptrtoint ptr %nr59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr59, align 4
  %name60 = getelementptr inbounds %struct.fritzcard, ptr %1, i32 0, i32 2
  %call62 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 63, ptr noundef nonnull @.str.100, i32 noundef %28, ptr noundef %name60, i32 noundef %count)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdlc_empty_fifo.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdlc_empty_fifo, %if.then75)) #9
          to label %cleanup [label %if.then75], !srcloc !262

if.then75:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.29, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %p.0, i32 noundef %count, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.then57, %land.lhs.true.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Bchannel(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @HDLC_irq_xpr(ptr noundef %bch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 17
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hdlc_fill_fifo(ptr noundef %bch)
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @consume_skb(ptr noundef %1) #9
  %call = tail call i32 @get_next_bframe(ptr noundef %bch) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hdlc_fill_fifo(ptr noundef %bch)
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %Flags) #9
  br label %if.end12

if.else6:                                         ; preds = %if.else
  %Flags7 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %6 = ptrtoint ptr %Flags7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %Flags7, align 4
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %if.else6.if.end12_crit_edge, label %if.then10

if.else6.if.end12_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hdlc_fill_fifo(ptr noundef %bch)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else6.if.end12_crit_edge, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_get_rxbuf(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_bframe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
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
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !219, !221, !222, !224, !225, !226, !228, !229, !231, !232, !233, !234, !236, !237, !238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 161, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 162, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version462, !6, !"__UNIQUE_ID_version462", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 163, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 164, i32 1}
!13 = !{ptr @__UNIQUE_ID_debug463, !14, !"__UNIQUE_ID_debug463", i1 false, i1 false}
!14 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 165, i32 1}
!15 = !{ptr @__initcall__kmod_avmfritz__483_1162_AVM_init6, !16, !"__initcall__kmod_avmfritz__483_1162_AVM_init6", i1 false, i1 false}
!16 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1162, i32 1}
!17 = !{ptr @__exitcall_AVM_cleanup, !18, !"__exitcall_AVM_cleanup", i1 false, i1 false}
!18 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1163, i32 1}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 23, i32 12}
!21 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @__param_ops_debug, !12, !"__param_ops_debug", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 135, i32 8}
!25 = !{ptr @card_lock, !24, !"card_lock", i1 false, i1 false}
!26 = !{ptr @Cards, !27, !"Cards", i1 false, i1 false}
!27 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 134, i32 8}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1142, i32 10}
!30 = !{ptr @fcpci_driver, !31, !"fcpci_driver", i1 false, i1 false}
!31 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1141, i32 26}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1134, i32 26}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1136, i32 26}
!36 = !{ptr @fcpci_ids, !37, !"fcpci_ids", i1 false, i1 false}
!37 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1132, i32 35}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1094, i32 3}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @fritzpci_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @fritzpci_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1108, i32 2}
!46 = !{ptr @fritzpci_probe._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @fritzpci_probe._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1031, i32 44}
!50 = !{ptr @setup_instance.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1038, i32 2}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1069, i32 3}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @setup_instance._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @setup_instance._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @AVM_cnt, !59, !"AVM_cnt", i1 false, i1 false}
!59 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 22, i32 12}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 923, i32 2}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @avm_dctrl.__UNIQUE_ID_ddebug480, !61, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 934, i32 4}
!66 = !{ptr @avm_dctrl._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @avm_dctrl._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 937, i32 3}
!70 = !{ptr @avm_dctrl.__UNIQUE_ID_ddebug481, !69, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 945, i32 3}
!73 = !{ptr @avm_dctrl.__UNIQUE_ID_ddebug482, !72, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 887, i32 3}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @channel_ctrl._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @channel_ctrl._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 470, i32 3}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @hdlc_fill_fifo.__UNIQUE_ID_ddebug468, !80, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 474, i32 3}
!85 = !{ptr @hdlc_fill_fifo.__UNIQUE_ID_ddebug469, !84, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 500, i32 31}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 502, i32 3}
!90 = !{ptr @hdlc_fill_fifo.__UNIQUE_ID_ddebug470, !89, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!91 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 343, i32 2}
!94 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @modehdlc.__UNIQUE_ID_ddebug465, !93, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 383, i32 3}
!98 = !{ptr @modehdlc._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @modehdlc._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 280, i32 2}
!102 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @write_ctrl.__UNIQUE_ID_ddebug464, !101, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 843, i32 2}
!106 = !{ptr @avm_bctrl.__UNIQUE_ID_ddebug479, !105, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 861, i32 3}
!109 = !{ptr @avm_bctrl._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @avm_bctrl._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 958, i32 3}
!113 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @setup_fritz._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @setup_fritz._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 968, i32 4}
!118 = !{ptr @setup_fritz._entry.39, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @setup_fritz._entry_ptr.41, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 969, i32 4}
!122 = !{ptr @setup_fritz._entry.42, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @setup_fritz._entry_ptr.44, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 971, i32 4}
!126 = !{ptr @setup_fritz._entry.45, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @setup_fritz._entry_ptr.47, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 980, i32 4}
!130 = !{ptr @setup_fritz._entry.48, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @setup_fritz._entry_ptr.50, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 981, i32 4}
!134 = !{ptr @setup_fritz._entry.51, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @setup_fritz._entry_ptr.53, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @setup_fritz._entry.54, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 983, i32 4}
!138 = !{ptr @setup_fritz._entry_ptr.55, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 990, i32 3}
!141 = !{ptr @setup_fritz._entry.56, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @setup_fritz._entry_ptr.58, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 993, i32 2}
!145 = !{ptr @setup_fritz._entry.59, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @setup_fritz._entry_ptr.61, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 788, i32 3}
!151 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @init_card._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @init_card._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 797, i32 4}
!156 = !{ptr @init_card._entry.66, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @init_card._entry_ptr.68, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 816, i32 4}
!160 = !{ptr @init_card._entry.69, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @init_card._entry_ptr.71, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 819, i32 4}
!164 = !{ptr @init_card._entry.72, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @init_card._entry_ptr.74, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 754, i32 3}
!168 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @reset_avm._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @reset_avm._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 770, i32 3}
!173 = !{ptr @reset_avm._entry.77, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @reset_avm._entry_ptr.79, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 655, i32 2}
!177 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @avm_fritzv2_interrupt.__UNIQUE_ID_ddebug475, !176, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 670, i32 3}
!181 = !{ptr @avm_fritzv2_interrupt.__UNIQUE_ID_ddebug476, !180, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 607, i32 4}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @HDLC_irq_main.__UNIQUE_ID_ddebug472, !183, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 615, i32 4}
!188 = !{ptr @HDLC_irq_main.__UNIQUE_ID_ddebug473, !187, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 531, i32 2}
!191 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @HDLC_irq.__UNIQUE_ID_ddebug471, !190, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 541, i32 4}
!195 = !{ptr @HDLC_irq._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @HDLC_irq._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 564, i32 6}
!199 = !{ptr @HDLC_irq._entry.89, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @HDLC_irq._entry_ptr.91, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 577, i32 3}
!203 = !{ptr @HDLC_irq._entry.92, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @HDLC_irq._entry_ptr.94, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 398, i32 2}
!209 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @hdlc_empty_fifo.__UNIQUE_ID_ddebug466, !208, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 405, i32 4}
!213 = !{ptr @hdlc_empty_fifo._entry, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @hdlc_empty_fifo._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 429, i32 31}
!217 = !{ptr @hdlc_empty_fifo.__UNIQUE_ID_ddebug467, !218, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!218 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 431, i32 3}
!219 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 628, i32 2}
!221 = !{ptr @avm_fritz_interrupt.__UNIQUE_ID_ddebug474, !220, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!222 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 737, i32 2}
!224 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @clear_pending_hdlc_ints.__UNIQUE_ID_ddebug477, !223, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 739, i32 2}
!228 = !{ptr @clear_pending_hdlc_ints.__UNIQUE_ID_ddebug478, !227, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1129, i32 4}
!231 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @fritz_remove_pci._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @fritz_remove_pci._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.107, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/isdn/hardware/mISDN/avmfritz.c", i32 1152, i32 2}
!236 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @AVM_init._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @AVM_init._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{i64 4223827}
!249 = !{i64 2157318302}
!250 = !{i64 2157318563}
!251 = !{i64 4223409}
!252 = !{i64 2157319486}
!253 = !{i64 2157325234}
!254 = !{i64 2157325909}
!255 = !{i64 2157229033}
!256 = !{i64 4223212}
!257 = !{i64 2157219721}
!258 = !{i64 2157219237}
!259 = !{i64 2157216643}
!260 = !{i64 2157216280}
!261 = !{i64 2157229380}
!262 = !{i64 2148742601, i64 2148742606, i64 2148742619, i64 2148742663, i64 2148742697, i64 2148742718}
!263 = !{!"branch_weights", i32 1, i32 2000}
!264 = !{i64 2157223751}
!265 = !{i64 2157222537}
!266 = !{i64 2157223034}
!267 = !{i64 2157248001}
!268 = !{i64 2157248814}
!269 = !{i64 2157215598}
!270 = !{i64 4223607}
!271 = !{i64 2157216051}
!272 = !{i64 2157217009}
!273 = !{i64 2157217525}
!274 = !{i64 2157218077}
!275 = !{i64 2157218977}
!276 = !{i64 2157220201}
!277 = !{i64 2157221095}
!278 = !{i64 2157221352}
!279 = !{i64 2157221832}
!280 = !{i64 2157282804}
!281 = !{i64 2157286137}
!282 = !{i64 2157286422}
!283 = !{i64 2157266877}
!284 = !{i64 2157271562}
!285 = !{i64 2157272440}
!286 = !{i64 2157264328}
!287 = !{i64 2157228807}
!288 = !{i64 2157226927}
!289 = !{i64 2157227874}
!290 = !{i64 2157238527}
!291 = !{i64 2157240072}
