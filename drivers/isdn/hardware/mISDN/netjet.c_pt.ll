; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/netjet.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/netjet.c"
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
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tiger_hw = type { %struct.list_head, ptr, [20 x i8], i32, i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.isac_hw, %struct.tiger_dma, %struct.tiger_dma, [2 x %struct.tiger_ch], i8, i8, i8, i8, i8, [64 x i8] }
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
%struct.tiger_dma = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.tiger_ch = type { %struct.bchannel, ptr, i32, i32, i32, i16, i16, %struct.isdnhdlc_vars, %struct.isdnhdlc_vars, ptr, ptr }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.isdnhdlc_vars = type { i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8 }
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

@__UNIQUE_ID_author459 = internal constant [27 x i8] c"netjet.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [47 x i8] c"netjet.file=drivers/isdn/hardware/mISDN/netjet\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [22 x i8] c"netjet.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version462 = internal constant [19 x i8] c"netjet.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"netjet\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [13 x i8] c"netjet.debug\00", align 1
@__param_ops_debug = internal constant %struct.kernel_param_ops { i32 0, ptr @set_debug, ptr @param_get_uint, ptr null }, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @__param_ops_debug, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debug463 = internal constant [36 x i8] c"netjet.parm=debug:Netjet debug mask\00", section ".modinfo", align 1
@nj_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @nj_pci_ids, ptr @nj_probe, ptr @nj_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_netjet__482_1153_nj_init6 = internal global ptr @nj_init, section ".initcall6.init", align 4
@__exitcall_nj_cleanup = internal global ptr @nj_cleanup, section ".exitcall.exit", align 4
@card_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@Cards = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @Cards, ptr @Cards }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card_lock\00", [22 x i8] zeroinitializer }, align 32
@nj_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 57689, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nj_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015Netjet: Digium X100P/X101P not handled\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nj_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/isdn/hardware/mISDN/netjet.c\00", [59 x i8] zeroinitializer }, align 32
@nj_probe._entry_ptr = internal global ptr @nj_probe._entry, section ".printk_index", align 4
@nj_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015Netjet: Enter!Now not handled yet\0A\00", [59 x i8] zeroinitializer }, align 32
@nj_probe._entry_ptr.9 = internal global ptr @nj_probe._entry.7, section ".printk_index", align 4
@nj_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015Netjet: Digium TDM400P not handled yet\0A\00", [54 x i8] zeroinitializer }, align 32
@nj_probe._entry_ptr.12 = internal global ptr @nj_probe._entry.10, section ".printk_index", align 4
@nj_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016No kmem for Netjet\0A\00", [42 x i8] zeroinitializer }, align 32
@nj_probe._entry_ptr.15 = internal global ptr @nj_probe._entry.13, section ".printk_index", align 4
@nj_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016nj_probe(mISDN): found adapter at %s\0A\00", [56 x i8] zeroinitializer }, align 32
@nj_probe._entry_ptr.18 = internal global ptr @nj_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netjet.%d\00", [22 x i8] zeroinitializer }, align 32
@nj_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@setup_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015Netjet %d cards installed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_instance\00", [17 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr = internal global ptr @setup_instance._entry, section ".printk_index", align 4
@nj_dctrl.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.6, ptr @.str.24, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nj_dctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s cmd:%x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@nj_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: cannot get module\0A\00", [39 x i8] zeroinitializer }, align 32
@nj_dctrl._entry_ptr = internal global ptr @nj_dctrl._entry, section ".printk_index", align 4
@nj_dctrl.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.6, ptr @.str.26, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: dev(%d) close from %p\0A\00", [37 x i8] zeroinitializer }, align 32
@nj_dctrl.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.6, ptr @.str.27, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s unknown command %x\0A\00", [37 x i8] zeroinitializer }, align 32
@channel_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: %s unknown Op %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_ctrl\00", [19 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr = internal global ptr @channel_ctrl._entry, section ".printk_index", align 4
@fill_dma.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fill_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: %s B%1d %d/%d/%d/%d state %x idx %d/%d\0A\00", [52 x i8] zeroinitializer }, align 32
@fill_dma.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.6, ptr @.str.32, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: B%1d hdlc encoded %d in %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-send %s %d \00", [47 x i8] zeroinitializer }, align 32
@fill_dma.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.6, ptr @.str.34, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@resync.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.6, ptr @.str.37, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resync\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %s B%1d free %d idx %d/%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mode_tiger.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mode_tiger\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: B%1d protocol %x-->%x\0A\00", [37 x i8] zeroinitializer }, align 32
@mode_tiger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.6, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: %s protocol %x not handled\0A\00", [62 x i8] zeroinitializer }, align 32
@mode_tiger._entry_ptr = internal global ptr @mode_tiger._entry, section ".printk_index", align 4
@mode_tiger.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.6, ptr @.str.41, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s ctrl %x irq  %02x/%02x idx %d/%d\0A\00", [55 x i8] zeroinitializer }, align 32
@fill_mem.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.6, ptr @.str.43, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fill_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: B%1d fill %02x len %d idx %d/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@nj_bctrl.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.6, ptr @.str.24, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nj_bctrl\00", [23 x i8] zeroinitializer }, align 32
@nj_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.44, ptr @.str.6, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s unknown prim(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@nj_bctrl._entry_ptr = internal global ptr @nj_bctrl._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@nj_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: NETjet config port %#x-%#x already in use\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nj_setup\00", [23 x i8] zeroinitializer }, align 32
@nj_setup._entry_ptr = internal global ptr @nj_setup._entry, section ".printk_index", align 4
@nj_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: couldn't get interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nj_init_card\00", [19 x i8] zeroinitializer }, align 32
@nj_init_card._entry_ptr = internal global ptr @nj_init_card._entry, section ".printk_index", align 4
@nj_irq.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.6, ptr @.str.51, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nj_irq\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: IRQSTAT0 %02x IRQSTAT1 %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@nj_irq.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.6, ptr @.str.52, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: DMA Status %02x/%02x/%02x %d/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@send_tiger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: tiger warn write double dma %x/%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"send_tiger\00", [21 x i8] zeroinitializer }, align 32
@send_tiger._entry_ptr = internal global ptr @send_tiger._entry, section ".printk_index", align 4
@send_tiger_bc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.6, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: B%1d TX underrun state %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"send_tiger_bc\00", [18 x i8] zeroinitializer }, align 32
@send_tiger_bc._entry_ptr = internal global ptr @send_tiger_bc._entry, section ".printk_index", align 4
@send_tiger_bc.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.6, ptr @.str.57, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: B%1d TX no data free %d idx %d/%d\0A\00", [57 x i8] zeroinitializer }, align 32
@fill_hdlc_flag.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.6, ptr @.str.59, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fill_hdlc_flag\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: %s B%1d %d state %x idx %d/%d\0A\00", [61 x i8] zeroinitializer }, align 32
@fill_hdlc_flag.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.6, ptr @.str.60, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: B%1d hdlc encoded %d flags\0A\00", [32 x i8] zeroinitializer }, align 32
@fill_hdlc_flag.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.6, ptr @.str.34, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@read_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: B%1d overrun at idx %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_dma\00", [23 x i8] zeroinitializer }, align 32
@read_dma._entry_ptr = internal global ptr @read_dma._entry, section ".printk_index", align 4
@read_dma._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.6, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s.B%d: No memory for %d bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@read_dma._entry_ptr.65 = internal global ptr @read_dma._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"B%1d-recv %s %d \00", [47 x i8] zeroinitializer }, align 32
@read_dma.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.6, ptr @.str.34, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@read_dma._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.6, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@read_dma._entry_ptr.68 = internal global ptr @read_dma._entry.67, section ".printk_index", align 4
@read_dma._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.6, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: B%1d receive frame CRC error\0A\00", [60 x i8] zeroinitializer }, align 32
@read_dma._entry_ptr.71 = internal global ptr @read_dma._entry.69, section ".printk_index", align 4
@read_dma._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.6, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: B%1d receive framing error\0A\00", [62 x i8] zeroinitializer }, align 32
@read_dma._entry_ptr.74 = internal global ptr @read_dma._entry.72, section ".printk_index", align 4
@read_dma._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.6, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: B%1d receive frame too long (> %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@read_dma._entry_ptr.77 = internal global ptr @read_dma._entry.75, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@inittiger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.6, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: No DMA memory\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"inittiger\00", [22 x i8] zeroinitializer }, align 32
@inittiger._entry_ptr = internal global ptr @inittiger._entry, section ".printk_index", align 4
@inittiger._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.6, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: DMA outside 32 bit\0A\00", [38 x i8] zeroinitializer }, align 32
@inittiger._entry_ptr.82 = internal global ptr @inittiger._entry.80, section ".printk_index", align 4
@inittiger._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.6, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: no B%d send buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@inittiger._entry_ptr.85 = internal global ptr @inittiger._entry.83, section ".printk_index", align 4
@inittiger._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.6, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: no B%d recv buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@inittiger._entry_ptr.88 = internal global ptr @inittiger._entry.86, section ".printk_index", align 4
@inittiger._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.6, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015%s: send buffer phy %#x - %#x - %#x  virt %p size %zu u32\0A\00", [35 x i8] zeroinitializer }, align 32
@inittiger._entry_ptr.91 = internal global ptr @inittiger._entry.89, section ".printk_index", align 4
@inittiger._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.79, ptr @.str.6, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015%s: recv buffer phy %#x - %#x - %#x  virt %p size %zu u32\0A\00", [35 x i8] zeroinitializer }, align 32
@inittiger._entry_ptr.94 = internal global ptr @inittiger._entry.92, section ".printk_index", align 4
@nj_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.6, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s drvdata already removed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nj_remove\00", [22 x i8] zeroinitializer }, align 32
@nj_remove._entry_ptr = internal global ptr @nj_remove._entry, section ".printk_index", align 4
@nj_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.6, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015Netjet PCI driver Rev. %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nj_init\00", [24 x i8] zeroinitializer }, align 32
@nj_init._entry_ptr = internal global ptr @nj_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 85, i64 32902, i64 45312]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2048]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 33, i64 34]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 4294967293, i64 4294967294, i64 4294967295]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 118, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 89, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [10 x i8] c"nj_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1132, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"card_lock\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"Cards\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 87, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 88, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"nj_pci_ids\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1125, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1057, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1063, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1069, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1075, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1087, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1003, i32 44 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"nj_cnt\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 90, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1010, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1040, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 878, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 889, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 892, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 900, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 841, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 543, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 554, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 591, i32 33 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 593, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 480, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 202, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 254, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 262, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 180, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 797, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 815, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 986, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 919, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 688, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 717, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 661, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 632, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 644, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 496, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 503, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 372, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 383, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 414, i32 7 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 423, i32 5 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 428, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 431, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 434, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 303, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 307, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 313, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 318, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 333, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 351, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1119, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [40 x i8] c"../drivers/isdn/hardware/mISDN/netjet.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1143, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_debug463, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__UNIQUE_ID_version462, ptr @__exitcall_nj_cleanup, ptr @__initcall__kmod_netjet__482_1153_nj_init6, ptr @__modver_attr, ptr @__param_debug, ptr @channel_ctrl._entry, ptr @channel_ctrl._entry_ptr, ptr @inittiger._entry, ptr @inittiger._entry.80, ptr @inittiger._entry.83, ptr @inittiger._entry.86, ptr @inittiger._entry.89, ptr @inittiger._entry.92, ptr @inittiger._entry_ptr, ptr @inittiger._entry_ptr.82, ptr @inittiger._entry_ptr.85, ptr @inittiger._entry_ptr.88, ptr @inittiger._entry_ptr.91, ptr @inittiger._entry_ptr.94, ptr @mode_tiger._entry, ptr @mode_tiger._entry_ptr, ptr @nj_bctrl._entry, ptr @nj_bctrl._entry_ptr, ptr @nj_cleanup, ptr @nj_dctrl._entry, ptr @nj_dctrl._entry_ptr, ptr @nj_init._entry, ptr @nj_init._entry_ptr, ptr @nj_init_card._entry, ptr @nj_init_card._entry_ptr, ptr @nj_probe._entry, ptr @nj_probe._entry.10, ptr @nj_probe._entry.13, ptr @nj_probe._entry.16, ptr @nj_probe._entry.7, ptr @nj_probe._entry_ptr, ptr @nj_probe._entry_ptr.12, ptr @nj_probe._entry_ptr.15, ptr @nj_probe._entry_ptr.18, ptr @nj_probe._entry_ptr.9, ptr @nj_remove._entry, ptr @nj_remove._entry_ptr, ptr @nj_setup._entry, ptr @nj_setup._entry_ptr, ptr @read_dma._entry, ptr @read_dma._entry.63, ptr @read_dma._entry.67, ptr @read_dma._entry.69, ptr @read_dma._entry.72, ptr @read_dma._entry.75, ptr @read_dma._entry_ptr, ptr @read_dma._entry_ptr.65, ptr @read_dma._entry_ptr.68, ptr @read_dma._entry_ptr.71, ptr @read_dma._entry_ptr.74, ptr @read_dma._entry_ptr.77, ptr @send_tiger._entry, ptr @send_tiger._entry_ptr, ptr @send_tiger_bc._entry, ptr @send_tiger_bc._entry_ptr, ptr @setup_instance._entry, ptr @setup_instance._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @nj_driver, ptr @card_lock, ptr @Cards, ptr @.str.3, ptr @nj_pci_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @nj_cnt, ptr @setup_instance.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Cards to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_tiger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tiger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tiger_bc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dma._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dma._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dma._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dma._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dma._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inittiger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inittiger._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inittiger._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inittiger._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inittiger._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inittiger._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nj_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nj_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @nj_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nj_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2) #12
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @nj_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
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
  %debug.i = getelementptr inbounds %struct.tiger_hw, ptr %card.010, i32 0, i32 11, i32 0, i32 15
  %1 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %debug.i, align 4
  %debug1.i = getelementptr inbounds %struct.tiger_hw, ptr %card.010, i32 0, i32 14, i32 0, i32 0, i32 21
  %2 = ptrtoint ptr %debug1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %0, ptr %debug1.i, align 8
  %debug5.i = getelementptr %struct.tiger_hw, ptr %card.010, i32 0, i32 14, i32 1, i32 0, i32 21
  %3 = ptrtoint ptr %debug5.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %debug5.i, align 8
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nj_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg) #9
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cfg, align 4, !annotation !235
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %1 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %subsystem_vendor, align 4
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %entry.if.end36_crit_edge [
    i16 -32634, label %land.lhs.true
    i16 85, label %land.lhs.true9
    i16 -20224, label %land.lhs.true25
  ]

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %4 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp3 = icmp eq i16 %5, 3
  br i1 %cmp3, label %do.end, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %cleanup

land.lhs.true9:                                   ; preds = %entry
  %subsystem_device10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %6 = ptrtoint ptr %subsystem_device10 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp12 = icmp eq i16 %7, 2
  br i1 %cmp12, label %do.end17, label %land.lhs.true9.if.end36_crit_edge

land.lhs.true9.if.end36_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end17:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

land.lhs.true25:                                  ; preds = %entry
  %subsystem_device26 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device26 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %9)
  %cmp28 = icmp eq i16 %9, 3
  br i1 %cmp28, label %do.end33, label %land.lhs.true25.if.end36_crit_edge

land.lhs.true25.if.end36_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end33:                                         ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true25.if.end36_crit_edge, %land.lhs.true9.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %entry.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 2416) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %pdev45 = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pdev45 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pdev, ptr %pdev45, align 8
  %call46 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.end52, label %if.then48

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.end52:                                         ; preds = %if.end44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end52.pci_name.exit_crit_edge

do.end52.pci_name.exit_crit_edge:                 ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end52.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %do.end52.pci_name.exit_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i) #12
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call56 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %cfg) #9
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg, align 4
  %and = lshr i32 %17, 20
  %and.lobit = and i32 %and, 1
  %18 = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.lobit, ptr %18, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource, align 8
  %base = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %base, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %name.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 2
  %24 = load i32, ptr @nj_cnt, align 4
  %add.i = add i32 %24, 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 19, ptr noundef nonnull @.str.19, i32 noundef %add.i) #9
  %call1.i = call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %25, ptr noundef nonnull @Cards) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %pci_name.exit.list_add_tail.exit.i_crit_edge

pci_name.exit.list_add_tail.exit.i_crit_edge:     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @Cards, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i, ptr %25, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %pci_name.exit.list_add_tail.exit.i_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call1.i) #9
  %29 = load i32, ptr @debug, align 4
  %debug.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 15
  %30 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %debug.i.i, align 4
  %debug1.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 21
  %31 = ptrtoint ptr %debug1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %debug1.i.i, align 8
  %debug5.i.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 21
  %32 = ptrtoint ptr %debug5.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %debug5.i.i, align 8
  %isac.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11
  %name12.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 3
  %33 = ptrtoint ptr %name12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %name.i, ptr %name12.i, align 8
  %lock.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @setup_instance.__key, i16 noundef signext 3) #9
  %hwlock.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 4
  %34 = ptrtoint ptr %hwlock.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lock.i, ptr %hwlock.i, align 4
  %call20.i = call i32 @mISDNisac_init(ptr noundef %isac.i, ptr noundef nonnull %call7.i.i) #9
  %Bprotocols.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %Bprotocols.i, align 4
  %ctrl.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 9
  %36 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nj_dctrl, ptr %ctrl.i, align 8
  %channelmap.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 5
  %bchannels.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0
  %nr.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %nr.i, align 4
  %38 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %channelmap.i, align 4
  %conv1.i.i = or i8 %39, 2
  store i8 %conv1.i.i, ptr %channelmap.i, align 4
  %call36.i = call i32 @mISDN_initbchannel(ptr noundef %arrayidx.i, i16 noundef zeroext 2056, i16 noundef zeroext 64) #9
  %hw.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 5
  %40 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %hw.i, align 4
  %send.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 7
  %41 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @nj_l2l1B, ptr %send.i, align 8
  %ctrl47.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 9
  %42 = ptrtoint ptr %ctrl47.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @nj_bctrl, ptr %ctrl47.i, align 8
  %nr53.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %nr53.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %nr53.i, align 4
  %44 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bchannels.i, align 4
  %call.i.i133.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %bchannels.i, ptr noundef %45) #9
  br i1 %call.i.i133.i, label %if.end.i.i135.i, label %list_add_tail.exit.i.list_add.exit.i_crit_edge

list_add_tail.exit.i.list_add.exit.i_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i135.i:                                  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx.i, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %arrayidx.i, align 8
  %prev3.i.i134.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %bchannels.i, ptr %prev3.i.i134.i, align 4
  %49 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %arrayidx.i, ptr %bchannels.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i135.i, %list_add_tail.exit.i.list_add.exit.i_crit_edge
  %50 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %hw.i, align 4
  %arrayidx.1.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1
  %nr.1.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %nr.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %nr.1.i, align 4
  %52 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %channelmap.i, align 4
  %conv1.i.1.i = or i8 %53, 4
  store i8 %conv1.i.1.i, ptr %channelmap.i, align 4
  %call36.1.i = call i32 @mISDN_initbchannel(ptr noundef %arrayidx.1.i, i16 noundef zeroext 2056, i16 noundef zeroext 64) #9
  %hw.1.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 5
  %54 = ptrtoint ptr %hw.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %hw.1.i, align 4
  %send.1.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 7
  %55 = ptrtoint ptr %send.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @nj_l2l1B, ptr %send.1.i, align 8
  %ctrl47.1.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 9
  %56 = ptrtoint ptr %ctrl47.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @nj_bctrl, ptr %ctrl47.1.i, align 8
  %nr53.1.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 2
  %57 = ptrtoint ptr %nr53.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %nr53.1.i, align 4
  %58 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bchannels.i, align 4
  %call.i.i133.1.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.1.i, ptr noundef %bchannels.i, ptr noundef %59) #9
  br i1 %call.i.i133.1.i, label %if.end.i.i135.1.i, label %list_add.exit.i.list_add.exit.1.i_crit_edge

list_add.exit.i.list_add.exit.1.i_crit_edge:      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.1.i

if.end.i.i135.1.i:                                ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.1.i, ptr %prev1.i.i.1.i, align 4
  %61 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %arrayidx.1.i, align 8
  %prev3.i.i134.1.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 0, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i134.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %bchannels.i, ptr %prev3.i.i134.1.i, align 4
  %63 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %arrayidx.1.i, ptr %bchannels.i, align 4
  br label %list_add.exit.1.i

list_add.exit.1.i:                                ; preds = %if.end.i.i135.1.i, %list_add.exit.i.list_add.exit.1.i_crit_edge
  %64 = ptrtoint ptr %hw.1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %hw.1.i, align 4
  %65 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev45, align 8
  %resource.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 47
  %67 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %resource.i.i, align 8
  %69 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %base, align 4
  %end.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 47, i32 0, i32 1
  %70 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i, label %list_add.exit.1.i.cond.end.i.i_crit_edge, label %cond.false.i.i

list_add.exit.1.i.cond.end.i.i_crit_edge:         ; preds = %list_add.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %list_add.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %resource.i.i, align 8
  %sub.i.i = add i32 %71, 1
  %add.i.i = sub i32 %sub.i.i, %73
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %list_add.exit.1.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.false.i.i ], [ 0, %list_add.exit.1.i.cond.end.i.i_crit_edge ]
  %base_s.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %base_s.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %cond.i.i, ptr %base_s.i.i, align 8
  %call.i.i = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %68, i32 noundef %cond.i.i, ptr noundef %name.i, i32 noundef 0) #9
  %tobool.not.i.i91 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i91, label %nj_setup.exit.i, label %if.end.i

nj_setup.exit.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %base, align 4
  %77 = ptrtoint ptr %base_s.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base_s.i.i, align 8
  %add19.i.i = add i32 %76, -1
  %sub20.i.i = add i32 %add19.i.i, %78
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i, i32 noundef %76, i32 noundef %sub20.i.i) #12
  %79 = ptrtoint ptr %base_s.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %base_s.i.i, align 8
  br label %if.then63

if.end.i:                                         ; preds = %cond.end.i.i
  %read_reg.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 5
  %80 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ReadISAC_nj, ptr %read_reg.i.i, align 8
  %write_reg.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 6
  %81 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @WriteISAC_nj, ptr %write_reg.i.i, align 4
  %read_fifo.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 7
  %82 = ptrtoint ptr %read_fifo.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ReadFiFoISAC_nj, ptr %read_fifo.i.i, align 8
  %write_fifo.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 8
  %83 = ptrtoint ptr %write_fifo.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @WriteFiFoISAC_nj, ptr %write_fifo.i.i, align 4
  %84 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev45, align 8
  %dev70.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %call73.i = call i32 @mISDN_register_device(ptr noundef %isac.i, ptr noundef %dev70.i, ptr noundef %name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.end.i.if.then63_crit_edge

if.end.i.if.then63_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.end76.i:                                       ; preds = %if.end.i
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %base, align 4
  %add.i.i.i = add i32 %87, 4
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %88 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 0) #9, !srcloc !237
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %base, align 4
  %add5.i.i.i = add i32 %90, 5
  %and6.i.i.i = and i32 %add5.i.i.i, 1048575
  %add7.i.i.i = or i32 %and6.i.i.i, -18874368
  %91 = inttoptr i32 %add7.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 0) #9, !srcloc !237
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #9
  %92 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev45, align 8
  %irq.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 46
  %94 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq.i.i, align 4
  %irq6.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %irq6.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %irq6.i.i, align 4
  %call.i.i138.i = call i32 @request_threaded_irq(i32 noundef %95, ptr noundef nonnull @nj_irq, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i138.i)
  %tobool.not.i139.i = icmp eq i32 %call.i.i138.i, 0
  br i1 %tobool.not.i139.i, label %do.body19.i.i, label %nj_init_card.exit.thread.i

nj_init_card.exit.thread.i:                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %irq6.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq6.i.i, align 4
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name.i, i32 noundef %98) #12
  %99 = ptrtoint ptr %irq6.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %irq6.i.i, align 4
  br label %if.then63

do.body19.i.i:                                    ; preds = %if.end76.i
  %call27.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  call void @arm_heavy_mb() #9
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %base, align 4
  %and.i69.i.i = and i32 %101, 1048575
  %add1.i70.i.i = or i32 %and.i69.i.i, -18874368
  %102 = inttoptr i32 %add1.i70.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 -1) #9, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #9
  %104 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp.i.i.i = icmp eq i32 %105, 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i8 64, i8 0
  %106 = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 15
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %spec.select.i.i.i, ptr %106, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %106, align 8
  %110 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %base, align 4
  %and8.i.i.i = and i32 %111, 1048575
  %add9.i.i.i = or i32 %and8.i.i.i, -18874368
  %112 = inttoptr i32 %add9.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 %109) #9, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %113(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %122(i32 noundef 214748000) #9
  %auxd.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 17
  %123 = ptrtoint ptr %auxd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %auxd.i.i.i, align 2
  %dmactrl.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 16
  %124 = ptrtoint ptr %dmactrl.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %dmactrl.i.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  call void @arm_heavy_mb() #9
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %base, align 4
  %add14.i.i.i = add i32 %126, 2
  %and15.i.i.i = and i32 %add14.i.i.i, 1048575
  %add16.i.i.i = or i32 %and15.i.i.i, -18874368
  %127 = inttoptr i32 %add16.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 -17) #9, !srcloc !237
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %base, align 4
  %add21.i.i.i = add i32 %129, 5
  %and22.i.i.i = and i32 %add21.i.i.i, 1048575
  %add23.i.i.i = or i32 %and22.i.i.i, -18874368
  %130 = inttoptr i32 %add23.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 16) #9, !srcloc !237
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  call void @arm_heavy_mb() #9
  %131 = ptrtoint ptr %auxd.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %auxd.i.i.i, align 2
  %133 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %base, align 4
  %add29.i.i.i = add i32 %134, 3
  %and30.i.i.i = and i32 %add29.i.i.i, 1048575
  %add31.i.i.i = or i32 %and30.i.i.i, -18874368
  %135 = inttoptr i32 %add31.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 %132) #9, !srcloc !237
  %init.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 11, i32 11
  %136 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %init.i.i, align 8
  %call33.i.i = call i32 %137(ptr noundef %isac.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %do.body19.i.i.nj_init_card.exit.thread145.i_crit_edge

do.body19.i.i.nj_init_card.exit.thread145.i_crit_edge: ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nj_init_card.exit.thread145.i

if.end36.i.i:                                     ; preds = %do.body19.i.i
  %138 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev45, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  %dma.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef 4096, ptr noundef %dma.i.i.i, i32 noundef 2592, i32 noundef 0) #9
  %dma_p.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 9
  %140 = ptrtoint ptr %dma_p.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i.i.i.i, ptr %dma_p.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %for.body.preheader.i.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end36.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %141 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 2592, i32 noundef 128) #13
  %hsbuf.i.i.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 9
  %142 = ptrtoint ptr %hsbuf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i.i.i, ptr %hsbuf.i.i.i, align 8
  %tobool20.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool20.not.i.i.i, label %for.body.preheader.i.i.i.do.end24.i.i.i_crit_edge, label %if.end29.i.i.i

for.body.preheader.i.i.i.do.end24.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24.i.i.i

do.end.i.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name.i) #12
  br label %nj_init_card.exit.thread145.i

do.end24.i.i.i:                                   ; preds = %for.inc.i.i.i.do.end24.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.end24.i.i.i_crit_edge
  %i.0243.lcssa.i.i.i = phi i32 [ 1, %for.body.preheader.i.i.i.do.end24.i.i.i_crit_edge ], [ 2, %for.inc.i.i.i.do.end24.i.i.i_crit_edge ]
  %call28.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name.i, i32 noundef %i.0243.lcssa.i.i.i) #12
  br label %nj_init_card.exit.thread145.i

if.end29.i.i.i:                                   ; preds = %for.body.preheader.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %143 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i240.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %143, i32 noundef 2592, i32 noundef 128) #13
  %hrbuf.i.i.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 10
  %144 = ptrtoint ptr %hrbuf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call7.i240.i.i.i, ptr %hrbuf.i.i.i, align 4
  %tobool36.not.i.i.i = icmp eq ptr %call7.i240.i.i.i, null
  br i1 %tobool36.not.i.i.i, label %if.end29.i.i.i.do.end40.i.i.i_crit_edge, label %for.inc.i.i.i

if.end29.i.i.i.do.end40.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40.i.i.i

do.end40.i.i.i:                                   ; preds = %if.end29.1.i.i.i.do.end40.i.i.i_crit_edge, %if.end29.i.i.i.do.end40.i.i.i_crit_edge
  %i.0243.lcssa244.i.i.i = phi i32 [ 1, %if.end29.i.i.i.do.end40.i.i.i_crit_edge ], [ 2, %if.end29.1.i.i.i.do.end40.i.i.i_crit_edge ]
  %call45.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name.i, i32 noundef %i.0243.lcssa244.i.i.i) #12
  br label %nj_init_card.exit.thread145.i

for.inc.i.i.i:                                    ; preds = %if.end29.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %145 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.1.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %145, i32 noundef 2592, i32 noundef 128) #13
  %hsbuf.1.i.i.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 9
  %146 = ptrtoint ptr %hsbuf.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call7.i.1.i.i.i, ptr %hsbuf.1.i.i.i, align 8
  %tobool20.not.1.i.i.i = icmp eq ptr %call7.i.1.i.i.i, null
  br i1 %tobool20.not.1.i.i.i, label %for.inc.i.i.i.do.end24.i.i.i_crit_edge, label %if.end29.1.i.i.i

for.inc.i.i.i.do.end24.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24.i.i.i

if.end29.1.i.i.i:                                 ; preds = %for.inc.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %147 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i240.1.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %147, i32 noundef 2592, i32 noundef 128) #13
  %hrbuf.1.i.i.i = getelementptr %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 10
  %148 = ptrtoint ptr %hrbuf.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call7.i240.1.i.i.i, ptr %hrbuf.1.i.i.i, align 4
  %tobool36.not.1.i.i.i = icmp eq ptr %call7.i240.1.i.i.i, null
  br i1 %tobool36.not.1.i.i.i, label %if.end29.1.i.i.i.do.end40.i.i.i_crit_edge, label %for.inc.1.i.i.i

if.end29.1.i.i.i.do.end40.i.i.i_crit_edge:        ; preds = %if.end29.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end29.1.i.i.i
  %149 = ptrtoint ptr %dma_p.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dma_p.i.i.i, align 8
  %151 = call ptr @memset(ptr %150, i32 255, i32 4096)
  %send.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 12
  %start.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 12, i32 1
  %152 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %150, ptr %start.i.i.i, align 4
  %153 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dma.i.i.i, align 4
  %dmastart.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 12, i32 3
  %155 = ptrtoint ptr %dmastart.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %dmastart.i.i.i, align 4
  %add53.i.i.i = add i32 %154, 508
  %dmaend.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 12, i32 5
  %156 = ptrtoint ptr %dmaend.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add53.i.i.i, ptr %dmaend.i.i.i, align 4
  %add57.i.i.i = add i32 %154, 252
  %dmairq.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 12, i32 4
  %157 = ptrtoint ptr %dmairq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add57.i.i.i, ptr %dmairq.i.i.i, align 8
  %158 = ptrtoint ptr %send.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 128, ptr %send.i.i.i, align 8
  %159 = load i32, ptr @debug, align 4
  %and.i71.i.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71.i.i)
  %tobool60.not.i.i.i = icmp eq i32 %and.i71.i.i, 0
  br i1 %tobool60.not.i.i.i, label %for.inc.1.i.i.i.do.body80.i.i.i_crit_edge, label %do.end64.i.i.i

for.inc.1.i.i.i.do.body80.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80.i.i.i

do.end64.i.i.i:                                   ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call78.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name.i, i32 noundef %154, i32 noundef %add57.i.i.i, i32 noundef %add53.i.i.i, ptr noundef %150, i32 noundef 128) #12
  br label %do.body80.i.i.i

do.body80.i.i.i:                                  ; preds = %do.end64.i.i.i, %for.inc.1.i.i.i.do.body80.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  call void @arm_heavy_mb() #9
  %160 = ptrtoint ptr %dmastart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dmastart.i.i.i, align 4
  %162 = call i32 @llvm.bswap.i32(i32 %161) #9
  %163 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %base, align 4
  %add85.i.i.i = add i32 %164, 8
  %and86.i.i.i = and i32 %add85.i.i.i, 1048575
  %add87.i.i.i = or i32 %and86.i.i.i, -18874368
  %165 = inttoptr i32 %add87.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %165, i32 %162) #9, !srcloc !245
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  call void @arm_heavy_mb() #9
  %166 = ptrtoint ptr %dmairq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dmairq.i.i.i, align 8
  %168 = call i32 @llvm.bswap.i32(i32 %167) #9
  %169 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %base, align 4
  %add95.i.i.i = add i32 %170, 12
  %and96.i.i.i = and i32 %add95.i.i.i, 1048575
  %add97.i.i.i = or i32 %and96.i.i.i, -18874368
  %171 = inttoptr i32 %add97.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %171, i32 %168) #9, !srcloc !245
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  call void @arm_heavy_mb() #9
  %172 = ptrtoint ptr %dmaend.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dmaend.i.i.i, align 4
  %174 = call i32 @llvm.bswap.i32(i32 %173) #9
  %175 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %base, align 4
  %add105.i.i.i = add i32 %176, 16
  %and106.i.i.i = and i32 %add105.i.i.i, 1048575
  %add107.i.i.i = or i32 %and106.i.i.i, -18874368
  %177 = inttoptr i32 %add107.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %177, i32 %174) #9, !srcloc !245
  %178 = ptrtoint ptr %dma_p.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dma_p.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %179, i32 2048
  %recv.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 13
  %start110.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 13, i32 1
  %180 = ptrtoint ptr %start110.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %add.ptr.i.i.i, ptr %start110.i.i.i, align 8
  %181 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %dma.i.i.i, align 4
  %add112.i.i.i = add i32 %182, 2048
  %dmastart114.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 13, i32 3
  %183 = ptrtoint ptr %dmastart114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %add112.i.i.i, ptr %dmastart114.i.i.i, align 8
  %add117.i.i.i = add i32 %182, 2556
  %dmaend119.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 13, i32 5
  %184 = ptrtoint ptr %dmaend119.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add117.i.i.i, ptr %dmaend119.i.i.i, align 8
  %add122.i.i.i = add i32 %182, 2300
  %dmairq124.i.i.i = getelementptr inbounds %struct.tiger_hw, ptr %call7.i.i, i32 0, i32 13, i32 4
  %185 = ptrtoint ptr %dmairq124.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %add122.i.i.i, ptr %dmairq124.i.i.i, align 4
  %186 = ptrtoint ptr %recv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 128, ptr %recv.i.i.i, align 4
  %187 = load i32, ptr @debug, align 4
  %and127.i.i.i = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i.i.i)
  %tobool128.not.i.i.i = icmp eq i32 %and127.i.i.i, 0
  br i1 %tobool128.not.i.i.i, label %do.body80.i.i.i.setup_instance.exit.thread_crit_edge, label %do.end132.i.i.i

do.body80.i.i.i.setup_instance.exit.thread_crit_edge: ; preds = %do.body80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_instance.exit.thread

do.end132.i.i.i:                                  ; preds = %do.body80.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call146.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name.i, i32 noundef %add112.i.i.i, i32 noundef %add122.i.i.i, i32 noundef %add117.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef 128) #12
  br label %setup_instance.exit.thread

nj_init_card.exit.thread145.i:                    ; preds = %do.end40.i.i.i, %do.end24.i.i.i, %do.end.i.i.i, %do.body19.i.i.nj_init_card.exit.thread145.i_crit_edge
  %ret.0.i.ph.i = phi i32 [ -12, %do.end.i.i.i ], [ -12, %do.end24.i.i.i ], [ -12, %do.end40.i.i.i ], [ %call33.i.i, %do.body19.i.i.nj_init_card.exit.thread145.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call27.i.i) #9
  br label %if.then63

setup_instance.exit.thread:                       ; preds = %do.end132.i.i.i, %do.body80.i.i.i.setup_instance.exit.thread_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %dmastart114.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %dmastart114.i.i.i, align 8
  %190 = call i32 @llvm.bswap.i32(i32 %189) #9
  %191 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %base, align 4
  %add154.i.i.i = add i32 %192, 24
  %and155.i.i.i = and i32 %add154.i.i.i, 1048575
  %add156.i.i.i = or i32 %and155.i.i.i, -18874368
  %193 = inttoptr i32 %add156.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %193, i32 %190) #9, !srcloc !245
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  call void @arm_heavy_mb() #9
  %194 = ptrtoint ptr %dmairq124.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dmairq124.i.i.i, align 4
  %196 = call i32 @llvm.bswap.i32(i32 %195) #9
  %197 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %base, align 4
  %add164.i.i.i = add i32 %198, 28
  %and165.i.i.i = and i32 %add164.i.i.i, 1048575
  %add166.i.i.i = or i32 %and165.i.i.i, -18874368
  %199 = inttoptr i32 %add166.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %199, i32 %196) #9, !srcloc !245
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  call void @arm_heavy_mb() #9
  %200 = ptrtoint ptr %dmaend119.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dmaend119.i.i.i, align 8
  %202 = call i32 @llvm.bswap.i32(i32 %201) #9
  %203 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %base, align 4
  %add174.i.i.i = add i32 %204, 32
  %and175.i.i.i = and i32 %add174.i.i.i, 1048575
  %add176.i.i.i = or i32 %and175.i.i.i, -18874368
  %205 = inttoptr i32 %add176.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %205, i32 %202) #9, !srcloc !245
  %call41.i.i = call fastcc i32 @mode_tiger(ptr noundef %arrayidx.i, i32 noundef 0) #9
  %call44.i.i = call fastcc i32 @mode_tiger(ptr noundef %arrayidx.1.i, i32 noundef 0) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call27.i.i) #9
  %206 = load i32, ptr @nj_cnt, align 4
  %inc80.i = add i32 %206, 1
  store i32 %inc80.i, ptr @nj_cnt, align 4
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %inc80.i) #12
  br label %cleanup

if.then63:                                        ; preds = %nj_init_card.exit.thread145.i, %nj_init_card.exit.thread.i, %if.end.i.if.then63_crit_edge, %nj_setup.exit.i
  %err.0.i = phi i32 [ -5, %nj_setup.exit.i ], [ %call73.i, %if.end.i.if.then63_crit_edge ], [ -5, %nj_init_card.exit.thread.i ], [ %ret.0.i.ph.i, %nj_init_card.exit.thread145.i ]
  call fastcc void @nj_release(ptr noundef nonnull %call7.i.i) #9
  %207 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %setup_instance.exit.thread, %if.then48, %do.end41, %do.end33, %do.end17, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end17 ], [ -19, %do.end33 ], [ %call46, %if.then48 ], [ -12, %do.end41 ], [ %err.0.i, %if.then63 ], [ 0, %setup_instance.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nj_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nj_release(ptr noundef nonnull %1)
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNisac_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nj_dctrl(ptr nocapture noundef readonly %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nj_dctrl.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nj_dctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nj_dctrl.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.23, i32 noundef %cmd, ptr noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
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
  %arrayidx.i = getelementptr %struct.tiger_hw, ptr %1, i32 0, i32 14, i32 %sub.i
  %Flags.i = getelementptr inbounds %struct.bchannel, ptr %arrayidx.i, i32 0, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11.thread97, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.thread97:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %Flags.i) #9
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg, align 4
  %protocol20.i = getelementptr inbounds %struct.mISDNchannel, ptr %arrayidx.i, i32 0, i32 1
  %11 = ptrtoint ptr %protocol20.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %protocol20.i, align 4
  %ch22.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %12 = ptrtoint ptr %ch22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %ch22.i, align 4
  br label %if.end14

if.end11:                                         ; preds = %sw.bb
  %isac = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 11
  %open = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 11, i32 13
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
  %name21 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name21) #12
  br label %cleanup

do.body26:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nj_dctrl.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nj_dctrl, %if.then38)) #9
          to label %do.end44 [label %if.then38], !srcloc !251

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %name39 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %ch, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %17 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nj_dctrl.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.26, ptr noundef %name39, i32 noundef %16, ptr noundef %17) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %do.body26
  tail call void @module_put(ptr noundef null) #9
  br label %cleanup

sw.bb45:                                          ; preds = %do.end
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arg, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.100)
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
  %isac.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 11
  %ctrl.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 11, i32 12
  %25 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl.i, align 4
  %call.i92 = tail call i32 %26(ptr noundef %isac.i, i32 noundef 38146, i32 noundef %23) #9
  br label %cleanup

sw.bb7.i:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %isac8.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 11
  %ctrl9.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 11, i32 12
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
  %name.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i, ptr noundef nonnull @.str.29, i32 noundef %19) #12
  br label %cleanup

do.body47:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nj_dctrl.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nj_dctrl, %if.then59)) #9
          to label %cleanup [label %if.then59], !srcloc !251

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %name60 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nj_dctrl.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.27, ptr noundef %name60, ptr noundef nonnull @.str.23, i32 noundef %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body47, %do.end.i, %sw.bb7.i, %if.end.i93, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i, %do.end44, %do.end19, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then59 ], [ 0, %do.end44 ], [ %call9, %if.end11.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %do.end19 ], [ -22, %do.end.i ], [ %call11.i, %sw.bb7.i ], [ %call.i92, %if.end.i93 ], [ 0, %sw.bb.i ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %do.body47 ], [ -16, %if.end10.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nj_l2l1B(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8193, label %do.body4
    i32 257, label %do.body15
    i32 513, label %do.body38
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 10
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call9 = tail call i32 @bchannel_senddata(ptr noundef %ch, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %do.body4.if.end_crit_edge

do.body4.if.end_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fill_dma(ptr noundef %ch)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body4.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call9, %do.body4.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cleanup

do.body15:                                        ; preds = %entry
  %lock21 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 10
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock21) #9
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call28 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end31, label %if.end31.thread

if.end31.thread:                                  ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #9
  br label %if.then34

if.end31:                                         ; preds = %do.body15
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %protocol, align 4
  %call30 = tail call fastcc i32 @mode_tiger(ptr noundef %ch, i32 noundef %6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool33.not = icmp eq i32 %call30, 0
  br i1 %tobool33.not, label %if.end31.if.then34_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %if.end31.if.then34_crit_edge, %if.end31.thread
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %7 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then34.if.then54_crit_edge, label %if.end.i

if.then34.if.then54_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end.i:                                         ; preds = %if.then34
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then54_crit_edge, label %if.end3.i, !prof !252

if.end.i.if.then54_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

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
  br i1 %tobool6.not.i, label %if.end3.i.if.then54_crit_edge, label %if.end3.i.if.then54.sink.split_crit_edge

if.end3.i.if.then54.sink.split_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54.sink.split

if.end3.i.if.then54_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

do.body38:                                        ; preds = %entry
  %lock44 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 10
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock44) #9
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #9
  %call51 = tail call fastcc i32 @mode_tiger(ptr noundef %ch, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock44, i32 noundef %call46) #9
  %peer.i83 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %19 = ptrtoint ptr %peer.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer.i83, align 4
  %tobool.not.i84 = icmp eq ptr %20, null
  br i1 %tobool.not.i84, label %do.body38.if.then54_crit_edge, label %if.end.i87

do.body38.if.then54_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end.i87:                                       ; preds = %do.body38
  %call.i.i.i.i85 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i.i.i86 = icmp eq ptr %call.i.i.i.i85, null
  br i1 %tobool.not.i.i.i86, label %if.end.i87.if.then54_crit_edge, label %if.end3.i97, !prof !252

if.end.i87.if.then54_crit_edge:                   ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end3.i97:                                      ; preds = %if.end.i87
  %data.i.i.i.i88 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i88, align 4
  %add.ptr.i.i.i.i89 = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i.i89, ptr %data.i.i.i.i88, align 4
  %tail.i.i.i.i90 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i.i90, align 8
  %add.ptr1.i.i.i.i91 = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i.i91, ptr %tail.i.i.i.i90, align 8
  %cb.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i.i92 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 514, ptr %cb.i.i92, align 1
  %id6.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %id6.i.i93 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 65535, ptr %id6.i.i93, align 1
  %recv.i94 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %27 = ptrtoint ptr %recv.i94 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %recv.i94, align 4
  %29 = ptrtoint ptr %peer.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer.i83, align 4
  %call5.i95 = tail call i32 %28(ptr noundef %30, ptr noundef nonnull %call.i.i.i.i85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i95)
  %tobool6.not.i96 = icmp eq i32 %call5.i95, 0
  br i1 %tobool6.not.i96, label %if.end3.i97.if.then54_crit_edge, label %if.end3.i97.if.then54.sink.split_crit_edge

if.end3.i97.if.then54.sink.split_crit_edge:       ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54.sink.split

if.end3.i97.if.then54_crit_edge:                  ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54.sink.split:                             ; preds = %if.end3.i97.if.then54.sink.split_crit_edge, %if.end3.i.if.then54.sink.split_crit_edge
  %call.i.i.i.i.sink = phi ptr [ %call.i.i.i.i, %if.end3.i.if.then54.sink.split_crit_edge ], [ %call.i.i.i.i85, %if.end3.i97.if.then54.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.sink) #9
  br label %if.then54

if.then54:                                        ; preds = %if.then54.sink.split, %if.end3.i97.if.then54_crit_edge, %if.end.i87.if.then54_crit_edge, %do.body38.if.then54_crit_edge, %if.end3.i.if.then54_crit_edge, %if.end.i.if.then54_crit_edge, %if.then34.if.then54_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end31.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %if.then54 ], [ -22, %entry.cleanup_crit_edge ], [ %call30, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nj_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nj_bctrl.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nj_bctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nj_bctrl.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.44, i32 noundef %cmd, ptr noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %cmd, label %do.end24 [
    i32 512, label %sw.bb
    i32 768, label %sw.bb20
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #9
  %workq = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 3
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %workq) #9
  %lock = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 10
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #9
  %call18 = tail call fastcc i32 @mode_tiger(ptr noundef %ch, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
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

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @mISDN_ctrl_bchannel(ptr noundef %ch, ptr noundef %arg) #9
  br label %sw.epilog

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name26 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name26, ptr noundef nonnull @.str.44, i32 noundef %cmd) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end24, %sw.bb20, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end24 ], [ %call.i, %sw.bb20 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nj_release(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_s = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 7
  %0 = ptrtoint ptr %base_s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_s, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 6
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 4
  %add.i = add i32 %3, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i, align 4
  %add5.i = add i32 %6, 5
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %7 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #9, !srcloc !237
  %bc = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 14
  %call5 = tail call fastcc i32 @mode_tiger(ptr noundef %bc, i32 noundef 0)
  %arrayidx7 = getelementptr %struct.tiger_hw, ptr %card, i32 0, i32 14, i32 1
  %call8 = tail call fastcc i32 @mode_tiger(ptr noundef %arrayidx7, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %isac = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 11
  %release = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 11, i32 10
  %8 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release, align 4
  tail call void %9(ptr noundef %isac) #9
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 4
  %12 = ptrtoint ptr %base_s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_s, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %11, i32 noundef %13) #9
  %14 = ptrtoint ptr %base_s to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %base_s, align 8
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp sgt i32 %16, 0
  br i1 %cmp13, label %if.then15, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %card) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %class = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 11, i32 0, i32 0, i32 8, i32 33
  %17 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %isac19 = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 11
  tail call void @mISDN_unregister_device(ptr noundef %isac19) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %arrayidx30 = getelementptr %struct.tiger_hw, ptr %card, i32 0, i32 14, i32 0
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx30) #9
  %hsbuf = getelementptr %struct.tiger_hw, ptr %card, i32 0, i32 14, i32 0, i32 9
  %19 = ptrtoint ptr %hsbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hsbuf, align 8
  tail call void @kfree(ptr noundef %20) #9
  %hrbuf = getelementptr %struct.tiger_hw, ptr %card, i32 0, i32 14, i32 0, i32 10
  %21 = ptrtoint ptr %hrbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hrbuf, align 4
  tail call void @kfree(ptr noundef %22) #9
  %arrayidx30.1 = getelementptr %struct.tiger_hw, ptr %card, i32 0, i32 14, i32 1
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx30.1) #9
  %hsbuf.1 = getelementptr %struct.tiger_hw, ptr %card, i32 0, i32 14, i32 1, i32 9
  %23 = ptrtoint ptr %hsbuf.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hsbuf.1, align 8
  tail call void @kfree(ptr noundef %24) #9
  %hrbuf.1 = getelementptr %struct.tiger_hw, ptr %card, i32 0, i32 14, i32 1, i32 10
  %25 = ptrtoint ptr %hrbuf.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hrbuf.1, align 4
  tail call void @kfree(ptr noundef %26) #9
  %dma_p = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 9
  %27 = ptrtoint ptr %dma_p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_p, align 8
  %tobool35.not = icmp eq ptr %28, null
  br i1 %tobool35.not, label %if.end26.do.body40_crit_edge, label %if.then36

if.end26.do.body40_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 1
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %dma = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 8
  %31 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev37, i32 noundef 4096, ptr noundef nonnull %28, i32 noundef %32, i32 noundef 0) #9
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %if.end26.do.body40_crit_edge
  %call46 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %card) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body40.list_del.exit_crit_edge

do.body40.list_del.exit_crit_edge:                ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %card, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body40.list_del.exit_crit_edge
  %39 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %card, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %card, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call46) #9
  %pdev57 = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 1
  %41 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev57, align 8
  tail call void @pci_clear_master(ptr noundef %42) #9
  %43 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev57, align 8
  tail call void @pci_disable_device(ptr noundef %44) #9
  %45 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev57, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %card) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_dma(ptr noundef %bc) unnamed_addr #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !235
  %free = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 3
  %3 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 17
  %5 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %7 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %Flags, align 4
  %9 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %send = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send, align 8
  %shr = lshr i32 %11, 1
  %fill = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 8
  br label %if.end34

if.else:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 20
  %14 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_idx, align 4
  %sub = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 1
  br i1 %cmp11, label %if.else.cleanup_crit_edge, label %do.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_dma.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_dma, %if.then18)) #9
          to label %do.end [label %if.then18], !srcloc !251

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %18 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free, align 4
  %20 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_idx, align 4
  %22 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_skb, align 4
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len26, align 4
  %txstate = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %26 = ptrtoint ptr %txstate to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %txstate, align 2
  %conv = zext i16 %27 to i32
  %idx = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx, align 4
  %idx28 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 2
  %30 = ptrtoint ptr %idx28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idx28, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_dma.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.30, i32 noundef %17, i32 noundef %sub, i32 noundef %19, i32 noundef %21, i32 noundef %25, i32 noundef %conv, i32 noundef %29, i32 noundef %31) #9
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %32 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_idx, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 %37
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end6
  %p.0 = phi ptr [ %add.ptr, %do.end ], [ %fill, %if.end6 ]
  %count.0 = phi i32 [ %sub, %do.end ], [ %shr, %if.end6 ]
  %txstate35 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %38 = ptrtoint ptr %txstate35 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %txstate35, align 2
  %40 = and i16 %39, 259
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool37.not = icmp eq i16 %40, 0
  br i1 %tobool37.not, label %if.end34.if.end39_crit_edge, label %if.then38

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %if.end34
  %base.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base.i, align 4
  %or.i = and i32 %42, 1048555
  %add.i = or i32 %or.i, -18874348
  %43 = inttoptr i32 %add.i to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #9, !srcloc !253
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %send.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %dmacur.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 6
  %46 = ptrtoint ptr %dmacur.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dmacur.i, align 8
  %dmastart.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 3
  %47 = ptrtoint ptr %dmastart.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dmastart.i, align 4
  %sub.i = sub i32 %45, %48
  %shr.i289 = lshr i32 %sub.i, 2
  %idx.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 2
  %49 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr.i289, ptr %idx.i, align 8
  %50 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %free, align 4
  %52 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %send.i, align 8
  %div57.i = lshr i32 %53, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div57.i)
  %cmp.i = icmp ugt i32 %51, %div57.i
  br i1 %cmp.i, label %if.then.i, label %if.then38.if.end.i_crit_edge

if.then38.if.end.i_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div57.i, ptr %free, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then38.if.end.i_crit_edge
  %55 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %idx.i, align 8
  %57 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %send.i, align 8
  %div1558.i = lshr i32 %58, 1
  %sub16.i = add nsw i32 %div1558.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %sub16.i)
  %cmp17.i = icmp ult i32 %56, %sub16.i
  %recv.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 13
  %59 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %recv.i, align 4
  %div2059.i = zext i1 %cmp17.i to i32
  %sub25.sink.in.i = lshr i32 %60, %div2059.i
  %sub25.sink.i = add i32 %sub25.sink.in.i, -1
  %61 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub25.sink.i, ptr %61, align 4
  %63 = ptrtoint ptr %txstate35 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 4, ptr %txstate35, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resync.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_dma, %if.then32.i)) #9
          to label %if.end39 [label %if.then32.i], !srcloc !251

if.then32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %64 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr.i, align 4
  %66 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %free, align 4
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %61, align 4
  %70 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %idx.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @resync.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.37, ptr noundef %name.i, ptr noundef nonnull @.str.36, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then32.i, %if.end.i, %if.end34.if.end39_crit_edge
  %Flags41 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %72 = ptrtoint ptr %Flags41 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %Flags41, align 4
  %74 = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool43.not = icmp eq i32 %74, 0
  %brmerge = select i1 %tobool43.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.else74, label %if.then45

if.then45:                                        ; preds = %if.end39
  %hsend = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 7
  %conv46 = trunc i32 %count.0 to i16
  %hsbuf = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 9
  %75 = ptrtoint ptr %hsbuf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hsbuf, align 4
  %77 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %free, align 4
  %call48 = call i32 @isdnhdlc_encode(ptr noundef %hsend, ptr noundef %p.0, i16 noundef zeroext %conv46, ptr noundef nonnull %i, ptr noundef %76, i32 noundef %78) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_dma.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_dma, %if.then61)) #9
          to label %do.end68 [label %if.then61], !srcloc !251

if.then61:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %name62 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr65 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %79 = ptrtoint ptr %nr65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr65, align 4
  %81 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_dma.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.32, ptr noundef %name62, i32 noundef %80, i32 noundef %82, i32 noundef %call48) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then61, %if.then45
  %83 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i, align 4
  %tx_idx70 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 20
  %85 = ptrtoint ptr %tx_idx70 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_idx70, align 4
  %add = add i32 %86, %84
  store i32 %add, ptr %tx_idx70, align 4
  %87 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %free, align 4
  %sub72 = sub i32 %88, %call48
  store i32 %sub72, ptr %free, align 4
  %89 = ptrtoint ptr %hsbuf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hsbuf, align 4
  br label %if.end89

if.else74:                                        ; preds = %if.end39
  %91 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %free, align 4
  %93 = tail call i32 @llvm.smin.i32(i32 %count.0, i32 %92)
  br i1 %tobool.not, label %if.else74.if.end86_crit_edge, label %if.then82

if.else74.if.end86_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then82:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #11
  %tx_idx84 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 20
  %94 = ptrtoint ptr %tx_idx84 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_idx84, align 4
  %add85 = add i32 %95, %93
  store i32 %add85, ptr %tx_idx84, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.else74.if.end86_crit_edge
  %sub88 = sub i32 %92, %93
  %96 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub88, ptr %free, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end86, %do.end68
  %p.1 = phi ptr [ %p.0, %if.end86 ], [ %90, %do.end68 ]
  %count.2 = phi i32 [ %93, %if.end86 ], [ %call48, %do.end68 ]
  %nr91 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %97 = ptrtoint ptr %nr91 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr91, align 4
  %and92 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %cond = select i1 %tobool93.not, i32 -65281, i32 -256
  br i1 %tobool.not, label %if.then95, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %if.end89
  %99 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2)
  %cmp124294 = icmp sgt i32 %count.2, 0
  br i1 %cmp124294, label %for.body126.lr.ph, label %for.cond123.preheader.if.end157_crit_edge

for.cond123.preheader.if.end157_crit_edge:        ; preds = %for.cond123.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

for.body126.lr.ph:                                ; preds = %for.cond123.preheader
  %idx127 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %send128 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %start136 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 1
  br label %for.body126

if.then95:                                        ; preds = %if.end89
  %100 = ptrtoint ptr %p.1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %p.1, align 1
  %conv96 = zext i8 %101 to i32
  %shl = shl nuw nsw i32 %conv96, 8
  %spec.select280 = select i1 %tobool93.not, i32 %shl, i32 %conv96
  %102 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2)
  %cmp103296 = icmp sgt i32 %count.2, 0
  br i1 %cmp103296, label %for.body.lr.ph, label %if.then95.if.end157_crit_edge

if.then95.if.end157_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

for.body.lr.ph:                                   ; preds = %if.then95
  %idx105 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %send106 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %start = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end112.for.body_crit_edge, %for.body.lr.ph
  %103 = ptrtoint ptr %idx105 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %idx105, align 4
  %105 = ptrtoint ptr %send106 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %send106, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp108.not = icmp ult i32 %104, %106
  br i1 %cmp108.not, label %for.body.if.end112_crit_edge, label %if.then110

for.body.if.end112_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then110:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %idx105 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %idx105, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %for.body.if.end112_crit_edge
  %108 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %start, align 4
  %110 = ptrtoint ptr %idx105 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %idx105, align 4
  %arrayidx115 = getelementptr i32, ptr %109, i32 %111
  %112 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx115, align 4
  %and116 = and i32 %113, %cond
  %or = or i32 %and116, %spec.select280
  %inc = add i32 %111, 1
  store i32 %inc, ptr %idx105, align 4
  store i32 %or, ptr %arrayidx115, align 4
  %114 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %i, align 4
  %inc121 = add i32 %115, 1
  store i32 %inc121, ptr %i, align 4
  %cmp103 = icmp slt i32 %inc121, %count.2
  br i1 %cmp103, label %if.end112.for.body_crit_edge, label %if.end112.if.end157_crit_edge

if.end112.if.end157_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.end112.for.body_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body126:                                      ; preds = %if.end134.for.body126_crit_edge, %for.body126.lr.ph
  %storemerge295 = phi i32 [ 0, %for.body126.lr.ph ], [ %inc155, %if.end134.for.body126_crit_edge ]
  %116 = ptrtoint ptr %idx127 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %idx127, align 4
  %118 = ptrtoint ptr %send128 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %send128, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp130.not = icmp ult i32 %117, %119
  br i1 %cmp130.not, label %for.body126.if.end134_crit_edge, label %if.then132

for.body126.if.end134_crit_edge:                  ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then132:                                       ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %idx127 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %idx127, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %for.body126.if.end134_crit_edge
  %121 = ptrtoint ptr %start136 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %start136, align 4
  %123 = ptrtoint ptr %idx127 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %idx127, align 4
  %arrayidx138 = getelementptr i32, ptr %122, i32 %124
  %125 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx138, align 4
  %and139 = and i32 %126, %cond
  %arrayidx140 = getelementptr i8, ptr %p.1, i32 %storemerge295
  %127 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %128 to i32
  %129 = ptrtoint ptr %nr91 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr91, align 4
  %and144 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  %shl146 = shl nuw nsw i32 %conv141, 8
  %cond147 = select i1 %tobool145.not, i32 %shl146, i32 %conv141
  %or148 = or i32 %cond147, %and139
  %inc152 = add i32 %124, 1
  %131 = ptrtoint ptr %idx127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %inc152, ptr %idx127, align 4
  %132 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or148, ptr %arrayidx138, align 4
  %133 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %i, align 4
  %inc155 = add i32 %134, 1
  store i32 %inc155, ptr %i, align 4
  %cmp124 = icmp slt i32 %inc155, %count.2
  br i1 %cmp124, label %if.end134.for.body126_crit_edge, label %if.end134.if.end157_crit_edge

if.end134.if.end157_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.end134.for.body126_crit_edge:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body126

if.end157:                                        ; preds = %if.end134.if.end157_crit_edge, %if.end112.if.end157_crit_edge, %if.then95.if.end157_crit_edge, %for.cond123.preheader.if.end157_crit_edge
  %135 = load i32, ptr @debug, align 4
  %and158 = and i32 %135, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.if.end185_crit_edge, label %if.then160

if.end157.if.end185_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %log = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 20
  %136 = ptrtoint ptr %nr91 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %nr91, align 4
  %name164 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %call166 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %137, ptr noundef %name164, i32 noundef %count.2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_dma.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_dma, %if.then179)) #9
          to label %if.end185 [label %if.then179], !srcloc !251

if.then179:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %p.1, i32 noundef %count.2, i1 noundef zeroext true) #9
  br label %if.end185

if.end185:                                        ; preds = %if.then179, %if.then160, %if.end157.if.end185_crit_edge
  %138 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool187.not = icmp eq i32 %139, 0
  br i1 %tobool187.not, label %if.end185.cleanup_crit_edge, label %if.then188

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then188:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  %call189 = call fastcc i32 @bc_next_frame(ptr noundef %bc)
  br label %cleanup

cleanup:                                          ; preds = %if.then188, %if.end185.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mode_tiger(ptr noundef %bc, i32 noundef %protocol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mode_tiger.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mode_tiger, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %state = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mode_tiger.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %3, i32 noundef %5, i32 noundef %protocol) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %protocol, label %do.end112 [
    i32 0, label %sw.bb
    i32 33, label %sw.bb41
    i32 34, label %sw.bb74
  ]

sw.bb:                                            ; preds = %do.end
  %state6 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 4
  %7 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end8

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end8:                                          ; preds = %sw.bb
  %send = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %send, align 8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_mem.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mode_tiger, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !251

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.tiger_hw, ptr %12, i32 0, i32 2
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  %idx4.i = getelementptr inbounds %struct.tiger_hw, ptr %12, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %idx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx4.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_mem.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.43, ptr noundef %name.i, i32 noundef %14, i32 noundef 255, i32 noundef %10, i32 noundef 0, i32 noundef %16) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end8
  %nr6.i = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %17 = ptrtoint ptr %nr6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr6.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 255, i32 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not2.i = icmp eq i32 %10, 0
  br i1 %tobool11.not2.i, label %do.end.i.fill_mem.exit_crit_edge, label %while.body.lr.ph.i

do.end.i.fill_mem.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_mem.exit

while.body.lr.ph.i:                               ; preds = %do.end.i
  %send12.i = getelementptr inbounds %struct.tiger_hw, ptr %12, i32 0, i32 12
  %start.i = getelementptr inbounds %struct.tiger_hw, ptr %12, i32 0, i32 12, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %idx.addr.04.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %spec.store.select.i, %while.body.i.while.body.i_crit_edge ]
  %cnt.addr.03.i = phi i32 [ %10, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %cnt.addr.03.i, -1
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %start.i, align 4
  %arrayidx.i = getelementptr i32, ptr %20, i32 %idx.addr.04.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %22, %spec.select.i
  %inc.i = add i32 %idx.addr.04.i, 1
  store i32 %or.i, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %send12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %send12.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %24)
  %cmp.not.i = icmp ult i32 %inc.i, %24
  %spec.store.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %while.body.i.fill_mem.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.fill_mem.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_mem.exit

fill_mem.exit:                                    ; preds = %while.body.i.fill_mem.exit_crit_edge, %do.end.i.fill_mem.exit_crit_edge
  %25 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %state6, align 4
  %state13 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp14 = icmp eq i32 %27, 0
  br i1 %cmp14, label %land.lhs.true, label %fill_mem.exit.if.end35_crit_edge

fill_mem.exit.if.end35_crit_edge:                 ; preds = %fill_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %fill_mem.exit
  %state18 = getelementptr %struct.tiger_hw, ptr %1, i32 0, i32 14, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp19 = icmp eq i32 %29, 0
  br i1 %cmp19, label %if.then20, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dmactrl = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %dmactrl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dmactrl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %dmactrl to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dmactrl, align 1
  %base = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base, align 4
  %add = add i32 %34, 1
  %and = and i32 %add, 1048575
  %add25 = or i32 %and, -18874368
  %35 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %add31 = add i32 %37, 4
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %38 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 0) #9, !srcloc !237
  br label %if.end35

if.end35:                                         ; preds = %if.then20, %land.lhs.true.if.end35_crit_edge, %fill_mem.exit.if.end35_crit_edge
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %call37 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags) #9
  %call40 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags) #9
  %txstate = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %39 = ptrtoint ptr %txstate to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %txstate, align 2
  %rxstate = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 5
  %40 = ptrtoint ptr %rxstate to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %rxstate, align 4
  %lastrx = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 4
  %41 = ptrtoint ptr %lastrx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %lastrx, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end
  %Flags43 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %call44 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags43) #9
  %state46 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 4
  %42 = ptrtoint ptr %state46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 33, ptr %state46, align 4
  %idx = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %idx, align 4
  %send47 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %send47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %send47, align 8
  %div263 = lshr i32 %45, 1
  %free = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 3
  %46 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div263, ptr %free, align 4
  %rxstate49 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 5
  %47 = ptrtoint ptr %rxstate49 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %rxstate49, align 4
  %txstate50 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %48 = ptrtoint ptr %txstate50 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 3, ptr %txstate50, align 2
  %lastrx51 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 4
  %49 = ptrtoint ptr %lastrx51 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %lastrx51, align 4
  %dmactrl52 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %dmactrl52 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dmactrl52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool53.not = icmp eq i8 %51, 0
  br i1 %tobool53.not, label %if.then54, label %sw.bb41.sw.epilog_crit_edge

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then54:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dmactrl52 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %dmactrl52, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %dmactrl52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dmactrl52, align 1
  %base60 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base60, align 4
  %add61 = add i32 %56, 1
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %57 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %54) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base60, align 4
  %add69 = add i32 %59, 4
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %60 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 15) #9, !srcloc !237
  br label %sw.epilog

sw.bb74:                                          ; preds = %do.end
  %Flags76 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %call77 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags76) #9
  %state79 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 4
  %61 = ptrtoint ptr %state79 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 34, ptr %state79, align 4
  %idx80 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %62 = ptrtoint ptr %idx80 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %idx80, align 4
  %send81 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %63 = ptrtoint ptr %send81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %send81, align 8
  %div83262 = lshr i32 %64, 1
  %free84 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 3
  %65 = ptrtoint ptr %free84 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div83262, ptr %free84, align 4
  %rxstate85 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 5
  %66 = ptrtoint ptr %rxstate85 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %rxstate85, align 4
  %txstate86 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %67 = ptrtoint ptr %txstate86 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 3, ptr %txstate86, align 2
  %hrecv = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 8
  tail call void @isdnhdlc_rcv_init(ptr noundef %hrecv, i32 noundef 0) #9
  %hsend = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 7
  tail call void @isdnhdlc_out_init(ptr noundef %hsend, i32 noundef 0) #9
  %lastrx87 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 4
  %68 = ptrtoint ptr %lastrx87 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %lastrx87, align 4
  %dmactrl88 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 16
  %69 = ptrtoint ptr %dmactrl88 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dmactrl88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool89.not = icmp eq i8 %70, 0
  br i1 %tobool89.not, label %if.then90, label %sw.bb74.sw.epilog_crit_edge

sw.bb74.sw.epilog_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then90:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dmactrl88 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %dmactrl88, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %dmactrl88 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dmactrl88, align 1
  %base96 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %base96 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base96, align 4
  %add97 = add i32 %75, 1
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %76 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %73) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %base96 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base96, align 4
  %add105 = add i32 %78, 4
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %79 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 15) #9, !srcloc !237
  br label %sw.epilog

do.end112:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name114 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name114, ptr noundef nonnull @.str.38, i32 noundef %protocol) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.then90, %sw.bb74.sw.epilog_crit_edge, %if.then54, %sw.bb41.sw.epilog_crit_edge, %if.end35, %sw.bb.sw.epilog_crit_edge
  %base117 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 6
  %80 = ptrtoint ptr %base117 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %base117, align 4
  %add118 = add i32 %81, 20
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %82 = inttoptr i32 %add120 to ptr
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %82) #9, !srcloc !253
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  %dmacur = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 6
  %85 = ptrtoint ptr %dmacur to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %dmacur, align 8
  %86 = ptrtoint ptr %base117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %base117, align 4
  %add127 = add i32 %87, 36
  %and128 = and i32 %add127, 1048575
  %add129 = or i32 %and128, -18874368
  %88 = inttoptr i32 %add129 to ptr
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %88) #9, !srcloc !253
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %dmacur133 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 13, i32 6
  %91 = ptrtoint ptr %dmacur133 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %dmacur133, align 4
  %92 = ptrtoint ptr %dmacur to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dmacur, align 8
  %dmastart = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 3
  %94 = ptrtoint ptr %dmastart to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dmastart, align 4
  %sub = sub i32 %93, %95
  %shr = lshr i32 %sub, 2
  %idx138 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 2
  %96 = ptrtoint ptr %idx138 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shr, ptr %idx138, align 8
  %dmastart142 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 13, i32 3
  %97 = ptrtoint ptr %dmastart142 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dmastart142, align 4
  %sub143 = sub i32 %90, %98
  %shr144 = lshr i32 %sub143, 2
  %idx146 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 13, i32 2
  %99 = ptrtoint ptr %idx146 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr144, ptr %idx146, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mode_tiger.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mode_tiger, %if.then159)) #9
          to label %cleanup [label %if.then159], !srcloc !251

if.then159:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %name160 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %100 = ptrtoint ptr %base117 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %base117, align 4
  %add164 = add i32 %101, 1
  %and165 = and i32 %add164, 1048575
  %add166 = or i32 %and165, -18874368
  %102 = inttoptr i32 %add166 to ptr
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %102) #9, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  %conv = zext i8 %103 to i32
  %104 = ptrtoint ptr %base117 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %base117, align 4
  %add172 = add i32 %105, 4
  %and173 = and i32 %add172, 1048575
  %add174 = or i32 %and173, -18874368
  %106 = inttoptr i32 %add174 to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #9, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %conv178 = zext i8 %107 to i32
  %108 = ptrtoint ptr %base117 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %base117, align 4
  %add181 = add i32 %109, 6
  %and182 = and i32 %add181, 1048575
  %add183 = or i32 %and182, -18874368
  %110 = inttoptr i32 %add183 to ptr
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %110) #9, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  %conv187 = zext i8 %111 to i32
  %112 = ptrtoint ptr %idx138 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %idx138, align 8
  %114 = ptrtoint ptr %idx146 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %idx146, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mode_tiger.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.41, ptr noundef %name160, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv178, i32 noundef %conv187, i32 noundef %113, i32 noundef %115) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then159, %sw.epilog, %do.end112
  %retval.0 = phi i32 [ -92, %do.end112 ], [ 0, %if.then159 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_clear_bchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isdnhdlc_encode(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bc_next_frame(ptr noundef %bc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 17
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 20
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
  tail call fastcc void @fill_dma(ptr noundef %bc)
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @consume_skb(ptr noundef %1) #9
  %call = tail call i32 @get_next_bframe(ptr noundef %bc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fill_dma(ptr noundef %bc)
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %Flags) #9
  br label %if.end29

if.else11:                                        ; preds = %if.else
  %Flags13 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %6 = ptrtoint ptr %Flags13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %Flags13, align 4
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fill_dma(ptr noundef %bc)
  br label %if.end29

if.else17:                                        ; preds = %if.else11
  %9 = ptrtoint ptr %Flags13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %Flags13, align 4
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %if.else17.if.end29_crit_edge, label %if.then22

if.else17.if.end29_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %Flags13) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.else17.if.end29_crit_edge, %if.then16, %if.then8, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ 1, %if.then8 ], [ 1, %if.then16 ], [ 0, %if.then22 ], [ 0, %if.else17.if.end29_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_bframe(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @isdnhdlc_rcv_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @isdnhdlc_out_init(ptr noundef, i32 noundef) local_unnamed_addr #0

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
define internal zeroext i8 @ReadISAC_nj(ptr nocapture noundef %p, i8 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auxd = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 17
  %0 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auxd, align 2
  %2 = and i8 %1, -4
  %3 = lshr i8 %offset, 4
  %and3 = and i8 %3, 3
  %or = or i8 %2, %and3
  store i8 %or, ptr %auxd, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %auxd, align 2
  %base = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %add = add i32 %7, 3
  %and8 = and i32 %add, 1048575
  %add9 = or i32 %and8, -18874368
  %8 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #9, !srcloc !237
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %11 = shl i8 %offset, 2
  %12 = or i8 %11, -64
  %add11 = zext i8 %12 to i32
  %add14 = add i32 %10, %add11
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %13 = inttoptr i32 %add16 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAC_nj(ptr nocapture noundef %p, i8 noundef zeroext %offset, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auxd = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 17
  %0 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auxd, align 2
  %2 = and i8 %1, -4
  %3 = lshr i8 %offset, 4
  %and3 = and i8 %3, 3
  %or = or i8 %2, %and3
  store i8 %or, ptr %auxd, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %auxd, align 2
  %base = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %add = add i32 %7, 3
  %and8 = and i32 %add, 1048575
  %add9 = or i32 %and8, -18874368
  %8 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %11 = shl i8 %offset, 2
  %12 = or i8 %11, -64
  %add14 = zext i8 %12 to i32
  %add17 = add i32 %10, %add14
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %13 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %value) #9, !srcloc !237
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAC_nj(ptr nocapture noundef %p, i8 noundef zeroext %offset, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auxd = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 17
  %0 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auxd, align 2
  %2 = and i8 %1, -4
  store i8 %2, ptr %auxd, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %auxd, align 2
  %base = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 6
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %add = add i32 %6, 3
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %7 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #9, !srcloc !237
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %add6 = add i32 %9, 192
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %10 = inttoptr i32 %add8 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %10, ptr noundef %data, i32 noundef %size) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAC_nj(ptr nocapture noundef %p, i8 noundef zeroext %offset, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auxd = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 17
  %0 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auxd, align 2
  %2 = and i8 %1, -4
  store i8 %2, ptr %auxd, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %auxd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %auxd, align 2
  %base = getelementptr inbounds %struct.tiger_hw, ptr %p, i32 0, i32 6
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %add = add i32 %6, 3
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %7 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #9, !srcloc !237
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %add6 = add i32 %9, 192
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %10 = inttoptr i32 %add8 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %10, ptr noundef %data, i32 noundef %size) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nj_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %base = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %or = and i32 %1, 1048569
  %add = or i32 %or, -18874362
  %2 = inttoptr i32 %add to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %or4 = and i32 %5, 1048568
  %add6 = or i32 %or4, -18874361
  %6 = inttoptr i32 %add6 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %conv = zext i8 %7 to i32
  %and10 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nj_irq.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nj_irq, %if.then19)) #9
          to label %do.end [label %if.then19], !srcloc !251

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 2
  %conv20 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nj_irq.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.51, ptr noundef %name, i32 noundef %conv20, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %irqcnt = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 5
  %8 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqcnt, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %irqcnt, align 8
  br i1 %tobool.not, label %if.then26, label %do.end.if.end32_crit_edge

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then26:                                        ; preds = %do.end
  %auxd.i = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 17
  %10 = ptrtoint ptr %auxd.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %auxd.i, align 2
  %12 = and i8 %11, -4
  %or.i = or i8 %12, 2
  store i8 %or.i, ptr %auxd.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %auxd.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %auxd.i, align 2
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base, align 4
  %add.i = add i32 %16, 3
  %and8.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %17 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #9, !srcloc !237
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %add14.i = add i32 %19, 192
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %20 = inttoptr i32 %add16.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool28.not = icmp eq i8 %21, 0
  br i1 %tobool28.not, label %if.then26.if.end32_crit_edge, label %if.then29

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %isac = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 11
  %call30 = tail call i32 @mISDNisac_irq(ptr noundef %isac, i8 noundef zeroext %21) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then26.if.end32_crit_edge, %do.end.if.end32_crit_edge
  br i1 %cmp, label %if.end32.cleanup_crit_edge, label %do.body35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body35:                                        ; preds = %if.end32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base, align 4
  %or39 = and i32 %23, 1048569
  %add41 = or i32 %or39, -18874362
  %24 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %3) #9, !srcloc !237
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %or46 = and i32 %26, 1048539
  %add48 = or i32 %or46, -18874332
  %27 = inttoptr i32 %add48 to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #9, !srcloc !253
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  %dmacur = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 13, i32 6
  %30 = ptrtoint ptr %dmacur to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dmacur, align 4
  %dmastart = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 13, i32 3
  %31 = ptrtoint ptr %dmastart to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dmastart, align 4
  %sub = sub i32 %29, %32
  %shr = lshr i32 %sub, 2
  %idx = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr, ptr %idx, align 4
  %dmairq = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 13, i32 4
  %34 = ptrtoint ptr %dmairq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dmairq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %35)
  %cmp59 = icmp ult i32 %29, %35
  %. = select i1 %cmp59, i8 8, i8 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %or66 = and i32 %37, 1048555
  %add68 = or i32 %or66, -18874348
  %38 = inttoptr i32 %add68 to ptr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %38) #9, !srcloc !253
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %dmacur72 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 12, i32 6
  %41 = ptrtoint ptr %dmacur72 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dmacur72, align 8
  %dmastart76 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 12, i32 3
  %42 = ptrtoint ptr %dmastart76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dmastart76, align 4
  %sub77 = sub i32 %40, %43
  %shr78 = lshr i32 %sub77, 2
  %idx80 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 12, i32 2
  %44 = ptrtoint ptr %idx80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr78, ptr %idx80, align 8
  %dmairq84 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 12, i32 4
  %45 = ptrtoint ptr %dmairq84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dmairq84, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %46)
  %cmp85 = icmp ult i32 %40, %46
  %s0val.1.v = select i1 %cmp85, i8 2, i8 1
  %s0val.1 = or i8 %s0val.1.v, %.
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nj_irq.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nj_irq, %if.then108)) #9
          to label %do.end120 [label %if.then108], !srcloc !251

if.then108:                                       ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %name109 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 2
  %conv111 = zext i8 %3 to i32
  %conv112 = zext i8 %s0val.1 to i32
  %last_is0 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 18
  %47 = ptrtoint ptr %last_is0 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %last_is0, align 1
  %conv113 = zext i8 %48 to i32
  %49 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx, align 4
  %51 = ptrtoint ptr %idx80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx80, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nj_irq.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.52, ptr noundef %name109, i32 noundef %conv111, i32 noundef %conv112, i32 noundef %conv113, i32 noundef %50, i32 noundef %52) #9
  br label %do.end120

do.end120:                                        ; preds = %if.then108, %do.body35
  %conv121 = zext i8 %s0val.1 to i32
  %last_is0122 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 18
  %53 = ptrtoint ptr %last_is0122 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %last_is0122, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %s0val.1, i8 %54)
  %cmp124.not = icmp eq i8 %s0val.1, %54
  br i1 %cmp124.not, label %do.end120.cleanup_crit_edge, label %if.then126

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then126:                                       ; preds = %do.end120
  %and128 = and i32 %conv121, 3
  %55 = and i8 %54, 3
  %and131 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and128, i32 %and131)
  %cmp132.not = icmp eq i32 %and128, %and131
  br i1 %cmp132.not, label %if.then126.if.end135_crit_edge, label %if.then134

if.then126.if.end135_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then134:                                       ; preds = %if.then126
  %56 = and i8 %54, %s0val.1.v
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = zext i8 %54 to i32
  %name.i = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 2
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i, i32 noundef %conv121, i32 noundef %conv1.i) #12
  br label %if.end135

if.else.i:                                        ; preds = %if.then134
  %and8.i201 = and i8 %54, -4
  %or.i202 = or i8 %and8.i201, %s0val.1.v
  %57 = ptrtoint ptr %last_is0122 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %or.i202, ptr %last_is0122, align 1
  %Flags.i = getelementptr %struct.tiger_hw, ptr %dev_id, i32 0, i32 14, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %Flags.i, align 4
  %60 = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool17.not.i = icmp eq i32 %60, 0
  br i1 %tobool17.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then18.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.tiger_hw, ptr %dev_id, i32 0, i32 14, i32 0
  tail call fastcc void @send_tiger_bc(ptr noundef %dev_id, ptr noundef %arrayidx.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %if.else.i.for.inc.i_crit_edge
  %Flags.1.i = getelementptr %struct.tiger_hw, ptr %dev_id, i32 0, i32 14, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %Flags.1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %Flags.1.i, align 4
  %63 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool17.not.1.i = icmp eq i32 %63, 0
  br i1 %tobool17.not.1.i, label %for.inc.i.if.end135_crit_edge, label %if.then18.1.i

for.inc.i.if.end135_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then18.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1.i = getelementptr %struct.tiger_hw, ptr %dev_id, i32 0, i32 14, i32 1
  tail call fastcc void @send_tiger_bc(ptr noundef %dev_id, ptr noundef %arrayidx.1.i) #9
  br label %if.end135

if.end135:                                        ; preds = %if.then18.1.i, %for.inc.i.if.end135_crit_edge, %do.end.i, %if.then126.if.end135_crit_edge
  %and137 = and i32 %conv121, 12
  %64 = ptrtoint ptr %last_is0122 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %last_is0122, align 1
  %66 = and i8 %65, 12
  %and140 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and137, i32 %and140)
  %cmp141.not = icmp eq i32 %and137, %and140
  br i1 %cmp141.not, label %if.end135.cleanup_crit_edge, label %if.then143

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then143:                                       ; preds = %if.end135
  %recv.i = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 13
  %67 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %recv.i, align 4
  %div38.i = lshr i32 %68, 1
  %69 = and i8 %65, -13
  %or.i204 = or i8 %69, %.
  %70 = ptrtoint ptr %last_is0122 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %or.i204, ptr %last_is0122, align 1
  %71 = and i8 %., 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i205 = icmp eq i8 %71, 0
  %spec.select.i = select i1 %tobool.not.i205, i32 %68, i32 %div38.i
  %idx.0.i = add i32 %spec.select.i, -1
  %Flags.i206 = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 14, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %Flags.i206 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %Flags.i206, align 4
  %74 = and i32 %73, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool12.not.i = icmp eq i32 %74, 0
  br i1 %tobool12.not.i, label %if.then143.if.end16.i_crit_edge, label %if.then13.i

if.then143.if.end16.i_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  %bc.i = getelementptr inbounds %struct.tiger_hw, ptr %dev_id, i32 0, i32 14
  tail call fastcc void @read_dma(ptr noundef %bc.i, i32 noundef %idx.0.i, i32 noundef %div38.i) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.then143.if.end16.i_crit_edge
  %Flags20.i = getelementptr %struct.tiger_hw, ptr %dev_id, i32 0, i32 14, i32 1, i32 0, i32 2
  %75 = ptrtoint ptr %Flags20.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %Flags20.i, align 4
  %77 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool22.not.i = icmp eq i32 %77, 0
  br i1 %tobool22.not.i, label %if.end16.i.cleanup_crit_edge, label %if.then23.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx18.i = getelementptr %struct.tiger_hw, ptr %dev_id, i32 0, i32 14, i32 1
  tail call fastcc void @read_dma(ptr noundef %arrayidx18.i, i32 noundef %idx.0.i, i32 noundef %div38.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then23.i, %if.end16.i.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %do.end120.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then23.i ], [ 1, %if.end16.i.cleanup_crit_edge ], [ 1, %do.end120.cleanup_crit_edge ], [ 1, %if.end135.cleanup_crit_edge ], [ 1, %if.end32.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNisac_irq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_tiger_bc(ptr noundef %card, ptr noundef %bc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %send = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 12
  %0 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %send, align 8
  %div83 = lshr i32 %1, 1
  %free = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 3
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free, align 4
  %add = add i32 %3, %div83
  store i32 %add, ptr %free, align 4
  %4 = load i32, ptr %send, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp.not = icmp ult i32 %add, %4
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %txstate = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %5 = ptrtoint ptr %txstate to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %txstate, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name, i32 noundef %8, i32 noundef %conv) #12
  %9 = ptrtoint ptr %txstate to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %txstate, align 2
  %11 = or i16 %10, 256
  store i16 %11, ptr %txstate, align 2
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %send, align 8
  %14 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %free, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %call14 = tail call fastcc i32 @bc_next_frame(ptr noundef %bc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %15 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %Flags, align 4
  %17 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %do.body22, label %if.then20

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fill_hdlc_flag(ptr noundef %bc)
  br label %cleanup

do.body22:                                        ; preds = %if.then16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_tiger_bc.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_tiger_bc, %if.then28)) #9
          to label %do.end38 [label %if.then28], !srcloc !251

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %name29 = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 2
  %nr32 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %18 = ptrtoint ptr %nr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr32, align 4
  %20 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %free, align 4
  %idx = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %idx35 = getelementptr inbounds %struct.tiger_hw, ptr %card, i32 0, i32 12, i32 2
  %24 = ptrtoint ptr %idx35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx35, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_tiger_bc.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.57, ptr noundef %name29, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then28, %do.body22
  %txstate39 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %26 = ptrtoint ptr %txstate39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %txstate39, align 2
  %28 = and i16 %27, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool42.not = icmp eq i16 %28, 0
  br i1 %tobool42.not, label %if.then43, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %do.end38
  %idx44 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %29 = ptrtoint ptr %idx44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx44, align 4
  %31 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %free, align 4
  %hw.i = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 5
  %33 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_mem.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_tiger_bc, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !251

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.tiger_hw, ptr %34, i32 0, i32 2
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %35 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr.i, align 4
  %idx4.i = getelementptr inbounds %struct.tiger_hw, ptr %34, i32 0, i32 12, i32 2
  %37 = ptrtoint ptr %idx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %idx4.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_mem.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.43, ptr noundef %name.i, i32 noundef %36, i32 noundef 255, i32 noundef %32, i32 noundef %30, i32 noundef %38) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then43
  %nr6.i = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %39 = ptrtoint ptr %nr6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr6.i, align 4
  %and.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 255, i32 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not2.i = icmp eq i32 %32, 0
  br i1 %tobool11.not2.i, label %do.end.i.fill_mem.exit_crit_edge, label %while.body.lr.ph.i

do.end.i.fill_mem.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_mem.exit

while.body.lr.ph.i:                               ; preds = %do.end.i
  %send12.i = getelementptr inbounds %struct.tiger_hw, ptr %34, i32 0, i32 12
  %start.i = getelementptr inbounds %struct.tiger_hw, ptr %34, i32 0, i32 12, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %idx.addr.04.i = phi i32 [ %30, %while.body.lr.ph.i ], [ %spec.store.select.i, %while.body.i.while.body.i_crit_edge ]
  %cnt.addr.03.i = phi i32 [ %32, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %cnt.addr.03.i, -1
  %41 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %start.i, align 4
  %arrayidx.i = getelementptr i32, ptr %42, i32 %idx.addr.04.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %44, %spec.select.i
  %inc.i = add i32 %idx.addr.04.i, 1
  store i32 %or.i, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %send12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %send12.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %46)
  %cmp.not.i = icmp ult i32 %inc.i, %46
  %spec.store.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %while.body.i.fill_mem.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.fill_mem.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_mem.exit

fill_mem.exit:                                    ; preds = %while.body.i.fill_mem.exit_crit_edge, %do.end.i.fill_mem.exit_crit_edge
  %47 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %free, align 4
  %49 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %send, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp49 = icmp eq i32 %48, %50
  br i1 %cmp49, label %if.then51, label %fill_mem.exit.cleanup_crit_edge

fill_mem.exit.cleanup_crit_edge:                  ; preds = %fill_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %fill_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %txstate39 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %txstate39, align 2
  %53 = or i16 %52, 2
  store i16 %53, ptr %txstate39, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %fill_mem.exit.cleanup_crit_edge, %do.end38.cleanup_crit_edge, %if.then20, %if.end13.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_hdlc_flag(ptr noundef %bc) unnamed_addr #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !235
  %free = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 3
  %3 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_hdlc_flag.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_hdlc_flag, %if.then3)) #9
          to label %do.end [label %if.then3], !srcloc !251

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  %7 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free, align 4
  %txstate = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %9 = ptrtoint ptr %txstate to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %txstate, align 2
  %conv = zext i16 %10 to i32
  %idx = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx, align 4
  %idx6 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %idx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx6, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_hdlc_flag.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.59, ptr noundef %name, ptr noundef nonnull @.str.58, i32 noundef %6, i32 noundef %8, i32 noundef %conv, i32 noundef %12, i32 noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %txstate8 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 6
  %15 = ptrtoint ptr %txstate8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %txstate8, align 2
  %17 = and i16 %16, 259
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool10.not = icmp eq i16 %17, 0
  br i1 %tobool10.not, label %do.end.if.end12_crit_edge, label %if.then11

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %do.end
  %base.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i, align 4
  %or.i = and i32 %19, 1048555
  %add.i = or i32 %or.i, -18874348
  %20 = inttoptr i32 %add.i to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #9, !srcloc !253
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %send.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %dmacur.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 6
  %23 = ptrtoint ptr %dmacur.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dmacur.i, align 8
  %dmastart.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 3
  %24 = ptrtoint ptr %dmastart.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dmastart.i, align 4
  %sub.i = sub i32 %22, %25
  %shr.i = lshr i32 %sub.i, 2
  %idx.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 2
  %26 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i, ptr %idx.i, align 8
  %27 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free, align 4
  %29 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %send.i, align 8
  %div57.i = lshr i32 %30, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div57.i)
  %cmp.i = icmp ugt i32 %28, %div57.i
  br i1 %cmp.i, label %if.then.i, label %if.then11.if.end.i_crit_edge

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div57.i, ptr %free, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then11.if.end.i_crit_edge
  %32 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx.i, align 8
  %34 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %send.i, align 8
  %div1558.i = lshr i32 %35, 1
  %sub16.i = add nsw i32 %div1558.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub16.i)
  %cmp17.i = icmp ult i32 %33, %sub16.i
  %recv.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %recv.i, align 4
  %div2059.i = zext i1 %cmp17.i to i32
  %sub25.sink.in.i = lshr i32 %37, %div2059.i
  %sub25.sink.i = add i32 %sub25.sink.in.i, -1
  %38 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub25.sink.i, ptr %38, align 4
  %40 = ptrtoint ptr %txstate8 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4, ptr %txstate8, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resync.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_hdlc_flag, %if.then32.i)) #9
          to label %if.end12 [label %if.then32.i], !srcloc !251

if.then32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %41 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr.i, align 4
  %43 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %free, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %38, align 4
  %47 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %idx.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @resync.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.37, ptr noundef %name.i, ptr noundef nonnull @.str.36, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then32.i, %if.end.i, %do.end.if.end12_crit_edge
  %hsend = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 7
  %hsbuf = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 9
  %49 = ptrtoint ptr %hsbuf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hsbuf, align 4
  %51 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %free, align 4
  %call14 = call i32 @isdnhdlc_encode(ptr noundef %hsend, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %i, ptr noundef %50, i32 noundef %52) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_hdlc_flag.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_hdlc_flag, %if.then27)) #9
          to label %do.end34 [label %if.then27], !srcloc !251

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %name28 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr31 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %53 = ptrtoint ptr %nr31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr31, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_hdlc_flag.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.60, ptr noundef %name28, i32 noundef %54, i32 noundef %call14) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then27, %if.end12
  %55 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %free, align 4
  %sub = sub i32 %56, %call14
  store i32 %sub, ptr %free, align 4
  %57 = ptrtoint ptr %hsbuf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hsbuf, align 4
  %nr38 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %59 = ptrtoint ptr %nr38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr38, align 4
  %and39 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond = select i1 %tobool40.not, i32 -65281, i32 -256
  %61 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp41146 = icmp sgt i32 %call14, 0
  br i1 %cmp41146, label %for.body.lr.ph, label %do.end34.for.end_crit_edge

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end34
  %idx43 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 2
  %send44 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12
  %start = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 12, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %for.body.lr.ph
  %storemerge147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %if.end49.for.body_crit_edge ]
  %62 = ptrtoint ptr %idx43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx43, align 4
  %64 = ptrtoint ptr %send44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %send44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp45.not = icmp ult i32 %63, %65
  br i1 %cmp45.not, label %for.body.if.end49_crit_edge, label %if.then47

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then47:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %idx43 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %idx43, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.body.if.end49_crit_edge
  %67 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %start, align 4
  %69 = ptrtoint ptr %idx43 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %idx43, align 4
  %arrayidx = getelementptr i32, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  %and52 = and i32 %72, %cond
  %73 = ptrtoint ptr %nr38 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr38, align 4
  %and55 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %arrayidx59 = getelementptr i8, ptr %58, i32 %storemerge147
  %75 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %76 to i32
  %shl = shl nuw nsw i32 %conv60, 8
  %cond61 = select i1 %tobool56.not, i32 %shl, i32 %conv60
  %or = or i32 %cond61, %and52
  %inc = add i32 %70, 1
  %77 = ptrtoint ptr %idx43 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %inc, ptr %idx43, align 4
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or, ptr %arrayidx, align 4
  %79 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i, align 4
  %inc66 = add i32 %80, 1
  store i32 %inc66, ptr %i, align 4
  %cmp41 = icmp slt i32 %inc66, %call14
  br i1 %cmp41, label %if.end49.for.body_crit_edge, label %if.end49.for.end_crit_edge

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end49.for.end_crit_edge, %do.end34.for.end_crit_edge
  %81 = load i32, ptr @debug, align 4
  %and67 = and i32 %81, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.end.cleanup_crit_edge, label %if.then69

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %log = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 20
  %82 = ptrtoint ptr %nr38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr38, align 4
  %name73 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %call75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %83, ptr noundef %name73, i32 noundef %call14)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_hdlc_flag.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_hdlc_flag, %if.then88)) #9
          to label %cleanup [label %if.then88], !srcloc !251

if.then88:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %58, i32 noundef %call14, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.then69, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_dma(ptr noundef %bc, i32 noundef %idx, i32 noundef %cnt) unnamed_addr #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %lastrx = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 4
  %2 = ptrtoint ptr %lastrx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lastrx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp = icmp eq i32 %3, %idx
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rxstate = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 5
  %4 = ptrtoint ptr %rxstate to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rxstate, align 4
  %6 = or i16 %5, 256
  store i16 %6, ptr %rxstate, align 4
  %name = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %8, i32 noundef %idx) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %lastrx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %idx, ptr %lastrx, align 4
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 2
  %10 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %Flags, align 4
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dropcnt = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 25
  %13 = ptrtoint ptr %dropcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dropcnt, align 4
  %add = add i32 %14, %cnt
  store i32 %add, ptr %dropcnt, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @bchannel_get_rxbuf(ptr noundef %bc, i32 noundef %cnt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -12
  br i1 %cmp11, label %do.end16, label %if.end23

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %name18 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr21 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %15 = ptrtoint ptr %nr21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name18, i32 noundef %16, i32 noundef %cnt) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %Flags, align 4
  %19 = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %rx_skb = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 9
  %20 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_skb, align 4
  %call30 = tail call ptr @skb_put(ptr noundef %21, i32 noundef %cnt) #9
  br label %if.end31

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %hrbuf = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 10
  %22 = ptrtoint ptr %hrbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hrbuf, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %p.0 = phi ptr [ %call30, %if.then28 ], [ %23, %if.else ]
  %24 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp32228 = icmp sgt i32 %cnt, 0
  br i1 %cmp32228, label %for.body.lr.ph, label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end31
  %recv = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 13
  %start = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 13, i32 1
  %nr35 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.addr.0230 = phi i32 [ %idx, %for.body.lr.ph ], [ %spec.store.select, %for.body.for.body_crit_edge ]
  %storemerge229 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %for.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %start, align 4
  %inc = add i32 %idx.addr.0230, 1
  %arrayidx = getelementptr i32, ptr %26, i32 %idx.addr.0230
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %nr35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr35, align 4
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %shr = lshr i32 %28, 8
  %spec.select = select i1 %tobool36.not, i32 %28, i32 %shr
  %31 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %recv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %32)
  %cmp40.not = icmp ult i32 %inc, %32
  %spec.store.select = select i1 %cmp40.not, i32 %inc, i32 0
  %conv45 = trunc i32 %spec.select to i8
  %arrayidx46 = getelementptr i8, ptr %p.0, i32 %storemerge229
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv45, ptr %arrayidx46, align 1
  %34 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i, align 4
  %inc47 = add i32 %35, 1
  store i32 %inc47, ptr %i, align 4
  %cmp32 = icmp slt i32 %inc47, %cnt
  br i1 %cmp32, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %36 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %Flags, align 4
  %38 = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool51.not = icmp eq i32 %38, 0
  br i1 %tobool51.not, label %if.end54, label %for.end.if.then52_crit_edge

for.end.if.then52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

for.end.thread:                                   ; preds = %if.end31
  %39 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %Flags, align 4
  %41 = and i32 %40, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool51.not236 = icmp eq i32 %41, 0
  br i1 %tobool51.not236, label %for.end.thread.cleanup_crit_edge, label %for.end.thread.if.then52_crit_edge

for.end.thread.if.then52_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then52:                                        ; preds = %for.end.thread.if.then52_crit_edge, %for.end.if.then52_crit_edge
  tail call void @recv_Bchannel(ptr noundef %bc, i32 noundef 0, i1 noundef zeroext false) #9
  br label %cleanup

if.end54:                                         ; preds = %for.end
  br i1 %cmp32228, label %while.body.lr.ph, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end54
  %hrbuf55 = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 10
  %42 = ptrtoint ptr %hrbuf55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hrbuf55, align 4
  %hrecv = getelementptr inbounds %struct.tiger_ch, ptr %bc, i32 0, i32 8
  %rx_skb59 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 9
  %maxlen = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 10
  %name144 = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 2
  %nr147 = getelementptr inbounds %struct.bchannel, ptr %bc, i32 0, i32 1
  %log = getelementptr inbounds %struct.tiger_hw, ptr %1, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end155.while.body_crit_edge, %while.body.lr.ph
  %cnt.addr.0233 = phi i32 [ %cnt, %while.body.lr.ph ], [ %sub, %if.end155.while.body_crit_edge ]
  %pn.0232 = phi ptr [ %43, %while.body.lr.ph ], [ %add.ptr, %if.end155.while.body_crit_edge ]
  %44 = ptrtoint ptr %rx_skb59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_skb59, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %maxlen to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %maxlen, align 4
  %conv61 = zext i16 %49 to i32
  %call62 = call i32 @isdnhdlc_decode(ptr noundef %hrecv, ptr noundef %pn.0232, i32 noundef %cnt.addr.0233, ptr noundef nonnull %i, ptr noundef %47, i32 noundef %conv61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp sgt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.else110

if.then65:                                        ; preds = %while.body
  %50 = ptrtoint ptr %rx_skb59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_skb59, align 4
  %call68 = call ptr @skb_put(ptr noundef %51, i32 noundef %call62) #9
  %52 = load i32, ptr @debug, align 4
  %and69 = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then65.if.end90_crit_edge, label %if.then71

if.then65.if.end90_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then71:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %nr147 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr147, align 4
  %call77 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %log, i32 noundef 64, ptr noundef nonnull @.str.66, i32 noundef %54, ptr noundef %name144, i32 noundef %call62)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_dma.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_dma, %if.then84)) #9
          to label %if.end90 [label %if.then84], !srcloc !251

if.then84:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef %log, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %call68, i32 noundef %call62, i1 noundef zeroext true) #9
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %if.then71, %if.then65.if.end90_crit_edge
  call void @recv_Bchannel(ptr noundef %bc, i32 noundef 0, i1 noundef zeroext false) #9
  %55 = ptrtoint ptr %maxlen to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %maxlen, align 4
  %conv95 = zext i16 %56 to i32
  %call96 = call i32 @bchannel_get_rxbuf(ptr noundef %bc, i32 noundef %conv95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end102, label %if.end90.if.end155_crit_edge

if.end90.if.end155_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

do.end102:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %nr147 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr147, align 4
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name144, i32 noundef %58, i32 noundef %cnt.addr.0233) #12
  br label %cleanup

if.else110:                                       ; preds = %while.body
  %59 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call62, label %if.else110.if.end155_crit_edge [
    i32 -2, label %do.end116
    i32 -1, label %do.end129
    i32 -3, label %do.end142
  ]

if.else110.if.end155_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

do.end116:                                        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %nr147 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr147, align 4
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name144, i32 noundef %61) #12
  br label %if.end155

do.end129:                                        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %nr147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr147, align 4
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name144, i32 noundef %63) #12
  br label %if.end155

do.end142:                                        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %nr147 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr147, align 4
  %66 = ptrtoint ptr %maxlen to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %maxlen, align 4
  %conv150 = zext i16 %67 to i32
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name144, i32 noundef %65, i32 noundef %conv150) #12
  br label %if.end155

if.end155:                                        ; preds = %do.end142, %do.end129, %do.end116, %if.else110.if.end155_crit_edge, %if.end90.if.end155_crit_edge
  %68 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i, align 4
  %add.ptr = getelementptr i8, ptr %pn.0232, i32 %69
  %sub = sub i32 %cnt.addr.0233, %69
  %cmp56 = icmp sgt i32 %sub, 0
  br i1 %cmp56, label %if.end155.while.body_crit_edge, label %if.end155.cleanup_crit_edge

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end155.while.body_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end155.cleanup_crit_edge, %do.end102, %if.end54.cleanup_crit_edge, %if.then52, %for.end.thread.cleanup_crit_edge, %do.end16, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_get_rxbuf(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Bchannel(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isdnhdlc_decode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_freebchannel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !176, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 116, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 117, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version462, !6, !"__UNIQUE_ID_version462", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 118, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 119, i32 1}
!13 = !{ptr @__UNIQUE_ID_debug463, !14, !"__UNIQUE_ID_debug463", i1 false, i1 false}
!14 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 120, i32 1}
!15 = !{ptr @__initcall__kmod_netjet__482_1153_nj_init6, !16, !"__initcall__kmod_netjet__482_1153_nj_init6", i1 false, i1 false}
!16 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1153, i32 1}
!17 = !{ptr @__exitcall_nj_cleanup, !18, !"__exitcall_nj_cleanup", i1 false, i1 false}
!18 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1154, i32 1}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 89, i32 12}
!21 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @__param_ops_debug, !12, !"__param_ops_debug", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 88, i32 8}
!25 = !{ptr @card_lock, !24, !"card_lock", i1 false, i1 false}
!26 = !{ptr @Cards, !27, !"Cards", i1 false, i1 false}
!27 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 87, i32 8}
!28 = !{ptr @nj_driver, !29, !"nj_driver", i1 false, i1 false}
!29 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1132, i32 26}
!30 = !{ptr @nj_pci_ids, !31, !"nj_pci_ids", i1 false, i1 false}
!31 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1125, i32 35}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1057, i32 3}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nj_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @nj_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1063, i32 3}
!40 = !{ptr @nj_probe._entry.7, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nj_probe._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1069, i32 3}
!44 = !{ptr @nj_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nj_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1075, i32 3}
!48 = !{ptr @nj_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nj_probe._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1087, i32 2}
!52 = !{ptr @nj_probe._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nj_probe._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1003, i32 44}
!56 = !{ptr @setup_instance.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1010, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1040, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @setup_instance._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @setup_instance._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @nj_cnt, !65, !"nj_cnt", i1 false, i1 false}
!65 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 90, i32 12}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 878, i32 2}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @nj_dctrl.__UNIQUE_ID_ddebug479, !67, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 889, i32 4}
!72 = !{ptr @nj_dctrl._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nj_dctrl._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 892, i32 3}
!76 = !{ptr @nj_dctrl.__UNIQUE_ID_ddebug480, !75, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 900, i32 3}
!79 = !{ptr @nj_dctrl.__UNIQUE_ID_ddebug481, !78, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 841, i32 3}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @channel_ctrl._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @channel_ctrl._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 543, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @fill_dma.__UNIQUE_ID_ddebug472, !86, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 554, i32 3}
!91 = !{ptr @fill_dma.__UNIQUE_ID_ddebug473, !90, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 591, i32 33}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 593, i32 3}
!96 = !{ptr @fill_dma.__UNIQUE_ID_ddebug474, !95, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!97 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 480, i32 2}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @resync.__UNIQUE_ID_ddebug468, !99, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 202, i32 2}
!104 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mode_tiger.__UNIQUE_ID_ddebug465, !103, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 254, i32 3}
!108 = !{ptr @mode_tiger._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mode_tiger._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 262, i32 2}
!112 = !{ptr @mode_tiger.__UNIQUE_ID_ddebug466, !111, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 180, i32 2}
!115 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @fill_mem.__UNIQUE_ID_ddebug464, !114, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 797, i32 2}
!119 = !{ptr @nj_bctrl.__UNIQUE_ID_ddebug478, !118, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 815, i32 3}
!122 = !{ptr @nj_bctrl._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @nj_bctrl._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 986, i32 3}
!126 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @nj_setup._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @nj_setup._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 919, i32 3}
!131 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @nj_init_card._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @nj_init_card._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 688, i32 2}
!136 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @nj_irq.__UNIQUE_ID_ddebug476, !135, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 717, i32 2}
!140 = !{ptr @nj_irq.__UNIQUE_ID_ddebug477, !139, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 661, i32 3}
!143 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @send_tiger._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @send_tiger._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 632, i32 4}
!148 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @send_tiger_bc._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @send_tiger_bc._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 644, i32 3}
!153 = !{ptr @send_tiger_bc.__UNIQUE_ID_ddebug475, !152, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 496, i32 2}
!156 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @fill_hdlc_flag.__UNIQUE_ID_ddebug469, !155, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 503, i32 2}
!160 = !{ptr @fill_hdlc_flag.__UNIQUE_ID_ddebug470, !159, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!161 = !{ptr @fill_hdlc_flag.__UNIQUE_ID_ddebug471, !162, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!162 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 519, i32 3}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 372, i32 3}
!165 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @read_dma._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @read_dma._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 383, i32 3}
!170 = !{ptr @read_dma._entry.63, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @read_dma._entry_ptr.65, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 414, i32 7}
!174 = !{ptr @read_dma.__UNIQUE_ID_ddebug467, !175, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!175 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 416, i32 5}
!176 = !{ptr @read_dma._entry.67, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 423, i32 5}
!178 = !{ptr @read_dma._entry_ptr.68, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 428, i32 4}
!181 = !{ptr @read_dma._entry.69, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @read_dma._entry_ptr.71, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.73, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 431, i32 4}
!185 = !{ptr @read_dma._entry.72, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @read_dma._entry_ptr.74, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 434, i32 4}
!189 = !{ptr @read_dma._entry.75, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @read_dma._entry_ptr.77, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 303, i32 3}
!193 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @inittiger._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @inittiger._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 307, i32 3}
!198 = !{ptr @inittiger._entry.80, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @inittiger._entry_ptr.82, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 313, i32 4}
!202 = !{ptr @inittiger._entry.83, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @inittiger._entry_ptr.85, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 318, i32 4}
!206 = !{ptr @inittiger._entry.86, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @inittiger._entry_ptr.88, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 333, i32 3}
!210 = !{ptr @inittiger._entry.89, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @inittiger._entry_ptr.91, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 351, i32 3}
!214 = !{ptr @inittiger._entry.92, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @inittiger._entry_ptr.94, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1119, i32 3}
!218 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @nj_remove._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @nj_remove._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/isdn/hardware/mISDN/netjet.c", i32 1143, i32 2}
!223 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @nj_init._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @nj_init._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{!"auto-init"}
!236 = !{i64 2157219902}
!237 = !{i64 4224635}
!238 = !{i64 2157220249}
!239 = !{i64 2157237816}
!240 = !{i64 2157239463}
!241 = !{i64 2157241118}
!242 = !{i64 2157241473}
!243 = !{i64 2157241829}
!244 = !{i64 2157251186}
!245 = !{i64 4224832}
!246 = !{i64 2157251712}
!247 = !{i64 2157252234}
!248 = !{i64 2157254966}
!249 = !{i64 2157255492}
!250 = !{i64 2157256014}
!251 = !{i64 2148744024, i64 2148744029, i64 2148744042, i64 2148744086, i64 2148744120, i64 2148744141}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{i64 4225250}
!254 = !{i64 2157269831}
!255 = !{i64 2157228174}
!256 = !{i64 2157228521}
!257 = !{i64 2157229283}
!258 = !{i64 2157229633}
!259 = !{i64 2157230135}
!260 = !{i64 2157230485}
!261 = !{i64 2157232987}
!262 = !{i64 2157233670}
!263 = !{i64 4225030}
!264 = !{i64 2157236992}
!265 = !{i64 2157237292}
!266 = !{i64 2157237592}
!267 = !{i64 2157220605}
!268 = !{i64 2157221081}
!269 = !{i64 2157221311}
!270 = !{i64 2157221687}
!271 = !{i64 2157222068}
!272 = !{i64 2157222596}
!273 = !{i64 2157295132}
!274 = !{i64 2157295432}
!275 = !{i64 2157298082}
!276 = !{i64 2157298891}
!277 = !{i64 2157299574}
