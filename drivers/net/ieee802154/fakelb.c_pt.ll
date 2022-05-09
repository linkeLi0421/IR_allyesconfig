; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/fakelb.c_pt.bc'
source_filename = "../drivers/net/ieee802154/fakelb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.fakelb_phy = type { ptr, i8, i8, i8, %struct.list_head, %struct.list_head }
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

@__param_str_numlbs = internal constant [14 x i8] c"fakelb.numlbs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@numlbs = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_numlbs = internal constant %struct.kernel_param { ptr @__param_str_numlbs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @numlbs } }, section "__param", align 4
@__UNIQUE_ID_numlbstype337 = internal constant [27 x i8] c"fakelb.parmtype=numlbs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_numlbs338 = internal constant [45 x i8] c"fakelb.parm=numlbs: number of pseudo devices\00", section ".modinfo", align 1
@ieee802154fake_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fakelb_probe, ptr @fakelb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ieee802154fake_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_fakelb__339_261_fakelb_init_module6 = internal global ptr @fakelb_init_module, section ".initcall6.init", align 4
@__exitcall_fake_remove_module = internal global ptr @fake_remove_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file340 = internal constant [42 x i8] c"fakelb.file=drivers/net/ieee802154/fakelb\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [19 x i8] c"fakelb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ieee802154fakelb\00", [47 x i8] zeroinitializer }, align 32
@fakelb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"added %i fake ieee802154 hardware devices\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fakelb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ieee802154/fakelb.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fakelb_probe._entry_ptr = internal global ptr @fakelb_probe._entry, section ".printk_index", align 4
@fakelb_phys_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fakelb_phys_lock, i64 52), ptr getelementptr (i8, ptr @fakelb_phys_lock, i64 52) }, ptr @fakelb_phys_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@fakelb_phys = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fakelb_phys, ptr @fakelb_phys }, [24 x i8] zeroinitializer }, align 32
@fakelb_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @fakelb_hw_start, ptr @fakelb_hw_stop, ptr null, ptr @fakelb_hw_xmit, ptr @fakelb_hw_ed, ptr @fakelb_hw_channel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fakelb_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@fakelb_ifup_phys_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@fakelb_ifup_phys = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fakelb_ifup_phys, ptr @fakelb_ifup_phys }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fakelb_ifup_phys_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fakelb_phys_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fakelb_phys_lock\00", [47 x i8] zeroinitializer }, align 32
@fakelb_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014fakelb driver is marked as deprecated, please use mac802154_hwsim!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fakelb_init_module\00", [45 x i8] zeroinitializer }, align 32
@fakelb_init_module._entry_ptr = internal global ptr @fakelb_init_module._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"numlbs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 22, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"ieee802154fake_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 237, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"ieee802154fake_dev\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 235, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 241, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 213, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"fakelb_phys_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"fakelb_phys\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 24, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"fakelb_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 113, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"fakelb_ifup_phys_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"fakelb_ifup_phys\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 28, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 25, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [35 x i8] c"../drivers/net/ieee802154/fakelb.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 250, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__UNIQUE_ID_numlbs338, ptr @__UNIQUE_ID_numlbstype337, ptr @__exitcall_fake_remove_module, ptr @__initcall__kmod_fakelb__339_261_fakelb_init_module6, ptr @__param_numlbs, ptr @fake_remove_module, ptr @fakelb_init_module._entry, ptr @fakelb_init_module._entry_ptr, ptr @fakelb_probe._entry, ptr @fakelb_probe._entry_ptr, ptr @numlbs, ptr @ieee802154fake_driver, ptr @ieee802154fake_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fakelb_phys_lock, ptr @fakelb_phys, ptr @fakelb_ops, ptr @fakelb_ifup_phys_lock, ptr @fakelb_ifup_phys, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numlbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154fake_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802154fake_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakelb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakelb_phys_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakelb_phys to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakelb_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakelb_ifup_phys_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakelb_ifup_phys to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakelb_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fake_remove_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ieee802154fake_driver) #6
  %0 = load ptr, ptr @ieee802154fake_dev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fakelb_init_module() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  store ptr %call.i.i, ptr @ieee802154fake_dev, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  %call2 = call i32 @__platform_driver_register(ptr noundef nonnull @ieee802154fake_driver, ptr noundef null) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fakelb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @numlbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp38 = icmp sgt i32 %0, 0
  br i1 %cmp38, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = tail call ptr @ieee802154_alloc_hw(i32 noundef 24, ptr noundef nonnull @fakelb_ops) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.err_slave_crit_edge, label %if.end.i

for.body.err_slave_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_slave

if.end.i:                                         ; preds = %for.body
  %priv.i = getelementptr inbounds %struct.ieee802154_hw, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %2, align 4
  %phy2.i = getelementptr inbounds %struct.ieee802154_hw, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy2.i, align 4
  %supported.i = getelementptr inbounds %struct.wpan_phy, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %supported.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %supported.i, align 4
  %8 = load ptr, ptr %phy2.i, align 4
  %supported4.i = getelementptr inbounds %struct.wpan_phy, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %supported4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %supported4.i, align 4
  %or7.i = or i32 %10, 2046
  store i32 %or7.i, ptr %supported4.i, align 4
  %11 = load ptr, ptr %phy2.i, align 4
  %supported9.i = getelementptr inbounds %struct.wpan_phy, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %supported9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %supported9.i, align 4
  %or12.i = or i32 %13, 134215680
  store i32 %or12.i, ptr %supported9.i, align 4
  %14 = load ptr, ptr %phy2.i, align 4
  %arrayidx16.i = getelementptr %struct.wpan_phy, ptr %14, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16.i, align 4
  %or17.i = or i32 %16, 1
  store i32 %or17.i, ptr %arrayidx16.i, align 4
  %17 = load ptr, ptr %phy2.i, align 4
  %arrayidx21.i = getelementptr %struct.wpan_phy, ptr %17, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21.i, align 4
  %or22.i = or i32 %19, 2046
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  %20 = load ptr, ptr %phy2.i, align 4
  %arrayidx26.i = getelementptr %struct.wpan_phy, ptr %20, i32 0, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx26.i, align 4
  %or27.i = or i32 %22, 1
  store i32 %or27.i, ptr %arrayidx26.i, align 4
  %23 = load ptr, ptr %phy2.i, align 4
  %arrayidx31.i = getelementptr %struct.wpan_phy, ptr %23, i32 0, i32 4, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31.i, align 4
  %or32.i = or i32 %25, 2046
  store i32 %or32.i, ptr %arrayidx31.i, align 4
  %26 = load ptr, ptr %phy2.i, align 4
  %arrayidx36.i = getelementptr %struct.wpan_phy, ptr %26, i32 0, i32 4, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx36.i, align 4
  %or37.i = or i32 %28, 16383
  store i32 %or37.i, ptr %arrayidx36.i, align 4
  %29 = load ptr, ptr %phy2.i, align 4
  %arrayidx41.i = getelementptr %struct.wpan_phy, ptr %29, i32 0, i32 4, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx41.i, align 4
  %or42.i = or i32 %31, 1
  store i32 %or42.i, ptr %arrayidx41.i, align 4
  %32 = load ptr, ptr %phy2.i, align 4
  %arrayidx46.i = getelementptr %struct.wpan_phy, ptr %32, i32 0, i32 4, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46.i, align 4
  %or47.i = or i32 %34, 30
  store i32 %or47.i, ptr %arrayidx46.i, align 4
  %35 = load ptr, ptr %phy2.i, align 4
  %arrayidx51.i = getelementptr %struct.wpan_phy, ptr %35, i32 0, i32 4, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx51.i, align 4
  %or52.i = or i32 %37, 65504
  store i32 %or52.i, ptr %arrayidx51.i, align 4
  %38 = load ptr, ptr %phy2.i, align 4
  %arrayidx56.i = getelementptr %struct.wpan_phy, ptr %38, i32 0, i32 4, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx56.i, align 4
  %or57.i = or i32 %40, 15
  store i32 %or57.i, ptr %arrayidx56.i, align 4
  %41 = load ptr, ptr %phy2.i, align 4
  %arrayidx61.i = getelementptr %struct.wpan_phy, ptr %41, i32 0, i32 4, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx61.i, align 4
  %or62.i = or i32 %43, 240
  store i32 %or62.i, ptr %arrayidx61.i, align 4
  %44 = load ptr, ptr %phy2.i, align 4
  %arrayidx66.i = getelementptr %struct.wpan_phy, ptr %44, i32 0, i32 4, i32 0, i32 6
  %45 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx66.i, align 4
  %or67.i = or i32 %46, 1023
  store i32 %or67.i, ptr %arrayidx66.i, align 4
  %47 = load ptr, ptr %phy2.i, align 4
  %arrayidx71.i = getelementptr %struct.wpan_phy, ptr %47, i32 0, i32 4, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx71.i, align 4
  %or72.i = or i32 %49, 4193280
  store i32 %or72.i, ptr %arrayidx71.i, align 4
  %50 = load ptr, ptr %phy2.i, align 4
  %perm_extended_addr.i = getelementptr inbounds %struct.wpan_phy, ptr %50, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr.i, i32 noundef 8) #6
  %arrayidx.i.i = getelementptr i8, ptr %perm_extended_addr.i, i32 7
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i, align 1
  %53 = and i8 %52, -4
  %54 = or i8 %53, 2
  store i8 %54, ptr %arrayidx.i.i, align 1
  %55 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy2.i, align 4
  %current_channel.i = getelementptr inbounds %struct.wpan_phy, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 13, ptr %current_channel.i, align 8
  %58 = load ptr, ptr %phy2.i, align 4
  %current_channel76.i = getelementptr inbounds %struct.wpan_phy, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %current_channel76.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %current_channel76.i, align 8
  %channel.i = getelementptr inbounds %struct.fakelb_phy, ptr %2, i32 0, i32 2
  %61 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %channel.i, align 1
  %flags.i = getelementptr inbounds %struct.ieee802154_hw, ptr %call.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 32, ptr %flags.i, align 4
  %parent.i = getelementptr inbounds %struct.ieee802154_hw, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dev, ptr %parent.i, align 4
  %call77.i = tail call i32 @ieee802154_register_hw(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %fakelb_add_one.exit

if.end80.i:                                       ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @fakelb_phys_lock, i32 noundef 0) #6
  %list.i = getelementptr inbounds %struct.fakelb_phy, ptr %2, i32 0, i32 4
  %64 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @fakelb_phys, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %64, ptr noundef nonnull @fakelb_phys) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end80.i.fakelb_add_one.exit.thread34_crit_edge

if.end80.i.fakelb_add_one.exit.thread34_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fakelb_add_one.exit.thread34

if.end.i.i.i:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @fakelb_phys, i32 0, i32 1), align 4
  %65 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @fakelb_phys, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fakelb_phy, ptr %2, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %prev3.i.i.i, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %list.i, ptr %64, align 4
  br label %fakelb_add_one.exit.thread34

fakelb_add_one.exit.thread34:                     ; preds = %if.end.i.i.i, %if.end80.i.fakelb_add_one.exit.thread34_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fakelb_phys_lock) #6
  br label %for.inc

fakelb_add_one.exit:                              ; preds = %if.end.i
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 4
  tail call void @ieee802154_free_hw(ptr noundef %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp1 = icmp slt i32 %call77.i, 0
  br i1 %cmp1, label %fakelb_add_one.exit.err_slave_crit_edge, label %fakelb_add_one.exit.for.inc_crit_edge

fakelb_add_one.exit.for.inc_crit_edge:            ; preds = %fakelb_add_one.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

fakelb_add_one.exit.err_slave_crit_edge:          ; preds = %fakelb_add_one.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_slave

for.inc:                                          ; preds = %fakelb_add_one.exit.for.inc_crit_edge, %fakelb_add_one.exit.thread34
  %inc = add nuw nsw i32 %i.039, 1
  %70 = load i32, ptr @numlbs, align 4
  %cmp = icmp slt i32 %inc, %70
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %.lcssa = phi i32 [ %0, %entry.do.end_crit_edge ], [ %70, %for.inc.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.1, i32 noundef %.lcssa) #9
  br label %cleanup

err_slave:                                        ; preds = %fakelb_add_one.exit.err_slave_crit_edge, %for.body.err_slave_crit_edge
  %retval.0.i33 = phi i32 [ %call77.i, %fakelb_add_one.exit.err_slave_crit_edge ], [ -12, %for.body.err_slave_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @fakelb_phys_lock, i32 noundef 0) #6
  %71 = load ptr, ptr @fakelb_phys, align 4
  %cmp9.not40 = icmp eq ptr %71, @fakelb_phys
  br i1 %cmp9.not40, label %err_slave.for.end17_crit_edge, label %err_slave.for.body10_crit_edge

err_slave.for.body10_crit_edge:                   ; preds = %err_slave
  br label %for.body10

err_slave.for.end17_crit_edge:                    ; preds = %err_slave
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.body10:                                       ; preds = %fakelb_del.exit.for.body10_crit_edge, %err_slave.for.body10_crit_edge
  %.pn.in41 = phi ptr [ %.pn, %fakelb_del.exit.for.body10_crit_edge ], [ %71, %err_slave.for.body10_crit_edge ]
  %phy.0 = getelementptr i8, ptr %.pn.in41, i32 -8
  %72 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn = load ptr, ptr %.pn.in41, align 4
  %call.i.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #6
  br i1 %call.i.i.i29, label %if.end.i.i.i30, label %for.body10.fakelb_del.exit_crit_edge

for.body10.fakelb_del.exit_crit_edge:             ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %fakelb_del.exit

if.end.i.i.i30:                                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr i8, ptr %.pn.in41, i32 4
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i, align 4
  %75 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %fakelb_del.exit

fakelb_del.exit:                                  ; preds = %if.end.i.i.i30, %for.body10.fakelb_del.exit_crit_edge
  %79 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in41, i32 4
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %phy.0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phy.0, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %82) #6
  %83 = ptrtoint ptr %phy.0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy.0, align 4
  tail call void @ieee802154_free_hw(ptr noundef %84) #6
  %cmp9.not = icmp eq ptr %.pn, @fakelb_phys
  br i1 %cmp9.not, label %fakelb_del.exit.for.end17_crit_edge, label %fakelb_del.exit.for.body10_crit_edge

fakelb_del.exit.for.body10_crit_edge:             ; preds = %fakelb_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

fakelb_del.exit.for.end17_crit_edge:              ; preds = %fakelb_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.end17:                                        ; preds = %fakelb_del.exit.for.end17_crit_edge, %err_slave.for.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fakelb_phys_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %do.end
  %retval.0 = phi i32 [ %retval.0.i33, %for.end17 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fakelb_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fakelb_phys_lock, i32 noundef 0) #6
  %0 = load ptr, ptr @fakelb_phys, align 4
  %cmp.not15 = icmp eq ptr %0, @fakelb_phys
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %fakelb_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in16 = phi ptr [ %.pn, %fakelb_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %phy.0 = getelementptr i8, ptr %.pn.in16, i32 -8
  %1 = ptrtoint ptr %.pn.in16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in16, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in16) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.fakelb_del.exit_crit_edge

for.body.fakelb_del.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fakelb_del.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr i8, ptr %.pn.in16, i32 4
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %.pn.in16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %fakelb_del.exit

fakelb_del.exit:                                  ; preds = %if.end.i.i.i, %for.body.fakelb_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in16, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in16, i32 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %phy.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy.0, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %11) #6
  %12 = ptrtoint ptr %phy.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.0, align 4
  tail call void @ieee802154_free_hw(ptr noundef %13) #6
  %cmp.not = icmp eq ptr %.pn, @fakelb_phys
  br i1 %cmp.not, label %fakelb_del.exit.for.end_crit_edge, label %fakelb_del.exit.for.body_crit_edge

fakelb_del.exit.for.body_crit_edge:               ; preds = %fakelb_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

fakelb_del.exit.for.end_crit_edge:                ; preds = %fakelb_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %fakelb_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fakelb_phys_lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fakelb_hw_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  %suspended = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %suspended, align 2
  %list_ifup = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 5
  %3 = load ptr, ptr @fakelb_ifup_phys, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_ifup, ptr noundef nonnull @fakelb_ifup_phys, ptr noundef %3) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_ifup, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %list_ifup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %list_ifup, align 4
  %prev3.i.i = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fakelb_ifup_phys, ptr %prev3.i.i, align 4
  store volatile ptr %list_ifup, ptr @fakelb_ifup_phys, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fakelb_hw_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  %suspended = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 2
  %list_ifup = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_ifup) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list_ifup to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list_ifup, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %9 = ptrtoint ptr %list_ifup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list_ifup, align 4
  %prev.i = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fakelb_hw_xmit(ptr noundef %hw, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  %suspended = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !57

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 66, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %.pn57 = load ptr, ptr @fakelb_ifup_phys, align 4
  %cmp.not59 = icmp eq ptr %.pn57, @fakelb_ifup_phys
  br i1 %cmp.not59, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %page = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 1
  %channel = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn60 = phi ptr [ %.pn57, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %phy.061 = getelementptr i8, ptr %.pn60, i32 -16
  %cmp23 = icmp eq ptr %1, %phy.061
  br i1 %cmp23, label %for.body.for.inc_crit_edge, label %if.end25

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page, align 4
  %page26 = getelementptr i8, ptr %.pn60, i32 -12
  %6 = ptrtoint ptr %page26 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %page26, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp28 = icmp eq i8 %5, %7
  br i1 %cmp28, label %land.lhs.true, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end25
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channel, align 1
  %channel31 = getelementptr i8, ptr %.pn60, i32 -11
  %10 = ptrtoint ptr %channel31 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel31, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp33 = icmp eq i8 %9, %11
  br i1 %cmp33, label %if.then35, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then35:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #6
  %tobool36.not = icmp eq ptr %call.i.i, null
  br i1 %tobool36.not, label %if.then35.for.inc_crit_edge, label %if.then37

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %phy.061 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy.061, align 4
  tail call void @ieee802154_rx_irqsafe(ptr noundef %17, ptr noundef nonnull %call.i.i, i8 noundef zeroext -52) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %if.then35.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end25.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, @fakelb_ifup_phys
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  tail call void @ieee802154_xmit_complete(ptr noundef %hw, ptr noundef %skb, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fakelb_hw_ed(ptr nocapture noundef readnone %hw, ptr noundef writeonly %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %level, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -66, ptr %level, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fakelb_hw_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  %page1 = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %page1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %page, ptr %page1, align 4
  %channel2 = getelementptr inbounds %struct.fakelb_phy, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %channel2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %channel, ptr %channel2, align 1
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @fakelb_ifup_phys_lock) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fakelb_set_promiscuous_mode(ptr nocapture noundef readnone %hw, i1 noundef zeroext %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__param_numlbs, !1, !"__param_numlbs", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/fakelb.c", i32 124, i32 1}
!2 = !{ptr @__UNIQUE_ID_numlbstype337, !1, !"__UNIQUE_ID_numlbstype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_numlbs338, !4, !"__UNIQUE_ID_numlbs338", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/fakelb.c", i32 125, i32 1}
!5 = !{ptr @__initcall__kmod_fakelb__339_261_fakelb_init_module6, !6, !"__initcall__kmod_fakelb__339_261_fakelb_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/fakelb.c", i32 261, i32 1}
!7 = !{ptr @__exitcall_fake_remove_module, !8, !"__exitcall_fake_remove_module", i1 false, i1 false}
!8 = !{!"../drivers/net/ieee802154/fakelb.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_file340, !10, !"__UNIQUE_ID_file340", i1 false, i1 false}
!10 = !{!"../drivers/net/ieee802154/fakelb.c", i32 263, i32 1}
!11 = !{ptr @__UNIQUE_ID_license341, !10, !"__UNIQUE_ID_license341", i1 false, i1 false}
!12 = !{ptr @ieee802154fake_dev, !13, !"ieee802154fake_dev", i1 false, i1 false}
!13 = !{!"../drivers/net/ieee802154/fakelb.c", i32 235, i32 32}
!14 = !{ptr @__param_str_numlbs, !1, !"__param_str_numlbs", i1 false, i1 false}
!15 = !{ptr @numlbs, !16, !"numlbs", i1 false, i1 false}
!16 = !{!"../drivers/net/ieee802154/fakelb.c", i32 22, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ieee802154/fakelb.c", i32 241, i32 12}
!19 = !{ptr @ieee802154fake_driver, !20, !"ieee802154fake_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/ieee802154/fakelb.c", i32 237, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ieee802154/fakelb.c", i32 213, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fakelb_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @fakelb_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @fakelb_ops, !30, !"fakelb_ops", i1 false, i1 false}
!30 = !{!"../drivers/net/ieee802154/fakelb.c", i32 113, i32 36}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ieee802154/fakelb.c", i32 28, i32 8}
!33 = !{ptr @fakelb_ifup_phys_lock, !32, !"fakelb_ifup_phys_lock", i1 false, i1 false}
!34 = !{ptr @fakelb_ifup_phys, !35, !"fakelb_ifup_phys", i1 false, i1 false}
!35 = !{!"../drivers/net/ieee802154/fakelb.c", i32 27, i32 8}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ieee802154/fakelb.c", i32 25, i32 8}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @fakelb_phys_lock, !37, !"fakelb_phys_lock", i1 false, i1 false}
!40 = !{ptr @fakelb_phys, !41, !"fakelb_phys", i1 false, i1 false}
!41 = !{!"../drivers/net/ieee802154/fakelb.c", i32 24, i32 8}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ieee802154/fakelb.c", i32 250, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fakelb_init_module._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @fakelb_init_module._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!"branch_weights", i32 1, i32 2000}
