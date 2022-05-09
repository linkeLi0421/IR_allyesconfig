; ModuleID = '/llk/IR_all_yes/drivers/vfio/pci/vfio_pci.c_pt.bc'
source_filename = "../drivers/vfio/pci/vfio_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfio_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }

@__param_str_ids = internal constant [13 x i8] c"vfio_pci.ids\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_ids = internal constant %struct.kparam_string { i32 1024, ptr @ids }, align 4
@__param_ids = internal constant %struct.kernel_param { ptr @__param_str_ids, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_ids } }, section "__param", align 4
@__UNIQUE_ID_idstype237 = internal constant [29 x i8] c"vfio_pci.parmtype=ids:string\00", section ".modinfo", align 1
@__UNIQUE_ID_ids238 = internal constant [186 x i8] c"vfio_pci.parm=ids:Initial PCI IDs to add to the vfio driver, format is \22vendor:device[:subvendor[:subdevice[:class[:class_mask]]]]\22 and multiple comma separated entries can be specified\00", section ".modinfo", align 1
@__param_str_nointxmask = internal constant [20 x i8] c"vfio_pci.nointxmask\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nointxmask = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nointxmask = internal constant %struct.kernel_param { ptr @__param_str_nointxmask, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @nointxmask } }, section "__param", align 4
@__UNIQUE_ID_nointxmasktype239 = internal constant [34 x i8] c"vfio_pci.parmtype=nointxmask:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nointxmask240 = internal constant [247 x i8] c"vfio_pci.parm=nointxmask:Disable support for PCI 2.3 style INTx masking.  If this resolves problems for specific devices, report lspci -vvvxxx to linux-pci@vger.kernel.org so the device can be fixed automatically via the broken_intx_masking flag.\00", section ".modinfo", align 1
@__param_str_disable_idle_d3 = internal constant [25 x i8] c"vfio_pci.disable_idle_d3\00", align 1
@disable_idle_d3 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_idle_d3 = internal constant %struct.kernel_param { ptr @__param_str_disable_idle_d3, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @disable_idle_d3 } }, section "__param", align 4
@__UNIQUE_ID_disable_idle_d3type241 = internal constant [39 x i8] c"vfio_pci.parmtype=disable_idle_d3:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_idle_d3242 = internal constant [96 x i8] c"vfio_pci.parm=disable_idle_d3:Disable using the PCI D3 low power state for idle, unused devices\00", section ".modinfo", align 1
@__param_str_enable_sriov = internal constant [22 x i8] c"vfio_pci.enable_sriov\00", align 1
@enable_sriov = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_sriov = internal constant %struct.kernel_param { ptr @__param_str_enable_sriov, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @enable_sriov } }, section "__param", align 4
@__UNIQUE_ID_enable_sriovtype243 = internal constant [36 x i8] c"vfio_pci.parmtype=enable_sriov:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_sriov244 = internal constant [222 x i8] c"vfio_pci.parm=enable_sriov:Enable support for SR-IOV configuration.  Enabling SR-IOV on a PF typically requires support of the userspace PF driver, enabling VFs without such support may result in non-functional VFs or PF.\00", section ".modinfo", align 1
@__param_str_disable_denylist = internal constant [26 x i8] c"vfio_pci.disable_denylist\00", align 1
@disable_denylist = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_denylist = internal constant %struct.kernel_param { ptr @__param_str_disable_denylist, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @disable_denylist } }, section "__param", align 4
@__UNIQUE_ID_disable_denylisttype245 = internal constant [40 x i8] c"vfio_pci.parmtype=disable_denylist:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_denylist246 = internal constant [222 x i8] c"vfio_pci.parm=disable_denylist:Disable use of device denylist. Disabling the denylist allows binding to devices with known errata that may lead to exploitable stability or security issues when accessed by untrusted users.\00", section ".modinfo", align 1
@__initcall__kmod_vfio_pci__247_262_vfio_pci_init6 = internal global ptr @vfio_pci_init, section ".initcall6.init", align 4
@vfio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.14, ptr @vfio_pci_table, ptr @vfio_pci_probe, ptr @vfio_pci_remove, ptr null, ptr null, ptr null, ptr @vfio_pci_sriov_configure, ptr null, ptr null, ptr @vfio_pci_core_err_handlers, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vfio_pci_cleanup = internal global ptr @vfio_pci_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [40 x i8] c"vfio_pci.file=drivers/vfio/pci/vfio-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [24 x i8] c"vfio_pci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [61 x i8] c"vfio_pci.author=Alex Williamson <alex.williamson@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [55 x i8] c"vfio_pci.description=VFIO PCI - User Level meta-driver\00", section ".modinfo", align 1
@ids = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfio_pci\00", [23 x i8] zeroinitializer }, align 32
@vfio_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014vfio_pci: device denylist disabled.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vfio_pci_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/vfio/pci/vfio_pci.c\00", [36 x i8] zeroinitializer }, align 32
@vfio_pci_init._entry_ptr = internal global ptr @vfio_pci_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%x:%x:%x:%x:%x:%x\00", [46 x i8] zeroinitializer }, align 32
@vfio_pci_fill_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014vfio_pci: invalid id string \22%s\22\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vfio_pci_fill_ids\00", [46 x i8] zeroinitializer }, align 32
@vfio_pci_fill_ids._entry_ptr = internal global ptr @vfio_pci_fill_ids._entry, section ".printk_index", align 4
@vfio_pci_fill_ids._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014vfio_pci: failed to add dynamic id [%04x:%04x[%04x:%04x]] class %#08x/%08x (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@vfio_pci_fill_ids._entry_ptr.10 = internal global ptr @vfio_pci_fill_ids._entry.8, section ".printk_index", align 4
@vfio_pci_fill_ids._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016vfio_pci: add [%04x:%04x[%04x:%04x]] class %#08x/%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@vfio_pci_fill_ids._entry_ptr.13 = internal global ptr @vfio_pci_fill_ids._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfio-pci\00", [23 x i8] zeroinitializer }, align 32
@vfio_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 1 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vfio_pci_core_err_handlers = external dso_local constant %struct.pci_error_handlers, align 4
@vfio_pci_ops = internal constant { %struct.vfio_device_ops, [60 x i8] } { %struct.vfio_device_ops { ptr @.str.14, ptr @vfio_pci_open_device, ptr @vfio_pci_core_close_device, ptr @vfio_pci_core_read, ptr @vfio_pci_core_write, ptr @vfio_pci_core_ioctl, ptr @vfio_pci_core_mmap, ptr @vfio_pci_core_request, ptr @vfio_pci_core_match }, [60 x i8] zeroinitializer }, align 32
@vfio_pci_is_denylisted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 91, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"device denylist disabled - allowing device %04x:%04x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vfio_pci_is_denylisted\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfio_pci_is_denylisted._entry_ptr = internal global ptr @vfio_pci_is_denylisted._entry, section ".printk_index", align 4
@vfio_pci_is_denylisted._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 96, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%04x:%04x exists in vfio-pci device denylist, driver probing disallowed.\0A\00", [54 x i8] zeroinitializer }, align 32
@vfio_pci_is_denylisted._entry_ptr.21 = internal global ptr @vfio_pci_is_denylisted._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vfio_pci_open_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 117, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to setup Intel IGD regions\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vfio_pci_open_device\00", [43 x i8] zeroinitializer }, align 32
@vfio_pci_open_device._entry_ptr = internal global ptr @vfio_pci_open_device._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 1077, i64 1091, i64 6626, i64 6627, i64 14280, i64 14281]
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"nointxmask\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 37, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"disable_idle_d3\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 48, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"enable_sriov\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 53, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"disable_denylist\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 59, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"vfio_pci_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 189, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 251, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 258, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 209, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 217, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 222, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 229, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 233, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 190, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"vfio_pci_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 182, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"vfio_pci_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 128, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 89, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 95, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [31 x i8] c"../drivers/vfio/pci/vfio_pci.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 117, i32 4 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_disable_denylist246, ptr @__UNIQUE_ID_disable_denylisttype245, ptr @__UNIQUE_ID_disable_idle_d3242, ptr @__UNIQUE_ID_disable_idle_d3type241, ptr @__UNIQUE_ID_enable_sriov244, ptr @__UNIQUE_ID_enable_sriovtype243, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_ids238, ptr @__UNIQUE_ID_idstype237, ptr @__UNIQUE_ID_license249, ptr @__UNIQUE_ID_nointxmask240, ptr @__UNIQUE_ID_nointxmasktype239, ptr @__exitcall_vfio_pci_cleanup, ptr @__initcall__kmod_vfio_pci__247_262_vfio_pci_init6, ptr @__param_disable_denylist, ptr @__param_disable_idle_d3, ptr @__param_enable_sriov, ptr @__param_ids, ptr @__param_nointxmask, ptr @vfio_pci_cleanup, ptr @vfio_pci_fill_ids._entry, ptr @vfio_pci_fill_ids._entry.11, ptr @vfio_pci_fill_ids._entry.8, ptr @vfio_pci_fill_ids._entry_ptr, ptr @vfio_pci_fill_ids._entry_ptr.10, ptr @vfio_pci_fill_ids._entry_ptr.13, ptr @vfio_pci_init._entry, ptr @vfio_pci_init._entry_ptr, ptr @vfio_pci_is_denylisted._entry, ptr @vfio_pci_is_denylisted._entry.19, ptr @vfio_pci_is_denylisted._entry_ptr, ptr @vfio_pci_is_denylisted._entry_ptr.21, ptr @vfio_pci_open_device._entry, ptr @vfio_pci_open_device._entry_ptr, ptr @nointxmask, ptr @disable_idle_d3, ptr @enable_sriov, ptr @disable_denylist, ptr @vfio_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @vfio_pci_table, ptr @vfio_pci_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nointxmask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_idle_d3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_sriov to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_denylist to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_fill_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_fill_ids._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_fill_ids._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_is_denylisted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_is_denylisted._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_pci_open_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nointxmask, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  %1 = load i8, ptr @disable_idle_d3, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2 = icmp ne i8 %1, 0
  tail call void @vfio_pci_core_set_params(i1 noundef zeroext %tobool, i1 noundef zeroext true, i1 noundef zeroext %tobool2) #7
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vfio_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @vfio_pci_fill_ids() #10
  %2 = load i8, ptr @disable_denylist, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vfio_pci_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @vfio_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_core_set_params(i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_pci_fill_ids() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %p = alloca ptr, align 4
  %vendor = alloca i32, align 4
  %device = alloca i32, align 4
  %subvendor = alloca i32, align 4
  %subdevice = alloca i32, align 4
  %class = alloca i32, align 4
  %class_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #7
  %0 = load i8, ptr @ids, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ids, ptr %p, align 4
  %call40 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.4) #7
  %tobool.not41 = icmp eq ptr %call40, null
  br i1 %tobool.not41, label %if.end.cleanup32_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %call42 = phi ptr [ %call, %cleanup.while.body_crit_edge ], [ %call40, %if.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendor) #7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vendor, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #7
  %3 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %device, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subvendor) #7
  %4 = ptrtoint ptr %subvendor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %subvendor, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subdevice) #7
  %5 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %subdevice, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class) #7
  %6 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %class, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class_mask) #7
  %7 = ptrtoint ptr %class_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %class_mask, align 4
  %8 = ptrtoint ptr %call42 to i32
  call void @__asan_load1_noabort(i32 %8)
  %char0 = load i8, ptr %call42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool3.not = icmp eq i8 %char0, 0
  br i1 %tobool3.not, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call42, ptr noundef nonnull @.str.5, ptr noundef nonnull %vendor, ptr noundef nonnull %device, ptr noundef nonnull %subvendor, ptr noundef nonnull %subdevice, ptr noundef nonnull %class, ptr noundef nonnull %class_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 2
  br i1 %cmp7, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %call42) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vendor, align 4
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device, align 4
  %13 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %subvendor, align 4
  %15 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %subdevice, align 4
  %17 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %class, align 4
  %19 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %class_mask, align 4
  %call12 = call i32 @pci_add_dynid(ptr noundef nonnull @vfio_pci_driver, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vendor, align 4
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device, align 4
  %25 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %subvendor, align 4
  %27 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subdevice, align 4
  %29 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %class, align 4
  %31 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %class_mask, align 4
  br i1 %tobool13.not, label %do.end22, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %call12) #11
  br label %cleanup

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end17, %do.end, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class_mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subdevice) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subvendor) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor) #7
  %call = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.4) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup.cleanup32_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.cleanup32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_add_dynid(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %1)
  %cond.i.i = icmp eq i16 %1, -32634
  br i1 %cond.i.i, label %sw.bb.i.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i.i:                                        ; preds = %entry
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.bb.i.i.if.end_crit_edge [
    i16 6626, label %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge
    i16 6627, label %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge18
    i16 14280, label %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge19
    i16 14281, label %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge20
    i16 1077, label %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge21
    i16 1091, label %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge22
  ]

sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge22: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_pci_is_denylisted.exit

sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge21: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_pci_is_denylisted.exit

sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge20: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_pci_is_denylisted.exit

sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge19: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_pci_is_denylisted.exit

sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge18: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_pci_is_denylisted.exit

sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge:  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_pci_is_denylisted.exit

sw.bb.i.i.if.end_crit_edge:                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

vfio_pci_is_denylisted.exit:                      ; preds = %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge, %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge18, %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge19, %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge20, %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge21, %sw.bb.i.i.vfio_pci_is_denylisted.exit_crit_edge22
  %5 = load i8, ptr @disable_denylist, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %conv10.i = zext i16 %3 to i32
  %.str.20..str.15.i = select i1 %tobool.not.i, ptr @.str.20, ptr @.str.15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i, ptr noundef nonnull %.str.20..str.15.i, i32 noundef 32902, i32 noundef %conv10.i) #11
  br i1 %tobool.not.i, label %vfio_pci_is_denylisted.exit.cleanup_crit_edge, label %vfio_pci_is_denylisted.exit.if.end_crit_edge

vfio_pci_is_denylisted.exit.if.end_crit_edge:     ; preds = %vfio_pci_is_denylisted.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

vfio_pci_is_denylisted.exit.cleanup_crit_edge:    ; preds = %vfio_pci_is_denylisted.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %vfio_pci_is_denylisted.exit.if.end_crit_edge, %sw.bb.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 688) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @vfio_pci_core_init_device(ptr noundef nonnull %call7.i.i, ptr noundef %pdev, ptr noundef nonnull @vfio_pci_ops) #7
  %call4 = tail call i32 @vfio_pci_core_register_device(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %out_free

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

out_free:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vfio_pci_core_uninit_device(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end7, %if.end.cleanup_crit_edge, %vfio_pci_is_denylisted.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %out_free ], [ 0, %if.end7 ], [ -22, %vfio_pci_is_denylisted.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_pci_remove(ptr nocapture noundef readonly %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @vfio_pci_core_unregister_device(ptr noundef %1) #7
  tail call void @vfio_pci_core_uninit_device(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_sriov_configure(ptr noundef %pdev, i32 noundef %nr_virtfn) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_sriov, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @vfio_pci_core_sriov_configure(ptr noundef %pdev, i32 noundef %nr_virtfn) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_core_init_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_core_uninit_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_open_device(ptr noundef %core_vdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfio_pci_core_enable(ptr noundef %core_vdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vfio_pci_core_finish_enable(ptr noundef %core_vdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_core_close_device(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_core_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_match(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_core_finish_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_core_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_pci_core_sriov_configure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__param_ids, !1, !"__param_ids", i1 false, i1 false}
!1 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_idstype237, !1, !"__UNIQUE_ID_idstype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ids238, !4, !"__UNIQUE_ID_ids238", i1 false, i1 false}
!4 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 35, i32 1}
!5 = !{ptr @__param_nointxmask, !6, !"__param_nointxmask", i1 false, i1 false}
!6 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_nointxmasktype239, !6, !"__UNIQUE_ID_nointxmasktype239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nointxmask240, !9, !"__UNIQUE_ID_nointxmask240", i1 false, i1 false}
!9 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 39, i32 1}
!10 = !{ptr @__param_disable_idle_d3, !11, !"__param_disable_idle_d3", i1 false, i1 false}
!11 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 49, i32 1}
!12 = !{ptr @__UNIQUE_ID_disable_idle_d3type241, !11, !"__UNIQUE_ID_disable_idle_d3type241", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_disable_idle_d3242, !14, !"__UNIQUE_ID_disable_idle_d3242", i1 false, i1 false}
!14 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 50, i32 1}
!15 = !{ptr @__param_enable_sriov, !16, !"__param_enable_sriov", i1 false, i1 false}
!16 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 55, i32 1}
!17 = !{ptr @__UNIQUE_ID_enable_sriovtype243, !16, !"__UNIQUE_ID_enable_sriovtype243", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_enable_sriov244, !19, !"__UNIQUE_ID_enable_sriov244", i1 false, i1 false}
!19 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 56, i32 1}
!20 = !{ptr @__param_disable_denylist, !21, !"__param_disable_denylist", i1 false, i1 false}
!21 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 60, i32 1}
!22 = !{ptr @__UNIQUE_ID_disable_denylisttype245, !21, !"__UNIQUE_ID_disable_denylisttype245", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_disable_denylist246, !24, !"__UNIQUE_ID_disable_denylist246", i1 false, i1 false}
!24 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 61, i32 1}
!25 = !{ptr @__initcall__kmod_vfio_pci__247_262_vfio_pci_init6, !26, !"__initcall__kmod_vfio_pci__247_262_vfio_pci_init6", i1 false, i1 false}
!26 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 262, i32 1}
!27 = !{ptr @__exitcall_vfio_pci_cleanup, !28, !"__exitcall_vfio_pci_cleanup", i1 false, i1 false}
!28 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 268, i32 1}
!29 = !{ptr @__UNIQUE_ID_file248, !30, !"__UNIQUE_ID_file248", i1 false, i1 false}
!30 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 270, i32 1}
!31 = !{ptr @__UNIQUE_ID_license249, !30, !"__UNIQUE_ID_license249", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_author250, !33, !"__UNIQUE_ID_author250", i1 false, i1 false}
!33 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 271, i32 1}
!34 = !{ptr @__UNIQUE_ID_description251, !35, !"__UNIQUE_ID_description251", i1 false, i1 false}
!35 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 272, i32 1}
!36 = !{ptr @nointxmask, !37, !"nointxmask", i1 false, i1 false}
!37 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 37, i32 13}
!38 = !{ptr @disable_idle_d3, !39, !"disable_idle_d3", i1 false, i1 false}
!39 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 48, i32 13}
!40 = !{ptr @enable_sriov, !41, !"enable_sriov", i1 false, i1 false}
!41 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 53, i32 13}
!42 = !{ptr @disable_denylist, !43, !"disable_denylist", i1 false, i1 false}
!43 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 59, i32 13}
!44 = !{ptr @__param_str_ids, !1, !"__param_str_ids", i1 false, i1 false}
!45 = !{ptr @__param_string_ids, !1, !"__param_string_ids", i1 false, i1 false}
!46 = !{ptr @ids, !47, !"ids", i1 false, i1 false}
!47 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 33, i32 13}
!48 = !{ptr @__param_str_nointxmask, !6, !"__param_str_nointxmask", i1 false, i1 false}
!49 = !{ptr @__param_str_disable_idle_d3, !11, !"__param_str_disable_idle_d3", i1 false, i1 false}
!50 = !{ptr @__param_str_enable_sriov, !16, !"__param_str_enable_sriov", i1 false, i1 false}
!51 = !{ptr @__param_str_disable_denylist, !21, !"__param_str_disable_denylist", i1 false, i1 false}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 251, i32 8}
!54 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 258, i32 3}
!56 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vfio_pci_init._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @vfio_pci_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 209, i32 26}
!62 = !{ptr @.str.5, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 217, i32 23}
!64 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 222, i32 4}
!66 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vfio_pci_fill_ids._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @vfio_pci_fill_ids._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 229, i32 4}
!71 = !{ptr @vfio_pci_fill_ids._entry.8, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @vfio_pci_fill_ids._entry_ptr.10, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 233, i32 4}
!75 = !{ptr @vfio_pci_fill_ids._entry.11, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @vfio_pci_fill_ids._entry_ptr.13, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 190, i32 12}
!79 = !{ptr @vfio_pci_driver, !80, !"vfio_pci_driver", i1 false, i1 false}
!80 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 189, i32 26}
!81 = !{ptr @vfio_pci_table, !82, !"vfio_pci_table", i1 false, i1 false}
!82 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 182, i32 35}
!83 = !{ptr @.str.15, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 89, i32 3}
!85 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vfio_pci_is_denylisted._entry, !84, !"_entry", i1 false, i1 false}
!89 = !{ptr @vfio_pci_is_denylisted._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 95, i32 2}
!92 = !{ptr @vfio_pci_is_denylisted._entry.19, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vfio_pci_is_denylisted._entry_ptr.21, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @vfio_pci_ops, !95, !"vfio_pci_ops", i1 false, i1 false}
!95 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 128, i32 37}
!96 = !{ptr @.str.22, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/vfio/pci/vfio_pci.c", i32 117, i32 4}
!98 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vfio_pci_open_device._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @vfio_pci_open_device._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i8 0, i8 2}
!111 = !{!"auto-init"}
