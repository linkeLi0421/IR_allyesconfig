; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/renesas_usb3.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/renesas_usb3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.renesas_usb3_priv = type { i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.renesas_usb3 = type { ptr, %struct.usb_gadget, ptr, ptr, %struct.work_struct, ptr, ptr, ptr, ptr, %struct.work_struct, i32, ptr, i32, [4 x %struct.renesas_usb3_dma], %struct.spinlock, i32, ptr, i32, i16, [8 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.renesas_usb3_dma = type { ptr, i32, i32, i8 }
%struct.renesas_usb3_request = type { %struct.usb_request, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.renesas_usb3_ep = type { %struct.usb_ep, ptr, ptr, i32, [8 x i8], %struct.list_head, i32, i8, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.renesas_usb3_prd = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }

@__param_str_use_dma = internal constant [21 x i8] c"renesas_usb3.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype295 = internal constant [35 x i8] c"renesas_usb3.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma296 = internal constant [45 x i8] c"renesas_usb3.parm=use_dma:use dedicated DMAC\00", section ".modinfo", align 1
@__initcall__kmod_renesas_usb3__318_2916_renesas_usb3_driver_init6 = internal global ptr @renesas_usb3_driver_init, section ".initcall6.init", align 4
@renesas_usb3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @renesas_usb3_probe, ptr @renesas_usb3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @udc_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb3_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @renesas_usb3_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_renesas_usb3_driver_exit = internal global ptr @renesas_usb3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [58 x i8] c"renesas_usb3.description=Renesas USB3.0 Peripheral driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [54 x i8] c"renesas_usb3.file=drivers/usb/gadget/udc/renesas_usb3\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [28 x i8] c"renesas_usb3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [73 x i8] c"renesas_usb3.author=Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias323 = internal constant [41 x i8] c"renesas_usb3.alias=platform:renesas_usb3\00", section ".modinfo", align 1
@udc_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas_usb3\00", [19 x i8] zeroinitializer }, align 32
@usb3_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774c0-usb3-peri\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @renesas_usb3_priv_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7795-usb3-peri\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @renesas_usb3_priv_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77990-usb3-peri\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @renesas_usb3_priv_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-usb3-peri\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @renesas_usb3_priv_gen3 }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@renesas_usb3_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @renesas_usb3_suspend, ptr @renesas_usb3_resume, ptr @renesas_usb3_suspend, ptr @renesas_usb3_resume, ptr @renesas_usb3_suspend, ptr @renesas_usb3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@renesas_usb3_quirks_match = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.18, ptr null, ptr @.str.19, ptr @renesas_usb3_priv_r8a7795_es1, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@renesas_usb3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&usb3->lock\00", [20 x i8] zeroinitializer }, align 32
@renesas_usb3_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @renesas_usb3_get_frame, ptr null, ptr @renesas_usb3_set_selfpowered, ptr null, ptr null, ptr @renesas_usb3_pullup, ptr null, ptr null, ptr @renesas_usb3_start, ptr @renesas_usb3_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@renesas_usb3_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&usb3->extcon_work)\00", [58 x i8] zeroinitializer }, align 32
@renesas_usb3_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@renesas_usb3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2797, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register extcon\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas_usb3_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/usb/gadget/udc/renesas_usb3.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@renesas_usb3_probe._entry_ptr = internal global ptr @renesas_usb3_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@dev_attr_role = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @role_show, ptr @role_store }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@renesas_usb3_role_switch_desc = internal global { %struct.usb_role_switch_desc, [60 x i8] } { %struct.usb_role_switch_desc { ptr null, ptr null, ptr null, ptr null, ptr @renesas_usb3_role_switch_set, ptr @renesas_usb3_role_switch_get, i8 1, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@renesas_usb3_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&usb3->role_work)\00", [60 x i8] zeroinitializer }, align 32
@renesas_usb3_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 2854, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"probed%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@renesas_usb3_probe._entry_ptr.15 = internal global ptr @renesas_usb3_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" with phy\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@renesas_usb3_priv_r8a7795_es1 = internal constant { %struct.renesas_usb3_priv, [16 x i8] } { %struct.renesas_usb3_priv { i32 16384, i32 2, i32 4096, i8 1 }, [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@renesas_usb3_init_ep.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 2, i8 -118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas_usb3\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas_usb3_init_ep\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: num_usb3_eps = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep%d\00", [27 x i8] zeroinitializer }, align 32
@renesas_usb3_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @renesas_usb3_ep_enable, ptr @renesas_usb3_ep_disable, ptr null, ptr @renesas_usb3_ep_alloc_request, ptr @renesas_usb3_ep_free_request, ptr @renesas_usb3_ep_queue, ptr @renesas_usb3_ep_dequeue, ptr @renesas_usb3_ep_set_halt, ptr @renesas_usb3_ep_set_wedge, ptr null, ptr @renesas_usb3_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@usb3_wait.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 0, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb3_wait\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: timed out (%8x, %08x, %08x)\0A\00", [63 x i8] zeroinitializer }, align 32
@__usb3_request_done.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 -28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__usb3_request_done\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"giveback: ep%2d, %u, %u, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@renesas_usb3_ep_queue.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 1, i8 -128, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"renesas_usb3_ep_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep_queue: ep%2d, %u\0A\00", [43 x i8] zeroinitializer }, align 32
@usb3_dma_get_setting_area.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 1, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb3_dma_get_setting_area\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: the length is too big (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@renesas_usb3_ep_dequeue.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 2, i8 46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"renesas_usb3_ep_dequeue\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ep_dequeue: ep%2d, %u\0A\00", [41 x i8] zeroinitializer }, align 32
@renesas_usb3_init_ram.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 2, i8 -99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"renesas_usb3_init_ram\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ep%2d: val = %08x, ramif = %d, base = %x\0A\00", [54 x i8] zeroinitializer }, align 32
@usb3_std_req_get_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 1, i8 -106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb3_std_req_get_status\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_status: req = %p\0A\00", [42 x i8] zeroinitializer }, align 32
@usb3_std_req_set_sel.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.38, ptr @.str.5, ptr @.str.39, i8 1, i8 -67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb3_std_req_set_sel\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_sel: req = %p\0A\00", [45 x i8] zeroinitializer }, align 32
@usb3_irq_epc_pipen_lsttr.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 1, i8 -29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb3_irq_epc_pipen_lsttr\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: len = %u, actual = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"role\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@handle_ext_role_switch_states._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 2410, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device_attach(host) failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"handle_ext_role_switch_states\00", [34 x i8] zeroinitializer }, align 32
@handle_ext_role_switch_states._entry_ptr = internal global ptr @handle_ext_role_switch_states._entry, section ".printk_index", align 4
@handle_ext_role_switch_states._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 2417, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@handle_ext_role_switch_states._entry_ptr.49 = internal global ptr @handle_ext_role_switch_states._entry.48, section ".printk_index", align 4
@handle_role_switch_states._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.50, ptr @.str.5, i32 2440, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"handle_role_switch_states\00", [38 x i8] zeroinitializer }, align 32
@handle_role_switch_states._entry_ptr = internal global ptr @handle_role_switch_states._entry, section ".printk_index", align 4
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"b_device\00", [23 x i8] zeroinitializer }, align 32
@renesas_usb3_b_device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @renesas_usb3_b_device_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @renesas_usb3_b_device_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@renesas_usb3_priv_r8a77990 = internal constant { %struct.renesas_usb3_priv, [16 x i8] } { %struct.renesas_usb3_priv { i32 16384, i32 4, i32 4096, i8 1 }, [16 x i8] zeroinitializer }, align 32
@renesas_usb3_priv_gen3 = internal constant { %struct.renesas_usb3_priv, [16 x i8] } { %struct.renesas_usb3_priv { i32 16384, i32 4, i32 4096, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 16, i64 8, i64 16, i64 32, i64 64, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 16, i64 8, i64 16, i64 32, i64 64, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9, i64 48, i64 49]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 48, i64 49]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 12288, i64 12544]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.66 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 392, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"renesas_usb3_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2907, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"udc_name\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 390, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"usb3_of_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2710, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"renesas_usb3_pm_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2904, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"renesas_usb3_quirks_match\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2728, i32 42 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2774, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"renesas_usb3_gadget_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2351, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2790, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"renesas_usb3_cable\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2736, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2797, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2814, i32 48 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"dev_attr_role\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2829, i32 44 }
@___asan_gen_.129 = private unnamed_addr constant [30 x i8] c"renesas_usb3_role_switch_desc\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2742, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2836, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2854, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2730, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2730, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant [30 x i8] c"renesas_usb3_priv_r8a7795_es1\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2690, i32 39 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2601, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2608, i32 56 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"renesas_usb3_ep_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2273, i32 32 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 433, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 912, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1537, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1269, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2233, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2677, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1625, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1782, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1933, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2498, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2496, i32 22 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2496, i32 51 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2496, i32 60 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2410, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2417, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2440, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2559, i32 22 }
@___asan_gen_.264 = private unnamed_addr constant [27 x i8] c"renesas_usb3_b_device_fops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2546, i32 37 }
@___asan_gen_.268 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 156, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2504, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"renesas_usb3_priv_r8a77990\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2703, i32 39 }
@___asan_gen_.276 = private unnamed_addr constant [23 x i8] c"renesas_usb3_priv_gen3\00", align 1
@___asan_gen_.277 = private constant [41 x i8] c"../drivers/usb/gadget/udc/renesas_usb3.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 2697, i32 39 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_alias323, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__UNIQUE_ID_use_dma296, ptr @__UNIQUE_ID_use_dmatype295, ptr @__exitcall_renesas_usb3_driver_exit, ptr @__initcall__kmod_renesas_usb3__318_2916_renesas_usb3_driver_init6, ptr @__param_use_dma, ptr @handle_ext_role_switch_states._entry, ptr @handle_ext_role_switch_states._entry.48, ptr @handle_ext_role_switch_states._entry_ptr, ptr @handle_ext_role_switch_states._entry_ptr.49, ptr @handle_role_switch_states._entry, ptr @handle_role_switch_states._entry_ptr, ptr @renesas_usb3_driver_exit, ptr @renesas_usb3_probe._entry, ptr @renesas_usb3_probe._entry.12, ptr @renesas_usb3_probe._entry_ptr, ptr @renesas_usb3_probe._entry_ptr.15, ptr @use_dma, ptr @renesas_usb3_driver, ptr @udc_name, ptr @usb3_of_match, ptr @renesas_usb3_pm_ops, ptr @renesas_usb3_quirks_match, ptr @renesas_usb3_probe.__key, ptr @.str, ptr @renesas_usb3_gadget_ops, ptr @renesas_usb3_probe.__key.1, ptr @.str.2, ptr @renesas_usb3_cable, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dev_attr_role, ptr @.str.9, ptr @renesas_usb3_role_switch_desc, ptr @renesas_usb3_probe.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @renesas_usb3_priv_r8a7795_es1, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @renesas_usb3_ep_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @renesas_usb3_b_device_fops, ptr @.str.56, ptr @.str.57, ptr @renesas_usb3_priv_r8a77990, ptr @renesas_usb3_priv_gen3], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_quirks_match to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_role to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_role_switch_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_priv_r8a7795_es1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ext_role_switch_states._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ext_role_switch_states._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_role_switch_states._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_b_device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_priv_r8a77990 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usb3_priv_gen3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @renesas_usb3_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @renesas_usb3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @renesas_usb3_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @soc_device_match(ptr noundef nonnull @renesas_usb3_quirks_match) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %priv.0 = phi ptr [ %1, %if.then ], [ %call1, %if.else ]
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 1320, i32 noundef 3520) #12
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @renesas_usb3_probe.__key, i16 noundef signext 3) #12
  %gadget = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @renesas_usb3_gadget_ops, ptr %ops, align 8
  %name = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @udc_name, ptr %name, align 4
  %max_speed = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %max_speed, align 4
  %ep_list = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 1, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ep_list, ptr %prev.i, align 4
  %call22 = tail call fastcc i32 @renesas_usb3_init_ep(ptr noundef nonnull %call.i, ptr noundef %dev5, ptr noundef %priv.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end16.cleanup_crit_edge, label %if.end25

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  tail call fastcc void @renesas_usb3_init_ram(ptr noundef nonnull %call.i, ptr noundef %dev5, ptr noundef %priv.0)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end25.dev_name.exit_crit_edge ]
  %call.i228 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev5, i32 noundef %call2, ptr noundef nonnull @renesas_usb3_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %cmp31 = icmp slt i32 %call.i228, 0
  br i1 %cmp31, label %dev_name.exit.cleanup_crit_edge, label %do.body34

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body34:                                        ; preds = %dev_name.exit
  %extcon_work = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %extcon_work, i32 noundef 0) #12
  %14 = ptrtoint ptr %extcon_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %extcon_work, align 8
  %lockdep_map = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @renesas_usb3_probe.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry39 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i229 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i229 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry39, ptr %prev.i229, align 4
  %func = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @renesas_usb3_extcon_work, ptr %func, align 4
  %call44 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev5, ptr noundef nonnull @renesas_usb3_cable) #12
  %extcon = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call44, ptr %extcon, align 4
  %cmp.i230 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then47, label %if.end50

if.then47:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call44 to i32
  br label %cleanup

if.end50:                                         ; preds = %do.body34
  %call53 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev5, ptr noundef %call44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i231 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i231, label %__renesas_usb3_ep_alloc_request.exit.thread, label %if.end65

__renesas_usb3_ep_alloc_request.exit.thread:      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %ep0_req240 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 16
  %21 = ptrtoint ptr %ep0_req240 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ep0_req240, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %queue.i = getelementptr inbounds %struct.renesas_usb3_request, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.renesas_usb3_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %ep0_req = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 16
  %24 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %ep0_req, align 4
  %25 = load i8, ptr @use_dma, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i233 = icmp eq i8 %25, 0
  br i1 %tobool.not.i233, label %if.end65.if.end70_crit_edge, label %if.end.i234

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end.i234:                                      ; preds = %if.end65
  %dma1.i = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 13
  %prd_dma.i = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev5, i32 noundef 4096, ptr noundef %prd_dma.i, i32 noundef 3264, i32 noundef 0) #12
  %26 = ptrtoint ptr %dma1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %dma1.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i234.renesas_usb3_dma_alloc_prd.exit_crit_edge, label %if.end6.i

if.end.i234.renesas_usb3_dma_alloc_prd.exit_crit_edge: ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #14
  br label %renesas_usb3_dma_alloc_prd.exit

if.end6.i:                                        ; preds = %if.end.i234
  %num.i = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %27 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num.i, align 4
  %arrayidx8.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 1
  %prd_dma.1.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 1, i32 1
  %call.i.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev5, i32 noundef 4096, ptr noundef %prd_dma.1.i, i32 noundef 3264, i32 noundef 0) #12
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.1.i, ptr %arrayidx8.i, align 4
  %tobool3.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool3.not.1.i, label %if.end6.i.renesas_usb3_dma_alloc_prd.exit_crit_edge, label %if.end6.1.i

if.end6.i.renesas_usb3_dma_alloc_prd.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %renesas_usb3_dma_alloc_prd.exit

if.end6.1.i:                                      ; preds = %if.end6.i
  %num.1.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 1, i32 2
  %29 = ptrtoint ptr %num.1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %num.1.i, align 4
  %arrayidx8.1.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 2
  %prd_dma.2.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 2, i32 1
  %call.i.2.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev5, i32 noundef 4096, ptr noundef %prd_dma.2.i, i32 noundef 3264, i32 noundef 0) #12
  %30 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.2.i, ptr %arrayidx8.1.i, align 4
  %tobool3.not.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool3.not.2.i, label %if.end6.1.i.renesas_usb3_dma_alloc_prd.exit_crit_edge, label %if.end6.2.i

if.end6.1.i.renesas_usb3_dma_alloc_prd.exit_crit_edge: ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %renesas_usb3_dma_alloc_prd.exit

if.end6.2.i:                                      ; preds = %if.end6.1.i
  %num.2.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 2, i32 2
  %31 = ptrtoint ptr %num.2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %num.2.i, align 4
  %arrayidx8.2.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 3
  %prd_dma.3.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 3, i32 1
  %call.i.3.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev5, i32 noundef 4096, ptr noundef %prd_dma.3.i, i32 noundef 3264, i32 noundef 0) #12
  %32 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.3.i, ptr %arrayidx8.2.i, align 4
  %tobool3.not.3.i = icmp eq ptr %call.i.3.i, null
  br i1 %tobool3.not.3.i, label %if.end6.2.i.renesas_usb3_dma_alloc_prd.exit_crit_edge, label %if.end6.3.i

if.end6.2.i.renesas_usb3_dma_alloc_prd.exit_crit_edge: ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %renesas_usb3_dma_alloc_prd.exit

if.end6.3.i:                                      ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %num.3.i = getelementptr %struct.renesas_usb3, ptr %call.i, i32 0, i32 13, i32 3, i32 2
  %33 = ptrtoint ptr %num.3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %num.3.i, align 4
  br label %if.end70

renesas_usb3_dma_alloc_prd.exit:                  ; preds = %if.end6.2.i.renesas_usb3_dma_alloc_prd.exit_crit_edge, %if.end6.1.i.renesas_usb3_dma_alloc_prd.exit_crit_edge, %if.end6.i.renesas_usb3_dma_alloc_prd.exit_crit_edge, %if.end.i234.renesas_usb3_dma_alloc_prd.exit_crit_edge
  tail call fastcc void @renesas_usb3_dma_free_prd(ptr noundef nonnull %call.i, ptr noundef %dev5) #12
  br label %err_alloc_prd

if.end70:                                         ; preds = %if.end6.3.i, %if.end65.if.end70_crit_edge
  %call72 = tail call ptr @devm_phy_optional_get(ptr noundef %dev5, ptr noundef nonnull @.str.8) #12
  %phy = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call72, ptr %phy, align 4
  %cmp.i236 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %call72 to i32
  br label %err_add_udc

if.end78:                                         ; preds = %if.end70
  tail call void @pm_runtime_enable(ptr noundef %dev5) #12
  %call82 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev5, ptr noundef %gadget) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end78.err_add_udc_crit_edge, label %if.end85

if.end78.err_add_udc_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_udc

if.end85:                                         ; preds = %if.end78
  %call87 = tail call i32 @device_create_file(ptr noundef %dev5, ptr noundef nonnull @dev_attr_role) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %err_dev_create, label %if.end90

if.end90:                                         ; preds = %if.end85
  %call.i237 = tail call zeroext i1 @device_property_present(ptr noundef %dev5, ptr noundef nonnull @.str.9) #12
  br i1 %call.i237, label %if.then93, label %if.end90.if.end96_crit_edge

if.end90.if.end96_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %role_sw_by_connector = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 26
  %36 = ptrtoint ptr %role_sw_by_connector to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %role_sw_by_connector, align 4
  %call95 = tail call ptr @dev_fwnode(ptr noundef %dev5) #12
  store ptr %call95, ptr @renesas_usb3_role_switch_desc, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end90.if.end96_crit_edge
  store ptr %call.i, ptr getelementptr inbounds (%struct.usb_role_switch_desc, ptr @renesas_usb3_role_switch_desc, i32 0, i32 7), align 4
  %role_work = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %role_work, i32 noundef 0) #12
  %37 = ptrtoint ptr %role_work to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %role_work, align 4
  %lockdep_map103 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map103, ptr noundef nonnull @.str.11, ptr noundef nonnull @renesas_usb3_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry105 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %entry105 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry105, ptr %entry105, align 4
  %prev.i238 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i238 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry105, ptr %prev.i238, align 4
  %func107 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %func107 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @renesas_usb3_role_work, ptr %func107, align 4
  %call111 = tail call ptr @usb_role_switch_register(ptr noundef %dev5, ptr noundef nonnull @renesas_usb3_role_switch_desc) #12
  %role_sw = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call111, ptr %role_sw, align 4
  %cmp.i239 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %if.end96.if.end125.sink.split_crit_edge, label %if.then114

if.end96.if.end125.sink.split_crit_edge:          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125.sink.split

if.then114:                                       ; preds = %if.end96
  %call116 = tail call ptr @usb_of_get_companion_dev(ptr noundef %dev5) #12
  %host_dev = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %host_dev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call116, ptr %host_dev, align 8
  %tobool118.not = icmp eq ptr %call116, null
  br i1 %tobool118.not, label %if.then119, label %if.then114.if.end125_crit_edge

if.then114.if.end125_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then119:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_unregister(ptr noundef %44) #12
  br label %if.end125.sink.split

if.end125.sink.split:                             ; preds = %if.then119, %if.end96.if.end125.sink.split_crit_edge
  %45 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %role_sw, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.end125.sink.split, %if.then114.if.end125_crit_edge
  %workaround_for_vbus = getelementptr inbounds %struct.renesas_usb3_priv, ptr %priv.0, i32 0, i32 3
  %46 = ptrtoint ptr %workaround_for_vbus to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %workaround_for_vbus, align 4, !range !169
  %workaround_for_vbus127 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i, i32 0, i32 21
  %48 = ptrtoint ptr %workaround_for_vbus127 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %workaround_for_vbus127, align 1
  tail call fastcc void @renesas_usb3_debugfs_init(ptr noundef nonnull %call.i, ptr noundef %dev5)
  %49 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy, align 4
  %tobool134.not = icmp eq ptr %50, null
  %cond = select i1 %tobool134.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond) #15
  br label %cleanup

err_dev_create:                                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #12
  br label %err_add_udc

err_add_udc:                                      ; preds = %err_dev_create, %if.end78.err_add_udc_crit_edge, %if.then75
  %ret.0 = phi i32 [ %35, %if.then75 ], [ %call82, %if.end78.err_add_udc_crit_edge ], [ %call87, %err_dev_create ]
  tail call fastcc void @renesas_usb3_dma_free_prd(ptr noundef nonnull %call.i, ptr noundef %dev5)
  br label %err_alloc_prd

err_alloc_prd:                                    ; preds = %err_add_udc, %renesas_usb3_dma_alloc_prd.exit
  %ret.1 = phi i32 [ -12, %renesas_usb3_dma_alloc_prd.exit ], [ %ret.0, %err_add_udc ]
  %51 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ep0_req, align 4
  tail call void @kfree(ptr noundef %52) #12
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_prd, %if.end125, %__renesas_usb3_ep_alloc_request.exit.thread, %do.end58, %if.then47, %dev_name.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then13 ], [ %19, %if.then47 ], [ %call53, %do.end58 ], [ %ret.1, %err_alloc_prd ], [ 0, %if.end125 ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call22, %if.end16.cleanup_crit_edge ], [ %call.i228, %dev_name.exit.cleanup_crit_edge ], [ -12, %__renesas_usb3_ep_alloc_request.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dentry = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 8
  tail call void @debugfs_remove(ptr noundef %3) #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_role) #12
  %role_sw = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_unregister(ptr noundef %5) #12
  %gadget = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 1
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #12
  tail call fastcc void @renesas_usb3_dma_free_prd(ptr noundef %1, ptr noundef %dev)
  %ep0_req = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep0_req, align 4
  tail call void @kfree(ptr noundef %7) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @renesas_usb3_init_ep(ptr noundef %usb3, ptr noundef %dev, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %num_ramif = getelementptr inbounds %struct.renesas_usb3_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %num_ramif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ramif, align 4
  %mul = shl i32 %1, 1
  %mul1 = mul i32 %mul, %3
  %ramsize_per_pipe = getelementptr inbounds %struct.renesas_usb3_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %ramsize_per_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ramsize_per_pipe, align 4
  %div = sdiv i32 %mul1, %5
  %add = add i32 %div, 1
  %num_usb3_eps = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 12
  %6 = tail call i32 @llvm.smin.i32(i32 %add, i32 6)
  %7 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num_usb3_eps, align 8
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 80) #12
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !170

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %usb3_ep5117 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %10 = ptrtoint ptr %usb3_ep5117 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %usb3_ep5117, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %11 = extractvalue { i32, i1 } %8, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %11, i32 noundef 3520) #12
  %usb3_ep5 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %12 = ptrtoint ptr %usb3_ep5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %usb3_ep5, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %do.body

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %devm_kcalloc.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_usb3_init_ep.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@renesas_usb3_init_ep, %do.end)) #12
          to label %if.then14 [label %do.end], !srcloc !171

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_usb3_eps, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_usb3_init_ep.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %14) #12
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %15 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_usb3_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19120 = icmp sgt i32 %16, 0
  br i1 %cmp19120, label %for.inc.peel, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.peel:                                     ; preds = %do.end
  %17 = ptrtoint ptr %usb3_ep5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb3_ep5, align 4
  %ep_list46 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 4
  %prev.i114 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 4, i32 1
  %ep_name.peel = getelementptr inbounds %struct.renesas_usb3_ep, ptr %18, i32 0, i32 4
  %call20.peel = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ep_name.peel, i32 noundef 8, ptr noundef nonnull @.str.23, i32 noundef 0)
  %usb321.peel = getelementptr inbounds %struct.renesas_usb3_ep, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %usb321.peel to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %usb3, ptr %usb321.peel, align 4
  %num.peel = getelementptr inbounds %struct.renesas_usb3_ep, ptr %18, i32 0, i32 3
  %20 = ptrtoint ptr %num.peel to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num.peel, align 4
  %name.peel = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %name.peel to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep_name.peel, ptr %name.peel, align 4
  %ops.peel = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %ops.peel to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @renesas_usb3_ep_ops, ptr %ops.peel, align 4
  %queue.peel = getelementptr inbounds %struct.renesas_usb3_ep, ptr %18, i32 0, i32 5
  %23 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i.peel = getelementptr inbounds %struct.renesas_usb3_ep, ptr %18, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i.peel to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %queue.peel, ptr %prev.i.peel, align 4
  %ep_list.peel = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 3
  %25 = ptrtoint ptr %ep_list.peel to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %ep_list.peel, ptr %ep_list.peel, align 4
  %prev.i113.peel = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i113.peel to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ep_list.peel, ptr %prev.i113.peel, align 4
  %ep0 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %18, ptr %ep0, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %18, i32 noundef 512) #12
  %caps.peel = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 4
  %28 = ptrtoint ptr %caps.peel to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.peel = load i8, ptr %caps.peel, align 4
  %bf.set40.peel = or i8 %bf.load.peel, -116
  store i8 %bf.set40.peel, ptr %caps.peel, align 4
  %29 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_usb3_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp19.peel = icmp sgt i32 %30, 1
  br i1 %cmp19.peel, label %for.body.peel.next, label %for.inc.peel.cleanup_crit_edge

for.inc.peel.cleanup_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.peel.next:                               ; preds = %for.inc.peel
  %31 = ptrtoint ptr %usb3_ep5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb3_ep5, align 4
  %add.ptr71.peel = getelementptr %struct.renesas_usb3_ep, ptr %32, i32 1
  br label %if.end41

if.end41:                                         ; preds = %list_add_tail.exit.if.end41_crit_edge, %for.body.peel.next
  %usb3_ep.0123 = phi ptr [ %add.ptr71.peel, %for.body.peel.next ], [ %add.ptr71, %list_add_tail.exit.if.end41_crit_edge ]
  %i.0121 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %list_add_tail.exit.if.end41_crit_edge ]
  %ep_name = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep.0123, i32 0, i32 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ep_name, i32 noundef 8, ptr noundef nonnull @.str.23, i32 noundef %i.0121)
  %usb321 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep.0123, i32 0, i32 1
  %33 = ptrtoint ptr %usb321 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %usb3, ptr %usb321, align 4
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep.0123, i32 0, i32 3
  %34 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.0121, ptr %num, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep.0123, i32 0, i32 1
  %35 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ep_name, ptr %name, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep.0123, i32 0, i32 2
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @renesas_usb3_ep_ops, ptr %ops, align 4
  %queue = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep.0123, i32 0, i32 5
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep.0123, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %queue, ptr %prev.i, align 4
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep.0123, i32 0, i32 3
  %39 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i113 = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep.0123, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ep_list, ptr %prev.i113, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %usb3_ep.0123, i32 noundef -1) #12
  %41 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i114, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %42, ptr noundef %ep_list46) #12
  br i1 %call.i.i, label %if.end.i.i115, label %if.end41.list_add_tail.exit_crit_edge

if.end41.list_add_tail.exit_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i115:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ep_list, ptr %prev.i114, align 4
  %44 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ep_list46, ptr %ep_list, align 4
  %45 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i113, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %ep_list, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i115, %if.end41.list_add_tail.exit_crit_edge
  %caps48 = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep.0123, i32 0, i32 4
  %47 = ptrtoint ptr %caps48 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load49 = load i8, ptr %caps48, align 4
  %and = and i32 %i.0121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  %. = select i1 %tobool57.not, i8 52, i8 56
  %bf.set63 = or i8 %bf.load49, %.
  %48 = ptrtoint ptr %caps48 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %bf.set63, ptr %caps48, align 4
  %inc = add nuw nsw i32 %i.0121, 1
  %49 = ptrtoint ptr %usb3_ep5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb3_ep5, align 4
  %add.ptr71 = getelementptr %struct.renesas_usb3_ep, ptr %50, i32 %inc
  %51 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_usb3_eps, align 8
  %cmp19 = icmp slt i32 %inc, %52
  br i1 %cmp19, label %list_add_tail.exit.if.end41_crit_edge, label %list_add_tail.exit.cleanup_crit_edge, !llvm.loop !172

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

list_add_tail.exit.if.end41_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %for.inc.peel.cleanup_crit_edge, %do.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.peel.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @renesas_usb3_init_ram(ptr nocapture noundef readonly %usb3, ptr noundef %dev, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %ramif.sroa.0 = alloca i32, align 8
  %ramif.sroa.5 = alloca i32, align 4
  %basead.sroa.0 = alloca i32, align 8
  %basead.sroa.5 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ramif.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ramif.sroa.5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %basead.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %basead.sroa.5)
  %0 = ptrtoint ptr %ramif.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ramif.sroa.0, align 8
  %1 = ptrtoint ptr %ramif.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ramif.sroa.5, align 4
  %2 = ptrtoint ptr %basead.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %basead.sroa.0, align 8
  %3 = ptrtoint ptr %basead.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %basead.sroa.5, align 4
  %usb3_ep2 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %num_usb3_eps = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 12
  %4 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_usb3_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp53 = icmp sgt i32 %5, 0
  br i1 %cmp53, label %for.inc.peel, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.peel:                                     ; preds = %entry
  %ramsize_per_pipe = getelementptr inbounds %struct.renesas_usb3_priv, ptr %priv, i32 0, i32 2
  %num_ramif = getelementptr inbounds %struct.renesas_usb3_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_usb3_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.peel = icmp sgt i32 %7, 1
  br i1 %cmp.peel, label %for.body.peel.next, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.peel.next:                               ; preds = %for.inc.peel
  %8 = ptrtoint ptr %usb3_ep2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb3_ep2, align 4
  %add.ptr29.peel = getelementptr %struct.renesas_usb3_ep, ptr %9, i32 1
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %for.body.peel.next
  %usb3_ep.057 = phi ptr [ %add.ptr29.peel, %for.body.peel.next ], [ %add.ptr29, %for.inc.if.end_crit_edge ]
  %i.054 = phi i32 [ 1, %for.body.peel.next ], [ %inc27, %for.inc.if.end_crit_edge ]
  %caps = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep.057, i32 0, i32 4
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %caps, align 4
  %11 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  %.ramif = select i1 %tobool3.not, ptr %ramif.sroa.5, ptr %ramif.sroa.0
  %.basead = select i1 %tobool3.not, ptr %basead.sroa.5, ptr %basead.sroa.0
  %12 = ptrtoint ptr %.basead to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %.basead, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9 = icmp ugt i32 %13, %15
  br i1 %cmp9, label %if.end.for.inc_crit_edge, label %if.end11

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %16 = ptrtoint ptr %.ramif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %.ramif, align 4
  %shl = shl i32 %17, 14
  %and = and i32 %shl, 49152
  %18 = ptrtoint ptr %ramsize_per_pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ramsize_per_pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %19)
  %cmp.i = icmp sgt i32 %19, 16384
  br i1 %cmp.i, label %if.else23.thread.i, label %if.end.i, !prof !170

if.else23.thread.i:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2102, i32 noundef 9, ptr noundef null) #12
  br label %if.else26.i

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %19)
  %cmp19.i = icmp slt i32 %19, 1025
  br i1 %cmp19.i, label %if.end.i.usb3_calc_ramarea.exit_crit_edge, label %if.else.i

if.end.i.usb3_calc_ramarea.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_calc_ramarea.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %19)
  %cmp21.i = icmp ult i32 %19, 2049
  br i1 %cmp21.i, label %if.else.i.usb3_calc_ramarea.exit_crit_edge, label %if.else23.i

if.else.i.usb3_calc_ramarea.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_calc_ramarea.exit

if.else23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %19)
  %cmp24.i = icmp ult i32 %19, 4097
  br i1 %cmp24.i, label %if.else23.i.usb3_calc_ramarea.exit_crit_edge, label %if.else23.i.if.else26.i_crit_edge

if.else23.i.if.else26.i_crit_edge:                ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else26.i

if.else23.i.usb3_calc_ramarea.exit_crit_edge:     ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_calc_ramarea.exit

if.else26.i:                                      ; preds = %if.else23.i.if.else26.i_crit_edge, %if.else23.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %19)
  %cmp27.i = icmp ult i32 %19, 8193
  %..i = select i1 %cmp27.i, i32 1610612736, i32 -2147483648
  br label %usb3_calc_ramarea.exit

usb3_calc_ramarea.exit:                           ; preds = %if.else26.i, %if.else23.i.usb3_calc_ramarea.exit_crit_edge, %if.else.i.usb3_calc_ramarea.exit_crit_edge, %if.end.i.usb3_calc_ramarea.exit_crit_edge
  %retval.0.i51 = phi i32 [ 0, %if.end.i.usb3_calc_ramarea.exit_crit_edge ], [ 536870912, %if.else.i.usb3_calc_ramarea.exit_crit_edge ], [ 1073741824, %if.else23.i.usb3_calc_ramarea.exit_crit_edge ], [ %..i, %if.else26.i ]
  %or = or i32 %retval.0.i51, %and
  %20 = ptrtoint ptr %.basead to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %.basead, align 4
  %shr = lshr i32 %21, 3
  %and12 = and i32 %shr, 16383
  %or13 = or i32 %or, %and12
  %rammap_val = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep.057, i32 0, i32 6
  %22 = ptrtoint ptr %rammap_val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or13, ptr %rammap_val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_usb3_init_ram.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@renesas_usb3_init_ram, %do.end)) #12
          to label %if.then19 [label %do.end], !srcloc !171

if.then19:                                        ; preds = %usb3_calc_ramarea.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %.ramif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %.ramif, align 4
  %25 = ptrtoint ptr %.basead to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %.basead, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_usb3_init_ram.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %i.054, i32 noundef %or13, i32 noundef %24, i32 noundef %26) #12
  br label %do.end

do.end:                                           ; preds = %if.then19, %usb3_calc_ramarea.exit
  %27 = ptrtoint ptr %.ramif to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %.ramif, align 4
  %add = add i32 %28, 1
  %29 = ptrtoint ptr %num_ramif to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_ramif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp21 = icmp eq i32 %add, %30
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %.ramif to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %.ramif, align 4
  %32 = ptrtoint ptr %ramsize_per_pipe to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ramsize_per_pipe, align 4
  %34 = ptrtoint ptr %.basead to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %.basead, align 4
  %add24 = add i32 %35, %33
  store i32 %add24, ptr %.basead, align 4
  br label %for.inc

if.else25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %.ramif to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %.ramif, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else25, %if.then22, %if.end.for.inc_crit_edge
  %inc27 = add nuw nsw i32 %i.054, 1
  %37 = ptrtoint ptr %usb3_ep2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb3_ep2, align 4
  %add.ptr29 = getelementptr %struct.renesas_usb3_ep, ptr %38, i32 %inc27
  %39 = ptrtoint ptr %num_usb3_eps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_usb3_eps, align 8
  %cmp = icmp slt i32 %inc27, %40
  br i1 %cmp, label %for.inc.if.end_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !174

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %basead.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %basead.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramif.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramif.sroa.5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_irq(i32 noundef %irq, ptr noundef %_usb3) #2 align 64 {
entry:
  %ctrl.i.i.i.i = alloca %struct.usb_ctrlrequest, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_usb3, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %7 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_usb3, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %10 = and i32 %9, %6
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %12 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_usb3, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %10) #12, !srcloc !178
  %num_usb3_eps.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 12
  %14 = ptrtoint ptr %num_usb3_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_usb3_eps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp19.i.i = icmp sgt i32 %15, 0
  br i1 %cmp19.i.i, label %for.body.lr.ph.i.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %usb3_ep1.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.020.i.i
  %and.i.i = and i32 %shl.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %16 = ptrtoint ptr %usb3_ep1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3_ep1.i.i, align 4
  %18 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %dma.i.i = getelementptr %struct.renesas_usb3_ep, ptr %17, i32 %i.020.i.i, i32 2
  %22 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.renesas_usb3_dma, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num.i.i, align 4
  %sub.i.i = add i32 %25, 15
  %shl2.i.i = shl nuw i32 1, %sub.i.i
  %and3.i.i = and i32 %shl2.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i10.i = getelementptr %struct.renesas_usb3_ep, ptr %17, i32 %i.020.i.i
  %usb31.i.i.i = getelementptr %struct.renesas_usb3_ep, ptr %17, i32 %i.020.i.i, i32 1
  %26 = ptrtoint ptr %usb31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb31.i.i.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %27, i32 0, i32 14
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #12
  %queue.i.i.i.i = getelementptr %struct.renesas_usb3_ep, ptr %17, i32 %i.020.i.i, i32 5
  %28 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %queue.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %29, %queue.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 -56
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i.i.i, ptr null, ptr %add.ptr.i.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #12
  %call8.i.i = tail call fastcc i32 @usb3_dma_try_stop(ptr noundef %add.ptr.i10.i, ptr noundef %spec.select.i.i.i.i) #12, !range !179
  tail call fastcc void @usb3_request_done_pipen(ptr noundef %_usb3, ptr noundef %add.ptr.i10.i, ptr noundef %spec.select.i.i.i.i, i32 noundef %call8.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end6.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %30 = ptrtoint ptr %num_usb3_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_usb3_eps.i.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i.i, %31
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end_crit_edge

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end:                                           ; preds = %for.inc.i.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.i.if.end_crit_edge ], [ 1, %for.inc.i.i.if.end_crit_edge ]
  %and1 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %32 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i8 = getelementptr i8, ptr %33, i32 544
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %35 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_usb3, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %36, i32 548
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %38 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_usb3, align 8
  %add.ptr.i33.i = getelementptr i8, ptr %39, i32 620
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %41 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_usb3, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %42, i32 552
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %44 = and i32 %43, %34
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i9 = icmp eq i32 %44, 0
  br i1 %tobool.not.i9, label %if.then3.if.end.i_crit_edge, label %if.then.i11

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i11:                                      ; preds = %if.then3
  %46 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_usb3, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %47, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %44) #12, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %tobool.not.i.i10 = icmp sgt i32 %45, -1
  br i1 %tobool.not.i.i10, label %if.then.i11.if.end.i.i12_crit_edge, label %if.then.i.i

if.then.i11.if.end.i.i12_crit_edge:               ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i12

if.then.i.i:                                      ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %49, i32 552
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %51 = and i32 %50, -129
  %52 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i.i.i = getelementptr i8, ptr %53, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i.i, i32 %51) #12, !srcloc !178
  %54 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %55, i32 520
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %57 = and i32 %56, -32769
  %58 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %59, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %57) #12, !srcloc !178
  tail call fastcc void @usb3_start_usb3_connection(ptr noundef %_usb3) #12
  br label %if.end.i.i12

if.end.i.i12:                                     ; preds = %if.then.i.i, %if.then.i11.if.end.i.i12_crit_edge
  %and1.i.i = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i12.if.end4.i.i_crit_edge, label %if.then3.i.i

if.end.i.i12.if.end4.i.i_crit_edge:               ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i55.i.i = getelementptr i8, ptr %61, i32 556
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i55.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %63 = or i32 %62, 16777216
  %64 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i56.i.i = getelementptr i8, ptr %65, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i56.i.i, i32 %63) #12, !srcloc !178
  %66 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i57.i.i = getelementptr i8, ptr %67, i32 656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i57.i.i, i32 16778496) #12, !srcloc !178
  %68 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i5.i.i.i.i = getelementptr i8, ptr %69, i32 660
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %71 = or i32 %70, 16778496
  %72 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i7.i.i.i.i = getelementptr i8, ptr %73, i32 660
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7.i.i.i.i, i32 %71) #12, !srcloc !178
  %74 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %75, i32 552
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %77 = or i32 %76, 12288
  %78 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i.i.i.i = getelementptr i8, ptr %79, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i.i.i, i32 %77) #12, !srcloc !178
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i12.if.end4.i.i_crit_edge
  %and5.i.i = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end4.i.i.if.end8.i.i_crit_edge, label %if.then7.i.i

if.end4.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_reset_epc(ptr noundef %_usb3) #12
  %80 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i58.i.i = getelementptr i8, ptr %81, i32 512
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i58.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %83 = or i32 %82, 256
  %84 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i59.i.i = getelementptr i8, ptr %85, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i59.i.i, i32 %83) #12, !srcloc !178
  %86 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i3.i.i.i = getelementptr i8, ptr %87, i32 520
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %89 = or i32 %88, 33554432
  %90 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i5.i.i.i = getelementptr i8, ptr %91, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i5.i.i.i, i32 %89) #12, !srcloc !178
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end4.i.i.if.end8.i.i_crit_edge
  %and9.i.i = and i32 %45, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.if.end12.i.i_crit_edge, label %if.then11.i.i

if.end8.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_reset_epc(ptr noundef %_usb3) #12
  %92 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i60.i.i = getelementptr i8, ptr %93, i32 512
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i60.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %95 = or i32 %94, 256
  %96 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i61.i.i = getelementptr i8, ptr %97, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i61.i.i, i32 %95) #12, !srcloc !178
  %98 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i62.i.i = getelementptr i8, ptr %99, i32 512
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i62.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %101 = or i32 %100, 256
  %102 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i63.i.i = getelementptr i8, ptr %103, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i63.i.i, i32 %101) #12, !srcloc !178
  %104 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i3.i.i.i.i = getelementptr i8, ptr %105, i32 512
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %107 = and i32 %106, -513
  %108 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i4.i.i.i.i = getelementptr i8, ptr %109, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i4.i.i.i.i, i32 %107) #12, !srcloc !178
  %110 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i5.i.i64.i.i = getelementptr i8, ptr %111, i32 520
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i.i64.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %113 = or i32 %112, 512
  %114 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i7.i.i65.i.i = getelementptr i8, ptr %115, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7.i.i65.i.i, i32 %113) #12, !srcloc !178
  %116 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i4.i.i.i = getelementptr i8, ptr %117, i32 552
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i4.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %119 = or i32 %118, 33554432
  %120 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i5.i.i.i = getelementptr i8, ptr %121, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i5.i.i.i, i32 %119) #12, !srcloc !178
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end8.i.i.if.end12.i.i_crit_edge
  %and13.i.i = and i32 %45, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.end16.i.i_crit_edge, label %if.then15.i.i

if.end12.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  %122 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i66.i.i = getelementptr i8, ptr %123, i32 520
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i66.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %125 = and i32 %124, -513
  %126 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i67.i.i = getelementptr i8, ptr %127, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i67.i.i, i32 %125) #12, !srcloc !178
  %128 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i68.i.i = getelementptr i8, ptr %129, i32 516
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i68.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %131 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i.i.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i, label %usb3_wakeup_usb2_phy.exit.i.i.i

usb3_wakeup_usb2_phy.exit.i.i.i:                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i3.i.i.i = getelementptr i8, ptr %133, i32 516
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i3.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %135 = and i32 %134, -2
  %136 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i4.i.i.i = getelementptr i8, ptr %137, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i4.i.i.i, i32 %135) #12, !srcloc !178
  %138 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i.i69.i.i = getelementptr i8, ptr %139, i32 552
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i69.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %141 = or i32 %140, 65536
  %142 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i.i70.i.i = getelementptr i8, ptr %143, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i70.i.i, i32 %141) #12, !srcloc !178
  br label %if.end16.i.i

if.then.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_irq_epc_int_1_resume(ptr noundef %_usb3) #12
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then.i.i.i, %usb3_wakeup_usb2_phy.exit.i.i.i, %if.end12.i.i.if.end16.i.i_crit_edge
  %and17.i.i = and i32 %45, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.if.end20.i.i_crit_edge, label %if.then19.i.i

if.end16.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  tail call fastcc void @usb3_reset_epc(ptr noundef %_usb3) #12
  %disabled_count.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 15
  %144 = ptrtoint ptr %disabled_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %disabled_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %145)
  %cmp.i.i.i = icmp slt i32 %145, 3
  br i1 %cmp.i.i.i, label %if.then.i71.i.i, label %if.else.i.i.i

if.then.i71.i.i:                                  ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_usb3_connection(ptr noundef %_usb3) #12
  br label %if.end20.i.i

if.else.i.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_usb2_connection(ptr noundef %_usb3) #12
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i71.i.i, %if.end16.i.i.if.end20.i.i_crit_edge
  %and21.i.i = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end20.i.i.if.end24.i.i_crit_edge, label %if.then23.i.i

if.end20.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_irq_epc_int_1_resume(ptr noundef %_usb3) #12
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then23.i.i, %if.end20.i.i.if.end24.i.i_crit_edge
  %and25.i.i = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end24.i.i.if.end28.i.i_crit_edge, label %if.then27.i.i

if.end24.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i.i

if.then27.i.i:                                    ; preds = %if.end24.i.i
  %146 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i72.i.i = getelementptr i8, ptr %147, i32 552
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i72.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %149 = and i32 %148, -131073
  %150 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i73.i.i = getelementptr i8, ptr %151, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i73.i.i, i32 %149) #12, !srcloc !178
  %gadget.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1
  %speed.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 5
  %152 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp.not.i.i.i = icmp eq i32 %153, 0
  br i1 %cmp.not.i.i.i, label %if.then27.i.i.if.end28.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then27.i.i.if.end28.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then27.i.i
  %state.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 9
  %154 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp2.not.i.i.i = icmp eq i32 %155, 0
  br i1 %cmp2.not.i.i.i, label %land.lhs.true.i.i.i.if.end28.i.i_crit_edge, label %if.then.i74.i.i

land.lhs.true.i.i.i.if.end28.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i.i

if.then.i74.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %driver.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 2
  %156 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %driver.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %157, null
  br i1 %tobool.not.i.i.i, label %if.then.i74.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

if.then.i74.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %if.then.i74.i.i
  %suspend.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %157, i32 0, i32 6
  %158 = ptrtoint ptr %suspend.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %suspend.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %159, null
  br i1 %tobool5.not.i.i.i, label %land.lhs.true3.i.i.i.if.end.i.i.i_crit_edge, label %if.then6.i.i.i

land.lhs.true3.i.i.i.if.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then6.i.i.i:                                   ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %159(ptr noundef %gadget.i.i.i) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then6.i.i.i, %land.lhs.true3.i.i.i.if.end.i.i.i_crit_edge, %if.then.i74.i.i.if.end.i.i.i_crit_edge
  tail call void @usb_gadget_set_state(ptr noundef %gadget.i.i.i, i32 noundef 8) #12
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.end.i.i.i, %land.lhs.true.i.i.i.if.end28.i.i_crit_edge, %if.then27.i.i.if.end28.i.i_crit_edge, %if.end24.i.i.if.end28.i.i_crit_edge
  %and29.i.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end28.i.i.if.end32.i.i_crit_edge, label %if.then31.i.i

if.end28.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.i

if.then31.i.i:                                    ; preds = %if.end28.i.i
  %160 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i13 = getelementptr i8, ptr %161, i32 528
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i13) #12, !srcloc !175
  %163 = lshr i32 %162, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %and.i.i.i = and i32 %163, 6
  %164 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %sw.default.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 4, label %sw.bb3.i.i.i
    i32 2, label %sw.bb12.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %speed1.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 5
  %165 = ptrtoint ptr %speed1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 5, ptr %speed1.i.i.i, align 8
  %ep0.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 3
  %166 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ep0.i.i.i, align 4
  %maxpacket.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %167, i32 0, i32 7
  %168 = ptrtoint ptr %maxpacket.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 7)
  %bf.load.i.i.i = load i56, ptr %maxpacket.i.i.i, align 2
  %bf.clear.i.i.i = and i56 %bf.load.i.i.i, 1099511627775
  %bf.set.i.i.i = or i56 %bf.clear.i.i.i, 562949953421312
  store i56 %bf.set.i.i.i, ptr %maxpacket.i.i.i, align 2
  br label %if.end32.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %speed5.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 5
  %169 = ptrtoint ptr %speed5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 3, ptr %speed5.i.i.i, align 8
  %ep07.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 3
  %170 = ptrtoint ptr %ep07.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ep07.i.i.i, align 4
  %maxpacket8.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %171, i32 0, i32 7
  %172 = ptrtoint ptr %maxpacket8.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 7)
  %bf.load9.i.i.i = load i56, ptr %maxpacket8.i.i.i, align 2
  %bf.clear10.i.i.i = and i56 %bf.load9.i.i.i, 1099511627775
  %bf.set11.i.i.i = or i56 %bf.clear10.i.i.i, 70368744177664
  store i56 %bf.set11.i.i.i, ptr %maxpacket8.i.i.i, align 2
  br label %if.end32.i.i

sw.bb12.i.i.i:                                    ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %speed14.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 5
  %173 = ptrtoint ptr %speed14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 2, ptr %speed14.i.i.i, align 8
  %ep016.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 3
  %174 = ptrtoint ptr %ep016.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ep016.i.i.i, align 4
  %maxpacket17.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %175, i32 0, i32 7
  %176 = ptrtoint ptr %maxpacket17.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 7)
  %bf.load18.i.i.i = load i56, ptr %maxpacket17.i.i.i, align 2
  %bf.clear19.i.i.i = and i56 %bf.load18.i.i.i, 1099511627775
  %bf.set20.i.i.i = or i56 %bf.clear19.i.i.i, 70368744177664
  store i56 %bf.set20.i.i.i, ptr %maxpacket17.i.i.i, align 2
  br label %if.end32.i.i

sw.default.i.i.i:                                 ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %speed22.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1, i32 5
  %177 = ptrtoint ptr %speed22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %speed22.i.i.i, align 8
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %sw.default.i.i.i, %sw.bb12.i.i.i, %sw.bb3.i.i.i, %sw.bb.i.i.i, %if.end28.i.i.if.end32.i.i_crit_edge
  %and33.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end32.i.i.if.end.i_crit_edge, label %if.then35.i.i

if.end32.i.i.if.end.i_crit_edge:                  ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_check_vbus(ptr noundef %_usb3) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then35.i.i, %if.end32.i.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %178 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %_usb3, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %179, i32 556
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %181 = and i32 %180, %37
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool6.not.i = icmp eq i32 %181, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  %num_usb3_eps.i.i14 = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 12
  %183 = ptrtoint ptr %num_usb3_eps.i.i14 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %num_usb3_eps.i.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp23.i.i = icmp sgt i32 %184, 0
  br i1 %cmp23.i.i, label %for.body.lr.ph.i.i16, label %if.then7.i.if.end8.i_crit_edge

if.then7.i.if.end8.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

for.body.lr.ph.i.i16:                             ; preds = %if.then7.i
  %lock.i.i.i15 = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 14
  %usb3_ep1.i.i15.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 11
  %test_mode.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 18
  %185 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i.i.i.i, i32 0, i32 3
  %driver.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 2
  %gadget.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 1
  br label %for.body.i.i19

for.body.i.i19:                                   ; preds = %for.inc.i.i22.for.body.i.i19_crit_edge, %for.body.lr.ph.i.i16
  %i.024.i.i = phi i32 [ 0, %for.body.lr.ph.i.i16 ], [ %inc.i.i20, %for.inc.i.i22.for.body.i.i19_crit_edge ]
  %shl.i.i17 = shl nuw i32 1, %i.024.i.i
  %and.i.i18 = and i32 %shl.i.i17, %182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.not.i37.i = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.not.i37.i, label %for.body.i.i19.for.inc.i.i22_crit_edge, label %if.then.i38.i

for.body.i.i19.for.inc.i.i22_crit_edge:           ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i22

if.then.i38.i:                                    ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i)
  %tobool1.not.i.i = icmp eq i32 %i.024.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %lor.lhs.false.i.i.i.i

if.then2.i.i:                                     ; preds = %if.then.i38.i
  %186 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i39.i = getelementptr i8, ptr %187, i32 656
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i39.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %189 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %_usb3, align 8
  %add.ptr.i20.i.i.i = getelementptr i8, ptr %190, i32 660
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %192 = and i32 %191, %188
  %193 = call i32 @llvm.bswap.i32(i32 %192) #12
  %194 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %_usb3, align 8
  %add.ptr.i21.i.i.i = getelementptr i8, ptr %195, i32 656
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i.i, i32 %192) #12, !srcloc !178
  %and2.i.i.i = and i32 %193, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i40.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i40.i, label %if.then2.i.i.if.end.i.i46.i_crit_edge, label %if.then.i.i43.i

if.then2.i.i.if.end.i.i46.i_crit_edge:            ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i46.i

if.then.i.i43.i:                                  ; preds = %if.then2.i.i
  %196 = ptrtoint ptr %usb3_ep1.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %usb3_ep1.i.i15.i.i, align 4
  %usb31.i.i.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %usb31.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %usb31.i.i.i.i.i, align 4
  %lock.i.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %199, i32 0, i32 14
  %call3.i.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i.i.i) #12
  %queue.i.i.i.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %197, i32 0, i32 5
  %200 = ptrtoint ptr %queue.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile ptr, ptr %queue.i.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i.i = icmp eq ptr %201, %queue.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i41.i = getelementptr i8, ptr %201, i32 -56
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i.i.i, i32 noundef %call3.i.i.i.i.i) #12
  %tobool.not13.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i41.i, null
  %tobool.not.i.i.i42.i = or i1 %cmp.not.i.i.i.i.i.i, %tobool.not13.i.i.i.i
  br i1 %tobool.not.i.i.i42.i, label %if.then.i.i43.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i43.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  %202 = ptrtoint ptr %usb31.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %usb31.i.i.i.i.i, align 4
  %lock.i10.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %203, i32 0, i32 14
  %call3.i11.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i10.i.i.i.i) #12
  call fastcc void @__usb3_request_done(ptr noundef %197, ptr noundef nonnull %add.ptr.i.i.i.i.i41.i, i32 noundef 0) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i10.i.i.i.i, i32 noundef %call3.i11.i.i.i.i) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.then.i.i43.i.if.end.i.i.i.i_crit_edge
  %204 = ptrtoint ptr %test_mode.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %test_mode.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %tobool2.not.i.i.i.i = icmp eq i16 %205, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.if.end.i.i46.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.if.end.i.i46.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i46.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %206 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i12.i.i.i.i = getelementptr i8, ptr %207, i32 516
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i.i.i.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %209 = and i32 %208, -17235969
  %210 = ptrtoint ptr %test_mode.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %test_mode.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %211 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 8
  %and1.i.i.i.i.i = and i32 %shl.i.i.i.i.i, 1792
  %212 = or i32 %209, 16777216
  %213 = call i32 @llvm.bswap.i32(i32 %212) #12
  %or2.i.i.i.i.i = or i32 %and1.i.i.i.i.i, %213
  %214 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %_usb3, align 8
  %add.ptr.i10.i.i.i.i.i = getelementptr i8, ptr %215, i32 516
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  %216 = call i32 @llvm.bswap.i32(i32 %or2.i.i.i.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i.i.i.i, i32 %216) #12, !srcloc !178
  %217 = ptrtoint ptr %test_mode.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %test_mode.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %218)
  %tobool.not.i.i.i.i.i = icmp eq i16 %218, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.then3.i.i.i.i.if.end.i.i46.i_crit_edge

if.then3.i.i.i.i.if.end.i.i46.i_crit_edge:        ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i46.i

if.then.i.i.i.i.i:                                ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %219 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i.i.i44.i = getelementptr i8, ptr %220, i32 516
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i44.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %222 = and i32 %221, -16777217
  %223 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i.i.i45.i = getelementptr i8, ptr %224, i32 516
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i.i45.i, i32 %222) #12, !srcloc !178
  br label %if.end.i.i46.i

if.end.i.i46.i:                                   ; preds = %if.then.i.i.i.i.i, %if.then3.i.i.i.i.if.end.i.i46.i_crit_edge, %if.end.i.i.i.i.if.end.i.i46.i_crit_edge, %if.then2.i.i.if.end.i.i46.i_crit_edge
  %and3.i.i.i = and i32 %193, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i46.i.if.end6.i.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i46.i.if.end6.i.i.i_crit_edge:           ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i46.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl.i.i.i.i) #12
  %225 = ptrtoint ptr %usb3_ep1.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %usb3_ep1.i.i15.i.i, align 4
  %started.i.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %226, i32 0, i32 10
  %227 = ptrtoint ptr %started.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %started.i.i.i.i, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i23.i.i.i = icmp eq i8 %228, 0
  br i1 %tobool.not.i23.i.i.i, label %if.then5.i.i.i.if.end.i31.i.i.i_crit_edge, label %if.then.i30.i.i.i

if.then5.i.i.i.if.end.i31.i.i.i_crit_edge:        ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i31.i.i.i

if.then.i30.i.i.i:                                ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %usb31.i.i24.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %226, i32 0, i32 1
  %229 = ptrtoint ptr %usb31.i.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %usb31.i.i24.i.i.i, align 4
  %lock.i.i25.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %230, i32 0, i32 14
  %call3.i.i26.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i25.i.i.i) #12
  %queue.i.i.i27.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %226, i32 0, i32 5
  %231 = ptrtoint ptr %queue.i.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile ptr, ptr %queue.i.i.i27.i.i.i, align 4
  %cmp.not.i.i.i28.i.i.i = icmp eq ptr %232, %queue.i.i.i27.i.i.i
  %add.ptr.i.i.i29.i.i.i = getelementptr i8, ptr %232, i32 -56
  %spec.select.i.i.i.i.i.i = select i1 %cmp.not.i.i.i28.i.i.i, ptr null, ptr %add.ptr.i.i.i29.i.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i25.i.i.i, i32 noundef %call3.i.i26.i.i.i) #12
  %233 = ptrtoint ptr %usb31.i.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %usb31.i.i24.i.i.i, align 4
  %lock.i18.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %234, i32 0, i32 14
  %call3.i19.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i18.i.i.i.i) #12
  call fastcc void @__usb3_request_done(ptr noundef %226, ptr noundef %spec.select.i.i.i.i.i.i, i32 noundef -104) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i18.i.i.i.i, i32 noundef %call3.i19.i.i.i.i) #12
  br label %if.end.i31.i.i.i

if.end.i31.i.i.i:                                 ; preds = %if.then.i30.i.i.i, %if.then5.i.i.i.if.end.i31.i.i.i_crit_edge
  call fastcc void @usb3_p0_con_clear_buffer(ptr noundef %_usb3) #12
  %235 = ptrtoint ptr %usb3_ep1.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %usb3_ep1.i.i15.i.i, align 4
  %237 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i20.i.i.i.i = getelementptr i8, ptr %238, i32 560
  %239 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20.i.i.i.i) #12, !srcloc !175
  %240 = call i32 @llvm.bswap.i32(i32 %239) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %241 = ptrtoint ptr %ctrl.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %ctrl.i.i.i.i, align 4
  %242 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %_usb3, align 8
  %add.ptr.i8.i.i.i.i.i = getelementptr i8, ptr %243, i32 564
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i.i.i.i) #12, !srcloc !175
  %245 = call i32 @llvm.bswap.i32(i32 %244) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %246 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %185, align 4
  %dir_in.i.i.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %236, i32 0, i32 7
  %sum.shift.i.i.i.i = lshr i32 %240, 31
  %.lobit.i21.i.i.i.i = trunc i32 %sum.shift.i.i.i.i to i8
  %247 = ptrtoint ptr %dir_in.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %.lobit.i21.i.i.i.i, ptr %dir_in.i.i.i.i.i, align 4
  %call3.i.i.i.i = call fastcc zeroext i1 @usb3_handle_standard_request(ptr noundef %_usb3, ptr noundef nonnull %ctrl.i.i.i.i) #12
  br i1 %call3.i.i.i.i, label %if.end.i31.i.i.i.usb3_irq_epc_pipe0_setup.exit.i.i.i_crit_edge, label %if.then4.i.i.i.i

if.end.i31.i.i.i.usb3_irq_epc_pipe0_setup.exit.i.i.i_crit_edge: ; preds = %if.end.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_irq_epc_pipe0_setup.exit.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i31.i.i.i
  %248 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %driver.i.i.i.i, align 8
  %setup.i.i.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %249, i32 0, i32 4
  %250 = ptrtoint ptr %setup.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %setup.i.i.i.i, align 4
  %call5.i.i.i.i = call i32 %251(ptr noundef %gadget.i.i.i.i, ptr noundef nonnull %ctrl.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call5.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then6.i.i.i.i, label %if.then4.i.i.i.i.usb3_irq_epc_pipe0_setup.exit.i.i.i_crit_edge

if.then4.i.i.i.i.usb3_irq_epc_pipe0_setup.exit.i.i.i_crit_edge: ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_irq_epc_pipe0_setup.exit.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %252 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i32.i.i.i = getelementptr i8, ptr %253, i32 648
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i32.i.i.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %255 = and i32 %254, 2147482864
  %256 = or i32 %255, -2147483126
  %257 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %_usb3, align 8
  %add.ptr.i5.i.i.i.i.i.i = getelementptr i8, ptr %258, i32 648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i.i.i.i, i32 %256) #12, !srcloc !178
  br label %usb3_irq_epc_pipe0_setup.exit.i.i.i

usb3_irq_epc_pipe0_setup.exit.i.i.i:              ; preds = %if.then6.i.i.i.i, %if.then4.i.i.i.i.usb3_irq_epc_pipe0_setup.exit.i.i.i_crit_edge, %if.end.i31.i.i.i.usb3_irq_epc_pipe0_setup.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl.i.i.i.i) #12
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %usb3_irq_epc_pipe0_setup.exit.i.i.i, %if.end.i.i46.i.if.end6.i.i.i_crit_edge
  %and7.i.i.i = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end6.i.i.i.for.inc.i.i22_crit_edge, label %if.then9.i.i.i

if.end6.i.i.i.for.inc.i.i22_crit_edge:            ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i22

if.then9.i.i.i:                                   ; preds = %if.end6.i.i.i
  %259 = ptrtoint ptr %usb3_ep1.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %usb3_ep1.i.i15.i.i, align 4
  %usb31.i.i34.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %usb31.i.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %usb31.i.i34.i.i.i, align 4
  %lock.i.i35.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %262, i32 0, i32 14
  %call3.i.i36.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i35.i.i.i) #12
  %queue.i.i.i37.i.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %260, i32 0, i32 5
  %263 = ptrtoint ptr %queue.i.i.i37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile ptr, ptr %queue.i.i.i37.i.i.i, align 4
  %cmp.not.i.i.i38.i.i.i = icmp eq ptr %264, %queue.i.i.i37.i.i.i
  %add.ptr.i.i.i39.i.i.i = getelementptr i8, ptr %264, i32 -56
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i35.i.i.i, i32 noundef %call3.i.i36.i.i.i) #12
  %tobool.not5.i.i.i.i = icmp eq ptr %add.ptr.i.i.i39.i.i.i, null
  %tobool.not.i40.i.i.i = or i1 %cmp.not.i.i.i38.i.i.i, %tobool.not5.i.i.i.i
  br i1 %tobool.not.i40.i.i.i, label %if.then9.i.i.i.for.inc.i.i22_crit_edge, label %if.end.i41.i.i.i

if.then9.i.i.i.for.inc.i.i22_crit_edge:           ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i22

if.end.i41.i.i.i:                                 ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @usb3_p0_xfer(ptr noundef %260, ptr noundef nonnull %add.ptr.i.i.i39.i.i.i) #12
  br label %for.inc.i.i22

lor.lhs.false.i.i.i.i:                            ; preds = %if.then.i38.i
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i15) #12
  %265 = ptrtoint ptr %num_usb3_eps.i.i14 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %num_usb3_eps.i.i14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %i.024.i.i)
  %cmp1.i.i.i.i = icmp slt i32 %266, %i.024.i.i
  br i1 %cmp1.i.i.i.i, label %if.then.i11.i.i, label %if.end.i14.i.i

if.then.i11.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i15) #12
  br label %for.inc.i.i22

if.end.i14.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  %267 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i47.i = getelementptr i8, ptr %268, i32 688
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  %269 = call i32 @llvm.bswap.i32(i32 %i.024.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i47.i, i32 %269) #12, !srcloc !178
  %270 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %271, i32 720
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %273 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %_usb3, align 8
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %274, i32 724
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i.i.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %276 = and i32 %275, %272
  %277 = call i32 @llvm.bswap.i32(i32 %276) #12
  %278 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %_usb3, align 8
  %add.ptr.i26.i.i.i = getelementptr i8, ptr %279, i32 720
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i.i, i32 %276) #12, !srcloc !178
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i15) #12
  %and5.i.i.i = and i32 %277, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i13.i.i, label %if.end.i14.i.i.if.end7.i.i.i_crit_edge, label %if.then6.i.i48.i

if.end.i14.i.i.if.end7.i.i.i_crit_edge:           ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i.i

if.then6.i.i48.i:                                 ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @usb3_irq_epc_pipen_lsttr(ptr noundef %_usb3, i32 noundef %i.024.i.i) #12
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.then6.i.i48.i, %if.end.i14.i.i.if.end7.i.i.i_crit_edge
  %and8.i.i.i = and i32 %277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end7.i.i.i.for.inc.i.i22_crit_edge, label %if.then10.i.i.i

if.end7.i.i.i.for.inc.i.i22_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i22

if.then10.i.i.i:                                  ; preds = %if.end7.i.i.i
  %280 = ptrtoint ptr %usb3_ep1.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %usb3_ep1.i.i15.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr %struct.renesas_usb3_ep, ptr %281, i32 %i.024.i.i
  %usb31.i.i.i16.i.i = getelementptr %struct.renesas_usb3_ep, ptr %281, i32 %i.024.i.i, i32 1
  %282 = ptrtoint ptr %usb31.i.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %usb31.i.i.i16.i.i, align 4
  %lock.i.i.i17.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %283, i32 0, i32 14
  %call3.i.i.i18.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i17.i.i) #12
  %queue.i.i.i.i19.i.i = getelementptr %struct.renesas_usb3_ep, ptr %281, i32 %i.024.i.i, i32 5
  %284 = ptrtoint ptr %queue.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load volatile ptr, ptr %queue.i.i.i.i19.i.i, align 4
  %cmp.not.i.i.i.i20.i.i = icmp eq ptr %285, %queue.i.i.i.i19.i.i
  %add.ptr.i.i.i.i21.i.i = getelementptr i8, ptr %285, i32 -56
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i17.i.i, i32 noundef %call3.i.i.i18.i.i) #12
  %tobool.not42.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i21.i.i, null
  %tobool.not.i.i22.i.i = or i1 %cmp.not.i.i.i.i20.i.i, %tobool.not42.i.i.i.i
  br i1 %tobool.not.i.i22.i.i, label %if.then10.i.i.i.for.inc.i.i22_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.then10.i.i.i.for.inc.i.i22_crit_edge:          ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i22

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.then10.i.i.i
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i15) #12
  %286 = ptrtoint ptr %num_usb3_eps.i.i14 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %num_usb3_eps.i.i14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %287, i32 %i.024.i.i)
  %cmp1.i.i.i.i.i = icmp slt i32 %287, %i.024.i.i
  br i1 %cmp1.i.i.i.i.i, label %if.end20.critedge.i.i.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i.i
  %288 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i38.i.i.i.i = getelementptr i8, ptr %289, i32 688
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38.i.i.i.i, i32 %269) #12, !srcloc !178
  %dir_in.i.i.i.i = getelementptr %struct.renesas_usb3_ep, ptr %281, i32 %i.024.i.i, i32 7
  %290 = ptrtoint ptr %dir_in.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %dir_in.i.i.i.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool6.not.i.i.i.i = icmp eq i8 %291, 0
  br i1 %tobool6.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then7.i.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  %call8.i.i.i.i = call fastcc i32 @usb3_write_pipe(ptr noundef %add.ptr.i27.i.i.i, ptr noundef nonnull %add.ptr.i.i.i.i21.i.i, i32 noundef 744) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.i)
  %tobool9.not.i.i.i.i = icmp eq i32 %call8.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i.i, label %if.then10.i.i.i.i, label %if.end20.critedge36.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.then7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %292 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i39.i.i.i.i = getelementptr i8, ptr %293, i32 724
  %294 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39.i.i.i.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %295 = and i32 %294, -16777217
  %296 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %_usb3, align 8
  %add.ptr.i4.i.i.i.i49.i = getelementptr i8, ptr %297, i32 724
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i49.i, i32 %295) #12, !srcloc !178
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i15) #12
  br label %for.inc.i.i22

if.else.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %call12.i.i.i.i = call fastcc i32 @usb3_read_pipe(ptr noundef %add.ptr.i27.i.i.i, ptr noundef nonnull %add.ptr.i.i.i.i21.i.i, i32 noundef 740) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.i)
  %tobool13.not.i.i.i.i = icmp eq i32 %call12.i.i.i.i, 0
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i15) #12
  br i1 %tobool13.not.i.i.i.i, label %if.then19.i.i.i.i, label %if.else.i.i.i.i.for.inc.i.i22_crit_edge

if.else.i.i.i.i.for.inc.i.i22_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i22

if.then19.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @usb3_request_done_pipen(ptr noundef %_usb3, ptr noundef %add.ptr.i27.i.i.i, ptr noundef nonnull %add.ptr.i.i.i.i21.i.i, i32 noundef 0) #12
  br label %for.inc.i.i22

if.end20.critedge.i.i.i.i:                        ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i15) #12
  br label %for.inc.i.i22

if.end20.critedge36.i.i.i.i:                      ; preds = %if.then7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i15) #12
  br label %for.inc.i.i22

for.inc.i.i22:                                    ; preds = %if.end20.critedge36.i.i.i.i, %if.end20.critedge.i.i.i.i, %if.then19.i.i.i.i, %if.else.i.i.i.i.for.inc.i.i22_crit_edge, %if.then10.i.i.i.i, %if.then10.i.i.i.for.inc.i.i22_crit_edge, %if.end7.i.i.i.for.inc.i.i22_crit_edge, %if.then.i11.i.i, %if.end.i41.i.i.i, %if.then9.i.i.i.for.inc.i.i22_crit_edge, %if.end6.i.i.i.for.inc.i.i22_crit_edge, %for.body.i.i19.for.inc.i.i22_crit_edge
  %inc.i.i20 = add nuw nsw i32 %i.024.i.i, 1
  %298 = ptrtoint ptr %num_usb3_eps.i.i14 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %num_usb3_eps.i.i14, align 8
  %cmp.i.i21 = icmp slt i32 %inc.i.i20, %299
  br i1 %cmp.i.i21, label %for.inc.i.i22.for.body.i.i19_crit_edge, label %for.inc.i.i22.if.end8.i_crit_edge

for.inc.i.i22.if.end8.i_crit_edge:                ; preds = %for.inc.i.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

for.inc.i.i22.for.body.i.i19_crit_edge:           ; preds = %for.inc.i.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i19

if.end8.i:                                        ; preds = %for.inc.i.i22.if.end8.i_crit_edge, %if.then7.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %300 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %_usb3, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %301, i32 624
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %303 = and i32 %302, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool11.not.i = icmp eq i32 %303, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end4_crit_edge, label %if.then12.i

if.end8.i.if.end4_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then12.i:                                      ; preds = %if.end8.i
  %304 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %_usb3, align 8
  %add.ptr.i51.i = getelementptr i8, ptr %305, i32 620
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %303) #12, !srcloc !178
  %306 = and i32 %303, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool.not.i53.i = icmp eq i32 %306, 0
  br i1 %tobool.not.i53.i, label %if.then12.i.if.end4_crit_edge, label %if.then.i57.i

if.then12.i.if.end4_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.i57.i:                                    ; preds = %if.then12.i
  %307 = ptrtoint ptr %_usb3 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %_usb3, align 8
  %add.ptr.i.i.i.i.i54.i = getelementptr i8, ptr %308, i32 616
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i54.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %310 = and i32 %309, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool.not.i.i.i.i55.i = icmp ne i32 %310, 0
  %extcon_host.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 22
  %.lobit.i.i.i.i = lshr exact i32 %310, 28
  %311 = trunc i32 %.lobit.i.i.i.i to i8
  %312 = xor i8 %311, 1
  %313 = ptrtoint ptr %extcon_host.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %312, ptr %extcon_host.i.i.i.i, align 8
  %role_sw_by_connector.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 26
  %314 = ptrtoint ptr %role_sw_by_connector.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %role_sw_by_connector.i.i.i.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool.not.i.i.i56.i = icmp ne i8 %315, 0
  %brmerge.i.i.i.i = select i1 %tobool.not.i.i.i56.i, i1 true, i1 %tobool.not.i.i.i.i55.i
  br i1 %brmerge.i.i.i.i, label %if.then.i57.i.lor.lhs.false.i.i.i59.i_crit_edge, label %land.lhs.true3.i.i.i.i

if.then.i57.i.lor.lhs.false.i.i.i59.i_crit_edge:  ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i.i59.i

land.lhs.true3.i.i.i.i:                           ; preds = %if.then.i57.i
  %forced_b_device.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 24
  %316 = ptrtoint ptr %forced_b_device.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %forced_b_device.i.i.i.i, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool4.not.i.i.i.i = icmp eq i8 %317, 0
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true3.i.i.i.i.if.then.i.i.i60.i_crit_edge, label %land.lhs.true3.i.i.i.i.lor.lhs.false.i.i.i59.i_crit_edge

land.lhs.true3.i.i.i.i.lor.lhs.false.i.i.i59.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i.i59.i

land.lhs.true3.i.i.i.i.if.then.i.i.i60.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i60.i

lor.lhs.false.i.i.i59.i:                          ; preds = %land.lhs.true3.i.i.i.i.lor.lhs.false.i.i.i59.i_crit_edge, %if.then.i57.i.lor.lhs.false.i.i.i59.i_crit_edge
  %connection_state.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 17
  %318 = ptrtoint ptr %connection_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %connection_state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %319)
  %cmp.i.i.i58.i = icmp eq i32 %319, 1
  br i1 %cmp.i.i.i58.i, label %lor.lhs.false.i.i.i59.i.if.then.i.i.i60.i_crit_edge, label %if.else.i.i.i61.i

lor.lhs.false.i.i.i59.i.if.then.i.i.i60.i_crit_edge: ; preds = %lor.lhs.false.i.i.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i60.i

if.then.i.i.i60.i:                                ; preds = %lor.lhs.false.i.i.i59.i.if.then.i.i.i60.i_crit_edge, %land.lhs.true3.i.i.i.i.if.then.i.i.i60.i_crit_edge
  call fastcc void @usb3_mode_config(ptr noundef %_usb3, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %usb3_irq_idmon_change.exit.i.i

if.else.i.i.i61.i:                                ; preds = %lor.lhs.false.i.i.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @usb3_mode_config(ptr noundef %_usb3, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %usb3_irq_idmon_change.exit.i.i

usb3_irq_idmon_change.exit.i.i:                   ; preds = %if.else.i.i.i61.i, %if.then.i.i.i60.i
  %extcon_work.i.i.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %_usb3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %320 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %320, ptr noundef %extcon_work.i.i.i.i) #12
  br label %if.end4

if.end4:                                          ; preds = %usb3_irq_idmon_change.exit.i.i, %if.then12.i.if.end4_crit_edge, %if.end8.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end.if.end4_crit_edge ], [ 1, %if.end8.i.if.end4_crit_edge ], [ 1, %if.then12.i.if.end4_crit_edge ], [ 1, %usb3_irq_idmon_change.exit.i.i ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_usb3_extcon_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %extcon = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extcon, align 4
  %extcon_host = getelementptr i8, ptr %work, i32 248
  %2 = ptrtoint ptr %extcon_host to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extcon_host, align 8, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %call = tail call i32 @extcon_set_state_sync(ptr noundef %1, i32 noundef 2, i1 noundef zeroext %tobool) #12
  %4 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extcon, align 4
  %extcon_usb = getelementptr i8, ptr %work, i32 249
  %6 = ptrtoint ptr %extcon_usb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %extcon_usb, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2 = icmp ne i8 %7, 0
  %call3 = tail call i32 @extcon_set_state_sync(ptr noundef %5, i32 noundef 1, i1 noundef zeroext %tobool2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_usb3_role_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %role_sw = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %role_sw, align 4
  %role = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role, align 8
  %call = tail call i32 @usb_role_switch_set_role(ptr noundef %1, i32 noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_of_get_companion_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @renesas_usb3_debugfs_init(ptr noundef %usb3, ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %4 = load ptr, ptr @usb_debug_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %4) #12
  %dentry = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 6
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %dentry, align 8
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 420, ptr noundef %call1, ptr noundef %usb3, ptr noundef nonnull @renesas_usb3_b_device_fops) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @renesas_usb3_dma_free_prd(ptr nocapture noundef %usb3, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 13
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prd_dma = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 13, i32 0, i32 1
  %2 = ptrtoint ptr %prd_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prd_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %1, i32 noundef %3, i32 noundef 0) #12
  %4 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dma1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx5 = getelementptr %struct.renesas_usb3, ptr %usb3, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %prd_dma.1 = getelementptr %struct.renesas_usb3, ptr %usb3, i32 0, i32 13, i32 1, i32 1
  %7 = ptrtoint ptr %prd_dma.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prd_dma.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %6, i32 noundef %8, i32 noundef 0) #12
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx5, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx5.1 = getelementptr %struct.renesas_usb3, ptr %usb3, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.1, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %prd_dma.2 = getelementptr %struct.renesas_usb3, ptr %usb3, i32 0, i32 13, i32 2, i32 1
  %12 = ptrtoint ptr %prd_dma.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prd_dma.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %11, i32 noundef %13, i32 noundef 0) #12
  %14 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx5.1, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx5.2 = getelementptr %struct.renesas_usb3, ptr %usb3, i32 0, i32 13, i32 3
  %15 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.2, align 4
  %tobool.not.3 = icmp eq ptr %16, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %prd_dma.3 = getelementptr %struct.renesas_usb3, ptr %usb3, i32 0, i32 13, i32 3, i32 1
  %17 = ptrtoint ptr %prd_dma.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prd_dma.3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %16, i32 noundef %18, i32 noundef 0) #12
  %19 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx5.2, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @renesas_usb3_get_frame(ptr nocapture noundef readnone %_gadget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @renesas_usb3_set_selfpowered(ptr nocapture noundef %gadget, i32 noundef %is_self) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_self)
  %tobool.not = icmp eq i32 %is_self, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %tobool.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @renesas_usb3_pullup(ptr nocapture noundef writeonly %gadget, i32 noundef %is_on) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool = icmp ne i32 %is_on, 0
  %softconnect = getelementptr i8, ptr %gadget, i32 1302
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %softconnect to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %softconnect, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 4
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %add.ptr = getelementptr i8, ptr %gadget, i32 -8
  %driver3 = getelementptr i8, ptr %gadget, i32 1048
  %4 = ptrtoint ptr %driver3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %driver, ptr %driver3, align 8
  %phy = getelementptr i8, ptr %gadget, i32 1100
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @phy_init(ptr noundef nonnull %6) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #12
  tail call fastcc void @renesas_usb3_init_controller(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -8
  %softconnect = getelementptr i8, ptr %gadget, i32 1302
  %0 = ptrtoint ptr %softconnect to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %softconnect, align 2
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %speed, align 8
  %driver = getelementptr i8, ptr %gadget, i32 1048
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver, align 8
  tail call fastcc void @usb3_disconnect(ptr noundef %add.ptr) #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 660
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !178
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %6, i32 624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #12, !srcloc !178
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %8, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #12, !srcloc !178
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %10, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #12, !srcloc !178
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #12, !srcloc !178
  %phy = getelementptr i8, ptr %gadget, i32 1100
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @phy_exit(ptr noundef nonnull %14) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @renesas_usb3_init_controller(ptr noundef %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #12, !srcloc !178
  %2 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb3, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #12, !srcloc !178
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %7 = or i32 %6, 192
  %8 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %7) #12, !srcloc !178
  %10 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i7 = getelementptr i8, ptr %11, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 -1) #12, !srcloc !178
  %workaround_for_vbus.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 21
  %12 = ptrtoint ptr %workaround_for_vbus.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %workaround_for_vbus.i, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.usb3_init_epc_registers.exit_crit_edge

entry.usb3_init_epc_registers.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_init_epc_registers.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 552
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %17 = or i32 %16, 16777216
  %18 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %19, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %17) #12, !srcloc !178
  br label %usb3_init_epc_registers.exit

usb3_init_epc_registers.exit:                     ; preds = %if.then.i, %entry.usb3_init_epc_registers.exit_crit_edge
  %20 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i8 = getelementptr i8, ptr %21, i32 512
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %23 = or i32 %22, 57344
  %24 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %25, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %23) #12, !srcloc !178
  %26 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb3, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 620
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #12, !srcloc !178
  %28 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb3, align 8
  %add.ptr.i9 = getelementptr i8, ptr %29, i32 624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 268435456) #12, !srcloc !178
  %30 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i10 = getelementptr i8, ptr %31, i32 616
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i10) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %33 = and i32 %32, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp ne i32 %33, 0
  %extcon_host.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 22
  %.lobit.i = lshr exact i32 %33, 28
  %34 = trunc i32 %.lobit.i to i8
  %35 = xor i8 %34, 1
  %36 = ptrtoint ptr %extcon_host.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %extcon_host.i, align 8
  %role_sw_by_connector.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 26
  %37 = ptrtoint ptr %role_sw_by_connector.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %role_sw_by_connector.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i11 = icmp ne i8 %38, 0
  %brmerge.i = select i1 %tobool.not.i11, i1 true, i1 %tobool.not.i.i
  br i1 %brmerge.i, label %usb3_init_epc_registers.exit.lor.lhs.false.i_crit_edge, label %land.lhs.true3.i

usb3_init_epc_registers.exit.lor.lhs.false.i_crit_edge: ; preds = %usb3_init_epc_registers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true3.i:                                 ; preds = %usb3_init_epc_registers.exit
  %forced_b_device.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 24
  %39 = ptrtoint ptr %forced_b_device.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %forced_b_device.i, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool4.not.i = icmp eq i8 %40, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.then.i12_crit_edge, label %land.lhs.true3.i.lor.lhs.false.i_crit_edge

land.lhs.true3.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true3.i.if.then.i12_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i12

lor.lhs.false.i:                                  ; preds = %land.lhs.true3.i.lor.lhs.false.i_crit_edge, %usb3_init_epc_registers.exit.lor.lhs.false.i_crit_edge
  %connection_state.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 17
  %41 = ptrtoint ptr %connection_state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %connection_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i = icmp eq i32 %42, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i12_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i12_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i12

if.then.i12:                                      ; preds = %lor.lhs.false.i.if.then.i12_crit_edge, %land.lhs.true3.i.if.then.i12_crit_edge
  tail call fastcc void @usb3_mode_config(ptr noundef %usb3, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %usb3_check_id.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_mode_config(ptr noundef %usb3, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %usb3_check_id.exit

usb3_check_id.exit:                               ; preds = %if.else.i, %if.then.i12
  %extcon_work.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %extcon_work.i) #12
  tail call fastcc void @usb3_check_vbus(ptr noundef %usb3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_set_bit(ptr nocapture noundef readonly %usb3, i32 noundef %bits, i32 noundef %offs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offs
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %or = or i32 %3, %bits
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 %offs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %6) #12, !srcloc !178
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_check_vbus(ptr noundef %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %workaround_for_vbus = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 21
  %0 = ptrtoint ptr %workaround_for_vbus to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %workaround_for_vbus, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb3, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 520
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %usb3_wakeup_usb3_phy.exit.i

usb3_wakeup_usb3_phy.exit.i:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %7, i32 520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = or i32 %8, 32768
  %10 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %11, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %9) #12, !srcloc !178
  %12 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 552
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %15 = or i32 %14, 128
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %17, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %15) #12, !srcloc !178
  br label %if.end8

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_usb3_connection(ptr noundef %usb3) #12
  br label %if.end8

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 528
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !175
  %19 = lshr i32 %18, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %extcon_usb = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 23
  %20 = trunc i32 %and to i8
  %21 = ptrtoint ptr %extcon_usb to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %extcon_usb, align 1
  br i1 %tobool1.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  %22 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i16 = getelementptr i8, ptr %23, i32 520
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i16) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i17 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i17, label %if.then.i23, label %usb3_wakeup_usb3_phy.exit.i22

usb3_wakeup_usb3_phy.exit.i22:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i3.i.i18 = getelementptr i8, ptr %27, i32 520
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i18) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %29 = or i32 %28, 32768
  %30 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i19 = getelementptr i8, ptr %31, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i19, i32 %29) #12, !srcloc !178
  %32 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i.i20 = getelementptr i8, ptr %33, i32 552
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i20) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %35 = or i32 %34, 128
  %36 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i.i21 = getelementptr i8, ptr %37, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i21, i32 %35) #12, !srcloc !178
  br label %if.end

if.then.i23:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_usb3_connection(ptr noundef %usb3) #12
  br label %if.end

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_disconnect(ptr noundef %usb3)
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then.i23, %usb3_wakeup_usb3_phy.exit.i22
  %extcon_work = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %extcon_work) #12
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then.i, %usb3_wakeup_usb3_phy.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_mode_config(ptr noundef %usb3, i1 noundef zeroext %host, i1 noundef zeroext %a_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %role_sw_by_connector = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 26
  %0 = ptrtoint ptr %role_sw_by_connector to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %role_sw_by_connector, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %connection_state = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 17
  %2 = ptrtoint ptr %connection_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connection_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %role_sw.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 7
  %4 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %role_sw.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %cond.i = select i1 %host, i32 1, i32 2
  %role.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 10
  %6 = ptrtoint ptr %role.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %role.i, align 8
  %role_work.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %role_work.i) #12
  br label %usb3_set_mode_by_role_sw.exit

if.else.i:                                        ; preds = %if.then
  %8 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 536
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %host, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = and i32 %10, -2
  %12 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %13, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %11) #12, !srcloc !178
  br label %usb3_set_mode_by_role_sw.exit

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = or i32 %10, 1
  %15 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i3.i.i = getelementptr i8, ptr %16, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i.i, i32 %14) #12, !srcloc !178
  br label %usb3_set_mode_by_role_sw.exit

usb3_set_mode_by_role_sw.exit:                    ; preds = %if.else.i.i, %if.then.i.i, %if.then.i
  %17 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 536
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %a_dev, label %if.then.i28, label %if.end.thread

if.then.i28:                                      ; preds = %usb3_set_mode_by_role_sw.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = or i32 %19, 16777216
  %21 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %22, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %20) #12, !srcloc !178
  br label %if.end

if.end.thread:                                    ; preds = %usb3_set_mode_by_role_sw.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = and i32 %19, -16777217
  %24 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i3.i = getelementptr i8, ptr %25, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i, i32 %23) #12, !srcloc !178
  br label %lor.lhs.false13

if.end:                                           ; preds = %if.then.i28, %lor.lhs.false.if.end_crit_edge
  %a_dev.not = xor i1 %a_dev, true
  %brmerge = or i1 %a_dev.not, %host
  br i1 %brmerge, label %if.end.lor.lhs.false13_crit_edge, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end.lor.lhs.false13_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end.lor.lhs.false13_crit_edge, %if.end.thread
  %start_to_connect = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 25
  %26 = ptrtoint ptr %start_to_connect to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %start_to_connect, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool14.not = icmp eq i8 %27, 0
  br i1 %tobool14.not, label %lor.lhs.false13.if.end17_crit_edge, label %lor.lhs.false13.if.then16_crit_edge

lor.lhs.false13.if.then16_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false13.if.end17_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %lor.lhs.false13.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %28 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i30 = getelementptr i8, ptr %29, i32 520
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i30) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.then.i32, label %usb3_wakeup_usb3_phy.exit.i

usb3_wakeup_usb3_phy.exit.i:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %33, i32 520
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %35 = or i32 %34, 32768
  %36 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i31 = getelementptr i8, ptr %37, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i31, i32 %35) #12, !srcloc !178
  %38 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %39, i32 552
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %41 = or i32 %40, 128
  %42 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %43, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %41) #12, !srcloc !178
  br label %if.end17

if.then.i32:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_usb3_connection(ptr noundef %usb3) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then.i32, %usb3_wakeup_usb3_phy.exit.i, %lor.lhs.false13.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_start_usb3_connection(ptr nocapture noundef readonly %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %3 = or i32 %2, 256
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %3) #12, !srcloc !178
  %6 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i3.i = getelementptr i8, ptr %7, i32 512
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = and i32 %8, -513
  %10 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i4.i = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i4.i, i32 %9) #12, !srcloc !178
  %12 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i5.i = getelementptr i8, ptr %13, i32 520
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %15 = or i32 %14, 512
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i7.i = getelementptr i8, ptr %17, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7.i, i32 %15) #12, !srcloc !178
  %18 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 512
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %21 = or i32 %20, 33554432
  %22 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %23, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %21) #12, !srcloc !178
  %24 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i3 = getelementptr i8, ptr %25, i32 552
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i3) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %27 = or i32 %26, 33554504
  %28 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i4 = getelementptr i8, ptr %29, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i4, i32 %27) #12, !srcloc !178
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_disconnect(ptr noundef %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled_count = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 15
  %0 = ptrtoint ptr %disabled_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %disabled_count, align 8
  %1 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i5.i = getelementptr i8, ptr %2, i32 516
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %4 = and i32 %3, -641
  %5 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i6.i = getelementptr i8, ptr %6, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i6.i, i32 %4) #12, !srcloc !178
  %7 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 520
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %10 = and i32 %9, -513
  %11 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %10) #12, !srcloc !178
  tail call fastcc void @usb3_reset_epc(ptr noundef %usb3)
  %13 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 552
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %16 = and i32 %15, -35336393
  %17 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %18, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %16) #12, !srcloc !178
  %19 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i11 = getelementptr i8, ptr %20, i32 512
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %22 = and i32 %21, -513
  %23 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i13 = getelementptr i8, ptr %24, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i13, i32 %22) #12, !srcloc !178
  %25 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i14 = getelementptr i8, ptr %26, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 -1) #12, !srcloc !178
  %workaround_for_vbus.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 21
  %27 = ptrtoint ptr %workaround_for_vbus.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %workaround_for_vbus.i, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i15 = icmp eq i8 %28, 0
  br i1 %tobool.not.i15, label %if.then.i, label %entry.usb3_init_epc_registers.exit_crit_edge

entry.usb3_init_epc_registers.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_init_epc_registers.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 552
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %32 = or i32 %31, 16777216
  %33 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %34, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %32) #12, !srcloc !178
  br label %usb3_init_epc_registers.exit

usb3_init_epc_registers.exit:                     ; preds = %if.then.i, %entry.usb3_init_epc_registers.exit_crit_edge
  %driver = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 2
  %35 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %36, null
  br i1 %tobool.not, label %usb3_init_epc_registers.exit.if.end_crit_edge, label %if.then

usb3_init_epc_registers.exit.if.end_crit_edge:    ; preds = %usb3_init_epc_registers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %usb3_init_epc_registers.exit
  call void @__sanitizer_cov_trace_pc() #14
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %disconnect, align 4
  %gadget = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1
  tail call void %38(ptr noundef %gadget) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %usb3_init_epc_registers.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_reset_epc(ptr nocapture noundef %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %3 = and i32 %2, -2
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #12, !srcloc !178
  %6 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i5 = getelementptr i8, ptr %7, i32 512
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = and i32 %8, -257
  %10 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i7 = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7, i32 %9) #12, !srcloc !178
  %12 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i8 = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %15 = or i32 %14, 16777216
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i9 = getelementptr i8, ptr %17, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9, i32 %15) #12, !srcloc !178
  %test_mode = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 18
  %18 = ptrtoint ptr %test_mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %test_mode, align 4
  %19 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i10 = getelementptr i8, ptr %20, i32 516
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %22 = and i32 %21, -17235969
  %23 = ptrtoint ptr %test_mode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %test_mode, align 4
  %conv.i = zext i16 %24 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %and1.i = and i32 %shl.i, 1792
  %25 = or i32 %22, 16777216
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %or2.i = or i32 %and1.i, %26
  %27 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb3, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %28, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %29) #12, !srcloc !178
  %30 = ptrtoint ptr %test_mode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %test_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.usb3_set_test_mode.exit_crit_edge

entry.usb3_set_test_mode.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_set_test_mode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 516
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %35 = and i32 %34, -16777217
  %36 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %37, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %35) #12, !srcloc !178
  br label %usb3_set_test_mode.exit

usb3_set_test_mode.exit:                          ; preds = %if.then.i, %entry.usb3_set_test_mode.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_ep_enable(ptr nocapture noundef %_ep, ptr nocapture noundef readonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bEndpointAddress.i.i, align 1
  %dir_in.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 7
  %.lobit.i = lshr i8 %3, 7
  %4 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.lobit.i, ptr %dir_in.i, align 4
  %lock.i = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 14
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %num.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 3
  %5 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %entry.usb3_enable_pipe_n.exit_crit_edge, label %lor.lhs.false.i.i

entry.usb3_enable_pipe_n.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_enable_pipe_n.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %num_usb3_eps.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %num_usb3_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_usb3_eps.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp1.i.i = icmp slt i32 %8, %6
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.usb3_enable_pipe_n.exit_crit_edge, label %if.then.i

lor.lhs.false.i.i.usb3_enable_pipe_n.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_enable_pipe_n.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #12, !srcloc !178
  %12 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb31.i, align 4
  %14 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dir_in.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 64
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes.i.i.i, align 1
  %18 = shl i8 %17, 4
  %19 = and i8 %18, 48
  %and.i.i = zext i8 %19 to i32
  %or2.i.i = or i32 %cond.i.i, %and.i.i
  %20 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress.i.i, align 1
  %22 = and i8 %21, 15
  %and.i11.i.i = zext i8 %22 to i32
  %or5.i.i = or i32 %or2.i.i, %and.i11.i.i
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 8
  %add.ptr.i.i1.i = getelementptr i8, ptr %24, i32 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %25 = shl nuw nsw i32 %or5.i.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1.i, i32 %25) #12, !srcloc !178
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %26 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %28 = and i16 %27, -249
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %29)
  %cmp1.not.i.i = icmp ugt i16 %29, 8
  %mpkt.1.i.i = select i1 %cmp1.not.i.i, i32 67108864, i32 524288
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %29)
  %cmp1.not.1.i.i = icmp ugt i16 %29, 16
  %mpkt.1.1.i.i = select i1 %cmp1.not.1.i.i, i32 %mpkt.1.i.i, i32 1048576
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %29)
  %cmp1.not.2.i.i = icmp ugt i16 %29, 32
  %mpkt.1.2.i.i = select i1 %cmp1.not.2.i.i, i32 %mpkt.1.1.i.i, i32 2097152
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %29)
  %cmp1.not.3.i.i = icmp ugt i16 %29, 64
  %mpkt.1.3.i.i = select i1 %cmp1.not.3.i.i, i32 %mpkt.1.2.i.i, i32 4194304
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %29)
  %cmp1.not.4.i.i = icmp ugt i16 %29, 512
  %mpkt.1.4.i.i = select i1 %cmp1.not.4.i.i, i32 %mpkt.1.3.i.i, i32 33554432
  %rammap_val.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 6
  %30 = ptrtoint ptr %rammap_val.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rammap_val.i.i, align 4
  %or.i.i = or i32 %mpkt.1.4.i.i, %31
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 708
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %34) #12, !srcloc !178
  tail call fastcc void @usb3_pn_con_clear(ptr noundef %1) #12
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %add.ptr.i.i2.i = getelementptr i8, ptr %36, i32 712
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %38 = or i32 %37, 128
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %40, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %38) #12, !srcloc !178
  br label %usb3_enable_pipe_n.exit

usb3_enable_pipe_n.exit:                          ; preds = %if.then.i, %lor.lhs.false.i.i.usb3_enable_pipe_n.exit_crit_edge, %entry.usb3_enable_pipe_n.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31.i, align 4
  %lock.i16 = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 14
  %call3.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i16) #12
  %queue.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 5
  %2 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.not.i.i18 = icmp eq ptr %3, %queue.i.i
  %add.ptr.i.i19 = getelementptr i8, ptr %3, i32 -56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i16, i32 noundef %call3.i17) #12
  %tobool.not1520 = icmp eq ptr %add.ptr.i.i19, null
  %tobool.not21 = or i1 %cmp.not.i.i18, %tobool.not1520
  br i1 %tobool.not21, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i.i22 = phi ptr [ %add.ptr.i.i, %if.end.if.end_crit_edge ], [ %add.ptr.i.i19, %entry.if.end_crit_edge ]
  %call1 = tail call fastcc i32 @usb3_dma_try_stop(ptr noundef %_ep, ptr noundef nonnull %add.ptr.i.i22)
  %4 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb31.i, align 4
  %lock.i9 = getelementptr inbounds %struct.renesas_usb3, ptr %5, i32 0, i32 14
  %call3.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i9) #12
  tail call fastcc void @__usb3_request_done(ptr noundef %_ep, ptr noundef nonnull %add.ptr.i.i22, i32 noundef -108) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i9, i32 noundef %call3.i10) #12
  %6 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb31.i, align 4
  %lock.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 14
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %8 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %9, %queue.i.i
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #12
  %tobool.not15 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = or i1 %cmp.not.i.i, %tobool.not15
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb31.i, align 4
  %halt.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 8
  %12 = ptrtoint ptr %halt.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %halt.i, align 1
  %lock.i12 = getelementptr inbounds %struct.renesas_usb3, ptr %11, i32 0, i32 14
  %call3.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i12) #12
  %num.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 3
  %13 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %do.end.usb3_disable_pipe_n.exit_crit_edge, label %lor.lhs.false.i.i

do.end.usb3_disable_pipe_n.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_disable_pipe_n.exit

lor.lhs.false.i.i:                                ; preds = %do.end
  %num_usb3_eps.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %11, i32 0, i32 12
  %15 = ptrtoint ptr %num_usb3_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_usb3_eps.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i.i = icmp slt i32 %16, %14
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.usb3_disable_pipe_n.exit_crit_edge, label %if.then.i

lor.lhs.false.i.i.usb3_disable_pipe_n.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_disable_pipe_n.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %19) #12, !srcloc !178
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  %add.ptr.i.i14 = getelementptr i8, ptr %21, i32 724
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 0) #12, !srcloc !178
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %11, align 8
  %add.ptr.i1.i = getelementptr i8, ptr %23, i32 708
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #12, !srcloc !178
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %11, align 8
  %add.ptr.i.i2.i = getelementptr i8, ptr %25, i32 712
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %27 = and i32 %26, -129
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %29, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %27) #12, !srcloc !178
  br label %usb3_disable_pipe_n.exit

usb3_disable_pipe_n.exit:                         ; preds = %if.then.i, %lor.lhs.false.i.i.usb3_disable_pipe_n.exit_crit_edge, %do.end.usb3_disable_pipe_n.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i12, i32 noundef %call3.i13) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @renesas_usb3_ep_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !180

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  %and2.i.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 64) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.__renesas_usb3_ep_alloc_request.exit_crit_edge, label %if.end.i

kzalloc.exit.i.__renesas_usb3_ep_alloc_request.exit_crit_edge: ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__renesas_usb3_ep_alloc_request.exit

if.end.i:                                         ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %queue.i = getelementptr inbounds %struct.renesas_usb3_request, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.renesas_usb3_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue.i, ptr %prev.i.i, align 4
  br label %__renesas_usb3_ep_alloc_request.exit

__renesas_usb3_ep_alloc_request.exit:             ; preds = %if.end.i, %kzalloc.exit.i.__renesas_usb3_ep_alloc_request.exit_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_usb3_ep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb34 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_usb3_ep_queue.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@renesas_usb3_ep_queue, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 1, i32 11, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_usb3_ep_queue.__UNIQUE_ID_ddebug307, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %5, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %9 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %actual, align 4
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 14
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %queue = getelementptr inbounds %struct.renesas_usb3_request, ptr %_req, i32 0, i32 1
  %queue18 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %11, ptr noundef %queue18) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %prev.i, align 4
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %queue18, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.renesas_usb3_request, ptr %_req, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %queue, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #12
  %num20 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 3
  %16 = ptrtoint ptr %num20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %list_add_tail.exit
  %18 = ptrtoint ptr %usb34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb34, align 4
  %started.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 10
  %20 = ptrtoint ptr %started.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %started.i, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then22.if.end23_crit_edge

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i:                                         ; preds = %if.then22
  %22 = ptrtoint ptr %started.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %started.i, align 1
  %dir_in.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 7
  %23 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dir_in.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool3.not.i = icmp eq i8 %24, 0
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 8
  %add.ptr.i.i17.i = getelementptr i8, ptr %26, i32 640
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = or i32 %27, 1073741824
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %19, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %30, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %28) #12, !srcloc !178
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %19, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 648
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %34 = and i32 %33, 2147482864
  %35 = or i32 %34, -2147483390
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %19, align 8
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %37, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %35) #12, !srcloc !178
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end.i
  %38 = and i32 %27, -1073741825
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %19, align 8
  %add.ptr.i4.i18.i = getelementptr i8, ptr %40, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i18.i, i32 %38) #12, !srcloc !178
  %length.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool5.not.i = icmp eq i32 %42, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.then6.i

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %19, align 8
  %add.ptr.i.i.i19.i = getelementptr i8, ptr %44, i32 648
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i19.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %46 = and i32 %45, 2147482864
  %47 = or i32 %46, -2147483135
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %19, align 8
  %add.ptr.i5.i.i20.i = getelementptr i8, ptr %49, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i20.i, i32 %47) #12, !srcloc !178
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.else.i.if.end8.i_crit_edge, %if.then4.i
  tail call fastcc void @usb3_p0_xfer(ptr noundef %_ep, ptr noundef %_req) #12
  br label %if.end23

if.else:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_pipen(ptr noundef %_ep, ptr noundef %_req)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end8.i, %if.then22.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_ep_dequeue(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb34 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_usb3_ep_dequeue.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@renesas_usb3_ep_dequeue, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 1, i32 11, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_usb3_ep_dequeue.__UNIQUE_ID_ddebug313, ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %5, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call9 = tail call fastcc i32 @usb3_dma_try_stop(ptr noundef %_ep, ptr noundef %_req)
  tail call fastcc void @usb3_request_done_pipen(ptr noundef %1, ptr noundef %_ep, ptr noundef %_req, i32 noundef -104)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_ep_set_halt(ptr nocapture noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %call = tail call fastcc i32 @usb3_set_halt(ptr noundef %_ep, i1 noundef zeroext %tobool, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_ep_set_wedge(ptr nocapture noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wedge = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %wedge to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %wedge, align 2
  %call = tail call fastcc i32 @usb3_set_halt(ptr noundef %_ep, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_usb3_ep_fifo_flush(ptr nocapture noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %do.body2

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 14
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %do.body2.if.end_crit_edge, label %lor.lhs.false.i

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %do.body2
  %num_usb3_eps.i = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %num_usb3_eps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_usb3_eps.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.i = icmp slt i32 %7, %5
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.then10

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #12, !srcloc !178
  tail call fastcc void @usb3_pn_con_clear(ptr noundef %1)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr.i.i22 = getelementptr i8, ptr %12, i32 712
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %14 = or i32 %13, 128
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %14) #12, !srcloc !178
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false.i.if.end_crit_edge, %do.body2.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_p0_con_clear_buffer(ptr noundef %1)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_pn_con_clear(ptr nocapture noundef readonly %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 712
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #12, !srcloc !178
  %6 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i1 = getelementptr i8, ptr %7, i32 712
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  br i1 %cmp1.i, label %entry.usb3_wait.exit_crit_edge, label %if.end.i

entry.usb3_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #12
  %11 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb3, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %12, i32 712
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.1.i = icmp eq i32 %14, 0
  br i1 %cmp1.1.i, label %if.end.i.usb3_wait.exit_crit_edge, label %if.end.1.i

if.end.i.usb3_wait.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.1.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #12
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %17, i32 712
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.2.i = icmp eq i32 %19, 0
  br i1 %cmp1.2.i, label %if.end.1.i.usb3_wait.exit_crit_edge, label %if.end.2.i

if.end.1.i.usb3_wait.exit_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb3_wait.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb3_pn_con_clear, %usb3_wait.exit)) #12
          to label %if.then6.i [label %usb3_wait.exit], !srcloc !171

if.then6.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 11, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb3_wait.__UNIQUE_ID_ddebug297, ptr noundef %22, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 712, i32 noundef 1, i32 noundef 0) #12
  br label %usb3_wait.exit

usb3_wait.exit:                                   ; preds = %if.then6.i, %if.end.2.i, %if.end.1.i.usb3_wait.exit_crit_edge, %if.end.i.usb3_wait.exit_crit_edge, %entry.usb3_wait.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb3_dma_try_stop(ptr nocapture noundef %usb3_ep, ptr noundef %usb3_req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %dma = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %lor.lhs.false.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

lor.lhs.false.i:                                  ; preds = %if.end
  %num_usb3_eps.i = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %num_usb3_eps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_usb3_eps.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.i = icmp slt i32 %7, %5
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end9_crit_edge, label %if.then8

lor.lhs.false.i.if.end9_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #12, !srcloc !178
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 712
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %14 = and i32 %13, -65
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %16, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %14) #12, !srcloc !178
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %17 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb31, align 4
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma, align 4
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num, align 4
  %shl.i.i = shl nuw i32 1, %22
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %and.i.i.i = and i32 %26, %neg.i.i.i
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %18, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %29) #12, !srcloc !178
  %num3.i = getelementptr inbounds %struct.renesas_usb3_dma, ptr %20, i32 0, i32 2
  %30 = ptrtoint ptr %num3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num3.i, align 4
  %sub.i = shl i32 %31, 4
  %add.i = add i32 %sub.i, 32
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %18, align 8
  %add.ptr.i.i21 = getelementptr i8, ptr %33, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 0) #12, !srcloc !178
  %34 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %and3.i = and i32 %39, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end9.usb3_dma_update_status.exit_crit_edge, label %if.then5.i

if.end9.usb3_dma_update_status.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_update_status.exit

if.then5.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %length.i = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 1
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 4
  %rem.i = and i32 %41, 32767
  br label %usb3_dma_update_status.exit

usb3_dma_update_status.exit:                      ; preds = %if.then5.i, %if.end9.usb3_dma_update_status.exit_crit_edge
  %len.0.i = phi i32 [ %rem.i, %if.then5.i ], [ 32768, %if.end9.usb3_dma_update_status.exit_crit_edge ]
  %and.i = and i32 %39, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %status.1.i = select i1 %tobool.not.i, i32 0, i32 -5
  %and8.i = and i32 %39, 65535
  %sub.i22 = sub nsw i32 %len.0.i, %and8.i
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 12
  %42 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual.i, align 4
  %add.i23 = add i32 %sub.i22, %43
  store i32 %add.i23, ptr %actual.i, align 4
  %44 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb31, align 4
  %dma2.i25 = getelementptr inbounds %struct.renesas_usb3, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma, align 4
  %cmp4.i = icmp eq ptr %47, %dma2.i25
  br i1 %cmp4.i, label %usb3_dma_update_status.exit.if.then.i_crit_edge, label %for.inc.i

usb3_dma_update_status.exit.if.then.i_crit_edge:  ; preds = %usb3_dma_update_status.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %usb3_dma_update_status.exit.if.then.i_crit_edge
  %dma.019.lcssa.i = phi ptr [ %dma2.i25, %usb3_dma_update_status.exit.if.then.i_crit_edge ], [ %47, %for.inc.i.if.then.i_crit_edge ]
  %gadget.i = getelementptr inbounds %struct.renesas_usb3, ptr %45, i32 0, i32 1
  %dir_in.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 7
  %48 = ptrtoint ptr %dir_in.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dir_in.i, align 4, !range !169
  %50 = zext i8 %49 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %gadget.i, ptr noundef %usb3_req, i32 noundef %50) #12
  %used.i = getelementptr inbounds %struct.renesas_usb3_dma, ptr %dma.019.lcssa.i, i32 0, i32 3
  %51 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %used.i, align 4
  %52 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %dma, align 4
  br label %out

for.inc.i:                                        ; preds = %usb3_dma_update_status.exit
  %arrayidx7.i = getelementptr %struct.renesas_usb3, ptr %45, i32 0, i32 13, i32 1
  %cmp4.1.i = icmp eq ptr %47, %arrayidx7.i
  %arrayidx7.1.i = getelementptr %struct.renesas_usb3, ptr %45, i32 0, i32 13, i32 2
  %cmp4.2.i = icmp eq ptr %47, %arrayidx7.1.i
  %or.cond.i = or i1 %cmp4.1.i, %cmp4.2.i
  %arrayidx7.2.i = getelementptr %struct.renesas_usb3, ptr %45, i32 0, i32 13, i32 3
  %cmp4.3.i = icmp eq ptr %47, %arrayidx7.2.i
  %or.cond21.i = select i1 %or.cond.i, i1 true, i1 %cmp4.3.i
  br i1 %or.cond21.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.i.out_crit_edge

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

out:                                              ; preds = %for.inc.i.out_crit_edge, %if.then.i, %entry.out_crit_edge
  %status.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %status.1.i, %if.then.i ], [ %status.1.i, %for.inc.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__usb3_request_done(ptr noundef %usb3_ep, ptr noundef %usb3_req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__usb3_request_done.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__usb3_request_done, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 1, i32 11, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 12
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__usb3_request_done.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %status) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status7 = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 11
  %10 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %status, ptr %status7, align 4
  %started = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 10
  %11 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %started, align 1
  %queue = getelementptr inbounds %struct.renesas_usb3_request, ptr %usb3_req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.renesas_usb3_request, ptr %usb3_req, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.renesas_usb3_request, ptr %usb3_req, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %queue, ptr %prev.i3.i, align 4
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @usb_gadget_giveback_request(ptr noundef %usb3_ep, ptr noundef %usb3_req) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_start_pipen(ptr noundef %usb3_ep, ptr noundef %usb3_req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %halt = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 8
  %2 = ptrtoint ptr %halt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %halt, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %started = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 10
  %4 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %started, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %queue.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 5
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue.i, align 4
  %cmp.not.i = icmp eq ptr %7, %queue.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -56
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %tobool10.not = icmp ne ptr %spec.select.i, null
  %cmp12.not = icmp eq ptr %spec.select.i, %usb3_req
  %or.cond = and i1 %tobool10.not, %cmp12.not
  br i1 %or.cond, label %if.end15, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end15:                                         ; preds = %if.end
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.end15.out_crit_edge, label %lor.lhs.false.i

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end15
  %num_usb3_eps.i = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %num_usb3_eps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_usb3_eps.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1.i = icmp slt i32 %11, %9
  br i1 %cmp1.i, label %lor.lhs.false.i.out_crit_edge, label %if.end20

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #12, !srcloc !178
  %15 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %started, align 1
  %16 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb31, align 4
  %18 = load i8, ptr @use_dma, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end20.if.end24_crit_edge, label %if.end.i59

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end.i59:                                       ; preds = %if.end20
  %call.i = tail call fastcc zeroext i1 @usb3_dma_get_setting_area(ptr noundef %usb3_ep, ptr noundef %usb3_req) #12
  br i1 %call.i, label %if.then2.i, label %if.end.i59.if.end24_crit_edge

if.end.i59.if.end24_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then2.i:                                       ; preds = %if.end.i59
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 712
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %22 = and i32 %21, 2147482879
  %23 = or i32 %22, -2147483648
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 8
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %25, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %23) #12, !srcloc !178
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 8
  %add.ptr.i.i.i10.i = getelementptr i8, ptr %27, i32 712
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i10.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %29 = or i32 %28, 64
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %31, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %29) #12, !srcloc !178
  %dma.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 2
  %32 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 1
  %36 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i.i, align 4
  %dma3.i.i = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 2
  %38 = ptrtoint ptr %dma3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %37)
  %cmp.i.i = icmp ult i32 %37, 32768
  %phi.bo.i.i = and i32 %37, 65535
  %cond.i.i = select i1 %cmp.i.i, i32 %phi.bo.i.i, i32 32768
  %maxpacket.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep, i32 0, i32 7
  %40 = ptrtoint ptr %maxpacket.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 7)
  %bf.load.i.i.i = load i56, ptr %maxpacket.i.i.i, align 2
  %bf.lshr.i.i.i = lshr i56 %bf.load.i.i.i, 40
  %trunc.i.i.i = trunc i56 %bf.lshr.i.i.i to i16
  %41 = zext i16 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %trunc.i.i.i, label %sw.default.i.i.i [
    i16 8, label %if.then2.i.usb3_dma_mps_to_prd_word1.exit.i.i_crit_edge
    i16 16, label %sw.bb1.i.i.i
    i16 32, label %sw.bb2.i.i.i
    i16 64, label %sw.bb3.i.i.i
    i16 512, label %sw.bb4.i.i.i
    i16 1024, label %sw.bb5.i.i.i
  ]

if.then2.i.usb3_dma_mps_to_prd_word1.exit.i.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_mps_to_prd_word1.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_mps_to_prd_word1.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_mps_to_prd_word1.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_mps_to_prd_word1.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_mps_to_prd_word1.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_mps_to_prd_word1.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_mps_to_prd_word1.exit.i.i

usb3_dma_mps_to_prd_word1.exit.i.i:               ; preds = %sw.default.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then2.i.usb3_dma_mps_to_prd_word1.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 14680064, %sw.default.i.i.i ], [ 10485760, %sw.bb5.i.i.i ], [ 8388608, %sw.bb4.i.i.i ], [ 6291456, %sw.bb3.i.i.i ], [ 4194304, %sw.bb2.i.i.i ], [ 2097152, %sw.bb1.i.i.i ], [ 0, %if.then2.i.usb3_dma_mps_to_prd_word1.exit.i.i_crit_edge ]
  %or.i.i = or i32 %retval.0.i.i.i, %cond.i.i
  %bap.i.i = getelementptr inbounds %struct.renesas_usb3_prd, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %bap.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %bap.i.i, align 4
  %or8.i.i = or i32 %or.i.i, 1224736768
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or8.i.i, ptr %35, align 4
  %dir_in.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 7
  %44 = ptrtoint ptr %dir_in.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dir_in.i.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool9.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool9.not.i.i, label %usb3_dma_mps_to_prd_word1.exit.i.i.usb3_dma_try_start.exit_crit_edge, label %if.then10.i.i

usb3_dma_mps_to_prd_word1.exit.i.i.usb3_dma_try_start.exit_crit_edge: ; preds = %usb3_dma_mps_to_prd_word1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_dma_try_start.exit

if.then10.i.i:                                    ; preds = %usb3_dma_mps_to_prd_word1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or12.i.i = or i32 %or.i.i, 1291845632
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or12.i.i, ptr %35, align 4
  br label %usb3_dma_try_start.exit

usb3_dma_try_start.exit:                          ; preds = %if.then10.i.i, %usb3_dma_mps_to_prd_word1.exit.i.i.usb3_dma_try_start.exit_crit_edge
  %47 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma.i.i, align 4
  %49 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb31, align 4
  %51 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num, align 4
  %shl.i.i = shl i32 %52, 8
  %and.i.i = and i32 %shl.i.i, 7936
  %53 = ptrtoint ptr %dir_in.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dir_in.i.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i32 1, i32 32769
  %spec.select.i.i = or i32 %spec.select.v.i.i, %and.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  tail call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num, align 4
  %shl5.i.i = shl nuw i32 1, %56
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %50, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %shl5.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %59) #12, !srcloc !178
  %num6.i.i = getelementptr inbounds %struct.renesas_usb3_dma, ptr %48, i32 0, i32 2
  %60 = ptrtoint ptr %num6.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num6.i.i, align 4
  %sub.i.i = add i32 %61, 15
  %shl7.i.i = shl nuw i32 1, %sub.i.i
  %sub10.i.i = add i32 %61, -1
  %shl11.i.i = shl nuw i32 1, %sub10.i.i
  %or12.i12.i = or i32 %shl7.i.i, %shl11.i.i
  %62 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %50, align 8
  %add.ptr.i35.i.i = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %64 = tail call i32 @llvm.bswap.i32(i32 %or12.i12.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i.i, i32 %64) #12, !srcloc !178
  %prd_dma.i.i = getelementptr inbounds %struct.renesas_usb3_dma, ptr %48, i32 0, i32 1
  %65 = ptrtoint ptr %prd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %prd_dma.i.i, align 4
  %67 = ptrtoint ptr %num6.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num6.i.i, align 4
  %sub14.i.i = shl i32 %68, 4
  %add15.i.i = add i32 %sub14.i.i, 36
  %69 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %50, align 8
  %add.ptr.i36.i.i = getelementptr i8, ptr %70, i32 %add15.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %71 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i.i, i32 %71) #12, !srcloc !178
  %72 = ptrtoint ptr %num6.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num6.i.i, align 4
  %sub17.i.i = shl i32 %73, 4
  %add19.i.i = add i32 %sub17.i.i, 32
  %74 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %50, align 8
  %add.ptr.i37.i.i = getelementptr i8, ptr %75, i32 %add19.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %76 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i.i, i32 %76) #12, !srcloc !178
  %77 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num, align 4
  %shl.i.i.i = shl nuw i32 1, %78
  %79 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %50, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %80, i32 20
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #12, !srcloc !175
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %or.i.i.i.i = or i32 %82, %shl.i.i.i
  %83 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %50, align 8
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %84, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %85) #12, !srcloc !178
  %86 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %17, align 8
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %87, i32 712
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %89 = and i32 %88, 2147482879
  %90 = or i32 %89, -2147483392
  %91 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %17, align 8
  %add.ptr.i7.i.i14.i = getelementptr i8, ptr %92, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i14.i, i32 %90) #12, !srcloc !178
  br label %out

if.end24:                                         ; preds = %if.end.i59.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i61 = getelementptr i8, ptr %94, i32 712
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i61) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %96 = and i32 %95, 2147482879
  %97 = or i32 %96, -2147483392
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %99, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %97) #12, !srcloc !178
  %dir_in = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 7
  %100 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dir_in, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool25.not = icmp eq i8 %101, 0
  br i1 %tobool25.not, label %if.end24.if.end28.thread_crit_edge, label %if.end28

if.end24.if.end28.thread_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.thread

if.end28:                                         ; preds = %if.end24
  %call27 = tail call fastcc i32 @usb3_write_pipe(ptr noundef %usb3_ep, ptr noundef %usb3_req, i32 noundef 744)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %phi.cmp = icmp slt i32 %call27, 0
  br i1 %phi.cmp, label %if.end28.if.end28.thread_crit_edge, label %if.end28.if.then35_crit_edge

if.end28.if.then35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end28.if.end28.thread_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.thread

if.end28.thread:                                  ; preds = %if.end28.if.end28.thread_crit_edge, %if.end24.if.end28.thread_crit_edge
  %or3268 = phi i32 [ 17, %if.end28.if.end28.thread_crit_edge ], [ 1, %if.end24.if.end28.thread_crit_edge ]
  br label %if.then35

if.then35:                                        ; preds = %if.end28.thread, %if.end28.if.then35_crit_edge
  %102 = phi i32 [ %or3268, %if.end28.thread ], [ 16, %if.end28.if.then35_crit_edge ]
  tail call fastcc void @usb3_set_bit(ptr noundef %1, i32 noundef %102, i32 noundef 724)
  %103 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num, align 4
  tail call fastcc void @usb3_enable_pipe_irq(ptr noundef %1, i32 noundef %104)
  br label %out

out:                                              ; preds = %if.then35, %usb3_dma_try_start.exit, %lor.lhs.false.i.out_crit_edge, %if.end15.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_p0_xfer(ptr nocapture noundef readonly %usb3_ep, ptr nocapture noundef %usb3_req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dir_in = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 7
  %0 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dir_in, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @usb3_write_pipe(ptr noundef %usb3_ep, ptr noundef %usb3_req, i32 noundef 680)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @usb3_read_pipe(ptr noundef %usb3_ep, ptr noundef %usb3_req, i32 noundef 676)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool2.not = icmp eq i32 %ret.0, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %usb31.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %2 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb31.i, align 4
  %4 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dir_in, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 648
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = and i32 %8, 2147482864
  %10 = or i32 %9, -2147483386
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %12, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %10) #12, !srcloc !178
  br label %if.end4

if.else.i:                                        ; preds = %if.then3
  %length.i = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %add.ptr.i.i.i9.i = getelementptr i8, ptr %16, i32 648
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i9.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %18 = and i32 %17, 2147482864
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else4.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = or i32 %18, -2147483130
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %add.ptr.i5.i.i10.i = getelementptr i8, ptr %21, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i10.i, i32 %19) #12, !srcloc !178
  br label %if.end4

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = or i32 %18, -2147483131
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %add.ptr.i5.i.i12.i = getelementptr i8, ptr %24, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i12.i, i32 %22) #12, !srcloc !178
  br label %if.end4

if.end4:                                          ; preds = %if.else4.i, %if.then3.i, %if.then.i, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb3_write_pipe(ptr nocapture noundef readonly %usb3_ep, ptr nocapture noundef %usb3_req, i32 noundef %fifo_reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %sub = sub i32 %3, %5
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %7 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bf.cast)
  %8 = ptrtoint ptr %usb3_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb3_req, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %call = tail call fastcc i32 @usb3_wait_pipe_status(ptr noundef %usb3_ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual, align 4
  %add = add i32 %11, %7
  store i32 %add, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp13 = icmp ugt i32 %7, 3
  br i1 %cmp13, label %if.then14, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr15 = getelementptr i8, ptr %13, i32 %fifo_reg
  %div686972 = lshr i32 %7, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr15, ptr noundef %add.ptr, i32 noundef %div686972) #12
  %mul = and i32 %7, 65532
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %mul
  %rem7071 = and i32 %7, 3
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end.if.end18_crit_edge
  %len.0 = phi i32 [ %rem7071, %if.then14 ], [ %7, %if.end.if.end18_crit_edge ]
  %buf.0 = phi ptr [ %add.ptr17, %if.then14 ], [ %add.ptr, %if.end.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool19.not = icmp eq i32 %len.0, 0
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %tmp7.075 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf.0, i32 %i.074
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %mul22 = shl i32 %i.074, 3
  %shl = shl i32 %conv, %mul22
  %or = or i32 %shl, %tmp7.075
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %len.0
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 %fifo_reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #12, !srcloc !178
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.end18.if.end23_crit_edge
  br i1 %tobool.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 6
  %19 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i = load i32, ptr %zero.i, align 4
  %20 = and i32 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then25.lor.lhs.false.i_crit_edge

if.then25.lor.lhs.false.i_crit_edge:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.then25
  %21 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual, align 4
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i = icmp eq i32 %22, %24
  br i1 %cmp.i, label %land.lhs.true.i.if.end28_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i.if.end28_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.then25.lor.lhs.false.i_crit_edge
  %25 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual, align 4
  %27 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %27, i32 7)
  %bf.load3.i = load i56, ptr %maxpacket, align 2
  %bf.lshr4.i = lshr i56 %bf.load3.i, 40
  %bf.cast.i = trunc i56 %bf.lshr4.i to i32
  %rem.i = urem i32 %26, %bf.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool5.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.if.end28_crit_edge

lor.lhs.false.i.if.end28_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.i = icmp eq i32 %29, 0
  br label %if.end28

if.end28:                                         ; preds = %lor.lhs.false6.i, %lor.lhs.false.i.if.end28_crit_edge, %land.lhs.true.i.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %is_last.0.in = phi i1 [ true, %if.end23.if.end28_crit_edge ], [ true, %lor.lhs.false.i.if.end28_crit_edge ], [ true, %land.lhs.true.i.if.end28_crit_edge ], [ %cmp8.i, %lor.lhs.false6.i ]
  %30 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb31, align 4
  %num.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %32 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i67 = icmp eq i32 %33, 0
  %cond.i = select i1 %tobool.not.i67, i32 648, i32 712
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 8
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %cond.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %38 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i = icmp eq i32 %39, 0
  %spec.select = select i1 %is_last.0.in, i32 2048, i32 0
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 %spec.select
  %shl.i = shl nsw i32 %len.0, 9
  %and.i = and i32 %shl.i, 1536
  %or.i = or i32 %and.i, %37
  %or2.i = or i32 %or.i, %spec.select.i
  %or7.i = or i32 %or2.i, 256
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %31, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %41, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %42 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %42) #12, !srcloc !178
  %cond32 = select i1 %is_last.0.in, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond32, %if.end28 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb3_read_pipe(ptr nocapture noundef readonly %usb3_ep, ptr nocapture noundef %usb3_req, i32 noundef %fifo_reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %sub = sub i32 %3, %5
  %num.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %6 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %cond.i = select i1 %tobool.not.i, i32 672, i32 736
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %cond.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %12 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %11)
  %13 = ptrtoint ptr %usb3_req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb3_req, align 4
  %15 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %16, %12
  %17 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp10 = icmp sgt i32 %12, 3
  br i1 %cmp10, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr12 = getelementptr i8, ptr %19, i32 %fifo_reg
  %div5456 = lshr i32 %12, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr12, ptr noundef %add.ptr, i32 noundef %div5456) #12
  %mul = and i32 %12, -4
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %mul
  %rem55 = and i32 %12, 3
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %len.0 = phi i32 [ %rem55, %if.then11 ], [ %12, %if.end.if.end15_crit_edge ]
  %buf.0 = phi ptr [ %add.ptr14, %if.then11 ], [ %add.ptr, %if.end.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool16.not = icmp eq i32 %len.0, 0
  br i1 %tobool16.not, label %if.end15.if.end21_crit_edge, label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 %fifo_reg
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !175
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp1957 = icmp sgt i32 %len.0, 0
  br i1 %cmp1957, label %if.then17.for.body_crit_edge, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17.for.body_crit_edge:                     ; preds = %if.then17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then17.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then17.for.body_crit_edge ]
  %mul20 = shl i32 %i.058, 3
  %shr = lshr i32 %23, %mul20
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr i8, ptr %buf.0, i32 %i.058
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %len.0
  br i1 %exitcond.not, label %for.body.if.end21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %for.body.if.end21_crit_edge, %if.then17.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 6
  %25 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i = load i32, ptr %zero.i, align 4
  %26 = and i32 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i52 = icmp eq i32 %26, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i, label %if.end21.lor.lhs.false.i_crit_edge

if.end21.lor.lhs.false.i_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end21
  %27 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual, align 4
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i = icmp eq i32 %28, %30
  br i1 %cmp.i, label %land.lhs.true.i.usb3_is_transfer_complete.exit.thread_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i.usb3_is_transfer_complete.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_is_transfer_complete.exit.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end21.lor.lhs.false.i_crit_edge
  %31 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep, i32 0, i32 7
  %33 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 7)
  %bf.load3.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr4.i = lshr i56 %bf.load3.i, 40
  %bf.cast.i = trunc i56 %bf.lshr4.i to i32
  %rem.i = urem i32 %32, %bf.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool5.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool5.not.i, label %usb3_is_transfer_complete.exit, label %lor.lhs.false.i.usb3_is_transfer_complete.exit.thread_crit_edge

lor.lhs.false.i.usb3_is_transfer_complete.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_is_transfer_complete.exit.thread

usb3_is_transfer_complete.exit:                   ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp8.i = icmp eq i32 %35, 0
  br i1 %cmp8.i, label %usb3_is_transfer_complete.exit.usb3_is_transfer_complete.exit.thread_crit_edge, label %usb3_is_transfer_complete.exit.cleanup_crit_edge

usb3_is_transfer_complete.exit.cleanup_crit_edge: ; preds = %usb3_is_transfer_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

usb3_is_transfer_complete.exit.usb3_is_transfer_complete.exit.thread_crit_edge: ; preds = %usb3_is_transfer_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_is_transfer_complete.exit.thread

usb3_is_transfer_complete.exit.thread:            ; preds = %usb3_is_transfer_complete.exit.usb3_is_transfer_complete.exit.thread_crit_edge, %lor.lhs.false.i.usb3_is_transfer_complete.exit.thread_crit_edge, %land.lhs.true.i.usb3_is_transfer_complete.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %usb3_is_transfer_complete.exit.thread, %usb3_is_transfer_complete.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %usb3_is_transfer_complete.exit.thread ], [ -11, %usb3_is_transfer_complete.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb3_wait_pipe_status(ptr nocapture noundef readonly %usb3_ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 652, i32 716
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i.not = icmp eq i32 %7, 0
  br i1 %cmp1.i.not, label %if.end.i, label %entry.usb3_wait.exit_crit_edge

entry.usb3_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %10, i32 %cond
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.1.i.not = icmp eq i32 %12, 0
  br i1 %cmp1.1.i.not, label %if.end.1.i, label %if.end.i.usb3_wait.exit_crit_edge

if.end.i.usb3_wait.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.1.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %15, i32 %cond
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.2.i.not = icmp eq i32 %17, 0
  br i1 %cmp1.2.i.not, label %if.end.2.i, label %if.end.1.i.usb3_wait.exit_crit_edge

if.end.1.i.usb3_wait.exit_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb3_wait.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb3_wait_pipe_status, %usb3_wait.exit)) #12
          to label %if.then6.i [label %usb3_wait.exit], !srcloc !171

if.then6.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 1, i32 11, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb3_wait.__UNIQUE_ID_ddebug297, ptr noundef %20, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %cond, i32 noundef 1, i32 noundef 1) #12
  br label %usb3_wait.exit

usb3_wait.exit:                                   ; preds = %if.then6.i, %if.end.2.i, %if.end.1.i.usb3_wait.exit_crit_edge, %if.end.i.usb3_wait.exit_crit_edge, %entry.usb3_wait.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %if.then6.i ], [ -16, %if.end.2.i ], [ 0, %if.end.1.i.usb3_wait.exit_crit_edge ], [ 0, %if.end.i.usb3_wait.exit_crit_edge ], [ 0, %entry.usb3_wait.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_enable_pipe_irq(ptr nocapture noundef readonly %usb3, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %num
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %or.i = or i32 %3, %shl
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %6) #12, !srcloc !178
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @usb3_dma_get_setting_area(ptr nocapture noundef %usb3_ep, ptr noundef %usb3_req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb31 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %0 = ptrtoint ptr %usb31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb31, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %usb3_req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %cmp = icmp ugt i32 %3, 16777216
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb3_dma_get_setting_area.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb3_dma_get_setting_area, %cleanup)) #12
          to label %if.then5 [label %cleanup], !srcloc !171

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 1, i32 11, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb3_dma_get_setting_area.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %7) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %usb3_ep, i32 0, i32 7
  %8 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %trunc.i = trunc i56 %bf.lshr.i to i16
  %9 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %trunc.i, label %if.end13.cleanup_crit_edge [
    i16 8, label %if.end13.if.end17_crit_edge
    i16 16, label %if.end13.if.end17_crit_edge61
    i16 32, label %if.end13.if.end17_crit_edge62
    i16 64, label %if.end13.if.end17_crit_edge63
    i16 512, label %if.end13.if.end17_crit_edge64
    i16 1024, label %if.end13.if.end17_crit_edge65
  ]

if.end13.if.end17_crit_edge65:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end13.if.end17_crit_edge64:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end13.if.end17_crit_edge63:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end13.if.end17_crit_edge62:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end13.if.end17_crit_edge61:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13.if.end17_crit_edge, %if.end13.if.end17_crit_edge61, %if.end13.if.end17_crit_edge62, %if.end13.if.end17_crit_edge63, %if.end13.if.end17_crit_edge64, %if.end13.if.end17_crit_edge65
  %dma18 = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 13
  %used = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 13, i32 0, i32 3
  %10 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %used, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not = icmp eq i8 %11, 0
  br i1 %tobool20.not, label %if.end17.if.end22_crit_edge, label %for.inc

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22:                                         ; preds = %for.inc.2.if.end22_crit_edge, %for.inc.1.if.end22_crit_edge, %for.inc.if.end22_crit_edge, %if.end17.if.end22_crit_edge
  %dma.058.lcssa = phi ptr [ %dma18, %if.end17.if.end22_crit_edge ], [ %arrayidx34, %for.inc.if.end22_crit_edge ], [ %arrayidx34.1, %for.inc.1.if.end22_crit_edge ], [ %arrayidx34.2, %for.inc.2.if.end22_crit_edge ]
  %gadget23 = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 1
  %dir_in = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 7
  %12 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dir_in, align 4, !range !169
  %14 = zext i8 %13 to i32
  %call26 = tail call i32 @usb_gadget_map_request(ptr noundef %gadget23, ptr noundef %usb3_req, i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end22.cleanup_crit_edge, label %if.end30

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %used.le = getelementptr inbounds %struct.renesas_usb3_dma, ptr %dma.058.lcssa, i32 0, i32 3
  %15 = ptrtoint ptr %used.le to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %used.le, align 4
  %dma32 = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 2
  %16 = ptrtoint ptr %dma32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dma.058.lcssa, ptr %dma32, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end17
  %arrayidx34 = getelementptr %struct.renesas_usb3, ptr %1, i32 0, i32 13, i32 1
  %used.1 = getelementptr %struct.renesas_usb3, ptr %1, i32 0, i32 13, i32 1, i32 3
  %17 = ptrtoint ptr %used.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %used.1, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not.1 = icmp eq i8 %18, 0
  br i1 %tobool20.not.1, label %for.inc.if.end22_crit_edge, label %for.inc.1

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.inc.1:                                        ; preds = %for.inc
  %arrayidx34.1 = getelementptr %struct.renesas_usb3, ptr %1, i32 0, i32 13, i32 2
  %used.2 = getelementptr %struct.renesas_usb3, ptr %1, i32 0, i32 13, i32 2, i32 3
  %19 = ptrtoint ptr %used.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %used.2, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not.2 = icmp eq i8 %20, 0
  br i1 %tobool20.not.2, label %for.inc.1.if.end22_crit_edge, label %for.inc.2

for.inc.1.if.end22_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx34.2 = getelementptr %struct.renesas_usb3, ptr %1, i32 0, i32 13, i32 3
  %used.3 = getelementptr %struct.renesas_usb3, ptr %1, i32 0, i32 13, i32 3, i32 3
  %21 = ptrtoint ptr %used.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %used.3, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not.3 = icmp eq i8 %22, 0
  br i1 %tobool20.not.3, label %for.inc.2.if.end22_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.2.if.end22_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %if.end30, %if.end22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i1 [ false, %if.then5 ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end22.cleanup_crit_edge ], [ true, %if.end30 ], [ false, %if.end13.cleanup_crit_edge ], [ false, %do.body ], [ false, %for.inc.2.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_request_done_pipen(ptr noundef %usb3, ptr noundef %usb3_ep, ptr noundef %usb3_req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %num_usb3_eps.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 12
  %2 = ptrtoint ptr %num_usb3_eps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_usb3_eps.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp1.i = icmp slt i32 %3, %1
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then_crit_edge, label %usb3_pn_change.exit

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

usb3_pn_change.exit:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #12, !srcloc !178
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 712
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %10 = and i32 %9, 2147482879
  %11 = or i32 %10, -2147483648
  %12 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %13, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %11) #12, !srcloc !178
  br label %if.end

if.end:                                           ; preds = %if.then, %usb3_pn_change.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 4
  %shl.i = shl nuw i32 1, %15
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i22 = getelementptr i8, ptr %17, i32 556
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i22) #12, !srcloc !175
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %19, %neg.i.i
  %20 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %21, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %22) #12, !srcloc !178
  %usb31.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %23 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb31.i, align 4
  %lock.i = getelementptr inbounds %struct.renesas_usb3, ptr %24, i32 0, i32 14
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  tail call fastcc void @__usb3_request_done(ptr noundef %usb3_ep, ptr noundef %usb3_req, i32 noundef %status) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #12
  %25 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb31.i, align 4
  %lock.i24 = getelementptr inbounds %struct.renesas_usb3, ptr %26, i32 0, i32 14
  %call3.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i24) #12
  %queue.i.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 5
  %27 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %28, %queue.i.i
  %add.ptr.i.i26 = getelementptr i8, ptr %28, i32 -56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i24, i32 noundef %call3.i25) #12
  %tobool9.not29 = icmp eq ptr %add.ptr.i.i26, null
  %tobool9.not = or i1 %cmp.not.i.i, %tobool9.not29
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_pipen(ptr noundef %usb3_ep, ptr noundef nonnull %add.ptr.i.i26)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb3_set_halt(ptr nocapture noundef %usb3_ep, i1 noundef zeroext %halt, i1 noundef zeroext %is_clear_feature) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %halt, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %started = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 10
  %0 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %started, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %num = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %usb31.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 1
  %4 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb31.i, align 4
  br i1 %tobool3.not, label %if.end.i, label %if.then4

if.then4:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.renesas_usb3, ptr %5, i32 0, i32 14
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %if.then4.usb3_set_halt_pn.exit_crit_edge, label %lor.lhs.false.i.i

if.then4.usb3_set_halt_pn.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_set_halt_pn.exit

lor.lhs.false.i.i:                                ; preds = %if.then4
  %num_usb3_eps.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %num_usb3_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_usb3_eps.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp1.i.i = icmp slt i32 %9, %7
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.usb3_set_halt_pn.exit_crit_edge, label %if.then.i

lor.lhs.false.i.i.usb3_set_halt_pn.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_set_halt_pn.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %12) #12, !srcloc !178
  %frombool.i = zext i1 %halt to i8
  %halt9.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 8
  %13 = ptrtoint ptr %halt9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool.i, ptr %halt9.i, align 1
  br i1 %halt, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 712
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %17 = and i32 %16, 2147482879
  %18 = or i32 %17, -2147483136
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 8
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %20, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %18) #12, !srcloc !178
  br label %usb3_set_halt_pn.exit

if.else.i:                                        ; preds = %if.then.i
  br i1 %is_clear_feature, label %lor.lhs.false.i, label %if.else.i.if.then15.i_crit_edge

if.else.i.if.then15.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %wedge.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 9
  %21 = ptrtoint ptr %wedge.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wedge.i, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not.i = icmp eq i8 %22, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i.if.then15.i_crit_edge, label %lor.lhs.false.i.usb3_set_halt_pn.exit_crit_edge

lor.lhs.false.i.usb3_set_halt_pn.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_set_halt_pn.exit

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false.i.if.then15.i_crit_edge, %if.else.i.if.then15.i_crit_edge
  tail call fastcc void @usb3_pn_con_clear(ptr noundef %5) #12
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 8
  %add.ptr.i.i1.i = getelementptr i8, ptr %24, i32 712
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %26 = or i32 %25, 128
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %28, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %26) #12, !srcloc !178
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 8
  %add.ptr.i.i.i2.i = getelementptr i8, ptr %30, i32 712
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i2.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %32 = and i32 %31, 2147482879
  %33 = or i32 %32, -2147483648
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 8
  %add.ptr.i7.i.i3.i = getelementptr i8, ptr %35, i32 712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i3.i, i32 %33) #12, !srcloc !178
  br label %usb3_set_halt_pn.exit

usb3_set_halt_pn.exit:                            ; preds = %if.then15.i, %lor.lhs.false.i.usb3_set_halt_pn.exit_crit_edge, %if.then12.i, %lor.lhs.false.i.i.usb3_set_halt_pn.exit_crit_edge, %if.then4.usb3_set_halt_pn.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %frombool.i16 = zext i1 %halt to i8
  %halt5.i = getelementptr inbounds %struct.renesas_usb3_ep, ptr %usb3_ep, i32 0, i32 8
  %36 = ptrtoint ptr %halt5.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool.i16, ptr %halt5.i, align 1
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 8
  %add.ptr.i.i.i.i17 = getelementptr i8, ptr %38, i32 648
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %40 = and i32 %39, 2147482864
  br i1 %halt, label %if.then8.i, label %if.else.i18

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = or i32 %40, -2147483126
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 8
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %43, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %41) #12, !srcloc !178
  br label %cleanup

if.else.i18:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = or i32 %40, -2147483648
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 8
  %add.ptr.i5.i.i15.i = getelementptr i8, ptr %46, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i15.i, i32 %44) #12, !srcloc !178
  br label %cleanup

cleanup:                                          ; preds = %if.else.i18, %if.then8.i, %usb3_set_halt_pn.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %land.lhs.true.cleanup_crit_edge ], [ 0, %usb3_set_halt_pn.exit ], [ 0, %if.then8.i ], [ 0, %if.else.i18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_p0_con_clear_buffer(ptr nocapture noundef readonly %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 648
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %3 = or i32 %2, 33554432
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #12, !srcloc !178
  %6 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i1 = getelementptr i8, ptr %7, i32 648
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  br i1 %cmp1.i, label %entry.usb3_wait.exit_crit_edge, label %if.end.i

entry.usb3_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #12
  %11 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb3, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %12, i32 648
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.1.i = icmp eq i32 %14, 0
  br i1 %cmp1.1.i, label %if.end.i.usb3_wait.exit_crit_edge, label %if.end.1.i

if.end.i.usb3_wait.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.1.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #12
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %17, i32 648
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.2.i = icmp eq i32 %19, 0
  br i1 %cmp1.2.i, label %if.end.1.i.usb3_wait.exit_crit_edge, label %if.end.2.i

if.end.1.i.usb3_wait.exit_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb3_wait.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb3_wait.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb3_p0_con_clear_buffer, %usb3_wait.exit)) #12
          to label %if.then6.i [label %usb3_wait.exit], !srcloc !171

if.then6.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 11, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb3_wait.__UNIQUE_ID_ddebug297, ptr noundef %22, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 648, i32 noundef 2, i32 noundef 0) #12
  br label %usb3_wait.exit

usb3_wait.exit:                                   ; preds = %if.then6.i, %if.end.2.i, %if.end.1.i.usb3_wait.exit_crit_edge, %if.end.i.usb3_wait.exit_crit_edge, %entry.usb3_wait.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_irq_epc_int_1_resume(ptr nocapture noundef %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 552
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %3 = and i32 %2, -65537
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %5, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %3) #12, !srcloc !178
  tail call fastcc void @usb3_start_usb2_connection(ptr noundef %usb3)
  %6 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i3 = getelementptr i8, ptr %7, i32 556
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i3) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i4 = getelementptr i8, ptr %11, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i4, i32 %9) #12, !srcloc !178
  %12 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16778496) #12, !srcloc !178
  %14 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i5.i = getelementptr i8, ptr %15, i32 660
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %17 = or i32 %16, 16778496
  %18 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i7.i = getelementptr i8, ptr %19, i32 660
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7.i, i32 %17) #12, !srcloc !178
  %20 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 552
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %23 = or i32 %22, 1703936
  %24 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i10.i = getelementptr i8, ptr %25, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i10.i, i32 %23) #12, !srcloc !178
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_start_usb2_connection(ptr nocapture noundef %usb3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled_count = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 15
  %0 = ptrtoint ptr %disabled_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disabled_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %disabled_count, align 8
  %2 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %5 = or i32 %4, 256
  %6 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %5) #12, !srcloc !178
  %8 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i4 = getelementptr i8, ptr %9, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %11 = or i32 %10, 512
  %12 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i6 = getelementptr i8, ptr %13, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i6, i32 %11) #12, !srcloc !178
  %softconnect.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 20
  %14 = ptrtoint ptr %softconnect.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %softconnect.i, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i5.i = getelementptr i8, ptr %17, i32 516
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %19 = or i32 %18, 640
  %20 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %21, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %19) #12, !srcloc !178
  br label %usb3_usb2_pullup.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %22 = and i32 %18, -641
  %23 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i6.i = getelementptr i8, ptr %24, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i6.i, i32 %22) #12, !srcloc !178
  br label %usb3_usb2_pullup.exit

usb3_usb2_pullup.exit:                            ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @usb3_handle_standard_request(ptr noundef %usb3, ptr nocapture noundef readonly %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl, align 1
  %2 = and i8 %1, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %3 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bRequest, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %4, label %if.then.if.end19_crit_edge [
    i8 5, label %sw.bb
    i8 0, label %if.end
    i8 1, label %sw.bb6
    i8 3, label %sw.bb9
    i8 48, label %sw.bb12
    i8 49, label %if.then.if.then18_crit_edge
    i8 9, label %sw.bb16
  ]

if.then.if.then18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

sw.bb:                                            ; preds = %if.then
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %6 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wValue.i, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %8)
  %cmp.i = icmp ugt i16 %8, 127
  br i1 %cmp.i, label %sw.bb.if.then18_crit_edge, label %if.end.i

sw.bb.if.then18_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i16 %8 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %and.i.i = and i32 %shl.i.i, 32512
  %9 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 512
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !175
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %or.i.i.i = or i32 %12, %and.i.i
  %13 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %14, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %15) #12, !srcloc !178
  %16 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i5.i = getelementptr i8, ptr %17, i32 648
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i5.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %19 = and i32 %18, 2147482864
  %20 = or i32 %19, -2147483130
  %21 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb3, align 8
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %22, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %20) #12, !srcloc !178
  br label %if.end19

sw.bb6:                                           ; preds = %if.then
  %call7 = tail call fastcc zeroext i1 @usb3_std_req_feature(ptr noundef %usb3, ptr noundef %ctrl, i1 noundef zeroext false)
  br i1 %call7, label %sw.bb6.if.then18_crit_edge, label %sw.bb6.if.end19_crit_edge

sw.bb6.if.end19_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

sw.bb6.if.then18_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

sw.bb9:                                           ; preds = %if.then
  %call10 = tail call fastcc zeroext i1 @usb3_std_req_feature(ptr noundef %usb3, ptr noundef %ctrl, i1 noundef zeroext true)
  br i1 %call10, label %sw.bb9.if.then18_crit_edge, label %sw.bb9.if.end19_crit_edge

sw.bb9.if.end19_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

sw.bb9.if.then18_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

sw.bb12:                                          ; preds = %if.then
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %23 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %24)
  %cmp.not.i = icmp eq i16 %24, 1536
  br i1 %cmp.not.i, label %do.body.i, label %sw.bb12.if.then18_crit_edge

sw.bb12.if.then18_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

do.body.i:                                        ; preds = %sw.bb12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb3_std_req_set_sel.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb3_handle_standard_request, %usb3_std_req_set_sel.exit)) #12
          to label %if.then5.i [label %usb3_std_req_set_sel.exit], !srcloc !171

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 11, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %ep0_req.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 16
  %27 = ptrtoint ptr %ep0_req.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep0_req.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb3_std_req_set_sel.__UNIQUE_ID_ddebug311, ptr noundef %26, ptr noundef nonnull @.str.39, ptr noundef %28) #12
  br label %usb3_std_req_set_sel.exit

usb3_std_req_set_sel.exit:                        ; preds = %if.then5.i, %do.body.i
  %usb3_ep1.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %29 = ptrtoint ptr %usb3_ep1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb3_ep1.i.i, align 4
  %ep0_buf2.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 19
  %ep0_req.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 16
  %31 = ptrtoint ptr %ep0_req.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep0_req.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ep0_buf2.i.i, ptr %32, align 4
  %34 = load ptr, ptr %ep0_req.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %length.i.i, align 4
  %36 = load ptr, ptr %ep0_req.i.i, align 4
  %complete5.i.i = getelementptr inbounds %struct.usb_request, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %complete5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @usb3_pipe0_set_sel_completion, ptr %complete5.i.i, align 4
  %38 = load ptr, ptr %ep0_req.i.i, align 4
  %call.i.i = tail call i32 @renesas_usb3_ep_queue(ptr noundef %30, ptr noundef %38, i32 noundef 2592) #12
  br label %if.end19

sw.bb16:                                          ; preds = %if.then
  %wValue.i34 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %39 = ptrtoint ptr %wValue.i34 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %wValue.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp.not.i35 = icmp eq i16 %40, 0
  %41 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i1.i = getelementptr i8, ptr %42, i32 512
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp.not.i35, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %44 = or i32 %43, 1
  %45 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %46, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %44) #12, !srcloc !178
  br label %if.end19

if.else.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %47 = and i32 %43, -2
  %48 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i2.i = getelementptr i8, ptr %49, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i2.i, i32 %47) #12, !srcloc !178
  br label %if.end19

if.end:                                           ; preds = %if.then
  %call4 = tail call fastcc zeroext i1 @usb3_std_req_get_status(ptr noundef %usb3, ptr noundef %ctrl)
  br i1 %call4, label %if.end.if.then18_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %if.end.if.then18_crit_edge, %sw.bb12.if.then18_crit_edge, %sw.bb9.if.then18_crit_edge, %sw.bb6.if.then18_crit_edge, %sw.bb.if.then18_crit_edge, %if.then.if.then18_crit_edge
  %50 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 648
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %53 = and i32 %52, 2147482864
  %54 = or i32 %53, -2147483126
  %55 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb3, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %56, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %54) #12, !srcloc !178
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.if.end19_crit_edge, %if.else.i, %if.then.i, %usb3_std_req_set_sel.exit, %sw.bb9.if.end19_crit_edge, %sw.bb6.if.end19_crit_edge, %if.end.i, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %ret.0.off039 = phi i1 [ true, %if.then18 ], [ true, %if.end.if.end19_crit_edge ], [ true, %usb3_std_req_set_sel.exit ], [ true, %sw.bb9.if.end19_crit_edge ], [ true, %sw.bb6.if.end19_crit_edge ], [ false, %if.else.i ], [ false, %if.then.i ], [ true, %if.end.i ], [ false, %entry.if.end19_crit_edge ], [ false, %if.then.if.end19_crit_edge ]
  ret i1 %ret.0.off039
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @usb3_std_req_get_status(ptr noundef %usb3, ptr nocapture noundef readonly %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl, align 1
  %2 = and i8 %1, 31
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and, label %entry.if.end33_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.if.then22_crit_edge
    i32 2, label %sw.bb11
  ]

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

sw.bb:                                            ; preds = %entry
  %is_selfpowered = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 17
  %4 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %5 = lshr i32 %bf.load, 18
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, 1
  %speed = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp eq i32 %9, 5
  br i1 %cmp, label %if.then5, label %sw.bb.if.then22_crit_edge

sw.bb.if.then22_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 832
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %and.i = and i32 %13, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i16 8, i16 0
  %and2.i = and i32 %13, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %14 = or i16 %spec.select.i, 4
  %ret.1.i = select i1 %tobool3.not.i, i16 %14, i16 %spec.select.i
  %or846 = or i16 %ret.1.i, %7
  br label %if.then22

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %15 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wIndex, align 1
  %17 = lshr i16 %16, 8
  %18 = and i16 %17, 15
  %and13 = zext i16 %18 to i32
  %usb3_ep14 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %19 = ptrtoint ptr %usb3_ep14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb3_ep14, align 4
  %halt = getelementptr %struct.renesas_usb3_ep, ptr %20, i32 %and13, i32 8
  %21 = ptrtoint ptr %halt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %halt, align 1, !range !169
  %23 = zext i8 %22 to i16
  br label %if.then22

if.then22:                                        ; preds = %sw.bb11, %if.then5, %sw.bb.if.then22_crit_edge, %entry.if.then22_crit_edge
  %status.1.ph = phi i16 [ %23, %sw.bb11 ], [ %7, %sw.bb.if.then22_crit_edge ], [ %or846, %if.then5 ], [ 0, %entry.if.then22_crit_edge ]
  %24 = tail call i16 @llvm.bswap.i16(i16 %status.1.ph)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb3_std_req_get_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb3_std_req_get_status, %do.end)) #12
          to label %if.then28 [label %do.end], !srcloc !171

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 11, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  %ep0_req = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 16
  %27 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep0_req, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb3_std_req_get_status.__UNIQUE_ID_ddebug310, ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef %28) #12
  br label %do.end

do.end:                                           ; preds = %if.then28, %if.then22
  %usb3_ep1.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %29 = ptrtoint ptr %usb3_ep1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb3_ep1.i, align 4
  %ep0_buf.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 19
  %31 = ptrtoint ptr %ep0_buf.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %24, ptr %ep0_buf.i, align 2
  %ep0_req.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 16
  %32 = ptrtoint ptr %ep0_req.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep0_req.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ep0_buf.i, ptr %33, align 4
  %35 = load ptr, ptr %ep0_req.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %length.i, align 4
  %37 = load ptr, ptr %ep0_req.i, align 4
  %complete5.i = getelementptr inbounds %struct.usb_request, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @usb3_pipe0_get_status_completion, ptr %complete5.i, align 4
  %39 = load ptr, ptr %ep0_req.i, align 4
  %call.i = tail call i32 @renesas_usb3_ep_queue(ptr noundef %30, ptr noundef %39, i32 noundef 2592) #12
  br label %if.end33

if.end33:                                         ; preds = %do.end, %entry.if.end33_crit_edge
  %stall.0.off052 = phi i1 [ false, %do.end ], [ true, %entry.if.end33_crit_edge ]
  ret i1 %stall.0.off052
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @usb3_std_req_feature(ptr nocapture noundef %usb3, ptr nocapture noundef readonly %ctrl, i1 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl, align 1
  %2 = and i8 %1, 31
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and, label %entry.if.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.if.then_crit_edge
    i32 2, label %sw.bb2
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb:                                            ; preds = %entry
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wValue.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #12
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %6, label %sw.bb.if.end_crit_edge [
    i16 2, label %sw.bb.i
    i16 48, label %sw.bb.sw.bb3.i_crit_edge
    i16 49, label %sw.bb.sw.bb3.i_crit_edge27
  ]

sw.bb.sw.bb3.i_crit_edge27:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

sw.bb.sw.bb3.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb.i:                                          ; preds = %sw.bb
  br i1 %set, label %if.end.i, label %sw.bb.i.if.end_crit_edge

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %8 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wIndex.i, align 1
  %10 = and i16 %9, 255
  %test_mode.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 18
  %11 = ptrtoint ptr %test_mode.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %test_mode.i, align 4
  br label %if.then

sw.bb3.i:                                         ; preds = %sw.bb.sw.bb3.i_crit_edge, %sw.bb.sw.bb3.i_crit_edge27
  %speed.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 5
  br i1 %cmp.not.i, label %if.end6.i, label %sw.bb3.i.if.end_crit_edge

sw.bb3.i.if.end_crit_edge:                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end6.i:                                        ; preds = %sw.bb3.i
  %14 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %5, label %if.end6.i.if.then_crit_edge [
    i16 12288, label %if.then10.i
    i16 12544, label %if.then16.i
  ]

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then10.i:                                      ; preds = %if.end6.i
  %15 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 832
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %set, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = and i32 %17, -1342177281
  %19 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %20, i32 832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %18) #12, !srcloc !178
  br label %if.then

if.else.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = or i32 %17, 1342177280
  %22 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i4.i.i = getelementptr i8, ptr %23, i32 832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i4.i.i, i32 %21) #12, !srcloc !178
  br label %if.then

if.then16.i:                                      ; preds = %if.end6.i
  %24 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i28.i = getelementptr i8, ptr %25, i32 832
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i28.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %set, label %if.then.i30.i, label %if.else.i32.i

if.then.i30.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = and i32 %26, 1610612735
  %28 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i.i29.i = getelementptr i8, ptr %29, i32 832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i29.i, i32 %27) #12, !srcloc !178
  br label %if.then

if.else.i32.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = or i32 %26, -1610612736
  %31 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb3, align 8
  %add.ptr.i4.i4.i31.i = getelementptr i8, ptr %32, i32 832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i4.i31.i, i32 %30) #12, !srcloc !178
  br label %if.then

sw.bb2:                                           ; preds = %entry
  %wValue.i14 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %33 = ptrtoint ptr %wValue.i14 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %wValue.i14, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.not.i15 = icmp eq i16 %34, 0
  br i1 %cmp.not.i15, label %if.end.i17, label %sw.bb2.if.end_crit_edge

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i17:                                       ; preds = %sw.bb2
  %wIndex.i16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %35 = ptrtoint ptr %wIndex.i16 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %wIndex.i16, align 1
  %37 = lshr i16 %36, 8
  %38 = and i16 %37, 15
  %and.i = zext i16 %38 to i32
  %usb3_ep3.i = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %39 = ptrtoint ptr %usb3_ep3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb3_ep3.i, align 4
  %add.ptr.i = getelementptr %struct.renesas_usb3_ep, ptr %40, i32 %and.i
  %call.i = tail call fastcc i32 @usb3_set_halt(ptr noundef %add.ptr.i, i1 noundef zeroext %set, i1 noundef zeroext true) #12
  br i1 %set, label %if.end.i17.if.then_crit_edge, label %if.then5.i

if.end.i17.if.then_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then5.i:                                       ; preds = %if.end.i17
  %started.i = getelementptr %struct.renesas_usb3_ep, ptr %40, i32 %and.i, i32 10
  %41 = ptrtoint ptr %started.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %started.i, align 1
  %usb31.i.i = getelementptr %struct.renesas_usb3_ep, ptr %40, i32 %and.i, i32 1
  %42 = ptrtoint ptr %usb31.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb31.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.renesas_usb3, ptr %43, i32 0, i32 14
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  %queue.i.i.i = getelementptr %struct.renesas_usb3_ep, ptr %40, i32 %and.i, i32 5
  %44 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %queue.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %45, %queue.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 -56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #12
  %tobool7.not19.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool7.not.i = or i1 %cmp.not.i.i.i, %tobool7.not19.i
  br i1 %tobool7.not.i, label %if.then5.i.if.then_crit_edge, label %if.then8.i

if.then5.i.if.then_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_pipen(ptr noundef %add.ptr.i, ptr noundef nonnull %add.ptr.i.i.i) #12
  br label %if.then

if.then:                                          ; preds = %if.then8.i, %if.then5.i.if.then_crit_edge, %if.end.i17.if.then_crit_edge, %if.else.i32.i, %if.then.i30.i, %if.else.i.i, %if.then.i.i, %if.end6.i.if.then_crit_edge, %if.end.i, %entry.if.then_crit_edge
  %46 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb3, align 8
  %add.ptr.i.i.i18 = getelementptr i8, ptr %47, i32 648
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i18) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %49 = and i32 %48, 2147482864
  %50 = or i32 %49, -2147483130
  %51 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb3, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %52, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %50) #12, !srcloc !178
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2.if.end_crit_edge, %sw.bb3.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge, %sw.bb.if.end_crit_edge, %entry.if.end_crit_edge
  %stall.0.shrunk21 = phi i1 [ false, %if.then ], [ true, %sw.bb2.if.end_crit_edge ], [ true, %sw.bb.if.end_crit_edge ], [ true, %sw.bb3.i.if.end_crit_edge ], [ true, %sw.bb.i.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ]
  ret i1 %stall.0.shrunk21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usb3_pipe0_get_status_completion(ptr nocapture noundef %ep, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usb3_pipe0_set_sel_completion(ptr nocapture noundef %ep, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3_irq_epc_pipen_lsttr(ptr noundef %usb3, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb3_ep1 = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 11
  %0 = ptrtoint ptr %usb3_ep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3_ep1, align 4
  %add.ptr = getelementptr %struct.renesas_usb3_ep, ptr %1, i32 %num
  %usb31.i = getelementptr %struct.renesas_usb3_ep, ptr %1, i32 %num, i32 1
  %2 = ptrtoint ptr %usb31.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb31.i, align 4
  %lock.i = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 14
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %queue.i.i = getelementptr %struct.renesas_usb3_ep, ptr %1, i32 %num, i32 5
  %4 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %5, %queue.i.i
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #12
  %tobool.not22 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = or i1 %cmp.not.i.i, %tobool.not22
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dir_in = getelementptr %struct.renesas_usb3_ep, ptr %1, i32 %num, i32 7
  %6 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dir_in, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb3_irq_epc_pipen_lsttr.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb3_irq_epc_pipen_lsttr, %do.end)) #12
          to label %if.then9 [label %do.end], !srcloc !171

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %usb3, i32 0, i32 1, i32 11, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %length = getelementptr i8, ptr %5, i32 -52
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %actual = getelementptr i8, ptr %5, i32 -4
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb3_irq_epc_pipen_lsttr.__UNIQUE_ID_ddebug312, ptr noundef %9, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %11, i32 noundef %13) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call fastcc void @usb3_request_done_pipen(ptr noundef %usb3, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr.i.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 536
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not.i, ptr @.str.44, ptr @.str.45
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %forced_b_device = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %forced_b_device to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %forced_b_device, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.44) #12
  br i1 %call4, label %if.end3.if.end10_crit_edge, label %if.else

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else:                                          ; preds = %if.end3
  %call6 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.45) #12
  br i1 %call6, label %if.else.if.end10_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %10 = xor i1 %call4, %tobool.not.i
  br i1 %10, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr.i.i26 = getelementptr i8, ptr %12, i32 616
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i27 = icmp eq i32 %14, 0
  tail call fastcc void @usb3_mode_config(ptr noundef %1, i1 noundef zeroext %call4, i1 noundef zeroext %tobool.not.i27)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end16 ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_role_switch_set(ptr noundef %sw, i32 noundef %role) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #12
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %call, i32 0, i32 1, i32 11, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %role_sw_by_connector = getelementptr inbounds %struct.renesas_usb3, ptr %call, i32 0, i32 26
  %2 = ptrtoint ptr %role_sw_by_connector to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role_sw_by_connector, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i.i17 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i17, align 4
  %host_dev.i18 = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %host_dev.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_dev.i18, align 8
  %role_sw.i19 = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %role_sw.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %role_sw.i19, align 4
  %call.i.i20 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %11) #12
  %parent.i.i21 = getelementptr inbounds %struct.renesas_usb3, ptr %call.i.i20, i32 0, i32 1, i32 11, i32 1
  %12 = ptrtoint ptr %parent.i.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i21, align 8
  %call.i.i.i22 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #12
  %14 = ptrtoint ptr %call.i.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i.i20, align 8
  %add.ptr.i.i.i.i23 = getelementptr i8, ptr %15, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i24 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %parent.i.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i21, align 8
  %call.i9.i.i25 = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %20 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %role, label %if.then.if.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 1, label %sw.bb21.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  %connection_state.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 17
  %21 = ptrtoint ptr %connection_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %connection_state.i, align 8
  br i1 %tobool.not.i.i.i24, label %if.then.i, label %sw.bb.i.if.end.i_crit_edge

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_release_driver(ptr noundef %9) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.i.if.end.i_crit_edge
  %driver.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_disconnect(ptr noundef %7) #12
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i75.i = getelementptr i8, ptr %25, i32 536
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %27 = and i32 %26, -16777217
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %7, align 8
  %add.ptr.i4.i3.i.i = getelementptr i8, ptr %29, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i.i, i32 %27) #12, !srcloc !178
  br label %if.end

sw.bb4.i:                                         ; preds = %if.then
  %connection_state5.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 17
  %30 = ptrtoint ptr %connection_state5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %connection_state5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp6.i = icmp eq i32 %31, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %sw.bb4.i
  %32 = ptrtoint ptr %connection_state5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %connection_state5.i, align 8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i76.i = getelementptr i8, ptr %34, i32 536
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i76.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %36 = or i32 %35, 1
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %7, align 8
  %add.ptr.i4.i3.i77.i = getelementptr i8, ptr %38, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i77.i, i32 %36) #12, !srcloc !178
  %driver9.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 2
  %39 = ptrtoint ptr %driver9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver9.i, align 8
  %tobool10.not.i = icmp eq ptr %40, null
  br i1 %tobool10.not.i, label %if.then7.i.if.end20.i_crit_edge, label %if.then11.i

if.then7.i.if.end20.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then11.i:                                      ; preds = %if.then7.i
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %42, i32 520
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i78.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i78.i, label %if.then.i.i, label %usb3_wakeup_usb3_phy.exit.i.i

usb3_wakeup_usb3_phy.exit.i.i:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %7, align 8
  %add.ptr.i.i3.i.i.i = getelementptr i8, ptr %46, i32 520
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %48 = or i32 %47, 32768
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %50, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %48) #12, !srcloc !178
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %52, i32 552
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %54 = or i32 %53, 128
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i.i.i.i = getelementptr i8, ptr %56, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i.i, i32 %54) #12, !srcloc !178
  br label %if.end20.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_usb3_connection(ptr noundef %7) #12
  br label %if.end20.i

if.else.i:                                        ; preds = %sw.bb4.i
  br i1 %tobool.not.i.i.i24, label %if.then14.i, label %if.else.i.if.end20.i_crit_edge

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.else.i
  tail call void @device_release_driver(ptr noundef %9) #12
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i79.i = getelementptr i8, ptr %58, i32 536
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i79.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %60 = or i32 %59, 1
  %61 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %7, align 8
  %add.ptr.i4.i3.i80.i = getelementptr i8, ptr %62, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i80.i, i32 %60) #12, !srcloc !178
  %driver15.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 2
  %63 = ptrtoint ptr %driver15.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver15.i, align 8
  %tobool16.not.i = icmp eq ptr %64, null
  br i1 %tobool16.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then17.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.then14.i
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i.i81.i = getelementptr i8, ptr %66, i32 520
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i81.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %68 = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i82.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i82.i, label %if.then.i88.i, label %usb3_wakeup_usb3_phy.exit.i87.i

usb3_wakeup_usb3_phy.exit.i87.i:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %7, align 8
  %add.ptr.i.i3.i.i83.i = getelementptr i8, ptr %70, i32 520
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i83.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %72 = or i32 %71, 32768
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i.i84.i = getelementptr i8, ptr %74, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i84.i, i32 %72) #12, !srcloc !178
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i.i.i85.i = getelementptr i8, ptr %76, i32 552
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i85.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %78 = or i32 %77, 128
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i.i.i86.i = getelementptr i8, ptr %80, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i86.i, i32 %78) #12, !srcloc !178
  br label %if.end20.i

if.then.i88.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_start_usb3_connection(ptr noundef %7) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then.i88.i, %usb3_wakeup_usb3_phy.exit.i87.i, %if.then14.i.if.end20.i_crit_edge, %if.else.i.if.end20.i_crit_edge, %if.then.i.i, %usb3_wakeup_usb3_phy.exit.i.i, %if.then7.i.if.end20.i_crit_edge
  %81 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i90.i = getelementptr i8, ptr %82, i32 536
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i90.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %84 = and i32 %83, -16777217
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %7, align 8
  %add.ptr.i4.i3.i91.i = getelementptr i8, ptr %86, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i91.i, i32 %84) #12, !srcloc !178
  br label %if.end

sw.bb21.i:                                        ; preds = %if.then
  %connection_state22.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 17
  %87 = ptrtoint ptr %connection_state22.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %connection_state22.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp23.i = icmp eq i32 %88, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.else34.i

if.then24.i:                                      ; preds = %sw.bb21.i
  %driver25.i = getelementptr inbounds %struct.renesas_usb3, ptr %7, i32 0, i32 2
  %89 = ptrtoint ptr %driver25.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver25.i, align 8
  %tobool26.not.i = icmp eq ptr %90, null
  br i1 %tobool26.not.i, label %if.then24.i.if.end28.i_crit_edge, label %if.then27.i

if.then24.i.if.end28.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usb3_disconnect(ptr noundef %7) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.then24.i.if.end28.i_crit_edge
  %91 = ptrtoint ptr %connection_state22.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %connection_state22.i, align 8
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i92.i = getelementptr i8, ptr %93, i32 536
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i92.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %95 = and i32 %94, -2
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %97, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %95) #12, !srcloc !178
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i94.i = getelementptr i8, ptr %99, i32 536
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i94.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %101 = or i32 %100, 16777216
  %102 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i95.i = getelementptr i8, ptr %103, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i95.i, i32 %101) #12, !srcloc !178
  %call30.i = tail call i32 @device_attach(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end.i, label %if.end28.i.if.end_crit_edge

if.end28.i.if.end_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i:                                         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46) #15
  br label %if.end

if.else34.i:                                      ; preds = %sw.bb21.i
  br i1 %tobool.not.i.i.i24, label %if.else34.i.if.end_crit_edge, label %if.then36.i

if.else34.i.if.end_crit_edge:                     ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then36.i:                                      ; preds = %if.else34.i
  tail call fastcc void @usb3_disconnect(ptr noundef %7) #12
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i97.i = getelementptr i8, ptr %105, i32 536
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i97.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %107 = and i32 %106, -2
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i98.i = getelementptr i8, ptr %109, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i98.i, i32 %107) #12, !srcloc !178
  %call37.i = tail call i32 @device_attach(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %if.then36.i.if.end_crit_edge

if.then36.i.if.end_crit_edge:                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end42.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %role)
  %cmp2.i = icmp eq i32 %role, 2
  %or.cond.i = and i1 %cmp2.i, %tobool.not.i.i.i24
  br i1 %or.cond.i, label %if.then.i27, label %if.else.i28

if.then.i27:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_release_driver(ptr noundef %9) #12
  %110 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i20.i = getelementptr i8, ptr %111, i32 536
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i20.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %113 = or i32 %112, 1
  %114 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %7, align 8
  %add.ptr.i4.i3.i.i26 = getelementptr i8, ptr %115, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3.i.i26, i32 %113) #12, !srcloc !178
  br label %if.end

if.else.i28:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp5.i = icmp ne i32 %role, 1
  %116 = or i1 %cmp5.i, %tobool.not.i.i.i24
  br i1 %116, label %if.else.i28.if.end_crit_edge, label %if.then6.i

if.else.i28.if.end_crit_edge:                     ; preds = %if.else.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then6.i:                                       ; preds = %if.else.i28
  %117 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i21.i = getelementptr i8, ptr %118, i32 536
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i21.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %120 = and i32 %119, -2
  %121 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %7, align 8
  %add.ptr.i4.i.i.i29 = getelementptr i8, ptr %122, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i29, i32 %120) #12, !srcloc !178
  %call7.i = tail call i32 @device_attach(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end.i30, label %if.then6.i.if.end_crit_edge

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i30:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46) #15
  br label %if.end

if.end:                                           ; preds = %do.end.i30, %if.then6.i.if.end_crit_edge, %if.else.i28.if.end_crit_edge, %if.then.i27, %do.end42.i, %if.then36.i.if.end_crit_edge, %if.else34.i.if.end_crit_edge, %do.end.i, %if.end28.i.if.end_crit_edge, %if.end20.i, %if.end3.i, %if.then.if.end_crit_edge
  %123 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %parent, align 8
  %call.i31 = tail call i32 @__pm_runtime_idle(ptr noundef %124, i32 noundef 5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_role_switch_get(ptr noundef %sw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #12
  %parent = getelementptr inbounds %struct.renesas_usb3, ptr %call, i32 0, i32 1, i32 11, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 536
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not.i, i32 1, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #12
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_b_device_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %driver = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 2
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %7, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %7, i32 -1226833920) #17, !srcloc !183
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !180

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %7) #12
  %9 = call i32 @llvm.read_register.i32(metadata !159) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !184
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !185
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !186
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %7) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !185
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !186
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %7, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %7, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !180

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %7, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %start_to_connect = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 25
  %13 = ptrtoint ptr %start_to_connect to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %start_to_connect, align 1
  %workaround_for_vbus = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %workaround_for_vbus to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %workaround_for_vbus, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.end3.if.elsethread-pre-split_crit_edge, label %land.lhs.true

if.end3.if.elsethread-pre-split_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.elsethread-pre-split

land.lhs.true:                                    ; preds = %if.end3
  %forced_b_device = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 24
  %16 = ptrtoint ptr %forced_b_device to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %forced_b_device, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %land.lhs.true.if.elsethread-pre-split_crit_edge, label %land.lhs.true6

land.lhs.true.if.elsethread-pre-split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.elsethread-pre-split

land.lhs.true6:                                   ; preds = %land.lhs.true
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %lhsc38 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %lhsc38)
  %tobool8.not = icmp eq i8 %lhsc38, 50
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %start_to_connect to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %start_to_connect, align 1
  br label %if.end19

if.elsethread-pre-split:                          ; preds = %land.lhs.true.if.elsethread-pre-split_crit_edge, %if.end3.if.elsethread-pre-split_crit_edge
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %lhsc.pr = load i8, ptr %buf, align 1
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %land.lhs.true6.if.else_crit_edge
  %lhsc = phi i8 [ %lhsc.pr, %if.elsethread-pre-split ], [ %lhsc38, %land.lhs.true6.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %lhsc)
  %tobool13.not = icmp eq i8 %lhsc, 49
  %forced_b_device15 = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 24
  br i1 %tobool13.not, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %forced_b_device15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %forced_b_device15, align 2
  br label %if.end19

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %forced_b_device15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %forced_b_device15, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then14, %if.then9
  %23 = ptrtoint ptr %workaround_for_vbus to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %workaround_for_vbus, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not = icmp eq i8 %24, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @usb3_disconnect(ptr noundef %3)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 616
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp ne i32 %28, 0
  %extcon_host.i = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 22
  %.lobit.i = lshr exact i32 %28, 28
  %29 = trunc i32 %.lobit.i to i8
  %30 = xor i8 %29, 1
  %31 = ptrtoint ptr %extcon_host.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %extcon_host.i, align 8
  %role_sw_by_connector.i = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 26
  %32 = ptrtoint ptr %role_sw_by_connector.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %role_sw_by_connector.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp ne i8 %33, 0
  %brmerge.i = select i1 %tobool.not.i, i1 true, i1 %tobool.not.i.i
  br i1 %brmerge.i, label %if.end23.lor.lhs.false.i_crit_edge, label %land.lhs.true3.i

if.end23.lor.lhs.false.i_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true3.i:                                 ; preds = %if.end23
  %forced_b_device.i = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 24
  %34 = ptrtoint ptr %forced_b_device.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %forced_b_device.i, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool4.not.i = icmp eq i8 %35, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.then.i39_crit_edge, label %land.lhs.true3.i.lor.lhs.false.i_crit_edge

land.lhs.true3.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true3.i.if.then.i39_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i39

lor.lhs.false.i:                                  ; preds = %land.lhs.true3.i.lor.lhs.false.i_crit_edge, %if.end23.lor.lhs.false.i_crit_edge
  %connection_state.i = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 17
  %36 = ptrtoint ptr %connection_state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %connection_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i = icmp eq i32 %37, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i39_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i39_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i39

if.then.i39:                                      ; preds = %lor.lhs.false.i.if.then.i39_crit_edge, %land.lhs.true3.i.if.then.i39_crit_edge
  call fastcc void @usb3_mode_config(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %usb3_check_id.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @usb3_mode_config(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %usb3_check_id.exit

usb3_check_id.exit:                               ; preds = %if.else.i, %if.then.i39
  %extcon_work.i = getelementptr inbounds %struct.renesas_usb3, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i.i40 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %extcon_work.i) #12
  br label %cleanup

cleanup:                                          ; preds = %usb3_check_id.exit, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %usb3_check_id.exit ], [ -19, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_b_device_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @renesas_usb3_b_device_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_b_device_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %forced_b_device = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %forced_b_device to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %forced_b_device, align 2, !range !169
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @usb3_disconnect(ptr noundef %1) #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 660
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !178
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #12, !srcloc !178
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #12, !srcloc !178
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %11, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #12, !srcloc !178
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #12, !srcloc !178
  %phy = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %tobool1.not = icmp eq ptr %15, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @phy_exit(ptr noundef nonnull %15) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usb3_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.renesas_usb3, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @phy_init(ptr noundef nonnull %5) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  tail call fastcc void @renesas_usb3_init_controller(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !43, !45, !46, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !143, !145, !147, !149, !151, !153, !155, !157}
!llvm.named.register.sp = !{!159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__param_use_dma, !1, !"__param_use_dma", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 393, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_dmatype295, !1, !"__UNIQUE_ID_use_dmatype295", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_dma296, !4, !"__UNIQUE_ID_use_dma296", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 394, i32 1}
!5 = !{ptr @__initcall__kmod_renesas_usb3__318_2916_renesas_usb3_driver_init6, !6, !"__initcall__kmod_renesas_usb3__318_2916_renesas_usb3_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2916, i32 1}
!7 = !{ptr @__exitcall_renesas_usb3_driver_exit, !6, !"__exitcall_renesas_usb3_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description319, !9, !"__UNIQUE_ID_description319", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2918, i32 1}
!10 = !{ptr @__UNIQUE_ID_file320, !11, !"__UNIQUE_ID_file320", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2919, i32 1}
!12 = !{ptr @__UNIQUE_ID_license321, !11, !"__UNIQUE_ID_license321", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author322, !14, !"__UNIQUE_ID_author322", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2920, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias323, !16, !"__UNIQUE_ID_alias323", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2921, i32 1}
!17 = !{ptr @__param_str_use_dma, !1, !"__param_str_use_dma", i1 false, i1 false}
!18 = !{ptr @use_dma, !19, !"use_dma", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 392, i32 13}
!20 = !{ptr @renesas_usb3_driver, !21, !"renesas_usb3_driver", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2907, i32 31}
!22 = !{ptr @renesas_usb3_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2774, i32 2}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @renesas_usb3_probe.__key.1, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2790, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2797, i32 3}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @renesas_usb3_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @renesas_usb3_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2814, i32 48}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2829, i32 44}
!40 = !{ptr @renesas_usb3_probe.__key.10, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2836, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2854, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @renesas_usb3_probe._entry.12, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @renesas_usb3_probe._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2730, i32 36}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2730, i32 13}
!54 = !{ptr @renesas_usb3_quirks_match, !55, !"renesas_usb3_quirks_match", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2728, i32 42}
!56 = !{ptr @renesas_usb3_priv_r8a7795_es1, !57, !"renesas_usb3_priv_r8a7795_es1", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2690, i32 39}
!58 = !{ptr @renesas_usb3_gadget_ops, !59, !"renesas_usb3_gadget_ops", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2351, i32 36}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2601, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @renesas_usb3_init_ep.__UNIQUE_ID_ddebug316, !61, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2608, i32 56}
!67 = !{ptr @renesas_usb3_ep_ops, !68, !"renesas_usb3_ep_ops", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2273, i32 32}
!69 = distinct !{null, !70, !"max_packet_array", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2120, i32 19}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 433, i32 2}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @usb3_wait.__UNIQUE_ID_ddebug297, !72, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 912, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__usb3_request_done.__UNIQUE_ID_ddebug299, !76, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 1537, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @renesas_usb3_ep_queue.__UNIQUE_ID_ddebug307, !80, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 1269, i32 3}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @usb3_dma_get_setting_area.__UNIQUE_ID_ddebug304, !84, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2233, i32 2}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @renesas_usb3_ep_dequeue.__UNIQUE_ID_ddebug313, !88, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2677, i32 3}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @renesas_usb3_init_ram.__UNIQUE_ID_ddebug317, !92, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 1625, i32 3}
!97 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @usb3_std_req_get_status.__UNIQUE_ID_ddebug310, !96, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 1782, i32 2}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @usb3_std_req_set_sel.__UNIQUE_ID_ddebug311, !100, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 1933, i32 3}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @usb3_irq_epc_pipen_lsttr.__UNIQUE_ID_ddebug312, !104, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!107 = !{ptr @renesas_usb3_cable, !108, !"renesas_usb3_cable", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2736, i32 27}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2498, i32 8}
!111 = !{ptr @dev_attr_role, !110, !"dev_attr_role", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2496, i32 22}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2496, i32 51}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2496, i32 60}
!118 = !{ptr @renesas_usb3_role_switch_desc, !119, !"renesas_usb3_role_switch_desc", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2742, i32 36}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2410, i32 5}
!122 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @handle_ext_role_switch_states._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @handle_ext_role_switch_states._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @handle_ext_role_switch_states._entry.48, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2417, i32 5}
!127 = !{ptr @handle_ext_role_switch_states._entry_ptr.49, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2440, i32 4}
!130 = !{ptr @handle_role_switch_states._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @handle_role_switch_states._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2559, i32 22}
!134 = !{ptr @renesas_usb3_b_device_fops, !135, !"renesas_usb3_b_device_fops", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2546, i32 37}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2530, i32 20}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2532, i32 25}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!142 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2504, i32 16}
!149 = !{ptr @udc_name, !150, !"udc_name", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 390, i32 19}
!151 = !{ptr @usb3_of_match, !152, !"usb3_of_match", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2710, i32 34}
!153 = !{ptr @renesas_usb3_priv_r8a77990, !154, !"renesas_usb3_priv_r8a77990", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2703, i32 39}
!155 = !{ptr @renesas_usb3_priv_gen3, !156, !"renesas_usb3_priv_gen3", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2697, i32 39}
!157 = !{ptr @renesas_usb3_pm_ops, !158, !"renesas_usb3_pm_ops", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/renesas_usb3.c", i32 2904, i32 8}
!159 = !{!"sp"}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i8 0, i8 2}
!170 = !{!"branch_weights", i32 1, i32 2000}
!171 = !{i64 2148562873, i64 2148562878, i64 2148562891, i64 2148562935, i64 2148562969, i64 2148562990}
!172 = distinct !{!172, !173}
!173 = !{!"llvm.loop.peeled.count", i32 1}
!174 = distinct !{!174, !173}
!175 = !{i64 6333849}
!176 = !{i64 2153874198}
!177 = !{i64 2153875553}
!178 = !{i64 6333431}
!179 = !{i32 -5, i32 1}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{i64 2155477019}
!182 = !{i64 2155476645}
!183 = !{i64 2152250754, i64 2152250779}
!184 = !{i64 4746309}
!185 = !{i64 4746506}
!186 = !{i64 2152231739}
