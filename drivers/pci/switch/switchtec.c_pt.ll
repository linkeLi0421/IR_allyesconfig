; ModuleID = '/llk/IR_all_yes/drivers/pci/switch/switchtec.c_pt.bc'
source_filename = "../drivers/pci/switch/switchtec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+switchtec_class\22, \22a\22\09"
module asm "\09.weak\09__crc_switchtec_class\09\09\09\09"
module asm "\09.long\09__crc_switchtec_class\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchtec_class:\09\09\09\09\09"
module asm "\09.asciz \09\22switchtec_class\22\09\09\09\09\09"
module asm "__kstrtabns_switchtec_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.event_reg = type { i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.switchtec_dev = type { ptr, %struct.device, %struct.cdev, i32, i32, i32, i32, [255 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, i32, %struct.work_struct, %struct.delayed_work, i8, %struct.wait_queue_head, %struct.atomic_t, %struct.work_struct, ptr, [255 x i8], ptr, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.part_cfg_regs = type { i32, i32, i32, i32, i32, i32, [47 x i32], [11 x i32], i16, i16, i32, [3 x i32], i32, [3 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], [153 x i32] }
%struct.pff_csr_regs = type { i16, i16, i16, i16, i32, i32, %union.anon.74, i32, i32, i32, i32, i32, i32, [48 x i32], [448 x i32], [128 x i32], i32, [127 x i32], i32, [3 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], [174 x i32] }
%union.anon.74 = type { [3 x i64] }
%struct.mrpc_regs = type { [1024 x i8], [1024 x i8], i32, i32, i32, i32, i64, i32, i32 }
%struct.dma_mrpc_output = type { i32, i32, i32, i32, [1024 x i8] }
%struct.switchtec_user = type { ptr, i32, %struct.wait_queue_head, %struct.kref, %struct.list_head, i8, i32, i32, i32, i32, i32, [1024 x i8], i32 }
%struct.sys_info_regs = type { i32, i32, i32, %union.anon.72 }
%union.anon.72 = type { %struct.sys_info_regs_gen4 }
%struct.sys_info_regs_gen4 = type { i16, i8, i8, i16, i16, [2 x i32], i8, i8, i8, i8, [7 x i32], i32, i32, i32, i32, i16, i16, i16, i16, [43 x i32], i32, i32, [2 x i32], i16, i16, i8, [3 x i8], i32, i16, i16, [2 x i32], [6 x i8], [2 x i8], [3 x i32], [8 x i8], [24 x i8], [2 x i8], i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.switchtec_ioctl_pff_port = type { i32, i32, i32 }
%struct.switchtec_ioctl_event_ctl = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.switchtec_ioctl_flash_part_info = type { i32, i32, i32, i32 }
%struct.switchtec_ioctl_flash_info = type { i64, i32, i32 }
%struct.flash_info_regs_gen3 = type { i32, %struct.active_partition_info_gen3, %struct.active_partition_info_gen3, %struct.active_partition_info_gen3, %struct.active_partition_info_gen3, i32, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, [8 x %struct.partition_info] }
%struct.active_partition_info_gen3 = type { i32, i32, i32 }
%struct.partition_info = type { i32, i32 }
%struct.flash_info_regs_gen4 = type { i32, i32, %struct.active_partition_info_gen4, [3 x i32], %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, %struct.partition_info, [8 x %struct.partition_info] }
%struct.active_partition_info_gen4 = type { i8, i8, i8, i8 }
%struct.sys_info_regs_gen3 = type <{ i32, i32, i32, i32, i32, i16, i16, [57 x i32], [8 x i8], [16 x i8], [4 x i8], [8 x i8], i16, i8 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.sw_event_regs = type { i64, i64, i64, i64, i32, [3 x i32], i32, i32, [4 x i32], i32, i32, [4 x i32], i32, i32, [4 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, [5 x i32], i32, i32, [4 x i32], i32, i32, [4 x i32], i32, i32, [4 x i32], i32, i32, [4 x i32], i32, i32, [4 x i32], i32, i32, [4 x i32] }
%struct.switchtec_ioctl_event_summary = type { i64, i64, i32, i32, [48 x i32], [255 x i32] }

@__UNIQUE_ID_description236 = internal constant [69 x i8] c"switchtec.description=Microsemi Switchtec(tm) PCIe Management Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version237 = internal constant [22 x i8] c"switchtec.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"switchtec\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file238 = internal constant [44 x i8] c"switchtec.file=drivers/pci/switch/switchtec\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [22 x i8] c"switchtec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [39 x i8] c"switchtec.author=Microsemi Corporation\00", section ".modinfo", align 1
@__param_str_max_devices = internal constant [22 x i8] c"switchtec.max_devices\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_devices = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_max_devices = internal constant %struct.kernel_param { ptr @__param_str_max_devices, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @max_devices } }, section "__param", align 4
@__UNIQUE_ID_max_devicestype241 = internal constant [35 x i8] c"switchtec.parmtype=max_devices:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_devices242 = internal constant [68 x i8] c"switchtec.parm=max_devices:max number of switchtec device instances\00", section ".modinfo", align 1
@__param_str_use_dma_mrpc = internal constant [23 x i8] c"switchtec.use_dma_mrpc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma_mrpc = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_dma_mrpc = internal constant %struct.kernel_param { ptr @__param_str_use_dma_mrpc, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @use_dma_mrpc } }, section "__param", align 4
@__UNIQUE_ID_use_dma_mrpctype243 = internal constant [37 x i8] c"switchtec.parmtype=use_dma_mrpc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_mrpc244 = internal constant [67 x i8] c"switchtec.parm=use_dma_mrpc:Enable the use of the DMA MRPC feature\00", section ".modinfo", align 1
@__param_str_nirqs = internal constant [16 x i8] c"switchtec.nirqs\00", align 1
@nirqs = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_nirqs = internal constant %struct.kernel_param { ptr @__param_str_nirqs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @nirqs } }, section "__param", align 4
@__UNIQUE_ID_nirqstype245 = internal constant [29 x i8] c"switchtec.parmtype=nirqs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nirqs246 = internal constant [96 x i8] c"switchtec.parm=nirqs:number of interrupts to allocate (more may be useful for NTB applications)\00", section ".modinfo", align 1
@switchtec_class = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_switchtec_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchtec_class = external dso_local constant [0 x i8], align 1
@__ksymtab_switchtec_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchtec_class to i32), ptr @__kstrtab_switchtec_class, ptr @__kstrtabns_switchtec_class }, section "___ksymtab_gpl+switchtec_class", align 4
@__initcall__kmod_switchtec__259_1833_switchtec_init6 = internal global ptr @switchtec_init, section ".initcall6.init", align 4
@switchtec_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @switchtec_pci_tbl, ptr @switchtec_pci_probe, ptr @switchtec_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@switchtec_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@switchtec_minor_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.72, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@switchtec_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016switchtec: unloaded.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"switchtec_exit\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/pci/switch/switchtec.c\00", [33 x i8] zeroinitializer }, align 32
@switchtec_exit._entry_ptr = internal global ptr @switchtec_exit._entry, section ".printk_index", align 4
@__exitcall_switchtec_exit = internal global ptr @switchtec_exit, section ".exitcall.exit", align 4
@switchtec_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@switchtec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016switchtec: loaded.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"switchtec_init\00", [17 x i8] zeroinitializer }, align 32
@switchtec_init._entry_ptr = internal global ptr @switchtec_init._entry, section ".printk_index", align 4
@switchtec_pci_tbl = internal constant { [115 x %struct.pci_device_id], [896 x i8] } { [115 x %struct.pci_device_id] [%struct.pci_device_id { i32 4600, i32 34097, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34097, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34098, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34098, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34099, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34099, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34100, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34100, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34101, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34101, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34102, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34102, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34113, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34113, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34114, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34114, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34115, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34115, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34116, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34116, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34117, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34117, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34118, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34118, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34129, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34129, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34130, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34130, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34131, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34131, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34132, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34132, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34133, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34133, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34134, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34134, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34145, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34145, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34146, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34146, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34147, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34147, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34148, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34148, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34149, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34149, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34150, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34150, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34161, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34161, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34162, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34162, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34163, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34163, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34164, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34164, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34165, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34165, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34166, i32 -1, i32 -1, i32 360448, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 34166, i32 -1, i32 -1, i32 425984, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 16384, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16384, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16516, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16516, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16488, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16488, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16466, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16466, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16438, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16438, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16424, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16424, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16640, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16640, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16772, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16772, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16744, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16744, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16722, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16722, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16694, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16694, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16680, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16680, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16896, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16896, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17028, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17028, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17000, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17000, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16978, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16978, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16950, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16950, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16936, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 16936, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17234, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17234, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17206, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17206, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17192, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17192, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17490, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17490, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17462, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17462, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17448, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17448, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17746, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17746, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17718, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17718, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17704, i32 -1, i32 -1, i32 360448, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 17704, i32 -1, i32 -1, i32 425984, i32 -1, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [896 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_hw_switchtec\00", [47 x i8] zeroinitializer }, align 32
@switchtec_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 1672, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to init isr.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"switchtec_pci_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@switchtec_pci_probe._entry_ptr = internal global ptr @switchtec_pci_probe._entry, section ".printk_index", align 4
@switchtec_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.5, i32 1688, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Management device registered.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@switchtec_pci_probe._entry_ptr.16 = internal global ptr @switchtec_pci_probe._entry.13, section ".printk_index", align 4
@stdev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&stdev->mrpc_mutex\00", [45 x i8] zeroinitializer }, align 32
@stdev_create.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&stdev->mrpc_work)\00", [59 x i8] zeroinitializer }, align 32
@stdev_create.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&stdev->mrpc_timeout)->work)\00", [47 x i8] zeroinitializer }, align 32
@stdev_create.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&stdev->mrpc_timeout)->timer\00", [33 x i8] zeroinitializer }, align 32
@stdev_create.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&stdev->link_event_work)\00", [53 x i8] zeroinitializer }, align 32
@stdev_create.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&stdev->event_wq\00", [47 x i8] zeroinitializer }, align 32
@switchtec_device_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @switchtec_device_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"switchtec%d\00", [20 x i8] zeroinitializer }, align 32
@switchtec_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @switchtec_dev_read, ptr @switchtec_dev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @switchtec_dev_poll, ptr @switchtec_dev_ioctl, ptr null, ptr null, i32 0, ptr @switchtec_dev_open, ptr null, ptr @switchtec_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mrpc_event_work.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mrpc_event_work\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@stuser_set_state.state_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IDLE\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QUEUED\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RUNNING\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DONE\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IO_ERROR\00", [23 x i8] zeroinitializer }, align 32
@stuser_set_state.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 0, i8 34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stuser_set_state\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stuser state %p -> %s\00", [42 x i8] zeroinitializer }, align 32
@stuser_free.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.5, ptr @.str.39, i8 0, i8 27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stuser_free\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %p\0A\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mrpc_timeout_work.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.5, ptr @.str.30, i8 0, i8 75, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mrpc_timeout_work\00", [46 x i8] zeroinitializer }, align 32
@switchtec_device_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @switchtec_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@switchtec_device_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_device_version, ptr @dev_attr_fw_version, ptr @dev_attr_vendor_id, ptr @dev_attr_product_id, ptr @dev_attr_product_revision, ptr @dev_attr_component_vendor, ptr @dev_attr_component_id, ptr @dev_attr_component_revision, ptr @dev_attr_partition, ptr @dev_attr_partition_count, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_device_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_component_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @component_vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_component_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @component_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_component_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @component_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_partition = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @partition_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_partition_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @partition_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_version\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor_id\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"product_revision\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"component_vendor\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"component_id\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PM%04X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"component_revision\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"255\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"partition\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"partition_count\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@event_regs = internal constant { [32 x %struct.event_reg], [64 x i8] } { [32 x %struct.event_reg] [%struct.event_reg { i32 48, ptr @global_ev_reg }, %struct.event_reg { i32 72, ptr @global_ev_reg }, %struct.event_reg { i32 96, ptr @global_ev_reg }, %struct.event_reg { i32 120, ptr @global_ev_reg }, %struct.event_reg { i32 144, ptr @global_ev_reg }, %struct.event_reg { i32 168, ptr @global_ev_reg }, %struct.event_reg { i32 192, ptr @global_ev_reg }, %struct.event_reg { i32 216, ptr @global_ev_reg }, %struct.event_reg { i32 240, ptr @global_ev_reg }, %struct.event_reg { i32 264, ptr @global_ev_reg }, %struct.event_reg { i32 288, ptr @global_ev_reg }, %struct.event_reg { i32 312, ptr @global_ev_reg }, %struct.event_reg { i32 336, ptr @global_ev_reg }, %struct.event_reg { i32 292, ptr @part_ev_reg }, %struct.event_reg { i32 316, ptr @part_ev_reg }, %struct.event_reg { i32 340, ptr @part_ev_reg }, %struct.event_reg { i32 364, ptr @part_ev_reg }, %struct.event_reg { i32 3088, ptr @pff_ev_reg }, %struct.event_reg { i32 3112, ptr @pff_ev_reg }, %struct.event_reg { i32 3136, ptr @pff_ev_reg }, %struct.event_reg { i32 3160, ptr @pff_ev_reg }, %struct.event_reg { i32 3208, ptr @pff_ev_reg }, %struct.event_reg { i32 3232, ptr @pff_ev_reg }, %struct.event_reg { i32 3256, ptr @pff_ev_reg }, %struct.event_reg { i32 3280, ptr @pff_ev_reg }, %struct.event_reg { i32 3304, ptr @pff_ev_reg }, %struct.event_reg { i32 3328, ptr @pff_ev_reg }, %struct.event_reg { i32 3352, ptr @pff_ev_reg }, %struct.event_reg { i32 3376, ptr @pff_ev_reg }, %struct.event_reg { i32 360, ptr @global_ev_reg }, %struct.event_reg { i32 388, ptr @part_ev_reg }, %struct.event_reg { i32 3184, ptr @pff_ev_reg }], [64 x i8] zeroinitializer }, align 32
@switchtec_dev_open.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.5, ptr @.str.39, i8 0, i8 119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"switchtec_dev_open\00", [45 x i8] zeroinitializer }, align 32
@stuser_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&stuser->cmd_comp\00", [46 x i8] zeroinitializer }, align 32
@stuser_create.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.5, ptr @.str.39, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stuser_create\00", [18 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@switchtec_event_isr.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.5, ptr @.str.64, i8 1, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"switchtec_event_isr\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: mrpc comp\0A\00", [17 x i8] zeroinitializer }, align 32
@switchtec_event_isr.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.5, ptr @.str.65, i8 1, i8 112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %d events\0A\00", [17 x i8] zeroinitializer }, align 32
@check_link_state_events.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.67, i8 1, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_link_state_events\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"link_state: %d->%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@mask_event.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.5, ptr @.str.69, i8 1, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mask_event\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %d %d %x\0A\00", [18 x i8] zeroinitializer }, align 32
@switchtec_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1708, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unregistered.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switchtec_pci_remove\00", [43 x i8] zeroinitializer }, align 32
@switchtec_pci_remove._entry_ptr = internal global ptr @switchtec_pci_remove._entry, section ".printk_index", align 4
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"switchtec_minor_ida.xa_lock\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 255]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 255, i64 256]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 41, i64 135]
@__sancov_gen_cov_switch_values.80 = internal global [9 x i64] [i64 7, i64 32, i64 2148554560, i64 2174244674, i64 2228770626, i64 3222034244, i64 3222034245, i64 3222296385, i64 3223869251]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.83 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.84 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 100]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 28]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 20, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"max_devices\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 24, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"use_dma_mrpc\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 28, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"nirqs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 33, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"switchtec_class\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 40, i32 15 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"switchtec_pci_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1795, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"switchtec_devt\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 37, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"switchtec_minor_ida\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1842, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1811, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1821, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"switchtec_pci_tbl\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1733, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1658, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1672, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1688, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1364, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1366, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1367, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1368, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1369, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [24 x i8] c"switchtec_device_groups\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1387, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant [15 x i8] c"switchtec_fops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1247, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 268, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [12 x i8] c"state_names\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 125, i32 28 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 126, i32 17 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 127, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 128, i32 20 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 129, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 130, i32 21 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 135, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 109, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 300, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [23 x i8] c"switchtec_device_group\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 463, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant [23 x i8] c"switchtec_device_attrs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 449, i32 26 }
@___asan_gen_.261 = private unnamed_addr constant [24 x i8] c"dev_attr_device_version\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"dev_attr_vendor_id\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [26 x i8] c"dev_attr_product_revision\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [26 x i8] c"dev_attr_component_vendor\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [22 x i8] c"dev_attr_component_id\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [28 x i8] c"dev_attr_component_revision\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"dev_attr_partition\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [25 x i8] c"dev_attr_partition_count\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 334, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 332, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 346, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 344, i32 25 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 384, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 385, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 386, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 401, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 396, i32 26 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 415, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 413, i32 25 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 429, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 425, i32 26 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 427, i32 25 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 438, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 447, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 230, i32 6 }
@___asan_gen_.343 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 214, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 174, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [11 x i8] c"event_regs\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 954, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 479, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 95, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 98, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1453, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1472, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1277, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1415, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1708, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.394 = private constant [34 x i8] c"../drivers/pci/switch/switchtec.c\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 38, i32 8 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_max_devices242, ptr @__UNIQUE_ID_max_devicestype241, ptr @__UNIQUE_ID_nirqs246, ptr @__UNIQUE_ID_nirqstype245, ptr @__UNIQUE_ID_use_dma_mrpc244, ptr @__UNIQUE_ID_use_dma_mrpctype243, ptr @__UNIQUE_ID_version237, ptr @__exitcall_switchtec_exit, ptr @__initcall__kmod_switchtec__259_1833_switchtec_init6, ptr @__ksymtab_switchtec_class, ptr @__modver_attr, ptr @__param_max_devices, ptr @__param_nirqs, ptr @__param_use_dma_mrpc, ptr @switchtec_exit, ptr @switchtec_exit._entry, ptr @switchtec_exit._entry_ptr, ptr @switchtec_init._entry, ptr @switchtec_init._entry_ptr, ptr @switchtec_pci_probe._entry, ptr @switchtec_pci_probe._entry.13, ptr @switchtec_pci_probe._entry_ptr, ptr @switchtec_pci_probe._entry_ptr.16, ptr @switchtec_pci_remove._entry, ptr @switchtec_pci_remove._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @max_devices, ptr @use_dma_mrpc, ptr @nirqs, ptr @switchtec_class, ptr @switchtec_pci_driver, ptr @switchtec_devt, ptr @switchtec_minor_ida, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switchtec_init.__key, ptr @.str.6, ptr @.str.7, ptr @switchtec_pci_tbl, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @stdev_create.__key, ptr @.str.17, ptr @stdev_create.__key.18, ptr @.str.19, ptr @stdev_create.__key.20, ptr @.str.21, ptr @stdev_create.__key.22, ptr @.str.23, ptr @stdev_create.__key.24, ptr @.str.25, ptr @stdev_create.__key.26, ptr @.str.27, ptr @switchtec_device_groups, ptr @.str.28, ptr @switchtec_fops, ptr @.str.29, ptr @.str.30, ptr @stuser_set_state.state_names, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @switchtec_device_group, ptr @switchtec_device_attrs, ptr @dev_attr_device_version, ptr @dev_attr_fw_version, ptr @dev_attr_vendor_id, ptr @dev_attr_product_id, ptr @dev_attr_product_revision, ptr @dev_attr_component_vendor, ptr @dev_attr_component_id, ptr @dev_attr_component_revision, ptr @dev_attr_partition, ptr @dev_attr_partition_count, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @event_regs, ptr @.str.60, ptr @stuser_create.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma_mrpc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nirqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_minor_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_pci_tbl to i32), i32 3680, i32 4576, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdev_create.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdev_create.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdev_create.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdev_create.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdev_create.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_device_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stuser_set_state.state_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_device_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_device_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_component_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_component_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_component_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_partition to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_partition_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_regs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stuser_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchtec_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_devices, align 4
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @switchtec_devt, i32 noundef 0, i32 noundef %0, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @switchtec_init.__key) #11
  store ptr %call1, ptr @switchtec_class, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call1 to i32
  br label %err_create_class

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @switchtec_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %err_pci_register

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

err_pci_register:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @switchtec_class, align 4
  tail call void @class_destroy(ptr noundef %2) #11
  br label %err_create_class

err_create_class:                                 ; preds = %err_pci_register, %if.then3
  %rc.0 = phi i32 [ %1, %if.then3 ], [ %call6, %err_pci_register ]
  %3 = load i32, ptr @switchtec_devt, align 4
  %4 = load i32, ptr @max_devices, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %err_create_class, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_create_class ], [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @switchtec_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @switchtec_pci_driver) #11
  %0 = load ptr, ptr @switchtec_class, align 4
  tail call void @class_destroy(ptr noundef %0) #11
  %1 = load i32, ptr @switchtec_devt, align 4
  %2 = load i32, ptr @max_devices, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef %2) #11
  tail call void @ida_destroy(ptr noundef nonnull @switchtec_minor_ida) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 425984, i32 %1)
  %cmp = icmp eq i32 %1, 425984
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext false, ptr noundef nonnull @.str.8) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2032) #15
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %alive.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 22
  %3 = ptrtoint ptr %alive.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %alive.i, align 4
  %4 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %call.i.i.i.i, align 8
  %mrpc_queue.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 18
  %5 = ptrtoint ptr %mrpc_queue.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %mrpc_queue.i, ptr %mrpc_queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mrpc_queue.i, ptr %prev.i.i, align 4
  %mrpc_mutex.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %mrpc_mutex.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @stdev_create.__key) #11
  %mrpc_busy.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %mrpc_busy.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mrpc_busy.i, align 8
  %mrpc_work.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %mrpc_work.i, i32 noundef 0) #11
  %8 = ptrtoint ptr %mrpc_work.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %mrpc_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @stdev_create.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry9.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry9.i, ptr %entry9.i, align 8
  %prev.i105.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 20, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i105.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry9.i, ptr %prev.i105.i, align 4
  %func.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 20, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mrpc_event_work, ptr %func.i, align 8
  %mrpc_timeout.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %mrpc_timeout.i, i32 noundef 0) #11
  %12 = ptrtoint ptr %mrpc_timeout.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %mrpc_timeout.i, align 8
  %lockdep_map22.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 21, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map22.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @stdev_create.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry25.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 21, i32 0, i32 1
  %13 = ptrtoint ptr %entry25.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry25.i, ptr %entry25.i, align 4
  %prev.i106.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i106.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry25.i, ptr %prev.i106.i, align 8
  %func28.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 21, i32 0, i32 2
  %15 = ptrtoint ptr %func28.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mrpc_timeout_work, ptr %func28.i, align 4
  %timer.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @stdev_create.__key.22) #11
  %link_event_work.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %link_event_work.i, i32 noundef 0) #11
  %16 = ptrtoint ptr %link_event_work.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %link_event_work.i, align 8
  %lockdep_map43.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map43.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @stdev_create.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry45.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 25, i32 1
  %17 = ptrtoint ptr %entry45.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry45.i, ptr %entry45.i, align 4
  %prev.i107.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 25, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i107.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry45.i, ptr %prev.i107.i, align 8
  %func47.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 25, i32 2
  %19 = ptrtoint ptr %func47.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @link_event_work, ptr %func47.i, align 4
  %event_wq.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 23
  tail call void @__init_waitqueue_head(ptr noundef %event_wq.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @stdev_create.__key.26) #11
  %event_cnt.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_cnt.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %event_cnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %event_cnt.i, align 4
  %dev53.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %dev53.i) #11
  %21 = load ptr, ptr @switchtec_class, align 4
  %class.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 1, i32 33
  %22 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %class.i, align 4
  %parent.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1.i, ptr %parent.i, align 8
  %groups.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 1, i32 34
  %24 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @switchtec_device_groups, ptr %groups.i, align 8
  %release.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 1, i32 35
  %25 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @stdev_release, ptr %release.i, align 4
  %call55.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @switchtec_minor_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp.i = icmp slt i32 %call55.i, 0
  br i1 %cmp.i, label %if.then56.i, label %if.end57.i

if.then56.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef %dev53.i) #11
  %26 = inttoptr i32 %call55.i to ptr
  br label %stdev_create.exit

if.end57.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = load i32, ptr @switchtec_devt, align 4
  %shr.i = and i32 %27, -1048576
  %or.i = or i32 %shr.i, %call55.i
  %devt.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 1, i32 29
  %28 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %devt.i, align 8
  %call58.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev53.i, ptr noundef nonnull @.str.28, i32 noundef %call55.i) #11
  %cdev59.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %cdev59.i, ptr noundef nonnull @switchtec_fops) #11
  %owner.i = getelementptr inbounds %struct.switchtec_dev, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner.i, align 8
  br label %stdev_create.exit

stdev_create.exit:                                ; preds = %if.end57.i, %if.then56.i
  %retval.0.i = phi ptr [ %26, %if.then56.i ], [ %call.i.i.i.i, %if.end57.i ]
  %cmp.i48 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %stdev_create.exit.if.then3_crit_edge, label %if.end5

stdev_create.exit.if.then3_crit_edge:             ; preds = %stdev_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %stdev_create.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i71 = phi ptr [ %retval.0.i, %stdev_create.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then3_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i71 to i32
  br label %cleanup

if.end5:                                          ; preds = %stdev_create.exit
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %31 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %driver_data, align 4
  %gen = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %gen, align 8
  %call.i = tail call i32 @pcim_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i49 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i49, label %if.end.i50, label %if.end5.err_put_crit_edge

if.end5.err_put_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end.i50:                                       ; preds = %if.end5
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i, label %if.end.i50.err_put_crit_edge

if.end.i50.err_put_crit_edge:                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end4.i:                                        ; preds = %if.end.i50
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1.i, i64 noundef -1) #11
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %34 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i51 = icmp eq i32 %37, 0
  %sub.i = sub i32 1, %35
  %add.i = add i32 %sub.i, %37
  %cond.i = select i1 %cmp.i51, i32 0, i32 %add.i
  %call14.i = tail call ptr @__devm_request_region(ptr noundef %dev1.i, ptr noundef nonnull @iomem_resource, i32 noundef %35, i32 noundef %cond.i, ptr noundef nonnull @.str.1) #11
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end4.i.err_put_crit_edge, label %if.end17.i

if.end4.i.err_put_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end17.i:                                       ; preds = %if.end4.i
  %call19.i = tail call ptr @devm_ioremap_wc(ptr noundef %dev1.i, i32 noundef %35, i32 noundef 4096) #11
  %mmio_mrpc.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 9
  %38 = ptrtoint ptr %mmio_mrpc.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call19.i, ptr %mmio_mrpc.i, align 4
  %tobool21.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool21.not.i, label %if.end17.i.err_put_crit_edge, label %if.end23.i

if.end17.i.err_put_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end23.i:                                       ; preds = %if.end17.i
  %add25.i = add i32 %35, 4096
  %sub26.i = add i32 %cond.i, -4096
  %call27.i = tail call ptr @devm_ioremap(ptr noundef %dev1.i, i32 noundef %add25.i, i32 noundef %sub26.i) #11
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.end23.i.err_put_crit_edge, label %if.end30.i

if.end23.i.err_put_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end30.i:                                       ; preds = %if.end23.i
  %add.ptr.i = getelementptr i8, ptr %call27.i, i32 -4096
  %mmio.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 8
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i, ptr %mmio.i, align 8
  %add.ptr32.i = getelementptr i8, ptr %call27.i, i32 2048
  %mmio_sw_event.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 10
  %40 = ptrtoint ptr %mmio_sw_event.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr32.i, ptr %mmio_sw_event.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %call27.i, i32 4096
  %mmio_sys_info.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 11
  %41 = ptrtoint ptr %mmio_sys_info.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr34.i, ptr %mmio_sys_info.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %call27.i, i32 4608
  %mmio_flash_info.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 12
  %42 = ptrtoint ptr %mmio_flash_info.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr36.i, ptr %mmio_flash_info.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %call27.i, i32 61440
  %mmio_ntb.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 13
  %43 = ptrtoint ptr %mmio_ntb.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr38.i, ptr %mmio_ntb.i, align 4
  %44 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gen, align 8
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %45, label %if.end30.i.err_put_crit_edge [
    i32 0, label %if.end30.i.if.end49.i_crit_edge
    i32 1, label %if.then44.i
  ]

if.end30.i.if.end49.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.end30.i.err_put_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.then44.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %if.end30.i.if.end49.i_crit_edge
  %.sink.i = phi i32 [ 4168, %if.then44.i ], [ 4120, %if.end30.i.if.end49.i_crit_edge ]
  %partition_id46.i = getelementptr i8, ptr %call27.i, i32 %.sink.i
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %partition_id46.i) #11, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  %conv.i = zext i8 %47 to i32
  %partition.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 4
  %48 = ptrtoint ptr %partition.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.i, ptr %partition.i, align 4
  %49 = ptrtoint ptr %mmio_ntb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio_ntb.i, align 4
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #11, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  %conv53.i = zext i8 %51 to i32
  %partition_count54.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 5
  %52 = ptrtoint ptr %partition_count54.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv53.i, ptr %partition_count54.i, align 8
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 8
  %add.ptr56.i = getelementptr i8, ptr %54, i32 16384
  %mmio_part_cfg_all.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 15
  %55 = ptrtoint ptr %mmio_part_cfg_all.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr56.i, ptr %mmio_part_cfg_all.i, align 4
  %56 = ptrtoint ptr %partition.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %partition.i, align 4
  %arrayidx59.i = getelementptr %struct.part_cfg_regs, ptr %add.ptr56.i, i32 %57
  %mmio_part_cfg.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 14
  %58 = ptrtoint ptr %mmio_part_cfg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx59.i, ptr %mmio_part_cfg.i, align 8
  %add.ptr61.i = getelementptr i8, ptr %54, i32 1261568
  %mmio_pff_csr.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 16
  %59 = ptrtoint ptr %mmio_pff_csr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr61.i, ptr %mmio_pff_csr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp63.i = icmp eq i8 %51, 0
  br i1 %cmp63.i, label %if.then65.i, label %if.end49.i.for.body.i.i.preheader_crit_edge

if.end49.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

if.then65.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %partition_count54.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %partition_count54.i, align 8
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then65.i, %if.end49.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.056.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %61 = ptrtoint ptr %mmio_pff_csr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio_pff_csr.i, align 8
  %arrayidx.i.i = getelementptr %struct.pff_csr_regs, ptr %62, i32 %i.056.i.i
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx.i.i) #11, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2031, i16 %63)
  %cmp1.not.i.i = icmp eq i16 %63, -2031
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 255
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.056.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ 255, %for.inc.i.i.for.end.i.i_crit_edge ]
  %pff_csr_count.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 6
  %64 = ptrtoint ptr %pff_csr_count.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.0.lcssa.i.i, ptr %pff_csr_count.i.i, align 4
  %usp_pff_inst_id.i.i = getelementptr inbounds %struct.part_cfg_regs, ptr %arrayidx59.i, i32 0, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usp_pff_inst_id.i.i) #11, !srcloc !228
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %67 = ptrtoint ptr %pff_csr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pff_csr_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp5.i.i = icmp ult i32 %66, %68
  br i1 %cmp5.i.i, label %if.then7.i.i, label %for.end.i.i.if.end9.i.i_crit_edge

for.end.i.i.if.end9.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8.i.i = getelementptr %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 7, i32 %66
  %69 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %arrayidx8.i.i, align 1
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %for.end.i.i.if.end9.i.i_crit_edge
  %vep_pff_inst_id.i.i = getelementptr inbounds %struct.part_cfg_regs, ptr %arrayidx59.i, i32 0, i32 5
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vep_pff_inst_id.i.i) #11, !srcloc !228
  %71 = lshr i32 %70, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %72 = ptrtoint ptr %pff_csr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pff_csr_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp12.i.i = icmp ult i32 %71, %73
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end9.i.i.for.body21.i.i.preheader_crit_edge

if.end9.i.i.for.body21.i.i.preheader_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21.i.i.preheader

if.then14.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx16.i.i = getelementptr %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 7, i32 %71
  %74 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %arrayidx16.i.i, align 1
  br label %for.body21.i.i.preheader

for.body21.i.i.preheader:                         ; preds = %if.then14.i.i, %if.end9.i.i.for.body21.i.i.preheader_crit_edge
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %for.inc31.i.i.for.body21.i.i_crit_edge, %for.body21.i.i.preheader
  %i.157.i.i = phi i32 [ %inc32.i.i, %for.inc31.i.i.for.body21.i.i_crit_edge ], [ 0, %for.body21.i.i.preheader ]
  %arrayidx22.i.i = getelementptr %struct.part_cfg_regs, ptr %arrayidx59.i, i32 0, i32 6, i32 %i.157.i.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx22.i.i) #11, !srcloc !228
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %77 = ptrtoint ptr %pff_csr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pff_csr_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp25.i.i = icmp ult i32 %76, %78
  br i1 %cmp25.i.i, label %if.then27.i.i, label %for.body21.i.i.for.inc31.i.i_crit_edge

for.body21.i.i.for.inc31.i.i_crit_edge:           ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc31.i.i

if.then27.i.i:                                    ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx29.i.i = getelementptr %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 7, i32 %76
  %79 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %arrayidx29.i.i, align 1
  br label %for.inc31.i.i

for.inc31.i.i:                                    ; preds = %if.then27.i.i, %for.body21.i.i.for.inc31.i.i_crit_edge
  %inc32.i.i = add nuw nsw i32 %i.157.i.i, 1
  %exitcond58.not.i.i = icmp eq i32 %inc32.i.i, 47
  br i1 %exitcond58.not.i.i, label %init_pff.exit.i, label %for.inc31.i.i.for.body21.i.i_crit_edge

for.inc31.i.i.for.body21.i.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21.i.i

init_pff.exit.i:                                  ; preds = %for.inc31.i.i
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %80 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %retval.0.i, ptr %driver_data.i.i.i, align 4
  %81 = load i8, ptr @use_dma_mrpc, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool68.not.i = icmp eq i8 %81, 0
  br i1 %tobool68.not.i, label %init_pff.exit.i.if.end8_crit_edge, label %if.end70.i

init_pff.exit.i.if.end8_crit_edge:                ; preds = %init_pff.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end70.i:                                       ; preds = %init_pff.exit.i
  %82 = ptrtoint ptr %mmio_mrpc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio_mrpc.i, align 4
  %dma_ver.i = getelementptr inbounds %struct.mrpc_regs, ptr %83, i32 0, i32 8
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_ver.i) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp73.i = icmp eq i32 %84, 0
  br i1 %cmp73.i, label %if.end70.i.if.end8_crit_edge, label %if.end76.i

if.end70.i.if.end8_crit_edge:                     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end76.i:                                       ; preds = %if.end70.i
  %85 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %retval.0.i, align 8
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %dma_mrpc_dma_addr.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 30
  %call.i140.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev78.i, i32 noundef 1040, ptr noundef %dma_mrpc_dma_addr.i, i32 noundef 3264, i32 noundef 0) #11
  %dma_mrpc.i = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 29
  %87 = ptrtoint ptr %dma_mrpc.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i140.i, ptr %dma_mrpc.i, align 4
  %cmp81.i = icmp eq ptr %call.i140.i, null
  br i1 %cmp81.i, label %if.end76.i.err_put_crit_edge, label %if.end76.i.if.end8_crit_edge

if.end76.i.if.end8_crit_edge:                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end76.i.err_put_crit_edge:                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end8:                                          ; preds = %if.end76.i.if.end8_crit_edge, %if.end70.i.if.end8_crit_edge, %init_pff.exit.i.if.end8_crit_edge
  %88 = load i32, ptr @nirqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp.i53 = icmp slt i32 %88, 4
  br i1 %cmp.i53, label %if.then.i, label %if.end8.if.end.i55_crit_edge

if.end8.if.end.i55_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i55

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  store i32 4, ptr @nirqs, align 4
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.then.i, %if.end8.if.end.i55_crit_edge
  %89 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %retval.0.i, align 8
  %91 = load i32, ptr @nirqs, align 4
  %call.i.i54 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %90, i32 noundef 1, i32 noundef %91, i32 noundef 22, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp1.i = icmp slt i32 %call.i.i54, 0
  br i1 %cmp1.i, label %if.end.i55.do.end_crit_edge, label %if.end3.i

if.end.i55.do.end_crit_edge:                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i55
  %92 = ptrtoint ptr %mmio_part_cfg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_part_cfg.i, align 8
  %vep_vector_number.i = getelementptr inbounds %struct.part_cfg_regs, ptr %93, i32 0, i32 8
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %vep_vector_number.i) #11, !srcloc !226
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  %conv.i57 = zext i16 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i54, i32 %conv.i57)
  %cmp7.not.i = icmp ugt i32 %call.i.i54, %conv.i57
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end3.i.do.end_crit_edge

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end10.i:                                       ; preds = %if.end3.i
  %96 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %retval.0.i, align 8
  %call12.i = tail call i32 @pci_irq_vector(ptr noundef %97, i32 noundef %conv.i57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.do.end_crit_edge, label %if.end16.i

if.end10.i.do.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end16.i:                                       ; preds = %if.end10.i
  %98 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %retval.0.i, align 8
  %dev.i58 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %call.i69.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i58, i32 noundef %call12.i, ptr noundef nonnull @switchtec_event_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool.not.i59 = icmp eq i32 %call.i69.i, 0
  br i1 %tobool.not.i59, label %if.end20.i, label %if.end16.i.do.end_crit_edge

if.end16.i.do.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end20.i:                                       ; preds = %if.end16.i
  %dma_mrpc.i60 = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 29
  %100 = ptrtoint ptr %dma_mrpc.i60 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dma_mrpc.i60, align 4
  %tobool21.not.i61 = icmp eq ptr %101, null
  br i1 %tobool21.not.i61, label %if.end20.i.if.end12_crit_edge, label %if.end23.i63

if.end20.i.if.end12_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end23.i63:                                     ; preds = %if.end20.i
  %102 = ptrtoint ptr %mmio_mrpc.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio_mrpc.i, align 4
  %dma_vector.i = getelementptr inbounds %struct.mrpc_regs, ptr %103, i32 0, i32 7
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_vector.i) #11, !srcloc !228
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp25.i = icmp sgt i32 %105, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %call.i.i54)
  %cmp28.not.i = icmp slt i32 %105, %call.i.i54
  %or.cond.i = select i1 %cmp25.i, i1 %cmp28.not.i, i1 false
  br i1 %or.cond.i, label %if.end31.i, label %if.end23.i63.do.end_crit_edge

if.end23.i63.do.end_crit_edge:                    ; preds = %if.end23.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end31.i:                                       ; preds = %if.end23.i63
  %106 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %retval.0.i, align 8
  %call33.i = tail call i32 @pci_irq_vector(ptr noundef %107, i32 noundef %105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end31.i.do.end_crit_edge, label %switchtec_init_isr.exit

if.end31.i.do.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

switchtec_init_isr.exit:                          ; preds = %if.end31.i
  %108 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %retval.0.i, align 8
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %call.i70.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev39.i, i32 noundef %call33.i, ptr noundef nonnull @switchtec_dma_mrpc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool10.not = icmp eq i32 %call.i70.i, 0
  br i1 %tobool10.not, label %switchtec_init_isr.exit.if.end12_crit_edge, label %switchtec_init_isr.exit.do.end_crit_edge

switchtec_init_isr.exit.do.end_crit_edge:         ; preds = %switchtec_init_isr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

switchtec_init_isr.exit.if.end12_crit_edge:       ; preds = %switchtec_init_isr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end:                                           ; preds = %switchtec_init_isr.exit.do.end_crit_edge, %if.end31.i.do.end_crit_edge, %if.end23.i63.do.end_crit_edge, %if.end16.i.do.end_crit_edge, %if.end10.i.do.end_crit_edge, %if.end3.i.do.end_crit_edge, %if.end.i55.do.end_crit_edge
  %retval.0.i6476 = phi i32 [ %call.i70.i, %switchtec_init_isr.exit.do.end_crit_edge ], [ %call33.i, %if.end31.i.do.end_crit_edge ], [ -14, %if.end23.i63.do.end_crit_edge ], [ %call.i69.i, %if.end16.i.do.end_crit_edge ], [ %call12.i, %if.end10.i.do.end_crit_edge ], [ -14, %if.end3.i.do.end_crit_edge ], [ %call.i.i54, %if.end.i55.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #14
  br label %err_put

if.end12:                                         ; preds = %switchtec_init_isr.exit.if.end12_crit_edge, %if.end20.i.if.end12_crit_edge
  %110 = ptrtoint ptr %mmio_part_cfg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio_part_cfg.i, align 8
  %mrpc_comp_hdr = getelementptr inbounds %struct.part_cfg_regs, ptr %111, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mrpc_comp_hdr, i32 150994944) #11, !srcloc !232
  %112 = ptrtoint ptr %pff_csr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pff_csr_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp4.i = icmp sgt i32 %113, 0
  br i1 %cmp4.i, label %if.end12.for.body.i_crit_edge, label %if.end12.enable_link_state_events.exit_crit_edge

if.end12.enable_link_state_events.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_link_state_events.exit

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %idx.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %114 = ptrtoint ptr %mmio_pff_csr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio_pff_csr.i, align 8
  %link_state_hdr.i = getelementptr %struct.pff_csr_regs, ptr %115, i32 %idx.05.i, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %link_state_hdr.i, i32 150994944) #11, !srcloc !232
  %inc.i = add nuw nsw i32 %idx.05.i, 1
  %116 = ptrtoint ptr %pff_csr_count.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pff_csr_count.i.i, align 4
  %cmp.i66 = icmp slt i32 %inc.i, %117
  br i1 %cmp.i66, label %for.body.i.for.body.i_crit_edge, label %for.body.i.enable_link_state_events.exit_crit_edge

for.body.i.enable_link_state_events.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_link_state_events.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

enable_link_state_events.exit:                    ; preds = %for.body.i.enable_link_state_events.exit_crit_edge, %if.end12.enable_link_state_events.exit_crit_edge
  %118 = ptrtoint ptr %dma_mrpc.i60 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dma_mrpc.i60, align 4
  %tobool13.not = icmp eq ptr %119, null
  br i1 %tobool13.not, label %enable_link_state_events.exit.if.end15_crit_edge, label %if.then14

enable_link_state_events.exit.if.end15_crit_edge: ; preds = %enable_link_state_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %enable_link_state_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dma_mrpc_dma_addr.i67 = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 30
  %120 = ptrtoint ptr %dma_mrpc_dma_addr.i67 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dma_mrpc_dma_addr.i67, align 8
  %122 = ptrtoint ptr %mmio_mrpc.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_mrpc.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.mrpc_regs, ptr %123, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %124 = tail call i32 @llvm.bswap.i32(i32 %121) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_addr.i, i32 %124) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %dma_addr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !232
  %125 = ptrtoint ptr %mmio_ntb.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio_ntb.i, align 4
  %odb.i.i = getelementptr i8, ptr %126, i32 413696
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %odb.i.i) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %128 = ptrtoint ptr %mmio_mrpc.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio_mrpc.i, align 4
  %dma_en.i = getelementptr inbounds %struct.mrpc_regs, ptr %129, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_en.i, i32 16777216) #11, !srcloc !232
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %enable_link_state_events.exit.if.end15_crit_edge
  %cdev = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 2
  %dev16 = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 1
  %call17 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end23, label %err_devadd

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.14) #14
  br label %cleanup

err_devadd:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stdev_kill(ptr noundef %retval.0.i)
  br label %err_put

err_put:                                          ; preds = %err_devadd, %do.end, %if.end76.i.err_put_crit_edge, %if.end30.i.err_put_crit_edge, %if.end23.i.err_put_crit_edge, %if.end17.i.err_put_crit_edge, %if.end4.i.err_put_crit_edge, %if.end.i50.err_put_crit_edge, %if.end5.err_put_crit_edge
  %rc.0 = phi i32 [ %retval.0.i6476, %do.end ], [ %call17, %err_devadd ], [ %call.i.i, %if.end.i50.err_put_crit_edge ], [ -95, %if.end30.i.err_put_crit_edge ], [ -12, %if.end23.i.err_put_crit_edge ], [ -12, %if.end17.i.err_put_crit_edge ], [ -16, %if.end4.i.err_put_crit_edge ], [ %call.i, %if.end5.err_put_crit_edge ], [ -12, %if.end76.i.err_put_crit_edge ]
  %dev25 = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 1
  %devt = getelementptr inbounds %struct.switchtec_dev, ptr %retval.0.i, i32 0, i32 1, i32 29
  %130 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %devt, align 8
  %and = and i32 %131, 1048575
  tail call void @ida_free(ptr noundef nonnull @switchtec_minor_ida, i32 noundef %and) #11
  tail call void @put_device(ptr noundef %dev25) #11
  br label %cleanup

cleanup:                                          ; preds = %err_put, %do.end23, %if.then3
  %retval.0 = phi i32 [ %30, %if.then3 ], [ %rc.0, %err_put ], [ 0, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switchtec_pci_remove(ptr nocapture noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %cdev = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 2
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #11
  %devt = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 1, i32 29
  %2 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devt, align 8
  %and = and i32 %3, 1048575
  tail call void @ida_free(ptr noundef nonnull @switchtec_minor_ida, i32 noundef %and) #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.70) #14
  tail call fastcc void @stdev_kill(ptr noundef %1)
  tail call void @put_device(ptr noundef %dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stdev_kill(ptr noundef %stdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stdev, align 8
  tail call void @pci_clear_master(ptr noundef %1) #11
  %mrpc_timeout = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 21
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mrpc_timeout) #11
  %mrpc_mutex = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mrpc_mutex, i32 noundef 0) #11
  %alive = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 22
  %2 = ptrtoint ptr %alive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %alive, align 4
  %mrpc_queue = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 18
  %3 = ptrtoint ptr %mrpc_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mrpc_queue, align 8
  %cmp.not28 = icmp eq ptr %4, %mrpc_queue
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in29 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %stuser.0 = getelementptr i8, ptr %.pn.in29, i32 -64
  %5 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in29, align 4
  %cmd_done = getelementptr i8, ptr %.pn.in29, i32 8
  %6 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %cmd_done, align 4
  %cmd_comp = getelementptr i8, ptr %.pn.in29, i32 -56
  tail call void @__wake_up(ptr noundef %cmd_comp, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in29, ptr %.pn.in29, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in29, ptr %prev.i3.i, align 4
  tail call fastcc void @stuser_put(ptr noundef %stuser.0)
  %cmp.not = icmp eq ptr %.pn, %mrpc_queue
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex) #11
  %event_wq = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %event_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrpc_event_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrpc_event_work.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mrpc_event_work, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %work, i32 -1500
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrpc_event_work.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -1508
  %mrpc_mutex = getelementptr i8, ptr %work, i32 -104
  tail call void @mutex_lock_nested(ptr noundef %mrpc_mutex, i32 noundef 0) #11
  %mrpc_timeout = getelementptr i8, ptr %work, i32 44
  %call5 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %mrpc_timeout) #11
  tail call fastcc void @mrpc_complete_cmd(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrpc_timeout_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1552
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrpc_timeout_work.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mrpc_timeout_work, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %work, i32 -1544
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrpc_timeout_work.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.40) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mrpc_mutex = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %mrpc_mutex, i32 noundef 0) #11
  %mmio_sys_info.i = getelementptr i8, ptr %work, i32 -172
  %0 = ptrtoint ptr %mmio_sys_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !228
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device1.i, align 2
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.i.not = icmp eq i32 %3, %conv.i
  br i1 %cmp.i.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mrpc_error_complete_cmd(ptr noundef %add.ptr)
  br label %out

if.end8:                                          ; preds = %do.end
  %dma_mrpc = getelementptr i8, ptr %work, i32 468
  %8 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_mrpc, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_mrpc = getelementptr i8, ptr %work, i32 -180
  %12 = ptrtoint ptr %mmio_mrpc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_mrpc, align 4
  %status13 = getelementptr inbounds %struct.mrpc_regs, ptr %13, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status13) #11, !srcloc !228
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %status.0 = phi i32 [ %11, %if.then10 ], [ %15, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0)
  %cmp = icmp eq i32 %status.0, 1
  br i1 %cmp, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 50) #11
  br label %out

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mrpc_complete_cmd(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %if.end19, %if.then16, %if.then7
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @link_event_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link_notifier = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %link_notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_notifier, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -1712
  tail call void %1(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stdev_release(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %dma_mrpc = getelementptr i8, ptr %dev, i32 2012
  %0 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mrpc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_mrpc = getelementptr i8, ptr %dev, i32 1364
  %2 = ptrtoint ptr %mmio_mrpc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_mrpc, align 4
  %dma_en = getelementptr inbounds %struct.mrpc_regs, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_en, i32 0) #11, !srcloc !232
  %mmio_ntb.i = getelementptr i8, ptr %dev, i32 1380
  %4 = ptrtoint ptr %mmio_ntb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_ntb.i, align 4
  %odb.i = getelementptr i8, ptr %5, i32 413696
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %odb.i) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %7 = ptrtoint ptr %mmio_mrpc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_mrpc, align 4
  %dma_addr = getelementptr inbounds %struct.mrpc_regs, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_addr, i32 0) #11, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  %add.ptr.i11 = getelementptr i8, ptr %dma_addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #11, !srcloc !232
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_mrpc, align 4
  %dma_mrpc_dma_addr = getelementptr i8, ptr %dev, i32 2016
  %13 = ptrtoint ptr %dma_mrpc_dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_mrpc_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 1040, ptr noundef %12, i32 noundef %14, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mrpc_complete_cmd(ptr noundef %stdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrpc_queue = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 18
  %0 = ptrtoint ptr %mrpc_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mrpc_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %mrpc_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %dma_mrpc = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 29
  %2 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_mrpc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_mrpc = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 9
  %6 = ptrtoint ptr %mmio_mrpc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_mrpc, align 4
  %status6 = getelementptr inbounds %struct.mrpc_regs, ptr %7, i32 0, i32 3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status6) #11, !srcloc !228
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %.sink = phi i32 [ %9, %if.else ], [ %5, %if.then3 ]
  %10 = getelementptr i8, ptr %1, i32 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink)
  %cmp = icmp eq i32 %.sink, 1
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %state1.i = getelementptr i8, ptr %1, i32 -60
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stuser_set_state.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mrpc_complete_cmd, %stuser_set_state.exit)) #11
          to label %if.then.i [label %stuser_set_state.exit], !srcloc !235

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stuser_set_state.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef %add.ptr, ptr noundef nonnull @.str.34) #11
  br label %stuser_set_state.exit

stuser_set_state.exit:                            ; preds = %if.then.i, %if.end12
  %return_code = getelementptr i8, ptr %1, i32 20
  %15 = ptrtoint ptr %return_code to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %return_code, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %17, label %stuser_set_state.exit.out_crit_edge [
    i32 2, label %stuser_set_state.exit.if.end18_crit_edge
    i32 255, label %stuser_set_state.exit.if.end18_crit_edge71
  ]

stuser_set_state.exit.if.end18_crit_edge71:       ; preds = %stuser_set_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

stuser_set_state.exit.if.end18_crit_edge:         ; preds = %stuser_set_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

stuser_set_state.exit.out_crit_edge:              ; preds = %stuser_set_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end18:                                         ; preds = %stuser_set_state.exit.if.end18_crit_edge, %stuser_set_state.exit.if.end18_crit_edge71
  %19 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_mrpc, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %rtn_code = getelementptr inbounds %struct.dma_mrpc_output, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %rtn_code to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rtn_code, align 4
  br label %if.end28

if.else24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_mrpc25 = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 9
  %23 = ptrtoint ptr %mmio_mrpc25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_mrpc25, align 4
  %ret_value = getelementptr inbounds %struct.mrpc_regs, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ret_value) #11, !srcloc !228
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then21
  %storemerge = phi i32 [ %26, %if.else24 ], [ %22, %if.then21 ]
  %27 = ptrtoint ptr %return_code to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %return_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %cmp30.not = icmp eq i32 %storemerge, 0
  br i1 %cmp30.not, label %if.end32, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end32:                                         ; preds = %if.end28
  %28 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_mrpc, align 4
  %tobool34.not = icmp eq ptr %29, null
  %data39 = getelementptr i8, ptr %1, i32 32
  br i1 %tobool34.not, label %if.else38, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %data37 = getelementptr inbounds %struct.dma_mrpc_output, ptr %29, i32 0, i32 4
  %read_len = getelementptr i8, ptr %1, i32 28
  %30 = ptrtoint ptr %read_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %read_len, align 4
  %32 = call ptr @memcpy(ptr %data39, ptr %data37, i32 %31)
  br label %out

if.else38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_mrpc41 = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 9
  %33 = ptrtoint ptr %mmio_mrpc41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_mrpc41, align 4
  %output_data = getelementptr inbounds %struct.mrpc_regs, ptr %34, i32 0, i32 1
  %read_len42 = getelementptr i8, ptr %1, i32 28
  %35 = ptrtoint ptr %read_len42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %read_len42, align 4
  tail call void @mmiocpy(ptr noundef %data39, ptr noundef %output_data, i32 noundef %36) #11
  br label %out

out:                                              ; preds = %if.else38, %if.then35, %if.end28.out_crit_edge, %stuser_set_state.exit.out_crit_edge
  %37 = ptrtoint ptr %mrpc_queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mrpc_queue, align 8
  %cmd_done.i = getelementptr i8, ptr %38, i32 8
  %39 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %cmd_done.i, align 4
  %cmd_comp.i = getelementptr i8, ptr %38, i32 -56
  tail call void @__wake_up(ptr noundef %cmd_comp.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %out.mrpc_cleanup_cmd.exit_crit_edge

out.mrpc_cleanup_cmd.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrpc_cleanup_cmd.exit

if.end.i.i.i:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %mrpc_cleanup_cmd.exit

mrpc_cleanup_cmd.exit:                            ; preds = %if.end.i.i.i, %out.mrpc_cleanup_cmd.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %38, i32 -64
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %38, ptr %38, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %38, ptr %prev.i3.i.i, align 4
  tail call fastcc void @stuser_put(ptr noundef %add.ptr.i) #11
  %mrpc_busy.i = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 19
  %48 = ptrtoint ptr %mrpc_busy.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %mrpc_busy.i, align 8
  tail call fastcc void @mrpc_cmd_submit(ptr noundef %stdev) #11
  br label %cleanup

cleanup:                                          ; preds = %mrpc_cleanup_cmd.exit, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stuser_set_state(ptr noundef %stuser, i32 noundef %state) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 1
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %state, ptr %state1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stuser_set_state.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stuser_set_state, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %stuser to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stuser, align 4
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %2, i32 0, i32 1
  %arrayidx = getelementptr [5 x ptr], ptr @stuser_set_state.state_names, i32 0, i32 %state
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stuser_set_state.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %stuser, ptr noundef %4) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stuser_put(ptr noundef %stuser) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !237
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !238

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !239
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stuser_free.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stuser_put, %stuser_free.exit.i)) #11
          to label %if.then.i.i [label %stuser_free.exit.i], !srcloc !235

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %stuser to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stuser, align 4
  %dev.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %2, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stuser_free.__UNIQUE_ID_ddebug248, ptr noundef %dev.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, ptr noundef %stuser) #11
  br label %stuser_free.exit.i

stuser_free.exit.i:                               ; preds = %if.then.i.i, %if.then.i
  %3 = ptrtoint ptr %stuser to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stuser, align 4
  %dev6.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %4, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev6.i.i) #11
  tail call void @kfree(ptr noundef %stuser) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %stuser_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mrpc_cmd_submit(ptr noundef %stdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrpc_busy = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 19
  %0 = ptrtoint ptr %mrpc_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mrpc_busy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mrpc_queue = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 18
  %2 = ptrtoint ptr %mrpc_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mrpc_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %mrpc_queue
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 -64
  %dma_mrpc = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 29
  %4 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_mrpc, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end3.if.end9_crit_edge, label %if.then6

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %5, align 4
  %7 = ptrtoint ptr %dma_mrpc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_mrpc, align 4
  %data = getelementptr inbounds %struct.dma_mrpc_output, ptr %8, i32 0, i32 4
  %9 = call ptr @memset(ptr %data, i32 255, i32 1024)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end3.if.end9_crit_edge
  %state1.i = getelementptr i8, ptr %3, i32 -60
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stuser_set_state.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mrpc_cmd_submit, %stuser_set_state.exit)) #11
          to label %if.then.i [label %stuser_set_state.exit], !srcloc !235

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stuser_set_state.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef %add.ptr, ptr noundef nonnull @.str.33) #11
  br label %stuser_set_state.exit

stuser_set_state.exit:                            ; preds = %if.then.i, %if.end9
  %13 = ptrtoint ptr %mrpc_busy to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %mrpc_busy, align 8
  %mmio_mrpc = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 9
  %14 = ptrtoint ptr %mmio_mrpc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_mrpc, align 4
  %data11 = getelementptr i8, ptr %3, i32 32
  %data_len = getelementptr i8, ptr %3, i32 24
  %16 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len, align 4
  tail call void @mmiocpy(ptr noundef %15, ptr noundef %data11, i32 noundef %17) #11
  %mmio_ntb.i = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 13
  %18 = ptrtoint ptr %mmio_ntb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_ntb.i, align 4
  %odb.i = getelementptr i8, ptr %19, i32 413696
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %odb.i) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %cmd = getelementptr i8, ptr %3, i32 12
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd, align 4
  %23 = ptrtoint ptr %mmio_mrpc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_mrpc, align 4
  %cmd14 = getelementptr inbounds %struct.mrpc_regs, ptr %24, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmd14, i32 %25) #11, !srcloc !232
  %mrpc_timeout = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %mrpc_timeout, i32 noundef 50) #11
  br label %cleanup

cleanup:                                          ; preds = %stuser_set_state.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mrpc_error_complete_cmd(ptr noundef %stdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrpc_queue = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 18
  %0 = ptrtoint ptr %mrpc_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mrpc_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %mrpc_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state1.i = getelementptr i8, ptr %1, i32 -60
  %2 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stuser_set_state.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mrpc_error_complete_cmd, %stuser_set_state.exit)) #11
          to label %if.then.i [label %stuser_set_state.exit], !srcloc !235

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %4, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stuser_set_state.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef %add.ptr, ptr noundef nonnull @.str.35) #11
  br label %stuser_set_state.exit

stuser_set_state.exit:                            ; preds = %if.then.i, %if.end
  %5 = ptrtoint ptr %mrpc_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrpc_queue, align 8
  %cmd_done.i = getelementptr i8, ptr %6, i32 8
  %7 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cmd_done.i, align 4
  %cmd_comp.i = getelementptr i8, ptr %6, i32 -56
  tail call void @__wake_up(ptr noundef %cmd_comp.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %stuser_set_state.exit.mrpc_cleanup_cmd.exit_crit_edge

stuser_set_state.exit.mrpc_cleanup_cmd.exit_crit_edge: ; preds = %stuser_set_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mrpc_cleanup_cmd.exit

if.end.i.i.i:                                     ; preds = %stuser_set_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %mrpc_cleanup_cmd.exit

mrpc_cleanup_cmd.exit:                            ; preds = %if.end.i.i.i, %stuser_set_state.exit.mrpc_cleanup_cmd.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %6, i32 -64
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %prev.i3.i.i, align 4
  tail call fastcc void @stuser_put(ptr noundef %add.ptr.i) #11
  %mrpc_busy.i = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 19
  %16 = ptrtoint ptr %mrpc_busy.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mrpc_busy.i, align 8
  tail call fastcc void @mrpc_cmd_submit(ptr noundef %stdev) #11
  br label %cleanup

cleanup:                                          ; preds = %mrpc_cleanup_cmd.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %0 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info, align 4
  %device_version = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %device_version) #11, !srcloc !228
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %0 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info, align 4
  %firmware_version = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %firmware_version) #11, !srcloc !228
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %0 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info, align 4
  %gen = getelementptr i8, ptr %dev, i32 1088
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gen, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %vendor_id = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 22
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %vendor_id, i32 noundef 8) #11
  %arrayidx.i = getelementptr i8, ptr %buf, i32 8
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 9
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 7
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp3.not.i = icmp eq i8 %8, 32
  br i1 %cmp3.not.i, label %if.end.i, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %arrayidx2.i, align 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx2.i.1 = getelementptr i8, ptr %buf, i32 6
  %11 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp3.not.i.1 = icmp eq i8 %12, 32
  br i1 %cmp3.not.i.1, label %if.end.i.1, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.1:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %arrayidx2.i.1, align 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx2.i.2 = getelementptr i8, ptr %buf, i32 5
  %15 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp3.not.i.2 = icmp eq i8 %16, 32
  br i1 %cmp3.not.i.2, label %if.end.i.2, label %if.end.i.1.cleanup.sink.split_crit_edge

if.end.i.1.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.2:                                       ; preds = %if.end.i.1
  %17 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %arrayidx2.i.2, align 1
  %18 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx2.i.1, align 1
  %arrayidx2.i.3 = getelementptr i8, ptr %buf, i32 4
  %19 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp3.not.i.3 = icmp eq i8 %20, 32
  br i1 %cmp3.not.i.3, label %if.end.i.3, label %if.end.i.2.cleanup.sink.split_crit_edge

if.end.i.2.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.3:                                       ; preds = %if.end.i.2
  %21 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 10, ptr %arrayidx2.i.3, align 1
  %22 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx2.i.2, align 1
  %arrayidx2.i.4 = getelementptr i8, ptr %buf, i32 3
  %23 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %cmp3.not.i.4 = icmp eq i8 %24, 32
  br i1 %cmp3.not.i.4, label %if.end.i.4, label %if.end.i.3.cleanup.sink.split_crit_edge

if.end.i.3.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.4:                                       ; preds = %if.end.i.3
  %25 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %arrayidx2.i.4, align 1
  %26 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx2.i.3, align 1
  %arrayidx2.i.5 = getelementptr i8, ptr %buf, i32 2
  %27 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %28)
  %cmp3.not.i.5 = icmp eq i8 %28, 32
  br i1 %cmp3.not.i.5, label %if.end.i.5, label %if.end.i.4.cleanup.sink.split_crit_edge

if.end.i.4.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.5:                                       ; preds = %if.end.i.4
  %29 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 10, ptr %arrayidx2.i.5, align 1
  %30 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx2.i.4, align 1
  %arrayidx2.i.6 = getelementptr i8, ptr %buf, i32 1
  %31 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %32)
  %cmp3.not.i.6 = icmp eq i8 %32, 32
  br i1 %cmp3.not.i.6, label %if.end.i.5.cleanup.sink.split.sink.split_crit_edge, label %if.end.i.5.cleanup.sink.split_crit_edge

if.end.i.5.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.5.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

if.then4:                                         ; preds = %entry
  %vendor_id5 = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 34
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %vendor_id5, i32 noundef 8) #11
  %arrayidx.i13 = getelementptr i8, ptr %buf, i32 8
  %33 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 10, ptr %arrayidx.i13, align 1
  %arrayidx1.i14 = getelementptr i8, ptr %buf, i32 9
  %34 = ptrtoint ptr %arrayidx1.i14 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx1.i14, align 1
  %arrayidx2.i17 = getelementptr i8, ptr %buf, i32 7
  %35 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %cmp3.not.i18 = icmp eq i8 %36, 32
  br i1 %cmp3.not.i18, label %if.end.i23, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23:                                       ; preds = %if.then4
  %37 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %arrayidx2.i17, align 1
  %38 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx.i13, align 1
  %arrayidx2.i17.1 = getelementptr i8, ptr %buf, i32 6
  %39 = ptrtoint ptr %arrayidx2.i17.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx2.i17.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp3.not.i18.1 = icmp eq i8 %40, 32
  br i1 %cmp3.not.i18.1, label %if.end.i23.1, label %if.end.i23.cleanup.sink.split_crit_edge

if.end.i23.cleanup.sink.split_crit_edge:          ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.1:                                     ; preds = %if.end.i23
  %41 = ptrtoint ptr %arrayidx2.i17.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %arrayidx2.i17.1, align 1
  %42 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx2.i17, align 1
  %arrayidx2.i17.2 = getelementptr i8, ptr %buf, i32 5
  %43 = ptrtoint ptr %arrayidx2.i17.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx2.i17.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %44)
  %cmp3.not.i18.2 = icmp eq i8 %44, 32
  br i1 %cmp3.not.i18.2, label %if.end.i23.2, label %if.end.i23.1.cleanup.sink.split_crit_edge

if.end.i23.1.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.2:                                     ; preds = %if.end.i23.1
  %45 = ptrtoint ptr %arrayidx2.i17.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 10, ptr %arrayidx2.i17.2, align 1
  %46 = ptrtoint ptr %arrayidx2.i17.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx2.i17.1, align 1
  %arrayidx2.i17.3 = getelementptr i8, ptr %buf, i32 4
  %47 = ptrtoint ptr %arrayidx2.i17.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i17.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %48)
  %cmp3.not.i18.3 = icmp eq i8 %48, 32
  br i1 %cmp3.not.i18.3, label %if.end.i23.3, label %if.end.i23.2.cleanup.sink.split_crit_edge

if.end.i23.2.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.3:                                     ; preds = %if.end.i23.2
  %49 = ptrtoint ptr %arrayidx2.i17.3 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %arrayidx2.i17.3, align 1
  %50 = ptrtoint ptr %arrayidx2.i17.2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx2.i17.2, align 1
  %arrayidx2.i17.4 = getelementptr i8, ptr %buf, i32 3
  %51 = ptrtoint ptr %arrayidx2.i17.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx2.i17.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %52)
  %cmp3.not.i18.4 = icmp eq i8 %52, 32
  br i1 %cmp3.not.i18.4, label %if.end.i23.4, label %if.end.i23.3.cleanup.sink.split_crit_edge

if.end.i23.3.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.4:                                     ; preds = %if.end.i23.3
  %53 = ptrtoint ptr %arrayidx2.i17.4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 10, ptr %arrayidx2.i17.4, align 1
  %54 = ptrtoint ptr %arrayidx2.i17.3 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx2.i17.3, align 1
  %arrayidx2.i17.5 = getelementptr i8, ptr %buf, i32 2
  %55 = ptrtoint ptr %arrayidx2.i17.5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx2.i17.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %56)
  %cmp3.not.i18.5 = icmp eq i8 %56, 32
  br i1 %cmp3.not.i18.5, label %if.end.i23.5, label %if.end.i23.4.cleanup.sink.split_crit_edge

if.end.i23.4.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.5:                                     ; preds = %if.end.i23.4
  %57 = ptrtoint ptr %arrayidx2.i17.5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 10, ptr %arrayidx2.i17.5, align 1
  %58 = ptrtoint ptr %arrayidx2.i17.4 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx2.i17.4, align 1
  %arrayidx2.i17.6 = getelementptr i8, ptr %buf, i32 1
  %59 = ptrtoint ptr %arrayidx2.i17.6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx2.i17.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %60)
  %cmp3.not.i18.6 = icmp eq i8 %60, 32
  br i1 %cmp3.not.i18.6, label %if.end.i23.5.cleanup.sink.split.sink.split_crit_edge, label %if.end.i23.5.cleanup.sink.split_crit_edge

if.end.i23.5.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.5.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i23.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i23.5.cleanup.sink.split.sink.split_crit_edge, %if.end.i.5.cleanup.sink.split.sink.split_crit_edge
  %arrayidx2.i17.6.sink = phi ptr [ %arrayidx2.i.6, %if.end.i.5.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx2.i17.6, %if.end.i23.5.cleanup.sink.split.sink.split_crit_edge ]
  %arrayidx2.i17.5.sink = phi ptr [ %arrayidx2.i.5, %if.end.i.5.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx2.i17.5, %if.end.i23.5.cleanup.sink.split.sink.split_crit_edge ]
  %61 = ptrtoint ptr %arrayidx2.i17.6.sink to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 10, ptr %arrayidx2.i17.6.sink, align 1
  %62 = ptrtoint ptr %arrayidx2.i17.5.sink to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx2.i17.5.sink, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i23.5.cleanup.sink.split_crit_edge, %if.end.i23.4.cleanup.sink.split_crit_edge, %if.end.i23.3.cleanup.sink.split_crit_edge, %if.end.i23.2.cleanup.sink.split_crit_edge, %if.end.i23.1.cleanup.sink.split_crit_edge, %if.end.i23.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge, %if.end.i.5.cleanup.sink.split_crit_edge, %if.end.i.4.cleanup.sink.split_crit_edge, %if.end.i.3.cleanup.sink.split_crit_edge, %if.end.i.2.cleanup.sink.split_crit_edge, %if.end.i.1.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call.i24 = tail call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i24, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %0 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info, align 4
  %gen = getelementptr i8, ptr %dev, i32 1088
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gen, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %product_id = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 23
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %product_id, i32 noundef 16) #11
  %arrayidx.i = getelementptr i8, ptr %buf, i32 16
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 17
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 15
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp3.not.i = icmp eq i8 %8, 32
  br i1 %cmp3.not.i, label %if.end.i, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %arrayidx2.i, align 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx2.i.1 = getelementptr i8, ptr %buf, i32 14
  %11 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp3.not.i.1 = icmp eq i8 %12, 32
  br i1 %cmp3.not.i.1, label %if.end.i.1, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.1:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %arrayidx2.i.1, align 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx2.i.2 = getelementptr i8, ptr %buf, i32 13
  %15 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp3.not.i.2 = icmp eq i8 %16, 32
  br i1 %cmp3.not.i.2, label %if.end.i.2, label %if.end.i.1.cleanup.sink.split_crit_edge

if.end.i.1.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.2:                                       ; preds = %if.end.i.1
  %17 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %arrayidx2.i.2, align 1
  %18 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx2.i.1, align 1
  %arrayidx2.i.3 = getelementptr i8, ptr %buf, i32 12
  %19 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp3.not.i.3 = icmp eq i8 %20, 32
  br i1 %cmp3.not.i.3, label %if.end.i.3, label %if.end.i.2.cleanup.sink.split_crit_edge

if.end.i.2.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.3:                                       ; preds = %if.end.i.2
  %21 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 10, ptr %arrayidx2.i.3, align 1
  %22 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx2.i.2, align 1
  %arrayidx2.i.4 = getelementptr i8, ptr %buf, i32 11
  %23 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %cmp3.not.i.4 = icmp eq i8 %24, 32
  br i1 %cmp3.not.i.4, label %if.end.i.4, label %if.end.i.3.cleanup.sink.split_crit_edge

if.end.i.3.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.4:                                       ; preds = %if.end.i.3
  %25 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %arrayidx2.i.4, align 1
  %26 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx2.i.3, align 1
  %arrayidx2.i.5 = getelementptr i8, ptr %buf, i32 10
  %27 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %28)
  %cmp3.not.i.5 = icmp eq i8 %28, 32
  br i1 %cmp3.not.i.5, label %if.end.i.5, label %if.end.i.4.cleanup.sink.split_crit_edge

if.end.i.4.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.5:                                       ; preds = %if.end.i.4
  %29 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 10, ptr %arrayidx2.i.5, align 1
  %30 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx2.i.4, align 1
  %arrayidx2.i.6 = getelementptr i8, ptr %buf, i32 9
  %31 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %32)
  %cmp3.not.i.6 = icmp eq i8 %32, 32
  br i1 %cmp3.not.i.6, label %if.end.i.6, label %if.end.i.5.cleanup.sink.split_crit_edge

if.end.i.5.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.6:                                       ; preds = %if.end.i.5
  %33 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 10, ptr %arrayidx2.i.6, align 1
  %34 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx2.i.5, align 1
  %arrayidx2.i.7 = getelementptr i8, ptr %buf, i32 8
  %35 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %cmp3.not.i.7 = icmp eq i8 %36, 32
  br i1 %cmp3.not.i.7, label %if.end.i.7, label %if.end.i.6.cleanup.sink.split_crit_edge

if.end.i.6.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.7:                                       ; preds = %if.end.i.6
  %37 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %arrayidx2.i.7, align 1
  %38 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx2.i.6, align 1
  %arrayidx2.i.8 = getelementptr i8, ptr %buf, i32 7
  %39 = ptrtoint ptr %arrayidx2.i.8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx2.i.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp3.not.i.8 = icmp eq i8 %40, 32
  br i1 %cmp3.not.i.8, label %if.end.i.8, label %if.end.i.7.cleanup.sink.split_crit_edge

if.end.i.7.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.8:                                       ; preds = %if.end.i.7
  %41 = ptrtoint ptr %arrayidx2.i.8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %arrayidx2.i.8, align 1
  %42 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx2.i.7, align 1
  %arrayidx2.i.9 = getelementptr i8, ptr %buf, i32 6
  %43 = ptrtoint ptr %arrayidx2.i.9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx2.i.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %44)
  %cmp3.not.i.9 = icmp eq i8 %44, 32
  br i1 %cmp3.not.i.9, label %if.end.i.9, label %if.end.i.8.cleanup.sink.split_crit_edge

if.end.i.8.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.9:                                       ; preds = %if.end.i.8
  %45 = ptrtoint ptr %arrayidx2.i.9 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 10, ptr %arrayidx2.i.9, align 1
  %46 = ptrtoint ptr %arrayidx2.i.8 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx2.i.8, align 1
  %arrayidx2.i.10 = getelementptr i8, ptr %buf, i32 5
  %47 = ptrtoint ptr %arrayidx2.i.10 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %48)
  %cmp3.not.i.10 = icmp eq i8 %48, 32
  br i1 %cmp3.not.i.10, label %if.end.i.10, label %if.end.i.9.cleanup.sink.split_crit_edge

if.end.i.9.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.10:                                      ; preds = %if.end.i.9
  %49 = ptrtoint ptr %arrayidx2.i.10 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %arrayidx2.i.10, align 1
  %50 = ptrtoint ptr %arrayidx2.i.9 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx2.i.9, align 1
  %arrayidx2.i.11 = getelementptr i8, ptr %buf, i32 4
  %51 = ptrtoint ptr %arrayidx2.i.11 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx2.i.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %52)
  %cmp3.not.i.11 = icmp eq i8 %52, 32
  br i1 %cmp3.not.i.11, label %if.end.i.11, label %if.end.i.10.cleanup.sink.split_crit_edge

if.end.i.10.cleanup.sink.split_crit_edge:         ; preds = %if.end.i.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.11:                                      ; preds = %if.end.i.10
  %53 = ptrtoint ptr %arrayidx2.i.11 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 10, ptr %arrayidx2.i.11, align 1
  %54 = ptrtoint ptr %arrayidx2.i.10 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx2.i.10, align 1
  %arrayidx2.i.12 = getelementptr i8, ptr %buf, i32 3
  %55 = ptrtoint ptr %arrayidx2.i.12 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx2.i.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %56)
  %cmp3.not.i.12 = icmp eq i8 %56, 32
  br i1 %cmp3.not.i.12, label %if.end.i.12, label %if.end.i.11.cleanup.sink.split_crit_edge

if.end.i.11.cleanup.sink.split_crit_edge:         ; preds = %if.end.i.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.12:                                      ; preds = %if.end.i.11
  %57 = ptrtoint ptr %arrayidx2.i.12 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 10, ptr %arrayidx2.i.12, align 1
  %58 = ptrtoint ptr %arrayidx2.i.11 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx2.i.11, align 1
  %arrayidx2.i.13 = getelementptr i8, ptr %buf, i32 2
  %59 = ptrtoint ptr %arrayidx2.i.13 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx2.i.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %60)
  %cmp3.not.i.13 = icmp eq i8 %60, 32
  br i1 %cmp3.not.i.13, label %if.end.i.13, label %if.end.i.12.cleanup.sink.split_crit_edge

if.end.i.12.cleanup.sink.split_crit_edge:         ; preds = %if.end.i.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.13:                                      ; preds = %if.end.i.12
  %61 = ptrtoint ptr %arrayidx2.i.13 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 10, ptr %arrayidx2.i.13, align 1
  %62 = ptrtoint ptr %arrayidx2.i.12 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx2.i.12, align 1
  %arrayidx2.i.14 = getelementptr i8, ptr %buf, i32 1
  %63 = ptrtoint ptr %arrayidx2.i.14 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx2.i.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %64)
  %cmp3.not.i.14 = icmp eq i8 %64, 32
  br i1 %cmp3.not.i.14, label %if.end.i.13.cleanup.sink.split.sink.split_crit_edge, label %if.end.i.13.cleanup.sink.split_crit_edge

if.end.i.13.cleanup.sink.split_crit_edge:         ; preds = %if.end.i.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.13.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

if.then4:                                         ; preds = %entry
  %product_id5 = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 35
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %product_id5, i32 noundef 24) #11
  %arrayidx.i13 = getelementptr i8, ptr %buf, i32 24
  %65 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %arrayidx.i13, align 1
  %arrayidx1.i14 = getelementptr i8, ptr %buf, i32 25
  %66 = ptrtoint ptr %arrayidx1.i14 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx1.i14, align 1
  %arrayidx2.i17 = getelementptr i8, ptr %buf, i32 23
  %67 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx2.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %68)
  %cmp3.not.i18 = icmp eq i8 %68, 32
  br i1 %cmp3.not.i18, label %if.end.i23, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23:                                       ; preds = %if.then4
  %69 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 10, ptr %arrayidx2.i17, align 1
  %70 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx.i13, align 1
  %arrayidx2.i17.1 = getelementptr i8, ptr %buf, i32 22
  %71 = ptrtoint ptr %arrayidx2.i17.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx2.i17.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %72)
  %cmp3.not.i18.1 = icmp eq i8 %72, 32
  br i1 %cmp3.not.i18.1, label %if.end.i23.1, label %if.end.i23.cleanup.sink.split_crit_edge

if.end.i23.cleanup.sink.split_crit_edge:          ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.1:                                     ; preds = %if.end.i23
  %73 = ptrtoint ptr %arrayidx2.i17.1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 10, ptr %arrayidx2.i17.1, align 1
  %74 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx2.i17, align 1
  %arrayidx2.i17.2 = getelementptr i8, ptr %buf, i32 21
  %75 = ptrtoint ptr %arrayidx2.i17.2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx2.i17.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %76)
  %cmp3.not.i18.2 = icmp eq i8 %76, 32
  br i1 %cmp3.not.i18.2, label %if.end.i23.2, label %if.end.i23.1.cleanup.sink.split_crit_edge

if.end.i23.1.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.2:                                     ; preds = %if.end.i23.1
  %77 = ptrtoint ptr %arrayidx2.i17.2 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 10, ptr %arrayidx2.i17.2, align 1
  %78 = ptrtoint ptr %arrayidx2.i17.1 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx2.i17.1, align 1
  %arrayidx2.i17.3 = getelementptr i8, ptr %buf, i32 20
  %79 = ptrtoint ptr %arrayidx2.i17.3 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx2.i17.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %80)
  %cmp3.not.i18.3 = icmp eq i8 %80, 32
  br i1 %cmp3.not.i18.3, label %if.end.i23.3, label %if.end.i23.2.cleanup.sink.split_crit_edge

if.end.i23.2.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.3:                                     ; preds = %if.end.i23.2
  %81 = ptrtoint ptr %arrayidx2.i17.3 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 10, ptr %arrayidx2.i17.3, align 1
  %82 = ptrtoint ptr %arrayidx2.i17.2 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx2.i17.2, align 1
  %arrayidx2.i17.4 = getelementptr i8, ptr %buf, i32 19
  %83 = ptrtoint ptr %arrayidx2.i17.4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx2.i17.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %84)
  %cmp3.not.i18.4 = icmp eq i8 %84, 32
  br i1 %cmp3.not.i18.4, label %if.end.i23.4, label %if.end.i23.3.cleanup.sink.split_crit_edge

if.end.i23.3.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.4:                                     ; preds = %if.end.i23.3
  %85 = ptrtoint ptr %arrayidx2.i17.4 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 10, ptr %arrayidx2.i17.4, align 1
  %86 = ptrtoint ptr %arrayidx2.i17.3 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx2.i17.3, align 1
  %arrayidx2.i17.5 = getelementptr i8, ptr %buf, i32 18
  %87 = ptrtoint ptr %arrayidx2.i17.5 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx2.i17.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %88)
  %cmp3.not.i18.5 = icmp eq i8 %88, 32
  br i1 %cmp3.not.i18.5, label %if.end.i23.5, label %if.end.i23.4.cleanup.sink.split_crit_edge

if.end.i23.4.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.5:                                     ; preds = %if.end.i23.4
  %89 = ptrtoint ptr %arrayidx2.i17.5 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 10, ptr %arrayidx2.i17.5, align 1
  %90 = ptrtoint ptr %arrayidx2.i17.4 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %arrayidx2.i17.4, align 1
  %arrayidx2.i17.6 = getelementptr i8, ptr %buf, i32 17
  %91 = ptrtoint ptr %arrayidx2.i17.6 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx2.i17.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %92)
  %cmp3.not.i18.6 = icmp eq i8 %92, 32
  br i1 %cmp3.not.i18.6, label %if.end.i23.6, label %if.end.i23.5.cleanup.sink.split_crit_edge

if.end.i23.5.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.6:                                     ; preds = %if.end.i23.5
  %93 = ptrtoint ptr %arrayidx2.i17.6 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 10, ptr %arrayidx2.i17.6, align 1
  %94 = ptrtoint ptr %arrayidx2.i17.5 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %arrayidx2.i17.5, align 1
  %arrayidx2.i17.7 = getelementptr i8, ptr %buf, i32 16
  %95 = ptrtoint ptr %arrayidx2.i17.7 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx2.i17.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %96)
  %cmp3.not.i18.7 = icmp eq i8 %96, 32
  br i1 %cmp3.not.i18.7, label %if.end.i23.7, label %if.end.i23.6.cleanup.sink.split_crit_edge

if.end.i23.6.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.7:                                     ; preds = %if.end.i23.6
  %97 = ptrtoint ptr %arrayidx2.i17.7 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 10, ptr %arrayidx2.i17.7, align 1
  %98 = ptrtoint ptr %arrayidx2.i17.6 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx2.i17.6, align 1
  %arrayidx2.i17.8 = getelementptr i8, ptr %buf, i32 15
  %99 = ptrtoint ptr %arrayidx2.i17.8 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx2.i17.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %100)
  %cmp3.not.i18.8 = icmp eq i8 %100, 32
  br i1 %cmp3.not.i18.8, label %if.end.i23.8, label %if.end.i23.7.cleanup.sink.split_crit_edge

if.end.i23.7.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.8:                                     ; preds = %if.end.i23.7
  %101 = ptrtoint ptr %arrayidx2.i17.8 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 10, ptr %arrayidx2.i17.8, align 1
  %102 = ptrtoint ptr %arrayidx2.i17.7 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx2.i17.7, align 1
  %arrayidx2.i17.9 = getelementptr i8, ptr %buf, i32 14
  %103 = ptrtoint ptr %arrayidx2.i17.9 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx2.i17.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %104)
  %cmp3.not.i18.9 = icmp eq i8 %104, 32
  br i1 %cmp3.not.i18.9, label %if.end.i23.9, label %if.end.i23.8.cleanup.sink.split_crit_edge

if.end.i23.8.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.9:                                     ; preds = %if.end.i23.8
  %105 = ptrtoint ptr %arrayidx2.i17.9 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 10, ptr %arrayidx2.i17.9, align 1
  %106 = ptrtoint ptr %arrayidx2.i17.8 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx2.i17.8, align 1
  %arrayidx2.i17.10 = getelementptr i8, ptr %buf, i32 13
  %107 = ptrtoint ptr %arrayidx2.i17.10 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx2.i17.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %108)
  %cmp3.not.i18.10 = icmp eq i8 %108, 32
  br i1 %cmp3.not.i18.10, label %if.end.i23.10, label %if.end.i23.9.cleanup.sink.split_crit_edge

if.end.i23.9.cleanup.sink.split_crit_edge:        ; preds = %if.end.i23.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.10:                                    ; preds = %if.end.i23.9
  %109 = ptrtoint ptr %arrayidx2.i17.10 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 10, ptr %arrayidx2.i17.10, align 1
  %110 = ptrtoint ptr %arrayidx2.i17.9 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx2.i17.9, align 1
  %arrayidx2.i17.11 = getelementptr i8, ptr %buf, i32 12
  %111 = ptrtoint ptr %arrayidx2.i17.11 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx2.i17.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %112)
  %cmp3.not.i18.11 = icmp eq i8 %112, 32
  br i1 %cmp3.not.i18.11, label %if.end.i23.11, label %if.end.i23.10.cleanup.sink.split_crit_edge

if.end.i23.10.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.11:                                    ; preds = %if.end.i23.10
  %113 = ptrtoint ptr %arrayidx2.i17.11 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 10, ptr %arrayidx2.i17.11, align 1
  %114 = ptrtoint ptr %arrayidx2.i17.10 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %arrayidx2.i17.10, align 1
  %arrayidx2.i17.12 = getelementptr i8, ptr %buf, i32 11
  %115 = ptrtoint ptr %arrayidx2.i17.12 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx2.i17.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %116)
  %cmp3.not.i18.12 = icmp eq i8 %116, 32
  br i1 %cmp3.not.i18.12, label %if.end.i23.12, label %if.end.i23.11.cleanup.sink.split_crit_edge

if.end.i23.11.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.12:                                    ; preds = %if.end.i23.11
  %117 = ptrtoint ptr %arrayidx2.i17.12 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 10, ptr %arrayidx2.i17.12, align 1
  %118 = ptrtoint ptr %arrayidx2.i17.11 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %arrayidx2.i17.11, align 1
  %arrayidx2.i17.13 = getelementptr i8, ptr %buf, i32 10
  %119 = ptrtoint ptr %arrayidx2.i17.13 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx2.i17.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %120)
  %cmp3.not.i18.13 = icmp eq i8 %120, 32
  br i1 %cmp3.not.i18.13, label %if.end.i23.13, label %if.end.i23.12.cleanup.sink.split_crit_edge

if.end.i23.12.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.13:                                    ; preds = %if.end.i23.12
  %121 = ptrtoint ptr %arrayidx2.i17.13 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 10, ptr %arrayidx2.i17.13, align 1
  %122 = ptrtoint ptr %arrayidx2.i17.12 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %arrayidx2.i17.12, align 1
  %arrayidx2.i17.14 = getelementptr i8, ptr %buf, i32 9
  %123 = ptrtoint ptr %arrayidx2.i17.14 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx2.i17.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %124)
  %cmp3.not.i18.14 = icmp eq i8 %124, 32
  br i1 %cmp3.not.i18.14, label %if.end.i23.14, label %if.end.i23.13.cleanup.sink.split_crit_edge

if.end.i23.13.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.14:                                    ; preds = %if.end.i23.13
  %125 = ptrtoint ptr %arrayidx2.i17.14 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 10, ptr %arrayidx2.i17.14, align 1
  %126 = ptrtoint ptr %arrayidx2.i17.13 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %arrayidx2.i17.13, align 1
  %arrayidx2.i17.15 = getelementptr i8, ptr %buf, i32 8
  %127 = ptrtoint ptr %arrayidx2.i17.15 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx2.i17.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %128)
  %cmp3.not.i18.15 = icmp eq i8 %128, 32
  br i1 %cmp3.not.i18.15, label %if.end.i23.15, label %if.end.i23.14.cleanup.sink.split_crit_edge

if.end.i23.14.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.15:                                    ; preds = %if.end.i23.14
  %129 = ptrtoint ptr %arrayidx2.i17.15 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 10, ptr %arrayidx2.i17.15, align 1
  %130 = ptrtoint ptr %arrayidx2.i17.14 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %arrayidx2.i17.14, align 1
  %arrayidx2.i17.16 = getelementptr i8, ptr %buf, i32 7
  %131 = ptrtoint ptr %arrayidx2.i17.16 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx2.i17.16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %132)
  %cmp3.not.i18.16 = icmp eq i8 %132, 32
  br i1 %cmp3.not.i18.16, label %if.end.i23.16, label %if.end.i23.15.cleanup.sink.split_crit_edge

if.end.i23.15.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.16:                                    ; preds = %if.end.i23.15
  %133 = ptrtoint ptr %arrayidx2.i17.16 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 10, ptr %arrayidx2.i17.16, align 1
  %134 = ptrtoint ptr %arrayidx2.i17.15 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %arrayidx2.i17.15, align 1
  %arrayidx2.i17.17 = getelementptr i8, ptr %buf, i32 6
  %135 = ptrtoint ptr %arrayidx2.i17.17 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx2.i17.17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %136)
  %cmp3.not.i18.17 = icmp eq i8 %136, 32
  br i1 %cmp3.not.i18.17, label %if.end.i23.17, label %if.end.i23.16.cleanup.sink.split_crit_edge

if.end.i23.16.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.17:                                    ; preds = %if.end.i23.16
  %137 = ptrtoint ptr %arrayidx2.i17.17 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 10, ptr %arrayidx2.i17.17, align 1
  %138 = ptrtoint ptr %arrayidx2.i17.16 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %arrayidx2.i17.16, align 1
  %arrayidx2.i17.18 = getelementptr i8, ptr %buf, i32 5
  %139 = ptrtoint ptr %arrayidx2.i17.18 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx2.i17.18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %140)
  %cmp3.not.i18.18 = icmp eq i8 %140, 32
  br i1 %cmp3.not.i18.18, label %if.end.i23.18, label %if.end.i23.17.cleanup.sink.split_crit_edge

if.end.i23.17.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.18:                                    ; preds = %if.end.i23.17
  %141 = ptrtoint ptr %arrayidx2.i17.18 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 10, ptr %arrayidx2.i17.18, align 1
  %142 = ptrtoint ptr %arrayidx2.i17.17 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %arrayidx2.i17.17, align 1
  %arrayidx2.i17.19 = getelementptr i8, ptr %buf, i32 4
  %143 = ptrtoint ptr %arrayidx2.i17.19 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx2.i17.19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %144)
  %cmp3.not.i18.19 = icmp eq i8 %144, 32
  br i1 %cmp3.not.i18.19, label %if.end.i23.19, label %if.end.i23.18.cleanup.sink.split_crit_edge

if.end.i23.18.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.19:                                    ; preds = %if.end.i23.18
  %145 = ptrtoint ptr %arrayidx2.i17.19 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 10, ptr %arrayidx2.i17.19, align 1
  %146 = ptrtoint ptr %arrayidx2.i17.18 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx2.i17.18, align 1
  %arrayidx2.i17.20 = getelementptr i8, ptr %buf, i32 3
  %147 = ptrtoint ptr %arrayidx2.i17.20 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx2.i17.20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %148)
  %cmp3.not.i18.20 = icmp eq i8 %148, 32
  br i1 %cmp3.not.i18.20, label %if.end.i23.20, label %if.end.i23.19.cleanup.sink.split_crit_edge

if.end.i23.19.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.20:                                    ; preds = %if.end.i23.19
  %149 = ptrtoint ptr %arrayidx2.i17.20 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 10, ptr %arrayidx2.i17.20, align 1
  %150 = ptrtoint ptr %arrayidx2.i17.19 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx2.i17.19, align 1
  %arrayidx2.i17.21 = getelementptr i8, ptr %buf, i32 2
  %151 = ptrtoint ptr %arrayidx2.i17.21 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx2.i17.21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %152)
  %cmp3.not.i18.21 = icmp eq i8 %152, 32
  br i1 %cmp3.not.i18.21, label %if.end.i23.21, label %if.end.i23.20.cleanup.sink.split_crit_edge

if.end.i23.20.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.21:                                    ; preds = %if.end.i23.20
  %153 = ptrtoint ptr %arrayidx2.i17.21 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 10, ptr %arrayidx2.i17.21, align 1
  %154 = ptrtoint ptr %arrayidx2.i17.20 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %arrayidx2.i17.20, align 1
  %arrayidx2.i17.22 = getelementptr i8, ptr %buf, i32 1
  %155 = ptrtoint ptr %arrayidx2.i17.22 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx2.i17.22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %156)
  %cmp3.not.i18.22 = icmp eq i8 %156, 32
  br i1 %cmp3.not.i18.22, label %if.end.i23.21.cleanup.sink.split.sink.split_crit_edge, label %if.end.i23.21.cleanup.sink.split_crit_edge

if.end.i23.21.cleanup.sink.split_crit_edge:       ; preds = %if.end.i23.21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i23.21.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i23.21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i23.21.cleanup.sink.split.sink.split_crit_edge, %if.end.i.13.cleanup.sink.split.sink.split_crit_edge
  %arrayidx2.i17.22.sink = phi ptr [ %arrayidx2.i.14, %if.end.i.13.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx2.i17.22, %if.end.i23.21.cleanup.sink.split.sink.split_crit_edge ]
  %arrayidx2.i17.21.sink = phi ptr [ %arrayidx2.i.13, %if.end.i.13.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx2.i17.21, %if.end.i23.21.cleanup.sink.split.sink.split_crit_edge ]
  %157 = ptrtoint ptr %arrayidx2.i17.22.sink to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 10, ptr %arrayidx2.i17.22.sink, align 1
  %158 = ptrtoint ptr %arrayidx2.i17.21.sink to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %arrayidx2.i17.21.sink, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i23.21.cleanup.sink.split_crit_edge, %if.end.i23.20.cleanup.sink.split_crit_edge, %if.end.i23.19.cleanup.sink.split_crit_edge, %if.end.i23.18.cleanup.sink.split_crit_edge, %if.end.i23.17.cleanup.sink.split_crit_edge, %if.end.i23.16.cleanup.sink.split_crit_edge, %if.end.i23.15.cleanup.sink.split_crit_edge, %if.end.i23.14.cleanup.sink.split_crit_edge, %if.end.i23.13.cleanup.sink.split_crit_edge, %if.end.i23.12.cleanup.sink.split_crit_edge, %if.end.i23.11.cleanup.sink.split_crit_edge, %if.end.i23.10.cleanup.sink.split_crit_edge, %if.end.i23.9.cleanup.sink.split_crit_edge, %if.end.i23.8.cleanup.sink.split_crit_edge, %if.end.i23.7.cleanup.sink.split_crit_edge, %if.end.i23.6.cleanup.sink.split_crit_edge, %if.end.i23.5.cleanup.sink.split_crit_edge, %if.end.i23.4.cleanup.sink.split_crit_edge, %if.end.i23.3.cleanup.sink.split_crit_edge, %if.end.i23.2.cleanup.sink.split_crit_edge, %if.end.i23.1.cleanup.sink.split_crit_edge, %if.end.i23.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge, %if.end.i.13.cleanup.sink.split_crit_edge, %if.end.i.12.cleanup.sink.split_crit_edge, %if.end.i.11.cleanup.sink.split_crit_edge, %if.end.i.10.cleanup.sink.split_crit_edge, %if.end.i.9.cleanup.sink.split_crit_edge, %if.end.i.8.cleanup.sink.split_crit_edge, %if.end.i.7.cleanup.sink.split_crit_edge, %if.end.i.6.cleanup.sink.split_crit_edge, %if.end.i.5.cleanup.sink.split_crit_edge, %if.end.i.4.cleanup.sink.split_crit_edge, %if.end.i.3.cleanup.sink.split_crit_edge, %if.end.i.2.cleanup.sink.split_crit_edge, %if.end.i.1.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call.i24 = tail call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i24, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %0 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info, align 4
  %gen = getelementptr i8, ptr %dev, i32 1088
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gen, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %product_revision = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 30
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %product_revision, i32 noundef 4) #11
  %arrayidx.i = getelementptr i8, ptr %buf, i32 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 5
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp3.not.i = icmp eq i8 %8, 32
  br i1 %cmp3.not.i, label %if.end.i, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %arrayidx2.i, align 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx2.i.1 = getelementptr i8, ptr %buf, i32 2
  %11 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp3.not.i.1 = icmp eq i8 %12, 32
  br i1 %cmp3.not.i.1, label %if.end.i.1, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.1:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %arrayidx2.i.1, align 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx2.i.2 = getelementptr i8, ptr %buf, i32 1
  %15 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp3.not.i.2 = icmp eq i8 %16, 32
  br i1 %cmp3.not.i.2, label %if.end.i.1.cleanup.sink.split.sink.split_crit_edge, label %if.end.i.1.cleanup.sink.split_crit_edge

if.end.i.1.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i.1.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

if.then4:                                         ; preds = %entry
  %product_revision5 = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 36
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %product_revision5, i32 noundef 2) #11
  %arrayidx.i13 = getelementptr i8, ptr %buf, i32 2
  %17 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %arrayidx.i13, align 1
  %arrayidx1.i14 = getelementptr i8, ptr %buf, i32 3
  %18 = ptrtoint ptr %arrayidx1.i14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx1.i14, align 1
  %arrayidx2.i17 = getelementptr i8, ptr %buf, i32 1
  %19 = ptrtoint ptr %arrayidx2.i17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp3.not.i18 = icmp eq i8 %20, 32
  br i1 %cmp3.not.i18, label %if.then4.cleanup.sink.split.sink.split_crit_edge, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then4.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then4.cleanup.sink.split.sink.split_crit_edge, %if.end.i.1.cleanup.sink.split.sink.split_crit_edge
  %arrayidx2.i17.sink = phi ptr [ %arrayidx2.i.2, %if.end.i.1.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx2.i17, %if.then4.cleanup.sink.split.sink.split_crit_edge ]
  %arrayidx.i13.sink = phi ptr [ %arrayidx2.i.1, %if.end.i.1.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx.i13, %if.then4.cleanup.sink.split.sink.split_crit_edge ]
  %21 = ptrtoint ptr %arrayidx2.i17.sink to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 10, ptr %arrayidx2.i17.sink, align 1
  %22 = ptrtoint ptr %arrayidx.i13.sink to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.i13.sink, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then4.cleanup.sink.split_crit_edge, %if.end.i.1.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call.i24 = tail call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i24, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @component_vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gen = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %2 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_sys_info, align 4
  %component_vendor = getelementptr inbounds %struct.sys_info_regs, ptr %3, i32 0, i32 3, i32 0, i32 30, i32 1
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %component_vendor, i32 noundef 8) #11
  %arrayidx.i = getelementptr i8, ptr %buf, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 9
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 7
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %cmp3.not.i = icmp eq i8 %7, 32
  br i1 %cmp3.not.i, label %if.end.i, label %if.end.io_string_show.exit_crit_edge

if.end.io_string_show.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %io_string_show.exit

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %arrayidx2.i, align 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx2.i.1 = getelementptr i8, ptr %buf, i32 6
  %10 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %11)
  %cmp3.not.i.1 = icmp eq i8 %11, 32
  br i1 %cmp3.not.i.1, label %if.end.i.1, label %if.end.i.io_string_show.exit_crit_edge

if.end.i.io_string_show.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %io_string_show.exit

if.end.i.1:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %arrayidx2.i.1, align 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx2.i.2 = getelementptr i8, ptr %buf, i32 5
  %14 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp3.not.i.2 = icmp eq i8 %15, 32
  br i1 %cmp3.not.i.2, label %if.end.i.2, label %if.end.i.1.io_string_show.exit_crit_edge

if.end.i.1.io_string_show.exit_crit_edge:         ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %io_string_show.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  %16 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 10, ptr %arrayidx2.i.2, align 1
  %17 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx2.i.1, align 1
  %arrayidx2.i.3 = getelementptr i8, ptr %buf, i32 4
  %18 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp3.not.i.3 = icmp eq i8 %19, 32
  br i1 %cmp3.not.i.3, label %if.end.i.3, label %if.end.i.2.io_string_show.exit_crit_edge

if.end.i.2.io_string_show.exit_crit_edge:         ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %io_string_show.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  %20 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %arrayidx2.i.3, align 1
  %21 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx2.i.2, align 1
  %arrayidx2.i.4 = getelementptr i8, ptr %buf, i32 3
  %22 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %23)
  %cmp3.not.i.4 = icmp eq i8 %23, 32
  br i1 %cmp3.not.i.4, label %if.end.i.4, label %if.end.i.3.io_string_show.exit_crit_edge

if.end.i.3.io_string_show.exit_crit_edge:         ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %io_string_show.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  %24 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %arrayidx2.i.4, align 1
  %25 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx2.i.3, align 1
  %arrayidx2.i.5 = getelementptr i8, ptr %buf, i32 2
  %26 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %27)
  %cmp3.not.i.5 = icmp eq i8 %27, 32
  br i1 %cmp3.not.i.5, label %if.end.i.5, label %if.end.i.4.io_string_show.exit_crit_edge

if.end.i.4.io_string_show.exit_crit_edge:         ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %io_string_show.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  %28 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %arrayidx2.i.5, align 1
  %29 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx2.i.4, align 1
  %arrayidx2.i.6 = getelementptr i8, ptr %buf, i32 1
  %30 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %31)
  %cmp3.not.i.6 = icmp eq i8 %31, 32
  br i1 %cmp3.not.i.6, label %if.end.i.6, label %if.end.i.5.io_string_show.exit_crit_edge

if.end.i.5.io_string_show.exit_crit_edge:         ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %io_string_show.exit

if.end.i.6:                                       ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 10, ptr %arrayidx2.i.6, align 1
  %33 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx2.i.5, align 1
  br label %io_string_show.exit

io_string_show.exit:                              ; preds = %if.end.i.6, %if.end.i.5.io_string_show.exit_crit_edge, %if.end.i.4.io_string_show.exit_crit_edge, %if.end.i.3.io_string_show.exit_crit_edge, %if.end.i.2.io_string_show.exit_crit_edge, %if.end.i.1.io_string_show.exit_crit_edge, %if.end.i.io_string_show.exit_crit_edge, %if.end.io_string_show.exit_crit_edge
  %call.i = tail call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %io_string_show.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call.i, %io_string_show.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @component_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %0 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info, align 4
  %component_id = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 31, i32 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %component_id) #11, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  %gen = getelementptr i8, ptr %dev, i32 1088
  %3 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i16 @llvm.bswap.i16(i16 %2) #11
  %conv = zext i16 %5 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @component_revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sys_info = getelementptr i8, ptr %dev, i32 1372
  %0 = ptrtoint ptr %mmio_sys_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sys_info, align 4
  %component_revision = getelementptr inbounds %struct.sys_info_regs, ptr %1, i32 0, i32 3, i32 0, i32 32
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %component_revision) #11, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  %gen = getelementptr i8, ptr %dev, i32 1088
  %3 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %2 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @partition_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %partition = getelementptr i8, ptr %dev, i32 1092
  %0 = ptrtoint ptr %partition to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %partition, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %1) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @partition_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %partition_count = getelementptr i8, ptr %dev, i32 1096
  %0 = ptrtoint ptr %partition_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %partition_count, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %1) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_dev_read(ptr nocapture noundef readonly %filp, ptr noundef %data, i32 noundef %size, ptr nocapture noundef readnone %off) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = add i32 %size, -1029
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1025, i32 %4)
  %5 = icmp ult i32 %4, -1025
  br i1 %5, label %entry.cleanup71_crit_edge, label %if.end

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.end:                                           ; preds = %entry
  %mrpc_mutex.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mrpc_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup71_crit_edge

if.end.cleanup71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.end.i:                                         ; preds = %if.end
  %alive.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %alive.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alive.i, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end4

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup71

if.end4:                                          ; preds = %if.end.i
  %state = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup71

if.end7:                                          ; preds = %if.end4
  %sub = add nsw i32 %size, -4
  %read_len = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %read_len, align 4
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %11 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %cmd_done = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %cmd_done to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd_done, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.then10.cleanup71_crit_edge, label %if.then10.if.end35_crit_edge

if.then10.if.end35_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then10.cleanup71_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.else:                                          ; preds = %if.end7
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 587) #11
  %cmd_done17 = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %cmd_done17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd_done17, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not = icmp eq i8 %16, 0
  br i1 %tobool18.not, label %if.then19, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then19:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %cmd_comp = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 2
  %call21155 = call i32 @prepare_to_wait_event(ptr noundef %cmd_comp, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %18 = ptrtoint ptr %cmd_done17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmd_done17, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not156 = icmp eq i8 %19, 0
  br i1 %tobool23.not156, label %if.then19.if.end25_crit_edge, label %if.then19.if.end30.thread144_crit_edge

if.then19.if.end30.thread144_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.thread144

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  br label %if.end25

if.end25:                                         ; preds = %cleanup.if.end25_crit_edge, %if.then19.if.end25_crit_edge
  %call21157 = phi i32 [ %call21, %cleanup.if.end25_crit_edge ], [ %call21155, %if.then19.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21157)
  %tobool26.not = icmp eq i32 %call21157, 0
  br i1 %tobool26.not, label %cleanup, label %if.end30

cleanup:                                          ; preds = %if.end25
  call void @schedule() #11
  %call21 = call i32 @prepare_to_wait_event(ptr noundef %cmd_comp, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %20 = ptrtoint ptr %cmd_done17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd_done17, align 4, !range !230
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %cleanup.if.end25_crit_edge, label %cleanup.if.end30.thread144_crit_edge

cleanup.if.end30.thread144_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.thread144

cleanup.if.end25_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end30.thread144:                               ; preds = %cleanup.if.end30.thread144_crit_edge, %if.then19.if.end30.thread144_crit_edge
  call void @finish_wait(ptr noundef %cmd_comp, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end35

if.end30:                                         ; preds = %if.end25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21157)
  %cmp32 = icmp slt i32 %call21157, 0
  br i1 %cmp32, label %if.end30.cleanup71_crit_edge, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end30.cleanup71_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.end35:                                         ; preds = %if.end30.if.end35_crit_edge, %if.end30.thread144, %if.else.if.end35_crit_edge, %if.then10.if.end35_crit_edge
  %call.i125 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mrpc_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.end.i129, label %if.end35.cleanup71_crit_edge

if.end35.cleanup71_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.end.i129:                                      ; preds = %if.end35
  %22 = ptrtoint ptr %alive.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %alive.i, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i128 = icmp eq i8 %23, 0
  br i1 %tobool1.not.i128, label %if.then2.i130, label %if.end39

if.then2.i130:                                    ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup71

if.end39:                                         ; preds = %if.end.i129
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %25, label %if.then47 [
    i32 4, label %if.then42
    i32 3, label %if.end49
  ]

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup71

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup71

if.end49:                                         ; preds = %if.end39
  %return_code = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 8
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end49.out_crit_edge, label %if.end.i.i

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.i:                                       ; preds = %if.end49
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 4, i32 -1226833920) #17, !srcloc !240
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %return_code, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %return_code, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool51.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool51.not, label %if.end53, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end53:                                         ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %data54 = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 11
  call void @__check_object_size(ptr noundef %data54, i32 noundef %sub, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i115 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i115, label %if.end53.copy_to_user.exit123_crit_edge, label %if.end.i.i118

if.end53.copy_to_user.exit123_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit123

if.end.i.i118:                                    ; preds = %if.end53
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %sub, i32 -1226833920) #17, !srcloc !240
  %asmresult.i.i116 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i116)
  %cmp.i6.i117 = icmp eq i32 %asmresult.i.i116, 0
  br i1 %cmp.i6.i117, label %if.then2.i.i121, label %if.end.i.i118.copy_to_user.exit123_crit_edge

if.end.i.i118.copy_to_user.exit123_crit_edge:     ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit123

if.then2.i.i121:                                  ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i119 = call zeroext i1 @__kasan_check_read(ptr noundef %data54, i32 noundef %sub) #11
  %call.i12.i.i120 = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %data54, i32 noundef %sub) #11
  br label %copy_to_user.exit123

copy_to_user.exit123:                             ; preds = %if.then2.i.i121, %if.end.i.i118.copy_to_user.exit123_crit_edge, %if.end53.copy_to_user.exit123_crit_edge
  %n.addr.0.i122 = phi i32 [ %sub, %if.end53.copy_to_user.exit123_crit_edge ], [ %call.i12.i.i120, %if.then2.i.i121 ], [ %sub, %if.end.i.i118.copy_to_user.exit123_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i122)
  %tobool57.not = icmp eq i32 %n.addr.0.i122, 0
  br i1 %tobool57.not, label %if.end59, label %copy_to_user.exit123.out_crit_edge

copy_to_user.exit123.out_crit_edge:               ; preds = %copy_to_user.exit123
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end59:                                         ; preds = %copy_to_user.exit123
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @stuser_set_state(ptr noundef %1, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.end59, %copy_to_user.exit123.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end49.out_crit_edge
  call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  %status = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %30, label %if.else70 [
    i32 2, label %out.cleanup71_crit_edge
    i32 255, label %out.cleanup71_crit_edge163
    i32 256, label %if.then69
  ]

out.cleanup71_crit_edge163:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

out.cleanup71_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.then69:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.else70:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

cleanup71:                                        ; preds = %if.else70, %if.then69, %out.cleanup71_crit_edge, %out.cleanup71_crit_edge163, %if.then47, %if.then42, %if.then2.i130, %if.end35.cleanup71_crit_edge, %if.end30.cleanup71_crit_edge, %if.then10.cleanup71_crit_edge, %if.then6, %if.then2.i, %if.end.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ -52, %if.then6 ], [ -5, %if.then42 ], [ -52, %if.then47 ], [ -6, %if.then69 ], [ -74, %if.else70 ], [ -22, %entry.cleanup71_crit_edge ], [ -11, %if.then10.cleanup71_crit_edge ], [ %call21157, %if.end30.cleanup71_crit_edge ], [ %size, %out.cleanup71_crit_edge ], [ %size, %out.cleanup71_crit_edge163 ], [ -4, %if.end.cleanup71_crit_edge ], [ -19, %if.then2.i ], [ -4, %if.end35.cleanup71_crit_edge ], [ -19, %if.then2.i130 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_dev_write(ptr nocapture noundef readonly %filp, ptr noundef %data, i32 noundef %size, ptr nocapture noundef readnone %off) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = add i32 %size, -1029
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1025, i32 %4)
  %5 = icmp ult i32 %4, -1025
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %size, -4
  %data_len = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %data_len, align 4
  %mrpc_mutex.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mrpc_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %alive.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %alive.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alive.i, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end4

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end.i
  %state = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.not = icmp eq i32 %10, 0
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end4
  %cmd = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 6
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end7.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end7.if.then11.i.i_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end7
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 4, i32 -1226833920) #17, !srcloc !241
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !238

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd, i32 noundef 4) #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !214) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !242
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %cmd, ptr noundef %data, i32 noundef 4) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !238

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end7.if.then11.i.i_crit_edge
  %res.0.i.i79 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end7.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i79
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i79)
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end.i.i
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd, align 4
  %trunc = trunc i32 %17 to i16
  %18 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %trunc, label %if.end11.if.end20_crit_edge [
    i16 135, label %if.end11.land.lhs.true_crit_edge
    i16 41, label %if.end11.land.lhs.true_crit_edge86
  ]

if.end11.land.lhs.true_crit_edge86:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end11.land.lhs.true_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end11.land.lhs.true_crit_edge, %if.end11.land.lhs.true_crit_edge86
  %call18 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call18, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %data21 = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 11
  tail call void @__check_object_size(ptr noundef %data21, i32 noundef %sub, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #11
  %call.i.i56 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i56, label %if.end20.if.end.i.i69_crit_edge, label %land.lhs.true.i.i59

if.end20.if.end.i.i69_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i69

land.lhs.true.i.i59:                              ; preds = %if.end20
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %sub, i32 -1226833920) #17, !srcloc !241
  %asmresult.i.i57 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i57)
  %cmp.i6.i58 = icmp eq i32 %asmresult.i.i57, 0
  br i1 %cmp.i6.i58, label %if.then.i7.i66, label %land.lhs.true.i.i59.if.end.i.i69_crit_edge, !prof !238

land.lhs.true.i.i59.if.end.i.i69_crit_edge:       ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i69

if.then.i7.i66:                                   ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %data21, i32 noundef %sub) #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !214) #11
  %and.i.i.i.i.i.i61 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i61 to ptr
  %cpu_domain.i.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i62) #9, !srcloc !242
  %and.i.i.i.i63 = and i32 %22, -13
  %or.i.i.i.i64 = or i32 %and.i.i.i.i63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i64) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i65 = tail call i32 @arm_copy_from_user(ptr noundef %data21, ptr noundef %add.ptr, i32 noundef %sub) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  br label %if.end.i.i69

if.end.i.i69:                                     ; preds = %if.then.i7.i66, %land.lhs.true.i.i59.if.end.i.i69_crit_edge, %if.end20.if.end.i.i69_crit_edge
  %res.0.i.i67 = phi i32 [ %sub, %if.end20.if.end.i.i69_crit_edge ], [ %call1.i.i.i65, %if.then.i7.i66 ], [ %sub, %land.lhs.true.i.i59.if.end.i.i69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i67)
  %tobool4.not.i.i68 = icmp eq i32 %res.0.i.i67, 0
  br i1 %tobool4.not.i.i68, label %24, label %if.then11.i.i72, !prof !238

if.then11.i.i72:                                  ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i70 = sub i32 %sub, %res.0.i.i67
  %add.ptr.i.i71 = getelementptr i8, ptr %data21, i32 %sub.i.i70
  %23 = call ptr @memset(ptr %add.ptr.i.i71, i32 0, i32 %res.0.i.i67)
  br label %cleanup.sink.split

24:                                               ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mrpc_queue_cmd(ptr noundef %1)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %24, %if.then11.i.i72, %land.lhs.true.cleanup.sink.split_crit_edge, %if.then11.i.i, %if.end4.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %24 ], [ -19, %if.end.i.cleanup.sink.split_crit_edge ], [ -1, %land.lhs.true.cleanup.sink.split_crit_edge ], [ -52, %if.end4.cleanup.sink.split_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i72 ]
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -4, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_dev_poll(ptr noundef %filp, ptr noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmd_comp = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit29_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit29_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit29

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %cmd_comp, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i27_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i27_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i27

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %cmd_comp, ptr noundef nonnull %wait) #11
  br label %land.lhs.true.i27

land.lhs.true.i27:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i27_crit_edge
  %event_wq32 = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i24 = icmp eq ptr %7, null
  %tobool3.not.i25 = icmp eq ptr %event_wq32, null
  %or.cond.i26 = or i1 %tobool3.not.i25, %tobool1.not.i24
  br i1 %or.cond.i26, label %land.lhs.true.i27.poll_wait.exit29_crit_edge, label %if.then.i28

land.lhs.true.i27.poll_wait.exit29_crit_edge:     ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit29

if.then.i28:                                      ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %filp, ptr noundef nonnull %event_wq32, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit29

poll_wait.exit29:                                 ; preds = %if.then.i28, %land.lhs.true.i27.poll_wait.exit29_crit_edge, %entry.poll_wait.exit29_crit_edge
  %mrpc_mutex.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mrpc_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i30, label %if.end.i, label %poll_wait.exit29.cleanup_crit_edge

poll_wait.exit29.cleanup_crit_edge:               ; preds = %poll_wait.exit29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %poll_wait.exit29
  %alive.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %alive.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %alive.i, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i31 = icmp eq i8 %9, 0
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br i1 %tobool1.not.i31, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %cmd_done = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %cmd_done to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_done, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 65
  %event_cnt = getelementptr inbounds %struct.switchtec_user, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %event_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_cnt, align 4
  %event_cnt5 = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_cnt5, i32 noundef 4) #11
  %14 = ptrtoint ptr %event_cnt5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %event_cnt5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  %or8 = or i32 %spec.select, 130
  %ret.1 = select i1 %cmp.not, i32 %spec.select, i32 %or8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %poll_wait.exit29.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end ], [ 8221, %poll_wait.exit29.cleanup_crit_edge ], [ 8221, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_dev_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %p.i97 = alloca %struct.switchtec_ioctl_pff_port, align 4
  %p.i = alloca %struct.switchtec_ioctl_pff_port, align 4
  %ctl.i = alloca %struct.switchtec_ioctl_event_ctl, align 4
  %info.i38 = alloca %struct.switchtec_ioctl_flash_part_info, align 4
  %info.i = alloca %struct.switchtec_ioctl_flash_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = inttoptr i32 %arg to ptr
  %mrpc_mutex.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mrpc_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %alive.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %alive.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %alive.i, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 -2146412736, label %sw.bb
    i32 -1072670911, label %sw.bb3
    i32 -2120722622, label %sw.bb5
    i32 -1071098045, label %sw.bb7
    i32 -1072933052, label %sw.bb9
    i32 -1072933051, label %sw.bb11
    i32 -2066196670, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #11
  %8 = getelementptr inbounds i8, ptr %info.i, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %8, align 8
  %mmio_flash_info.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %mmio_flash_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_flash_info.i, align 8
  %gen.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gen.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %13, label %sw.bb.ioctl_flash_info.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then5.i
  ]

sw.bb.ioctl_flash_info.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_flash_info.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %flash_length.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %11, i32 0, i32 5
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %flash_length.i) #11, !srcloc !228
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  br label %if.end59.i.i.i

if.then5.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %flash_length6.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %11, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %flash_length6.i) #11, !srcloc !228
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  br label %if.end59.i.i.i

if.end59.i.i.i:                                   ; preds = %if.then5.i, %if.then.i
  %storemerge.in.i = phi i32 [ %18, %if.then5.i ], [ %16, %if.then.i ]
  %.sink.i = phi i32 [ 19, %if.then5.i ], [ 13, %if.then.i ]
  %storemerge.i = zext i32 %storemerge.in.i to i64
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %storemerge.i, ptr %info.i, align 8
  %num_partitions.i = getelementptr inbounds %struct.switchtec_ioctl_flash_info, ptr %info.i, i32 0, i32 1
  %20 = ptrtoint ptr %num_partitions.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %num_partitions.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end59.i.i.i.ioctl_flash_info.exit_crit_edge, label %if.end.i.i.i

if.end59.i.i.i.ioctl_flash_info.exit_crit_edge:   ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_flash_info.exit

if.end.i.i.i:                                     ; preds = %if.end59.i.i.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #17, !srcloc !240
  %asmresult.i.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.ioctl_flash_info.exit_crit_edge

if.end.i.i.i.ioctl_flash_info.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_flash_info.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 16) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %info.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i36 = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i36, i32 0, i32 -14
  br label %ioctl_flash_info.exit

ioctl_flash_info.exit:                            ; preds = %copy_to_user.exit.i, %if.end.i.i.i.ioctl_flash_info.exit_crit_edge, %if.end59.i.i.i.ioctl_flash_info.exit_crit_edge, %sw.bb.ioctl_flash_info.exit_crit_edge
  %retval.0.i37 = phi i32 [ -95, %sw.bb.ioctl_flash_info.exit_crit_edge ], [ -14, %if.end59.i.i.i.ioctl_flash_info.exit_crit_edge ], [ -14, %if.end.i.i.i.ioctl_flash_info.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i38) #11
  %22 = call ptr @memset(ptr %info.i38, i32 0, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #11
  %call.i.i.i39 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i39, label %sw.bb3.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb3.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb3
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #17
  %asmresult.i.i.i40 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i40)
  %cmp.i6.i.i41 = icmp eq i32 %asmresult.i.i.i40, 0
  br i1 %cmp.i6.i.i41, label %if.end.i.i.i43, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !238

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i43:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i38, i32 noundef 16) #11
  %24 = call i32 @llvm.read_register.i32(metadata !214) #11
  %and.i.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !242
  %and.i.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i38, ptr noundef %4, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i45, label %if.end.i.i.i43.if.then11.i.i.i_crit_edge, !prof !238

if.end.i.i.i43.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i43.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb3.if.then11.i.i.i_crit_edge
  %res.0.i.i60.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i43.if.then11.i.i.i_crit_edge ], [ 16, %sw.bb3.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i60.i
  %add.ptr.i.i.i = getelementptr i8, ptr %info.i38, i32 %sub.i.i.i
  %27 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i60.i)
  br label %ioctl_flash_part_info.exit

if.end.i45:                                       ; preds = %if.end.i.i.i43
  %gen.i44 = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %gen.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gen.i44, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %29, label %if.end.i45.ioctl_flash_part_info.exit_crit_edge [
    i32 0, label %if.then1.i
    i32 1, label %if.then8.i
  ]

if.end.i45.ioctl_flash_part_info.exit_crit_edge:  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_flash_part_info.exit

if.then1.i:                                       ; preds = %if.end.i45
  %mmio_flash_info.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 12
  %31 = ptrtoint ptr %mmio_flash_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_flash_info.i.i, align 8
  %mmio_sys_info.i.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %mmio_sys_info.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_sys_info.i.i, align 4
  %35 = getelementptr inbounds %struct.sys_info_regs, ptr %34, i32 0, i32 3
  %36 = ptrtoint ptr %info.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %info.i38, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %37, label %if.then1.i.ioctl_flash_part_info.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb15.i.i
    i32 3, label %sw.bb25.i.i
    i32 4, label %sw.bb37.i.i
    i32 5, label %sw.bb38.i.i
    i32 6, label %sw.bb39.i.i
    i32 7, label %sw.bb42.i.i
    i32 8, label %sw.bb45.i.i
    i32 9, label %sw.bb48.i.i
    i32 10, label %sw.bb51.i.i
    i32 11, label %sw.bb54.i.i
    i32 12, label %sw.bb57.i.i
  ]

if.then1.i.ioctl_flash_part_info.exit_crit_edge:  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_flash_part_info.exit

sw.bb.i.i:                                        ; preds = %if.then1.i
  %active_cfg.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 2
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %active_cfg.i.i) #11, !srcloc !228
  %40 = call i32 @llvm.bswap.i32(i32 %39) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %cfg0.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 6
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cfg0.i.i) #11, !srcloc !228
  %42 = call i32 @llvm.bswap.i32(i32 %41) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %43 = ptrtoint ptr %address1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %address1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 6, i32 1
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i.i.i) #11, !srcloc !228
  %45 = call i32 @llvm.bswap.i32(i32 %44) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %46 = ptrtoint ptr %length3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %length3.i.i.i, align 4
  %cfg_running.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %34, i32 0, i32 3, i32 0, i32 10
  %47 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cfg_running.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %47)
  %cmp.i.i = icmp eq i16 %47, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %48 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %active.i.i, align 4
  %or.i.i = or i32 %49, 2
  store i32 %or.i.i, ptr %active.i.i, align 4
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then1.i
  %active_cfg4.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 2
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %active_cfg4.i.i) #11, !srcloc !228
  %51 = call i32 @llvm.bswap.i32(i32 %50) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %cfg1.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 7
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cfg1.i.i) #11, !srcloc !228
  %53 = call i32 @llvm.bswap.i32(i32 %52) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i107.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %54 = ptrtoint ptr %address1.i107.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %address1.i107.i.i, align 4
  %length.i108.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 7, i32 1
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i108.i.i) #11, !srcloc !228
  %56 = call i32 @llvm.bswap.i32(i32 %55) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i109.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %57 = ptrtoint ptr %length3.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %length3.i109.i.i, align 4
  %cfg_running6.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %34, i32 0, i32 3, i32 0, i32 10
  %58 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cfg_running6.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %58)
  %cmp9.i.i = icmp eq i16 %58, 1280
  br i1 %cmp9.i.i, label %if.then11.i.i, label %sw.bb3.i.i.sw.epilog.i.i_crit_edge

sw.bb3.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then11.i.i:                                    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active12.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %59 = ptrtoint ptr %active12.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %active12.i.i, align 4
  %or13.i.i = or i32 %60, 2
  store i32 %or13.i.i, ptr %active12.i.i, align 4
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %if.then1.i
  %active_img.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 1
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %active_img.i.i) #11, !srcloc !228
  %62 = call i32 @llvm.bswap.i32(i32 %61) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %img0.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 8
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %img0.i.i) #11, !srcloc !228
  %64 = call i32 @llvm.bswap.i32(i32 %63) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i110.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %65 = ptrtoint ptr %address1.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %address1.i110.i.i, align 4
  %length.i111.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 8, i32 1
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i111.i.i) #11, !srcloc !228
  %67 = call i32 @llvm.bswap.i32(i32 %66) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i112.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %68 = ptrtoint ptr %length3.i112.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %length3.i112.i.i, align 4
  %img_running.i.i = getelementptr inbounds %struct.sys_info_regs_gen3, ptr %35, i32 0, i32 6
  %69 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %img_running.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %69)
  %cmp19.i.i = icmp eq i16 %69, 768
  br i1 %cmp19.i.i, label %if.then21.i.i, label %sw.bb15.i.i.sw.epilog.i.i_crit_edge

sw.bb15.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then21.i.i:                                    ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active22.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %70 = ptrtoint ptr %active22.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %active22.i.i, align 4
  %or23.i.i = or i32 %71, 2
  store i32 %or23.i.i, ptr %active22.i.i, align 4
  br label %sw.epilog.i.i

sw.bb25.i.i:                                      ; preds = %if.then1.i
  %active_img26.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 1
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %active_img26.i.i) #11, !srcloc !228
  %73 = call i32 @llvm.bswap.i32(i32 %72) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %img1.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 9
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %img1.i.i) #11, !srcloc !228
  %75 = call i32 @llvm.bswap.i32(i32 %74) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i113.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %76 = ptrtoint ptr %address1.i113.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %address1.i113.i.i, align 4
  %length.i114.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 9, i32 1
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i114.i.i) #11, !srcloc !228
  %78 = call i32 @llvm.bswap.i32(i32 %77) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i115.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %79 = ptrtoint ptr %length3.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %length3.i115.i.i, align 4
  %img_running28.i.i = getelementptr inbounds %struct.sys_info_regs_gen3, ptr %35, i32 0, i32 6
  %80 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %img_running28.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %80)
  %cmp31.i.i = icmp eq i16 %80, 1792
  br i1 %cmp31.i.i, label %if.then33.i.i, label %sw.bb25.i.i.sw.epilog.i.i_crit_edge

sw.bb25.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.then33.i.i:                                    ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active34.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %81 = ptrtoint ptr %active34.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %active34.i.i, align 4
  %or35.i.i = or i32 %82, 2
  store i32 %or35.i.i, ptr %active34.i.i, align 4
  br label %sw.epilog.i.i

sw.bb37.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %nvlog.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 10
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %nvlog.i.i) #11, !srcloc !228
  %84 = call i32 @llvm.bswap.i32(i32 %83) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i116.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %85 = ptrtoint ptr %address1.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %address1.i116.i.i, align 4
  %length.i117.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 10, i32 1
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i117.i.i) #11, !srcloc !228
  %87 = call i32 @llvm.bswap.i32(i32 %86) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i118.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %88 = ptrtoint ptr %length3.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %length3.i118.i.i, align 4
  br label %sw.epilog.i.i

sw.bb38.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %vendor.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vendor.i.i) #11, !srcloc !228
  %90 = call i32 @llvm.bswap.i32(i32 %89) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i119.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %91 = ptrtoint ptr %address1.i119.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %address1.i119.i.i, align 4
  %length.i120.i.i = getelementptr inbounds %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 0, i32 1
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i120.i.i) #11, !srcloc !228
  %93 = call i32 @llvm.bswap.i32(i32 %92) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i121.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %94 = ptrtoint ptr %length3.i121.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %length3.i121.i.i, align 4
  br label %sw.epilog.i.i

sw.bb39.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx41.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 1
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx41.i.i) #11, !srcloc !228
  %96 = call i32 @llvm.bswap.i32(i32 %95) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i122.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %97 = ptrtoint ptr %address1.i122.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %address1.i122.i.i, align 4
  %length.i123.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 1, i32 1
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i123.i.i) #11, !srcloc !228
  %99 = call i32 @llvm.bswap.i32(i32 %98) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i124.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %100 = ptrtoint ptr %length3.i124.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %length3.i124.i.i, align 4
  br label %sw.epilog.i.i

sw.bb42.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx44.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 2
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx44.i.i) #11, !srcloc !228
  %102 = call i32 @llvm.bswap.i32(i32 %101) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i125.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %103 = ptrtoint ptr %address1.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %address1.i125.i.i, align 4
  %length.i126.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 2, i32 1
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i126.i.i) #11, !srcloc !228
  %105 = call i32 @llvm.bswap.i32(i32 %104) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i127.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %106 = ptrtoint ptr %length3.i127.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %length3.i127.i.i, align 4
  br label %sw.epilog.i.i

sw.bb45.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx47.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 3
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.i.i) #11, !srcloc !228
  %108 = call i32 @llvm.bswap.i32(i32 %107) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i128.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %109 = ptrtoint ptr %address1.i128.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %address1.i128.i.i, align 4
  %length.i129.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 3, i32 1
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i129.i.i) #11, !srcloc !228
  %111 = call i32 @llvm.bswap.i32(i32 %110) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i130.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %112 = ptrtoint ptr %length3.i130.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %length3.i130.i.i, align 4
  br label %sw.epilog.i.i

sw.bb48.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx50.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 4
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx50.i.i) #11, !srcloc !228
  %114 = call i32 @llvm.bswap.i32(i32 %113) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i131.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %115 = ptrtoint ptr %address1.i131.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %address1.i131.i.i, align 4
  %length.i132.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 4, i32 1
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i132.i.i) #11, !srcloc !228
  %117 = call i32 @llvm.bswap.i32(i32 %116) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i133.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %118 = ptrtoint ptr %length3.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %length3.i133.i.i, align 4
  br label %sw.epilog.i.i

sw.bb51.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx53.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 5
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx53.i.i) #11, !srcloc !228
  %120 = call i32 @llvm.bswap.i32(i32 %119) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i134.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %121 = ptrtoint ptr %address1.i134.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %address1.i134.i.i, align 4
  %length.i135.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 5, i32 1
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i135.i.i) #11, !srcloc !228
  %123 = call i32 @llvm.bswap.i32(i32 %122) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i136.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %124 = ptrtoint ptr %length3.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %length3.i136.i.i, align 4
  br label %sw.epilog.i.i

sw.bb54.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx56.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 6
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx56.i.i) #11, !srcloc !228
  %126 = call i32 @llvm.bswap.i32(i32 %125) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i137.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %127 = ptrtoint ptr %address1.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %address1.i137.i.i, align 4
  %length.i138.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 6, i32 1
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i138.i.i) #11, !srcloc !228
  %129 = call i32 @llvm.bswap.i32(i32 %128) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i139.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %130 = ptrtoint ptr %length3.i139.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %length3.i139.i.i, align 4
  br label %sw.epilog.i.i

sw.bb57.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx59.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 7
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx59.i.i) #11, !srcloc !228
  %132 = call i32 @llvm.bswap.i32(i32 %131) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i140.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %133 = ptrtoint ptr %address1.i140.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %address1.i140.i.i, align 4
  %length.i141.i.i = getelementptr %struct.flash_info_regs_gen3, ptr %32, i32 0, i32 11, i32 7, i32 1
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i141.i.i) #11, !srcloc !228
  %135 = call i32 @llvm.bswap.i32(i32 %134) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i142.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %136 = ptrtoint ptr %length3.i142.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %length3.i142.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb57.i.i, %sw.bb54.i.i, %sw.bb51.i.i, %sw.bb48.i.i, %sw.bb45.i.i, %sw.bb42.i.i, %sw.bb39.i.i, %sw.bb38.i.i, %sw.bb37.i.i, %if.then33.i.i, %sw.bb25.i.i.sw.epilog.i.i_crit_edge, %if.then21.i.i, %sw.bb15.i.i.sw.epilog.i.i_crit_edge, %if.then11.i.i, %sw.bb3.i.i.sw.epilog.i.i_crit_edge, %if.then.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %active_addr.0.i.i = phi i32 [ -1, %sw.bb57.i.i ], [ -1, %sw.bb54.i.i ], [ -1, %sw.bb51.i.i ], [ -1, %sw.bb48.i.i ], [ -1, %sw.bb45.i.i ], [ -1, %sw.bb42.i.i ], [ -1, %sw.bb39.i.i ], [ -1, %sw.bb38.i.i ], [ -1, %sw.bb37.i.i ], [ %73, %if.then33.i.i ], [ %73, %sw.bb25.i.i.sw.epilog.i.i_crit_edge ], [ %62, %if.then21.i.i ], [ %62, %sw.bb15.i.i.sw.epilog.i.i_crit_edge ], [ %51, %if.then11.i.i ], [ %51, %sw.bb3.i.i.sw.epilog.i.i_crit_edge ], [ %40, %if.then.i.i ], [ %40, %sw.bb.i.i.sw.epilog.i.i_crit_edge ]
  %address.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %137 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %address.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %active_addr.0.i.i)
  %cmp60.i.i = icmp eq i32 %138, %active_addr.0.i.i
  br i1 %cmp60.i.i, label %if.then62.i.i, label %sw.epilog.i.i.if.end59.i.i31.i_crit_edge

sw.epilog.i.i.if.end59.i.i31.i_crit_edge:         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then62.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active63.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %139 = ptrtoint ptr %active63.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %active63.i.i, align 4
  %or64.i.i = or i32 %140, 1
  store i32 %or64.i.i, ptr %active63.i.i, align 4
  br label %if.end59.i.i31.i

if.then8.i:                                       ; preds = %if.end.i45
  %mmio_flash_info.i38.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 12
  %141 = ptrtoint ptr %mmio_flash_info.i38.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio_flash_info.i38.i, align 8
  %mmio_sys_info.i39.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 11
  %143 = ptrtoint ptr %mmio_sys_info.i39.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio_sys_info.i39.i, align 4
  %active_flag.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 2
  %145 = ptrtoint ptr %info.i38 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %info.i38, align 4
  %147 = zext i32 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %146, label %if.then8.i.ioctl_flash_part_info.exit_crit_edge [
    i32 15, label %sw.bb.i43.i
    i32 16, label %sw.bb1.i.i
    i32 17, label %sw.bb2.i.i
    i32 18, label %sw.bb12.i.i
    i32 13, label %sw.bb31.i.i
    i32 14, label %sw.bb48.i48.i
    i32 0, label %sw.bb67.i.i
    i32 1, label %sw.bb84.i.i
    i32 2, label %sw.bb103.i.i
    i32 3, label %sw.bb120.i.i
    i32 4, label %sw.bb139.i.i
    i32 5, label %sw.bb140.i.i
    i32 6, label %sw.bb141.i.i
    i32 7, label %sw.bb144.i.i
    i32 8, label %sw.bb147.i.i
    i32 9, label %sw.bb150.i.i
    i32 10, label %sw.bb153.i.i
    i32 11, label %sw.bb156.i.i
    i32 12, label %sw.bb159.i.i
  ]

if.then8.i.ioctl_flash_part_info.exit_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_flash_part_info.exit

sw.bb.i43.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %map0.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 4
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %map0.i.i) #11, !srcloc !228
  %149 = call i32 @llvm.bswap.i32(i32 %148) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i.i40.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %150 = ptrtoint ptr %address1.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %address1.i.i40.i, align 4
  %length.i.i41.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 4, i32 1
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i.i41.i) #11, !srcloc !228
  %152 = call i32 @llvm.bswap.i32(i32 %151) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i.i42.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %153 = ptrtoint ptr %length3.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %length3.i.i42.i, align 4
  br label %if.end59.i.i31.i

sw.bb1.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %map1.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 5
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %map1.i.i) #11, !srcloc !228
  %155 = call i32 @llvm.bswap.i32(i32 %154) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i233.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %156 = ptrtoint ptr %address1.i233.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %address1.i233.i.i, align 4
  %length.i234.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 5, i32 1
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i234.i.i) #11, !srcloc !228
  %158 = call i32 @llvm.bswap.i32(i32 %157) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i235.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %159 = ptrtoint ptr %length3.i235.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %length3.i235.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb2.i.i:                                       ; preds = %if.then8.i
  %key0.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 6
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key0.i.i) #11, !srcloc !228
  %161 = call i32 @llvm.bswap.i32(i32 %160) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i236.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %162 = ptrtoint ptr %address1.i236.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %address1.i236.i.i, align 4
  %length.i237.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 6, i32 1
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i237.i.i) #11, !srcloc !228
  %164 = call i32 @llvm.bswap.i32(i32 %163) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i238.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %165 = ptrtoint ptr %length3.i238.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %length3.i238.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 2, i32 3
  %166 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %key.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %cmp.i44.i = icmp eq i8 %166, 0
  br i1 %cmp.i44.i, label %if.then.i47.i, label %sw.bb2.i.i.if.end.i.i_crit_edge

sw.bb2.i.i.if.end.i.i_crit_edge:                  ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i47.i:                                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active.i45.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %167 = ptrtoint ptr %active.i45.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %active.i45.i, align 4
  %or.i46.i = or i32 %168, 1
  store i32 %or.i46.i, ptr %active.i45.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i47.i, %sw.bb2.i.i.if.end.i.i_crit_edge
  %key_running.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 18
  %169 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %key_running.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %169)
  %cmp6.i.i = icmp eq i16 %169, 512
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end.i.i.if.end59.i.i31.i_crit_edge

if.end.i.i.if.end59.i.i31.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active9.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %170 = ptrtoint ptr %active9.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %active9.i.i, align 4
  %or10.i.i = or i32 %171, 2
  store i32 %or10.i.i, ptr %active9.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb12.i.i:                                      ; preds = %if.then8.i
  %key1.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 7
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key1.i.i) #11, !srcloc !228
  %173 = call i32 @llvm.bswap.i32(i32 %172) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i239.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %174 = ptrtoint ptr %address1.i239.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %address1.i239.i.i, align 4
  %length.i240.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 7, i32 1
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i240.i.i) #11, !srcloc !228
  %176 = call i32 @llvm.bswap.i32(i32 %175) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i241.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %177 = ptrtoint ptr %length3.i241.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %length3.i241.i.i, align 4
  %key13.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 2, i32 3
  %178 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %key13.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %178)
  %cmp16.i.i = icmp eq i8 %178, 1
  br i1 %cmp16.i.i, label %if.then18.i.i, label %sw.bb12.i.i.if.end21.i.i_crit_edge

sw.bb12.i.i.if.end21.i.i_crit_edge:               ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.then18.i.i:                                    ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active19.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %179 = ptrtoint ptr %active19.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %active19.i.i, align 4
  %or20.i.i = or i32 %180, 1
  store i32 %or20.i.i, ptr %active19.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then18.i.i, %sw.bb12.i.i.if.end21.i.i_crit_edge
  %key_running22.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 18
  %181 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %key_running22.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %181)
  %cmp25.i.i = icmp eq i16 %181, 768
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.end21.i.i.if.end59.i.i31.i_crit_edge

if.end21.i.i.if.end59.i.i31.i_crit_edge:          ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then27.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active28.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %182 = ptrtoint ptr %active28.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %active28.i.i, align 4
  %or29.i.i = or i32 %183, 2
  store i32 %or29.i.i, ptr %active28.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb31.i.i:                                      ; preds = %if.then8.i
  %bl2_0.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 8
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bl2_0.i.i) #11, !srcloc !228
  %185 = call i32 @llvm.bswap.i32(i32 %184) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i242.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %186 = ptrtoint ptr %address1.i242.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %address1.i242.i.i, align 4
  %length.i243.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 8, i32 1
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i243.i.i) #11, !srcloc !228
  %188 = call i32 @llvm.bswap.i32(i32 %187) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i244.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %189 = ptrtoint ptr %length3.i244.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %length3.i244.i.i, align 4
  %190 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %active_flag.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %cmp34.i.i = icmp eq i8 %190, 0
  br i1 %cmp34.i.i, label %if.then36.i.i, label %sw.bb31.i.i.if.end39.i.i_crit_edge

sw.bb31.i.i.if.end39.i.i_crit_edge:               ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i.i

if.then36.i.i:                                    ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active37.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %191 = ptrtoint ptr %active37.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %active37.i.i, align 4
  %or38.i.i = or i32 %192, 1
  store i32 %or38.i.i, ptr %active37.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then36.i.i, %sw.bb31.i.i.if.end39.i.i_crit_edge
  %bl2_running.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 15
  %193 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bl2_running.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %193)
  %cmp42.i.i = icmp eq i16 %193, 1024
  br i1 %cmp42.i.i, label %if.then44.i.i, label %if.end39.i.i.if.end59.i.i31.i_crit_edge

if.end39.i.i.if.end59.i.i31.i_crit_edge:          ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then44.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active45.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %194 = ptrtoint ptr %active45.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %active45.i.i, align 4
  %or46.i.i = or i32 %195, 2
  store i32 %or46.i.i, ptr %active45.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb48.i48.i:                                    ; preds = %if.then8.i
  %bl2_1.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 9
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bl2_1.i.i) #11, !srcloc !228
  %197 = call i32 @llvm.bswap.i32(i32 %196) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i245.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %198 = ptrtoint ptr %address1.i245.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %address1.i245.i.i, align 4
  %length.i246.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 9, i32 1
  %199 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i246.i.i) #11, !srcloc !228
  %200 = call i32 @llvm.bswap.i32(i32 %199) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i247.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %201 = ptrtoint ptr %length3.i247.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %length3.i247.i.i, align 4
  %202 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %active_flag.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %202)
  %cmp52.i.i = icmp eq i8 %202, 1
  br i1 %cmp52.i.i, label %if.then54.i.i, label %sw.bb48.i48.i.if.end57.i.i_crit_edge

sw.bb48.i48.i.if.end57.i.i_crit_edge:             ; preds = %sw.bb48.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i.i

if.then54.i.i:                                    ; preds = %sw.bb48.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  %active55.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %203 = ptrtoint ptr %active55.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %active55.i.i, align 4
  %or56.i.i = or i32 %204, 1
  store i32 %or56.i.i, ptr %active55.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then54.i.i, %sw.bb48.i48.i.if.end57.i.i_crit_edge
  %bl2_running58.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 15
  %205 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bl2_running58.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %205)
  %cmp61.i.i = icmp eq i16 %205, 1280
  br i1 %cmp61.i.i, label %if.then63.i.i, label %if.end57.i.i.if.end59.i.i31.i_crit_edge

if.end57.i.i.if.end59.i.i31.i_crit_edge:          ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then63.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active64.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %206 = ptrtoint ptr %active64.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %active64.i.i, align 4
  %or65.i.i = or i32 %207, 2
  store i32 %or65.i.i, ptr %active64.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb67.i.i:                                      ; preds = %if.then8.i
  %cfg0.i49.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 10
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cfg0.i49.i) #11, !srcloc !228
  %209 = call i32 @llvm.bswap.i32(i32 %208) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i248.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %210 = ptrtoint ptr %address1.i248.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %address1.i248.i.i, align 4
  %length.i249.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 10, i32 1
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i249.i.i) #11, !srcloc !228
  %212 = call i32 @llvm.bswap.i32(i32 %211) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i250.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %213 = ptrtoint ptr %length3.i250.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %length3.i250.i.i, align 4
  %cfg.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 2, i32 1
  %214 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cfg.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %cmp70.i.i = icmp eq i8 %214, 0
  br i1 %cmp70.i.i, label %if.then72.i.i, label %sw.bb67.i.i.if.end75.i.i_crit_edge

sw.bb67.i.i.if.end75.i.i_crit_edge:               ; preds = %sw.bb67.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i.i

if.then72.i.i:                                    ; preds = %sw.bb67.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active73.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %215 = ptrtoint ptr %active73.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %active73.i.i, align 4
  %or74.i.i = or i32 %216, 1
  store i32 %or74.i.i, ptr %active73.i.i, align 4
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.then72.i.i, %sw.bb67.i.i.if.end75.i.i_crit_edge
  %cfg_running.i50.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 16
  %217 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cfg_running.i50.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %217)
  %cmp78.i.i = icmp eq i16 %217, 1536
  br i1 %cmp78.i.i, label %if.then80.i.i, label %if.end75.i.i.if.end59.i.i31.i_crit_edge

if.end75.i.i.if.end59.i.i31.i_crit_edge:          ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then80.i.i:                                    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active81.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %218 = ptrtoint ptr %active81.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %active81.i.i, align 4
  %or82.i.i = or i32 %219, 2
  store i32 %or82.i.i, ptr %active81.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb84.i.i:                                      ; preds = %if.then8.i
  %cfg1.i51.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 11
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cfg1.i51.i) #11, !srcloc !228
  %221 = call i32 @llvm.bswap.i32(i32 %220) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i251.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %222 = ptrtoint ptr %address1.i251.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %address1.i251.i.i, align 4
  %length.i252.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 11, i32 1
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i252.i.i) #11, !srcloc !228
  %224 = call i32 @llvm.bswap.i32(i32 %223) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i253.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %225 = ptrtoint ptr %length3.i253.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %length3.i253.i.i, align 4
  %cfg85.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 2, i32 1
  %226 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cfg85.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %226)
  %cmp88.i.i = icmp eq i8 %226, 1
  br i1 %cmp88.i.i, label %if.then90.i.i, label %sw.bb84.i.i.if.end93.i.i_crit_edge

sw.bb84.i.i.if.end93.i.i_crit_edge:               ; preds = %sw.bb84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i.i

if.then90.i.i:                                    ; preds = %sw.bb84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active91.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %227 = ptrtoint ptr %active91.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %active91.i.i, align 4
  %or92.i.i = or i32 %228, 1
  store i32 %or92.i.i, ptr %active91.i.i, align 4
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %if.then90.i.i, %sw.bb84.i.i.if.end93.i.i_crit_edge
  %cfg_running94.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 16
  %229 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cfg_running94.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %229)
  %cmp97.i.i = icmp eq i16 %229, 1792
  br i1 %cmp97.i.i, label %if.then99.i.i, label %if.end93.i.i.if.end59.i.i31.i_crit_edge

if.end93.i.i.if.end59.i.i31.i_crit_edge:          ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then99.i.i:                                    ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active100.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %230 = ptrtoint ptr %active100.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %active100.i.i, align 4
  %or101.i.i = or i32 %231, 2
  store i32 %or101.i.i, ptr %active100.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb103.i.i:                                     ; preds = %if.then8.i
  %img0.i52.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 12
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %img0.i52.i) #11, !srcloc !228
  %233 = call i32 @llvm.bswap.i32(i32 %232) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i254.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %234 = ptrtoint ptr %address1.i254.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %address1.i254.i.i, align 4
  %length.i255.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 12, i32 1
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i255.i.i) #11, !srcloc !228
  %236 = call i32 @llvm.bswap.i32(i32 %235) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i256.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %237 = ptrtoint ptr %length3.i256.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %length3.i256.i.i, align 4
  %img.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 2, i32 2
  %238 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %img.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %cmp106.i.i = icmp eq i8 %238, 0
  br i1 %cmp106.i.i, label %if.then108.i.i, label %sw.bb103.i.i.if.end111.i.i_crit_edge

sw.bb103.i.i.if.end111.i.i_crit_edge:             ; preds = %sw.bb103.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i.i

if.then108.i.i:                                   ; preds = %sw.bb103.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active109.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %239 = ptrtoint ptr %active109.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %active109.i.i, align 4
  %or110.i.i = or i32 %240, 1
  store i32 %or110.i.i, ptr %active109.i.i, align 4
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %if.then108.i.i, %sw.bb103.i.i.if.end111.i.i_crit_edge
  %img_running.i53.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 17
  %241 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %img_running.i53.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %241)
  %cmp114.i.i = icmp eq i16 %241, 2048
  br i1 %cmp114.i.i, label %if.then116.i.i, label %if.end111.i.i.if.end59.i.i31.i_crit_edge

if.end111.i.i.if.end59.i.i31.i_crit_edge:         ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then116.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active117.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %242 = ptrtoint ptr %active117.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %active117.i.i, align 4
  %or118.i.i = or i32 %243, 2
  store i32 %or118.i.i, ptr %active117.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb120.i.i:                                     ; preds = %if.then8.i
  %img1.i54.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 13
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %img1.i54.i) #11, !srcloc !228
  %245 = call i32 @llvm.bswap.i32(i32 %244) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i257.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %246 = ptrtoint ptr %address1.i257.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %address1.i257.i.i, align 4
  %length.i258.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 13, i32 1
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i258.i.i) #11, !srcloc !228
  %248 = call i32 @llvm.bswap.i32(i32 %247) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i259.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %249 = ptrtoint ptr %length3.i259.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %length3.i259.i.i, align 4
  %img121.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 2, i32 2
  %250 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %img121.i.i) #11, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %250)
  %cmp124.i.i = icmp eq i8 %250, 1
  br i1 %cmp124.i.i, label %if.then126.i.i, label %sw.bb120.i.i.if.end129.i.i_crit_edge

sw.bb120.i.i.if.end129.i.i_crit_edge:             ; preds = %sw.bb120.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129.i.i

if.then126.i.i:                                   ; preds = %sw.bb120.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active127.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %251 = ptrtoint ptr %active127.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %active127.i.i, align 4
  %or128.i.i = or i32 %252, 1
  store i32 %or128.i.i, ptr %active127.i.i, align 4
  br label %if.end129.i.i

if.end129.i.i:                                    ; preds = %if.then126.i.i, %sw.bb120.i.i.if.end129.i.i_crit_edge
  %img_running130.i.i = getelementptr inbounds %struct.sys_info_regs, ptr %144, i32 0, i32 3, i32 0, i32 17
  %253 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %img_running130.i.i) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %253)
  %cmp133.i.i = icmp eq i16 %253, 2304
  br i1 %cmp133.i.i, label %if.then135.i.i, label %if.end129.i.i.if.end59.i.i31.i_crit_edge

if.end129.i.i.if.end59.i.i31.i_crit_edge:         ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i31.i

if.then135.i.i:                                   ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %active136.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 3
  %254 = ptrtoint ptr %active136.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %active136.i.i, align 4
  %or137.i.i = or i32 %255, 2
  store i32 %or137.i.i, ptr %active136.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb139.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %nvlog.i55.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 14
  %256 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %nvlog.i55.i) #11, !srcloc !228
  %257 = call i32 @llvm.bswap.i32(i32 %256) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i260.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %258 = ptrtoint ptr %address1.i260.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %address1.i260.i.i, align 4
  %length.i261.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 14, i32 1
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i261.i.i) #11, !srcloc !228
  %260 = call i32 @llvm.bswap.i32(i32 %259) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i262.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %261 = ptrtoint ptr %length3.i262.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %length3.i262.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb140.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %vendor.i56.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15
  %262 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vendor.i56.i) #11, !srcloc !228
  %263 = call i32 @llvm.bswap.i32(i32 %262) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i263.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %264 = ptrtoint ptr %address1.i263.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %address1.i263.i.i, align 4
  %length.i264.i.i = getelementptr inbounds %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 0, i32 1
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i264.i.i) #11, !srcloc !228
  %266 = call i32 @llvm.bswap.i32(i32 %265) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i265.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %267 = ptrtoint ptr %length3.i265.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %length3.i265.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb141.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx143.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 1
  %268 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx143.i.i) #11, !srcloc !228
  %269 = call i32 @llvm.bswap.i32(i32 %268) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i266.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %270 = ptrtoint ptr %address1.i266.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %address1.i266.i.i, align 4
  %length.i267.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 1, i32 1
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i267.i.i) #11, !srcloc !228
  %272 = call i32 @llvm.bswap.i32(i32 %271) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i268.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %273 = ptrtoint ptr %length3.i268.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %length3.i268.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb144.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx146.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 2
  %274 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx146.i.i) #11, !srcloc !228
  %275 = call i32 @llvm.bswap.i32(i32 %274) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i269.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %276 = ptrtoint ptr %address1.i269.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %address1.i269.i.i, align 4
  %length.i270.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 2, i32 1
  %277 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i270.i.i) #11, !srcloc !228
  %278 = call i32 @llvm.bswap.i32(i32 %277) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i271.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %279 = ptrtoint ptr %length3.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %length3.i271.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb147.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx149.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 3
  %280 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx149.i.i) #11, !srcloc !228
  %281 = call i32 @llvm.bswap.i32(i32 %280) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i272.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %282 = ptrtoint ptr %address1.i272.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %address1.i272.i.i, align 4
  %length.i273.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 3, i32 1
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i273.i.i) #11, !srcloc !228
  %284 = call i32 @llvm.bswap.i32(i32 %283) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i274.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %285 = ptrtoint ptr %length3.i274.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %length3.i274.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb150.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx152.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 4
  %286 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx152.i.i) #11, !srcloc !228
  %287 = call i32 @llvm.bswap.i32(i32 %286) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i275.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %288 = ptrtoint ptr %address1.i275.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %address1.i275.i.i, align 4
  %length.i276.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 4, i32 1
  %289 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i276.i.i) #11, !srcloc !228
  %290 = call i32 @llvm.bswap.i32(i32 %289) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i277.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %291 = ptrtoint ptr %length3.i277.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %length3.i277.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb153.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx155.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 5
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx155.i.i) #11, !srcloc !228
  %293 = call i32 @llvm.bswap.i32(i32 %292) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i278.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %294 = ptrtoint ptr %address1.i278.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %address1.i278.i.i, align 4
  %length.i279.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 5, i32 1
  %295 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i279.i.i) #11, !srcloc !228
  %296 = call i32 @llvm.bswap.i32(i32 %295) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i280.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %297 = ptrtoint ptr %length3.i280.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %length3.i280.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb156.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx158.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 6
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx158.i.i) #11, !srcloc !228
  %299 = call i32 @llvm.bswap.i32(i32 %298) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i281.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %300 = ptrtoint ptr %address1.i281.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %address1.i281.i.i, align 4
  %length.i282.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 6, i32 1
  %301 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i282.i.i) #11, !srcloc !228
  %302 = call i32 @llvm.bswap.i32(i32 %301) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i283.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %303 = ptrtoint ptr %length3.i283.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %length3.i283.i.i, align 4
  br label %if.end59.i.i31.i

sw.bb159.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx161.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 7
  %304 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx161.i.i) #11, !srcloc !228
  %305 = call i32 @llvm.bswap.i32(i32 %304) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %address1.i284.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 1
  %306 = ptrtoint ptr %address1.i284.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %address1.i284.i.i, align 4
  %length.i285.i.i = getelementptr %struct.flash_info_regs_gen4, ptr %142, i32 0, i32 15, i32 7, i32 1
  %307 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %length.i285.i.i) #11, !srcloc !228
  %308 = call i32 @llvm.bswap.i32(i32 %307) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %length3.i286.i.i = getelementptr inbounds %struct.switchtec_ioctl_flash_part_info, ptr %info.i38, i32 0, i32 2
  %309 = ptrtoint ptr %length3.i286.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %length3.i286.i.i, align 4
  br label %if.end59.i.i31.i

if.end59.i.i31.i:                                 ; preds = %sw.bb159.i.i, %sw.bb156.i.i, %sw.bb153.i.i, %sw.bb150.i.i, %sw.bb147.i.i, %sw.bb144.i.i, %sw.bb141.i.i, %sw.bb140.i.i, %sw.bb139.i.i, %if.then135.i.i, %if.end129.i.i.if.end59.i.i31.i_crit_edge, %if.then116.i.i, %if.end111.i.i.if.end59.i.i31.i_crit_edge, %if.then99.i.i, %if.end93.i.i.if.end59.i.i31.i_crit_edge, %if.then80.i.i, %if.end75.i.i.if.end59.i.i31.i_crit_edge, %if.then63.i.i, %if.end57.i.i.if.end59.i.i31.i_crit_edge, %if.then44.i.i, %if.end39.i.i.if.end59.i.i31.i_crit_edge, %if.then27.i.i, %if.end21.i.i.if.end59.i.i31.i_crit_edge, %if.then8.i.i, %if.end.i.i.if.end59.i.i31.i_crit_edge, %sw.bb1.i.i, %sw.bb.i43.i, %if.then62.i.i, %sw.epilog.i.i.if.end59.i.i31.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i32.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i32.i, label %if.end59.i.i31.i.ioctl_flash_part_info.exit_crit_edge, label %copy_to_user.exit.i48

if.end59.i.i31.i.ioctl_flash_part_info.exit_crit_edge: ; preds = %if.end59.i.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_flash_part_info.exit

copy_to_user.exit.i48:                            ; preds = %if.end59.i.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i36.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i38, i32 noundef 16) #11
  %call.i12.i.i.i46 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %info.i38, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i46)
  %tobool17.not.i = icmp eq i32 %call.i12.i.i.i46, 0
  %spec.select.i47 = select i1 %tobool17.not.i, i32 0, i32 -14
  br label %ioctl_flash_part_info.exit

ioctl_flash_part_info.exit:                       ; preds = %copy_to_user.exit.i48, %if.end59.i.i31.i.ioctl_flash_part_info.exit_crit_edge, %if.then8.i.ioctl_flash_part_info.exit_crit_edge, %if.then1.i.ioctl_flash_part_info.exit_crit_edge, %if.end.i45.ioctl_flash_part_info.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i49 = phi i32 [ -95, %if.end.i45.ioctl_flash_part_info.exit_crit_edge ], [ -22, %if.then1.i.ioctl_flash_part_info.exit_crit_edge ], [ -22, %if.then8.i.ioctl_flash_part_info.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i31.i.ioctl_flash_part_info.exit_crit_edge ], [ %spec.select.i47, %copy_to_user.exit.i48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i38) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call fastcc i32 @ioctl_event_summary(ptr noundef %3, ptr noundef %1, ptr noundef %4, i32 noundef 408)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ctl.i) #11
  %310 = call ptr @memset(ptr %ctl.i, i32 255, i32 40)
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #11
  %call.i.i.i50 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i50, label %sw.bb7.if.then11.i.i.i64_crit_edge, label %land.lhs.true.i.i.i53

sw.bb7.if.then11.i.i.i64_crit_edge:               ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i64

land.lhs.true.i.i.i53:                            ; preds = %sw.bb7
  %311 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 40, i32 -1226833920) #17
  %asmresult.i.i.i51 = extractvalue { i32, i32 } %311, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i51)
  %cmp.i6.i.i52 = icmp eq i32 %asmresult.i.i.i51, 0
  br i1 %cmp.i6.i.i52, label %if.end.i.i.i61, label %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge, !prof !238

land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge: ; preds = %land.lhs.true.i.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i64

if.end.i.i.i61:                                   ; preds = %land.lhs.true.i.i.i53
  %call.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctl.i, i32 noundef 40) #11
  %312 = call i32 @llvm.read_register.i32(metadata !214) #11
  %and.i.i.i.i.i.i.i55 = and i32 %312, -16384
  %313 = inttoptr i32 %and.i.i.i.i.i.i.i55 to ptr
  %cpu_domain.i.i.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %313, i32 0, i32 4
  %314 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i56) #9, !srcloc !242
  %and.i.i.i.i.i57 = and i32 %314, -13
  %or.i.i.i.i.i58 = or i32 %and.i.i.i.i.i57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i58) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i.i59 = call i32 @arm_copy_from_user(ptr noundef nonnull %ctl.i, ptr noundef %4, i32 noundef 40) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %314) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i59)
  %tobool4.not.i.i.i60 = icmp eq i32 %call1.i.i.i.i59, 0
  br i1 %tobool4.not.i.i.i60, label %if.end.i65, label %if.end.i.i.i61.if.then11.i.i.i64_crit_edge, !prof !238

if.end.i.i.i61.if.then11.i.i.i64_crit_edge:       ; preds = %if.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i64

if.then11.i.i.i64:                                ; preds = %if.end.i.i.i61.if.then11.i.i.i64_crit_edge, %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge, %sw.bb7.if.then11.i.i.i64_crit_edge
  %res.0.i.i71.i = phi i32 [ %call1.i.i.i.i59, %if.end.i.i.i61.if.then11.i.i.i64_crit_edge ], [ 40, %sw.bb7.if.then11.i.i.i64_crit_edge ], [ 40, %land.lhs.true.i.i.i53.if.then11.i.i.i64_crit_edge ]
  %sub.i.i.i62 = sub i32 40, %res.0.i.i71.i
  %add.ptr.i.i.i63 = getelementptr i8, ptr %ctl.i, i32 %sub.i.i.i62
  %315 = call ptr @memset(ptr %add.ptr.i.i.i63, i32 0, i32 %res.0.i.i71.i)
  br label %ioctl_event_ctl.exit

if.end.i65:                                       ; preds = %if.end.i.i.i61
  %316 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %ctl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %317)
  %cmp.i = icmp ugt i32 %317, 31
  br i1 %cmp.i, label %if.end.i65.ioctl_event_ctl.exit_crit_edge, label %if.end2.i

if.end.i65.ioctl_event_ctl.exit_crit_edge:        ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_event_ctl.exit

if.end2.i:                                        ; preds = %if.end.i65
  %flags.i = getelementptr inbounds %struct.switchtec_ioctl_event_ctl, ptr %ctl.i, i32 0, i32 2
  %318 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %319)
  %tobool3.not.i = icmp ult i32 %319, 512
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end2.i.ioctl_event_ctl.exit_crit_edge

if.end2.i.ioctl_event_ctl.exit_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_event_ctl.exit

if.end5.i:                                        ; preds = %if.end2.i
  %index.i = getelementptr inbounds %struct.switchtec_ioctl_event_ctl, ptr %ctl.i, i32 0, i32 1
  %320 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %321)
  %cmp6.i = icmp eq i32 %321, -2
  br i1 %cmp6.i, label %if.then7.i, label %if.else37.i

if.then7.i:                                       ; preds = %if.end5.i
  %322 = lshr i32 536879103, %317
  %323 = and i32 %322, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp9.not.i = icmp eq i32 %323, 0
  br i1 %cmp9.not.i, label %if.else.i, label %if.end25.thread.i

if.end25.thread.i:                                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %324 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 0, ptr %index.i, align 4
  br label %for.body.preheader.i

if.else.i:                                        ; preds = %if.then7.i
  %325 = lshr i32 1073864704, %317
  %326 = and i32 %325, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %cmp14.not.i = icmp eq i32 %326, 0
  br i1 %cmp14.not.i, label %if.else16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %partition_count.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 5
  br label %if.end25.i

if.else16.i:                                      ; preds = %if.else.i
  %327 = lshr i32 -1610743808, %317
  %328 = and i32 %327, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp20.not.i = icmp eq i32 %328, 0
  br i1 %cmp20.not.i, label %if.else16.i.ioctl_event_ctl.exit_crit_edge, label %if.then21.i

if.else16.i.ioctl_event_ctl.exit_crit_edge:       ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_event_ctl.exit

if.then21.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #13
  %pff_csr_count.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 6
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.then15.i
  %nr_idxs.0.in.i = phi ptr [ %partition_count.i, %if.then15.i ], [ %pff_csr_count.i, %if.then21.i ]
  %329 = ptrtoint ptr %nr_idxs.0.in.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %nr_idxs.0.i = load i32, ptr %nr_idxs.0.in.i, align 4
  %330 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_idxs.0.i)
  %cmp2976.i = icmp sgt i32 %nr_idxs.0.i, 0
  br i1 %cmp2976.i, label %if.end25.i.for.body.preheader.i_crit_edge, label %if.end25.i.if.end59.i.i62.i_crit_edge

if.end25.i.if.end59.i.i62.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i62.i

if.end25.i.for.body.preheader.i_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end25.i.for.body.preheader.i_crit_edge, %if.end25.thread.i
  %nr_idxs.080.i = phi i32 [ 1, %if.end25.thread.i ], [ %nr_idxs.0.i, %if.end25.i.for.body.preheader.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %331 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %319, ptr %flags.i, align 4
  %call31.i = call fastcc i32 @event_ctl(ptr noundef %3, ptr noundef nonnull %ctl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call31.i)
  %cmp32.i = icmp sgt i32 %call31.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call31.i)
  %cmp33.not.i = icmp eq i32 %call31.i, -95
  %or.cond.i = or i1 %cmp32.i, %cmp33.not.i
  br i1 %or.cond.i, label %for.inc.i, label %for.body.i.ioctl_event_ctl.exit_crit_edge

for.body.i.ioctl_event_ctl.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_event_ctl.exit

for.inc.i:                                        ; preds = %for.body.i
  %332 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %index.i, align 4
  %inc.i = add i32 %333, 1
  store i32 %inc.i, ptr %index.i, align 4
  %cmp29.i = icmp slt i32 %inc.i, %nr_idxs.080.i
  br i1 %cmp29.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end59.i.i62.i_crit_edge

for.inc.i.if.end59.i.i62.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i62.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.else37.i:                                      ; preds = %if.end5.i
  %call38.i = call fastcc i32 @event_ctl(ptr noundef %3, ptr noundef nonnull %ctl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.else37.i.ioctl_event_ctl.exit_crit_edge, label %if.else37.i.if.end59.i.i62.i_crit_edge

if.else37.i.if.end59.i.i62.i_crit_edge:           ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i62.i

if.else37.i.ioctl_event_ctl.exit_crit_edge:       ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_event_ctl.exit

if.end59.i.i62.i:                                 ; preds = %if.else37.i.if.end59.i.i62.i_crit_edge, %for.inc.i.if.end59.i.i62.i_crit_edge, %if.end25.i.if.end59.i.i62.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i63.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i63.i, label %if.end59.i.i62.i.ioctl_event_ctl.exit_crit_edge, label %copy_to_user.exit.i68

if.end59.i.i62.i.ioctl_event_ctl.exit_crit_edge:  ; preds = %if.end59.i.i62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_event_ctl.exit

copy_to_user.exit.i68:                            ; preds = %if.end59.i.i62.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i67.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ctl.i, i32 noundef 40) #11
  %call.i12.i.i.i66 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %ctl.i, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i66)
  %tobool44.not.i = icmp eq i32 %call.i12.i.i.i66, 0
  %spec.select.i67 = select i1 %tobool44.not.i, i32 0, i32 -14
  br label %ioctl_event_ctl.exit

ioctl_event_ctl.exit:                             ; preds = %copy_to_user.exit.i68, %if.end59.i.i62.i.ioctl_event_ctl.exit_crit_edge, %if.else37.i.ioctl_event_ctl.exit_crit_edge, %for.body.i.ioctl_event_ctl.exit_crit_edge, %if.else16.i.ioctl_event_ctl.exit_crit_edge, %if.end2.i.ioctl_event_ctl.exit_crit_edge, %if.end.i65.ioctl_event_ctl.exit_crit_edge, %if.then11.i.i.i64
  %retval.0.i69 = phi i32 [ -22, %if.end.i65.ioctl_event_ctl.exit_crit_edge ], [ -22, %if.end2.i.ioctl_event_ctl.exit_crit_edge ], [ -22, %if.else16.i.ioctl_event_ctl.exit_crit_edge ], [ %call38.i, %if.else37.i.ioctl_event_ctl.exit_crit_edge ], [ -14, %if.then11.i.i.i64 ], [ -14, %if.end59.i.i62.i.ioctl_event_ctl.exit_crit_edge ], [ %spec.select.i67, %copy_to_user.exit.i68 ], [ %call31.i, %for.body.i.ioctl_event_ctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ctl.i) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p.i) #11
  %334 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 -1, ptr %p.i, align 4, !annotation !245
  %335 = getelementptr inbounds %struct.switchtec_ioctl_pff_port, ptr %p.i, i32 0, i32 1
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 -1, ptr %335, align 4, !annotation !245
  %337 = getelementptr inbounds %struct.switchtec_ioctl_pff_port, ptr %p.i, i32 0, i32 2
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 -1, ptr %337, align 4, !annotation !245
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #11
  %call.i.i.i70 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i70, label %sw.bb9.if.then11.i.i.i84_crit_edge, label %land.lhs.true.i.i.i73

sw.bb9.if.then11.i.i.i84_crit_edge:               ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i84

land.lhs.true.i.i.i73:                            ; preds = %sw.bb9
  %339 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #17
  %asmresult.i.i.i71 = extractvalue { i32, i32 } %339, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i71)
  %cmp.i6.i.i72 = icmp eq i32 %asmresult.i.i.i71, 0
  br i1 %cmp.i6.i.i72, label %if.end.i.i.i81, label %land.lhs.true.i.i.i73.if.then11.i.i.i84_crit_edge, !prof !238

land.lhs.true.i.i.i73.if.then11.i.i.i84_crit_edge: ; preds = %land.lhs.true.i.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i84

if.end.i.i.i81:                                   ; preds = %land.lhs.true.i.i.i73
  %call.i.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p.i, i32 noundef 12) #11
  %340 = call i32 @llvm.read_register.i32(metadata !214) #11
  %and.i.i.i.i.i.i.i75 = and i32 %340, -16384
  %341 = inttoptr i32 %and.i.i.i.i.i.i.i75 to ptr
  %cpu_domain.i.i.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %341, i32 0, i32 4
  %342 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i76) #9, !srcloc !242
  %and.i.i.i.i.i77 = and i32 %342, -13
  %or.i.i.i.i.i78 = or i32 %and.i.i.i.i.i77, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i78) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i.i79 = call i32 @arm_copy_from_user(ptr noundef nonnull %p.i, ptr noundef %4, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %342) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i79)
  %tobool4.not.i.i.i80 = icmp eq i32 %call1.i.i.i.i79, 0
  br i1 %tobool4.not.i.i.i80, label %if.end.i86, label %if.end.i.i.i81.if.then11.i.i.i84_crit_edge, !prof !238

if.end.i.i.i81.if.then11.i.i.i84_crit_edge:       ; preds = %if.end.i.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i84

if.then11.i.i.i84:                                ; preds = %if.end.i.i.i81.if.then11.i.i.i84_crit_edge, %land.lhs.true.i.i.i73.if.then11.i.i.i84_crit_edge, %sw.bb9.if.then11.i.i.i84_crit_edge
  %res.0.i.i61.i = phi i32 [ %call1.i.i.i.i79, %if.end.i.i.i81.if.then11.i.i.i84_crit_edge ], [ 12, %sw.bb9.if.then11.i.i.i84_crit_edge ], [ 12, %land.lhs.true.i.i.i73.if.then11.i.i.i84_crit_edge ]
  %sub.i.i.i82 = sub i32 12, %res.0.i.i61.i
  %add.ptr.i.i.i83 = getelementptr i8, ptr %p.i, i32 %sub.i.i.i82
  %343 = call ptr @memset(ptr %add.ptr.i.i.i83, i32 0, i32 %res.0.i.i61.i)
  br label %ioctl_pff_to_port.exit

if.end.i86:                                       ; preds = %if.end.i.i.i81
  %344 = ptrtoint ptr %337 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 -1, ptr %337, align 4
  %partition_count.i85 = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 5
  %345 = ptrtoint ptr %partition_count.i85 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %partition_count.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %cmp69.i = icmp sgt i32 %346, 0
  br i1 %cmp69.i, label %for.body.lr.ph.i, label %if.end.i86.if.end59.i.i52.i_crit_edge

if.end.i86.if.end59.i.i52.i_crit_edge:            ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i52.i

for.body.lr.ph.i:                                 ; preds = %if.end.i86
  %mmio_part_cfg_all.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 15
  br label %for.body.i88

for.cond.i:                                       ; preds = %for.end.i
  %inc27.i = add nuw nsw i32 %part.070.i, 1
  %347 = ptrtoint ptr %partition_count.i85 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %partition_count.i85, align 8
  %cmp.i87 = icmp slt i32 %inc27.i, %348
  br i1 %cmp.i87, label %for.cond.i.for.body.i88_crit_edge, label %for.cond.i.if.end59.i.i52.i_crit_edge

for.cond.i.if.end59.i.i52.i_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i52.i

for.cond.i.for.body.i88_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.cond.i.for.body.i88_crit_edge, %for.body.lr.ph.i
  %part.070.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc27.i, %for.cond.i.for.body.i88_crit_edge ]
  %349 = ptrtoint ptr %mmio_part_cfg_all.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %mmio_part_cfg_all.i, align 4
  %351 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %part.070.i, ptr %335, align 4
  %usp_pff_inst_id.i = getelementptr %struct.part_cfg_regs, ptr %350, i32 %part.070.i, i32 4
  %352 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usp_pff_inst_id.i) #11, !srcloc !228
  %353 = call i32 @llvm.bswap.i32(i32 %352) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %354 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %p.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %353, i32 %355)
  %cmp2.i = icmp eq i32 %353, %355
  br i1 %cmp2.i, label %for.body.i88.if.end59.i.i52.sink.split.i_crit_edge, label %if.end5.i89

for.body.i88.if.end59.i.i52.sink.split.i_crit_edge: ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i52.sink.split.i

if.end5.i89:                                      ; preds = %for.body.i88
  %vep_pff_inst_id.i = getelementptr %struct.part_cfg_regs, ptr %350, i32 %part.070.i, i32 5
  %356 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vep_pff_inst_id.i) #11, !srcloc !228
  %357 = lshr i32 %356, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %358 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %p.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %357, i32 %359)
  %cmp8.i = icmp eq i32 %357, %359
  br i1 %cmp8.i, label %if.end5.i89.if.end59.i.i52.sink.split.i_crit_edge, label %if.end5.i89.for.body14.i_crit_edge

if.end5.i89.for.body14.i_crit_edge:               ; preds = %if.end5.i89
  br label %for.body14.i

if.end5.i89.if.end59.i.i52.sink.split.i_crit_edge: ; preds = %if.end5.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i52.sink.split.i

for.body14.i:                                     ; preds = %for.inc.i91.for.body14.i_crit_edge, %if.end5.i89.for.body14.i_crit_edge
  %i.068.i = phi i32 [ %add.i, %for.inc.i91.for.body14.i_crit_edge ], [ 0, %if.end5.i89.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.part_cfg_regs, ptr %350, i32 %part.070.i, i32 6, i32 %i.068.i
  %360 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx15.i) #11, !srcloc !228
  %361 = call i32 @llvm.bswap.i32(i32 %360) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %362 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %p.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %361, i32 %363)
  %cmp18.not.i = icmp eq i32 %361, %363
  %add.i = add nuw nsw i32 %i.068.i, 1
  br i1 %cmp18.not.i, label %for.body14.i.if.end59.i.i52.sink.split.i_crit_edge, label %for.inc.i91

for.body14.i.if.end59.i.i52.sink.split.i_crit_edge: ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i52.sink.split.i

for.inc.i91:                                      ; preds = %for.body14.i
  %exitcond.not.i = icmp eq i32 %add.i, 47
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i91.for.body14.i_crit_edge

for.inc.i91.for.body14.i_crit_edge:               ; preds = %for.inc.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.i

for.end.i:                                        ; preds = %for.inc.i91
  %364 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %364)
  %.pr.i = load i32, ptr %337, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr.i)
  %cmp23.not.i = icmp eq i32 %.pr.i, -1
  br i1 %cmp23.not.i, label %for.cond.i, label %for.end.i.if.end59.i.i52.i_crit_edge

for.end.i.if.end59.i.i52.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i52.i

if.end59.i.i52.sink.split.i:                      ; preds = %for.body14.i.if.end59.i.i52.sink.split.i_crit_edge, %if.end5.i89.if.end59.i.i52.sink.split.i_crit_edge, %for.body.i88.if.end59.i.i52.sink.split.i_crit_edge
  %.sink.i92 = phi i32 [ %add.i, %for.body14.i.if.end59.i.i52.sink.split.i_crit_edge ], [ 100, %if.end5.i89.if.end59.i.i52.sink.split.i_crit_edge ], [ 0, %for.body.i88.if.end59.i.i52.sink.split.i_crit_edge ]
  %365 = ptrtoint ptr %337 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %.sink.i92, ptr %337, align 4
  br label %if.end59.i.i52.i

if.end59.i.i52.i:                                 ; preds = %if.end59.i.i52.sink.split.i, %for.end.i.if.end59.i.i52.i_crit_edge, %for.cond.i.if.end59.i.i52.i_crit_edge, %if.end.i86.if.end59.i.i52.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i53.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i53.i, label %if.end59.i.i52.i.ioctl_pff_to_port.exit_crit_edge, label %copy_to_user.exit.i95

if.end59.i.i52.i.ioctl_pff_to_port.exit_crit_edge: ; preds = %if.end59.i.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_pff_to_port.exit

copy_to_user.exit.i95:                            ; preds = %if.end59.i.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i57.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %p.i, i32 noundef 12) #11
  %call.i12.i.i.i93 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %p.i, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i93)
  %tobool30.not.i = icmp eq i32 %call.i12.i.i.i93, 0
  %spec.select.i94 = select i1 %tobool30.not.i, i32 0, i32 -14
  br label %ioctl_pff_to_port.exit

ioctl_pff_to_port.exit:                           ; preds = %copy_to_user.exit.i95, %if.end59.i.i52.i.ioctl_pff_to_port.exit_crit_edge, %if.then11.i.i.i84
  %retval.0.i96 = phi i32 [ -14, %if.then11.i.i.i84 ], [ -14, %if.end59.i.i52.i.ioctl_pff_to_port.exit_crit_edge ], [ %spec.select.i94, %copy_to_user.exit.i95 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p.i) #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p.i97) #11
  %366 = ptrtoint ptr %p.i97 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 -1, ptr %p.i97, align 4, !annotation !245
  %367 = getelementptr inbounds %struct.switchtec_ioctl_pff_port, ptr %p.i97, i32 0, i32 1
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 -1, ptr %367, align 4, !annotation !245
  %369 = getelementptr inbounds %struct.switchtec_ioctl_pff_port, ptr %p.i97, i32 0, i32 2
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 -1, ptr %369, align 4, !annotation !245
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #11
  %call.i.i.i98 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i98, label %sw.bb11.if.then11.i.i.i112_crit_edge, label %land.lhs.true.i.i.i101

sw.bb11.if.then11.i.i.i112_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i112

land.lhs.true.i.i.i101:                           ; preds = %sw.bb11
  %371 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #17
  %asmresult.i.i.i99 = extractvalue { i32, i32 } %371, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i99)
  %cmp.i6.i.i100 = icmp eq i32 %asmresult.i.i.i99, 0
  br i1 %cmp.i6.i.i100, label %if.end.i.i.i109, label %land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge, !prof !238

land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge: ; preds = %land.lhs.true.i.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i112

if.end.i.i.i109:                                  ; preds = %land.lhs.true.i.i.i101
  %call.i.i.i.i102 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p.i97, i32 noundef 12) #11
  %372 = call i32 @llvm.read_register.i32(metadata !214) #11
  %and.i.i.i.i.i.i.i103 = and i32 %372, -16384
  %373 = inttoptr i32 %and.i.i.i.i.i.i.i103 to ptr
  %cpu_domain.i.i.i.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %373, i32 0, i32 4
  %374 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i104) #9, !srcloc !242
  %and.i.i.i.i.i105 = and i32 %374, -13
  %or.i.i.i.i.i106 = or i32 %and.i.i.i.i.i105, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i106) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call1.i.i.i.i107 = call i32 @arm_copy_from_user(ptr noundef nonnull %p.i97, ptr noundef %4, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %374) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i107)
  %tobool4.not.i.i.i108 = icmp eq i32 %call1.i.i.i.i107, 0
  br i1 %tobool4.not.i.i.i108, label %if.end.i114, label %if.end.i.i.i109.if.then11.i.i.i112_crit_edge, !prof !238

if.end.i.i.i109.if.then11.i.i.i112_crit_edge:     ; preds = %if.end.i.i.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i112

if.then11.i.i.i112:                               ; preds = %if.end.i.i.i109.if.then11.i.i.i112_crit_edge, %land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge, %sw.bb11.if.then11.i.i.i112_crit_edge
  %res.0.i.i52.i = phi i32 [ %call1.i.i.i.i107, %if.end.i.i.i109.if.then11.i.i.i112_crit_edge ], [ 12, %sw.bb11.if.then11.i.i.i112_crit_edge ], [ 12, %land.lhs.true.i.i.i101.if.then11.i.i.i112_crit_edge ]
  %sub.i.i.i110 = sub i32 12, %res.0.i.i52.i
  %add.ptr.i.i.i111 = getelementptr i8, ptr %p.i97, i32 %sub.i.i.i110
  %375 = call ptr @memset(ptr %add.ptr.i.i.i111, i32 0, i32 %res.0.i.i52.i)
  br label %ioctl_port_to_pff.exit

if.end.i114:                                      ; preds = %if.end.i.i.i109
  %376 = ptrtoint ptr %367 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %367, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %377)
  %cmp.i113 = icmp eq i32 %377, -1
  br i1 %cmp.i113, label %if.then1.i115, label %if.else.i117

if.then1.i115:                                    ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_part_cfg.i = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 14
  %378 = ptrtoint ptr %mmio_part_cfg.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %mmio_part_cfg.i, align 8
  br label %if.end8.i

if.else.i117:                                     ; preds = %if.end.i114
  %partition_count.i116 = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 5
  %380 = ptrtoint ptr %partition_count.i116 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %partition_count.i116, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %377, i32 %381)
  %cmp3.i = icmp ult i32 %377, %381
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i117.ioctl_port_to_pff.exit_crit_edge

if.else.i117.ioctl_port_to_pff.exit_crit_edge:    ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_port_to_pff.exit

if.then4.i:                                       ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_pc() #13
  %mmio_part_cfg_all.i118 = getelementptr inbounds %struct.switchtec_dev, ptr %3, i32 0, i32 15
  %382 = ptrtoint ptr %mmio_part_cfg_all.i118 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %mmio_part_cfg_all.i118, align 4
  %arrayidx.i = getelementptr %struct.part_cfg_regs, ptr %383, i32 %377
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.then1.i115
  %pcfg.0.i = phi ptr [ %379, %if.then1.i115 ], [ %arrayidx.i, %if.then4.i ]
  %384 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %369, align 4
  %386 = zext i32 %385 to i64
  call void @__sanitizer_cov_trace_switch(i64 %386, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %385, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 100, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %usp_pff_inst_id.i119 = getelementptr inbounds %struct.part_cfg_regs, ptr %pcfg.0.i, i32 0, i32 4
  %387 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usp_pff_inst_id.i119) #11, !srcloc !228
  %388 = call i32 @llvm.bswap.i32(i32 %387) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %389 = ptrtoint ptr %p.i97 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %388, ptr %p.i97, align 4
  br label %if.end59.i.i43.i

sw.bb10.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %vep_pff_inst_id.i120 = getelementptr inbounds %struct.part_cfg_regs, ptr %pcfg.0.i, i32 0, i32 5
  %390 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vep_pff_inst_id.i120) #11, !srcloc !228
  %391 = lshr i32 %390, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %392 = ptrtoint ptr %p.i97 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %p.i97, align 4
  br label %if.end59.i.i43.i

sw.default.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %385)
  %cmp14.i = icmp ugt i32 %385, 47
  br i1 %cmp14.i, label %sw.default.i.ioctl_port_to_pff.exit_crit_edge, label %if.end16.i

sw.default.i.ioctl_port_to_pff.exit_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_port_to_pff.exit

if.end16.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  %393 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %385, i32 48) #11, !srcloc !246
  %and22.i = and i32 %393, %385
  %394 = ptrtoint ptr %369 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %and22.i, ptr %369, align 4
  %sub.i = add nsw i32 %and22.i, -1
  %arrayidx25.i = getelementptr %struct.part_cfg_regs, ptr %pcfg.0.i, i32 0, i32 6, i32 %sub.i
  %395 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx25.i) #11, !srcloc !228
  %396 = call i32 @llvm.bswap.i32(i32 %395) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %397 = ptrtoint ptr %p.i97 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %p.i97, align 4
  br label %if.end59.i.i43.i

if.end59.i.i43.i:                                 ; preds = %if.end16.i, %sw.bb10.i, %sw.bb.i
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i44.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i44.i, label %if.end59.i.i43.i.ioctl_port_to_pff.exit_crit_edge, label %copy_to_user.exit.i123

if.end59.i.i43.i.ioctl_port_to_pff.exit_crit_edge: ; preds = %if.end59.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_port_to_pff.exit

copy_to_user.exit.i123:                           ; preds = %if.end59.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i48.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %p.i97, i32 noundef 12) #11
  %call.i12.i.i.i121 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %p.i97, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i121)
  %tobool29.not.i = icmp eq i32 %call.i12.i.i.i121, 0
  %spec.select.i122 = select i1 %tobool29.not.i, i32 0, i32 -14
  br label %ioctl_port_to_pff.exit

ioctl_port_to_pff.exit:                           ; preds = %copy_to_user.exit.i123, %if.end59.i.i43.i.ioctl_port_to_pff.exit_crit_edge, %sw.default.i.ioctl_port_to_pff.exit_crit_edge, %if.else.i117.ioctl_port_to_pff.exit_crit_edge, %if.then11.i.i.i112
  %retval.0.i124 = phi i32 [ -22, %if.else.i117.ioctl_port_to_pff.exit_crit_edge ], [ -22, %sw.default.i.ioctl_port_to_pff.exit_crit_edge ], [ -14, %if.then11.i.i.i112 ], [ -14, %if.end59.i.i43.i.ioctl_port_to_pff.exit_crit_edge ], [ %spec.select.i122, %copy_to_user.exit.i123 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p.i97) #11
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call fastcc i32 @ioctl_event_summary(ptr noundef %3, ptr noundef %1, ptr noundef %4, i32 noundef 1240)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %ioctl_port_to_pff.exit, %ioctl_pff_to_port.exit, %ioctl_event_ctl.exit, %sw.bb5, %ioctl_flash_part_info.exit, %ioctl_flash_info.exit, %if.end.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call14, %sw.bb13 ], [ %retval.0.i124, %ioctl_port_to_pff.exit ], [ %retval.0.i96, %ioctl_pff_to_port.exit ], [ %retval.0.i69, %ioctl_event_ctl.exit ], [ %call6, %sw.bb5 ], [ %retval.0.i49, %ioctl_flash_part_info.exit ], [ %retval.0.i37, %ioctl_flash_info.exit ], [ -25, %if.end.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %mrpc_mutex.i) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then2.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %sw.epilog ], [ -4, %entry.cleanup_crit_edge ], [ -19, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_dev_open(ptr noundef %inode, ptr noundef %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -936
  %call = tail call fastcc ptr @stuser_create(ptr noundef %add.ptr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %private_data, align 4
  %call3 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_dev_open.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switchtec_dev_open, %cleanup)) #11
          to label %if.then9 [label %cleanup], !srcloc !235

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %2, i32 -928
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_dev_open.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.60, ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_dev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @stuser_put(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mrpc_queue_cmd(ptr noundef %stuser) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stuser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stuser, align 4
  %kref = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !247
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !248

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !238

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %read_len = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 10
  %4 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %read_len, align 4
  %state1.i = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 1
  %5 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stuser_set_state.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mrpc_queue_cmd, %stuser_set_state.exit)) #11
          to label %if.then.i [label %stuser_set_state.exit], !srcloc !235

if.then.i:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %stuser to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stuser, align 4
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stuser_set_state.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef %stuser, ptr noundef nonnull @.str.32) #11
  br label %stuser_set_state.exit

stuser_set_state.exit:                            ; preds = %if.then.i, %kref_get.exit
  %cmd_done = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 5
  %8 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cmd_done, align 4
  %list = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 4
  %mrpc_queue = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.switchtec_dev, ptr %1, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %10, ptr noundef %mrpc_queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %stuser_set_state.exit.list_add_tail.exit_crit_edge

stuser_set_state.exit.list_add_tail.exit_crit_edge: ; preds = %stuser_set_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %stuser_set_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mrpc_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %stuser_set_state.exit.list_add_tail.exit_crit_edge
  tail call fastcc void @mrpc_cmd_submit(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ioctl_event_summary(ptr noundef %stdev, ptr nocapture noundef writeonly %stuser, ptr noundef %usum, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1240) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_sw_event = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 10
  %1 = ptrtoint ptr %mmio_sw_event to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio_sw_event, align 8
  %global_summary = getelementptr inbounds %struct.sw_event_regs, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %global_summary) #11, !srcloc !228
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %mmio_sw_event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_sw_event, align 8
  %part_event_bitmap = getelementptr inbounds %struct.sw_event_regs, ptr %7, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %part_event_bitmap) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %add.ptr.i = getelementptr i8, ptr %part_event_bitmap, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #11
  %part_bitmap = getelementptr inbounds %struct.switchtec_ioctl_event_summary, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %part_bitmap to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %part_bitmap, align 8
  %mmio_part_cfg = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 14
  %16 = ptrtoint ptr %mmio_part_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_part_cfg, align 8
  %part_event_summary = getelementptr inbounds %struct.part_cfg_regs, ptr %17, i32 0, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %part_event_summary) #11, !srcloc !228
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %local_part = getelementptr inbounds %struct.switchtec_ioctl_event_summary, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %local_part to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %local_part, align 8
  %partition_count = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 5
  %21 = ptrtoint ptr %partition_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %partition_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp54 = icmp sgt i32 %22, 0
  br i1 %cmp54, label %for.body.lr.ph, label %if.end.for.cond9.preheader_crit_edge

if.end.for.cond9.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %mmio_part_cfg_all = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 15
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body.for.cond9.preheader_crit_edge, %if.end.for.cond9.preheader_crit_edge
  %pff_csr_count = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 6
  %23 = ptrtoint ptr %pff_csr_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pff_csr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1056 = icmp sgt i32 %24, 0
  br i1 %cmp1056, label %for.body12.lr.ph, label %for.cond9.preheader.for.end18_crit_edge

for.cond9.preheader.for.end18_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end18

for.body12.lr.ph:                                 ; preds = %for.cond9.preheader
  %mmio_pff_csr = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 16
  br label %for.body12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %mmio_part_cfg_all to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_part_cfg_all, align 4
  %part_event_summary6 = getelementptr %struct.part_cfg_regs, ptr %26, i32 %i.055, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %part_event_summary6) #11, !srcloc !228
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %arrayidx8 = getelementptr %struct.switchtec_ioctl_event_summary, ptr %call7.i.i, i32 0, i32 4, i32 %i.055
  %29 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.055, 1
  %30 = ptrtoint ptr %partition_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %partition_count, align 8
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond9.preheader_crit_edge

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %i.157 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc17, %for.body12.for.body12_crit_edge ]
  %32 = ptrtoint ptr %mmio_pff_csr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_pff_csr, align 8
  %pff_event_summary = getelementptr %struct.pff_csr_regs, ptr %33, i32 %i.157, i32 18
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pff_event_summary) #11, !srcloc !228
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %arrayidx15 = getelementptr %struct.switchtec_ioctl_event_summary, ptr %call7.i.i, i32 0, i32 5, i32 %i.157
  %36 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx15, align 4
  %inc17 = add nuw nsw i32 %i.157, 1
  %37 = ptrtoint ptr %pff_csr_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pff_csr_count, align 4
  %cmp10 = icmp slt i32 %inc17, %38
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.for.end18_crit_edge

for.body12.for.end18_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end18

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.end18:                                        ; preds = %for.body12.for.end18_crit_edge, %for.cond9.preheader.for.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1240, i32 %size)
  %cmp1.i.i = icmp ugt i32 %size, 1240
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !248

if.then3.i.i:                                     ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.58, i32 noundef 1240, i32 noundef %size) #11
  br label %error_case

if.then.i.i.i:                                    ; preds = %for.end18
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %size, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %usum, i32 %size, i32 -1226833920) #17, !srcloc !240
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef %size) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %usum, ptr noundef nonnull %call7.i.i, i32 noundef %size) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %size, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %size, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool20.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool20.not, label %if.end22, label %copy_to_user.exit.error_case_crit_edge

copy_to_user.exit.error_case_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_case

if.end22:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %event_cnt = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 24
  %call.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_cnt, i32 noundef 4) #11
  %40 = ptrtoint ptr %event_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %event_cnt, align 4
  %event_cnt24 = getelementptr inbounds %struct.switchtec_user, ptr %stuser, i32 0, i32 12
  %42 = ptrtoint ptr %event_cnt24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %event_cnt24, align 4
  br label %error_case

error_case:                                       ; preds = %if.end22, %copy_to_user.exit.error_case_crit_edge, %if.then3.i.i
  %ret.0 = phi i32 [ 0, %if.end22 ], [ -14, %copy_to_user.exit.error_case_crit_edge ], [ -14, %if.then3.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error_case, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_case ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @global_ev_reg(ptr nocapture noundef readonly %stdev, i32 noundef %offset, i32 noundef %index) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_sw_event = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 10
  %0 = ptrtoint ptr %mmio_sw_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_sw_event, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  ret ptr %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @part_ev_reg(ptr nocapture noundef readonly %stdev, i32 noundef %offset, i32 noundef %index) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_part_cfg_all = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 15
  %0 = ptrtoint ptr %mmio_part_cfg_all to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_part_cfg_all, align 4
  %arrayidx = getelementptr %struct.part_cfg_regs, ptr %1, i32 %index
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 %offset
  ret ptr %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pff_ev_reg(ptr nocapture noundef readonly %stdev, i32 noundef %offset, i32 noundef %index) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_pff_csr = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 16
  %0 = ptrtoint ptr %mmio_pff_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_pff_csr, align 8
  %arrayidx = getelementptr %struct.pff_csr_regs, ptr %1, i32 %index
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 %offset
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @event_ctl(ptr noundef %stdev, ptr nocapture noundef %ctl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctl, align 4
  %index = getelementptr inbounds %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %map_reg.i = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %1, i32 1
  %7 = lshr i32 1073864704, %1
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3.not.i = icmp eq i32 %8, 0
  br i1 %cmp3.not.i, label %if.else14.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp5.i = icmp eq i32 %3, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %partition.i = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 4
  %9 = ptrtoint ptr %partition.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %partition.i, align 4
  br label %event_hdr_addr.exit

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.i = icmp slt i32 %3, 0
  br i1 %cmp7.i, label %if.else.i.if.then_crit_edge, label %lor.lhs.false8.i

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false8.i:                                 ; preds = %if.else.i
  %partition_count.i = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 5
  %11 = ptrtoint ptr %partition_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %partition_count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp9.not.i = icmp sgt i32 %12, %3
  br i1 %cmp9.not.i, label %lor.lhs.false8.i.event_hdr_addr.exit_crit_edge, label %lor.lhs.false8.i.if.then_crit_edge

lor.lhs.false8.i.if.then_crit_edge:               ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false8.i.event_hdr_addr.exit_crit_edge:   ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %event_hdr_addr.exit

if.else14.i:                                      ; preds = %if.end.i
  %13 = lshr i32 -1610743808, %1
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17.not.i = icmp eq i32 %14, 0
  br i1 %cmp17.not.i, label %if.else14.i.event_hdr_addr.exit_crit_edge, label %if.then18.i

if.else14.i.event_hdr_addr.exit_crit_edge:        ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %event_hdr_addr.exit

if.then18.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.i = icmp slt i32 %3, 0
  br i1 %cmp19.i, label %if.then18.i.if.then_crit_edge, label %lor.lhs.false20.i

if.then18.i.if.then_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false20.i:                                ; preds = %if.then18.i
  %pff_csr_count.i = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 6
  %15 = ptrtoint ptr %pff_csr_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pff_csr_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp21.not.i = icmp sgt i32 %16, %3
  br i1 %cmp21.not.i, label %lor.lhs.false20.i.event_hdr_addr.exit_crit_edge, label %lor.lhs.false20.i.if.then_crit_edge

lor.lhs.false20.i.if.then_crit_edge:              ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false20.i.event_hdr_addr.exit_crit_edge:  ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %event_hdr_addr.exit

event_hdr_addr.exit:                              ; preds = %lor.lhs.false20.i.event_hdr_addr.exit_crit_edge, %if.else14.i.event_hdr_addr.exit_crit_edge, %lor.lhs.false8.i.event_hdr_addr.exit_crit_edge, %if.then6.i
  %index.addr.0.i = phi i32 [ %10, %if.then6.i ], [ %3, %lor.lhs.false8.i.event_hdr_addr.exit_crit_edge ], [ %3, %lor.lhs.false20.i.event_hdr_addr.exit_crit_edge ], [ %3, %if.else14.i.event_hdr_addr.exit_crit_edge ]
  %17 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map_reg.i, align 4
  %call29.i = tail call ptr %18(ptr noundef %stdev, i32 noundef %6, i32 noundef %index.addr.0.i) #11
  %cmp.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %event_hdr_addr.exit.if.then_crit_edge, label %if.end

event_hdr_addr.exit.if.then_crit_edge:            ; preds = %event_hdr_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %event_hdr_addr.exit.if.then_crit_edge, %lor.lhs.false20.i.if.then_crit_edge, %if.then18.i.if.then_crit_edge, %lor.lhs.false8.i.if.then_crit_edge, %if.else.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i138 = phi ptr [ %call29.i, %event_hdr_addr.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false8.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false20.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then18.i.if.then_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i138 to i32
  br label %cleanup

if.end:                                           ; preds = %event_hdr_addr.exit
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call29.i) #11, !srcloc !228
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool.not = icmp sgt i32 %21, -1
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr i32, ptr %call29.i, i32 1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #11, !srcloc !228
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %arrayidx7 = getelementptr %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 5, i32 0
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7, align 4
  %arrayidx.1 = getelementptr i32, ptr %call29.i, i32 2
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.1) #11, !srcloc !228
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %arrayidx7.1 = getelementptr %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx7.1, align 4
  %arrayidx.2 = getelementptr i32, ptr %call29.i, i32 3
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.2) #11, !srcloc !228
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %arrayidx7.2 = getelementptr %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx7.2, align 4
  %arrayidx.3 = getelementptr i32, ptr %call29.i, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.3) #11, !srcloc !228
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %arrayidx7.3 = getelementptr %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx7.3, align 4
  %arrayidx.4 = getelementptr i32, ptr %call29.i, i32 5
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.4) #11, !srcloc !228
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %arrayidx7.4 = getelementptr %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 5, i32 4
  %36 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx7.4, align 4
  %and8 = and i32 %21, 1
  %occurred = getelementptr inbounds %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 3
  %37 = ptrtoint ptr %occurred to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and8, ptr %occurred, align 4
  %shr = lshr i32 %21, 5
  %and9 = and i32 %shr, 255
  %count = getelementptr inbounds %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 4
  %38 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and9, ptr %count, align 4
  %flags = getelementptr inbounds %struct.switchtec_ioctl_event_ctl, ptr %ctl, i32 0, i32 2
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and10 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and13 = and i32 %21, -2
  %spec.select = select i1 %tobool11.not, i32 %and13, i32 %21
  %and16 = shl i32 %40, 2
  %41 = and i32 %and16, 8
  %42 = or i32 %spec.select, %41
  %and21 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %spec.select, -9
  %hdr.2 = select i1 %tobool22.not, i32 %42, i32 %and24
  %and27 = lshr i32 %40, 1
  %43 = and i32 %and27, 2
  %44 = or i32 %hdr.2, %43
  %and33 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %and36 = and i32 %hdr.2, -3
  %hdr.4 = select i1 %tobool34.not, i32 %44, i32 %and36
  %45 = and i32 %and27, 4
  %46 = or i32 %hdr.4, %45
  %and45 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %and48 = and i32 %hdr.4, -5
  %hdr.6 = select i1 %tobool46.not, i32 %46, i32 %and48
  %and51 = and i32 %40, 16
  %47 = or i32 %hdr.6, %and51
  %and57 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %and60 = and i32 %hdr.6, -17
  %hdr.8 = select i1 %tobool58.not, i32 %47, i32 %and60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool63.not = icmp eq i32 %40, 0
  br i1 %tobool63.not, label %for.body.preheader.if.end65_crit_edge, label %if.then64

for.body.preheader.if.end65_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then64:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %hdr.8) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call29.i, i32 %48) #11, !srcloc !232
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %for.body.preheader.if.end65_crit_edge
  %and67 = lshr i32 %hdr.8, 2
  %49 = and i32 %and67, 2
  %and73 = shl i32 %hdr.8, 1
  %50 = and i32 %and73, 4
  %51 = or i32 %50, %49
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %flags, align 4
  %and79 = and i32 %hdr.8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end65.if.end84_crit_edge, label %if.then81

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then81:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %or83 = or i32 %54, 8
  store i32 %or83, ptr %flags, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end65.if.end84_crit_edge
  %and85 = and i32 %hdr.8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.cleanup_crit_edge, label %if.then87

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %or89 = or i32 %56, 16
  store i32 %or89, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end84.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.then87 ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stuser_create(ptr noundef %stdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1124) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 1
  %call2 = tail call ptr @get_device(ptr noundef %dev) #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %stdev, ptr %call7.i.i, align 8
  %kref = getelementptr inbounds %struct.switchtec_user, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %2 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %kref, align 4
  %list = getelementptr inbounds %struct.switchtec_user, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.switchtec_user, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %cmd_comp = getelementptr inbounds %struct.switchtec_user, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %cmd_comp, ptr noundef nonnull @.str.61, ptr noundef nonnull @stuser_create.__key) #11
  %event_cnt = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_cnt, i32 noundef 4) #11
  %5 = ptrtoint ptr %event_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %event_cnt, align 4
  %event_cnt5 = getelementptr inbounds %struct.switchtec_user, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %event_cnt5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %event_cnt5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stuser_create.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stuser_create, %cleanup)) #11
          to label %if.then12 [label %cleanup], !srcloc !235

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stuser_create.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.62, ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.then12 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_event_isr(i32 noundef %irq, ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_part_cfg = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %mmio_part_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_part_cfg, align 8
  %mrpc_comp_hdr = getelementptr inbounds %struct.part_cfg_regs, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mrpc_comp_hdr) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_event_isr.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switchtec_event_isr, %do.end)) #11
          to label %if.then6 [label %do.end], !srcloc !235

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_event_isr.__UNIQUE_ID_ddebug257, ptr noundef %dev7, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %mrpc_work = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i61 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %mrpc_work) #11
  %5 = ptrtoint ptr %mmio_part_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_part_cfg, align 8
  %mrpc_comp_hdr10 = getelementptr inbounds %struct.part_cfg_regs, ptr %6, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mrpc_comp_hdr10, i32 %2) #11, !srcloc !232
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %ret.0 = phi i32 [ 1, %do.end ], [ 0, %entry.if.end11_crit_edge ]
  %pff_csr_count.i = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %pff_csr_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pff_csr_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp30.i = icmp sgt i32 %8, 0
  br i1 %cmp30.i, label %for.body.lr.ph.i, label %if.end11.for.body.preheader_crit_edge

if.end11.for.body.preheader_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.body.lr.ph.i:                                 ; preds = %if.end11
  %mmio_pff_csr.i = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 16
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 1
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %idx.032.i.ph = phi i32 [ %inc.i64, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  %tobool13.not.i = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %idx.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %idx.032.i.ph, %for.body.i.outer ]
  %9 = ptrtoint ptr %mmio_pff_csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_pff_csr.i, align 8
  %link_state_hdr.i = getelementptr %struct.pff_csr_regs, ptr %10, i32 %idx.032.i, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %link_state_hdr.i) #11, !srcloc !228
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_link_state_events.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switchtec_event_isr, %do.end.i)) #11
          to label %if.then.i [label %do.end.i], !srcloc !235

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_link_state_events.__UNIQUE_ID_ddebug255, ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %idx.032.i, i32 noundef %12) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body.i
  %shr.i = lshr i32 %12, 5
  %arrayidx5.i = getelementptr %struct.switchtec_dev, ptr %dev, i32 0, i32 27, i32 %idx.032.i
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5.i, align 1
  %15 = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %cmp6.not.i = icmp eq i8 %14, %15
  br i1 %cmp6.not.i, label %for.inc.i, label %for.inc.i.thread

for.inc.i:                                        ; preds = %do.end.i
  %inc.i = add nuw nsw i32 %idx.032.i, 1
  %16 = ptrtoint ptr %pff_csr_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pff_csr_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %do.end.i
  %18 = trunc i32 %shr.i to i8
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx5.i, align 1
  %inc.i64 = add nuw nsw i32 %idx.032.i, 1
  %20 = ptrtoint ptr %pff_csr_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pff_csr_count.i, align 4
  %cmp.i65 = icmp slt i32 %inc.i64, %21
  br i1 %cmp.i65, label %for.inc.i.thread.for.body.i.outer_crit_edge, label %for.inc.i.thread.if.then14.i_crit_edge

for.inc.i.thread.if.then14.i_crit_edge:           ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.outer

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool13.not.i, label %for.end.i.for.body.preheader_crit_edge, label %for.end.i.if.then14.i_crit_edge

for.end.i.if.then14.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

for.end.i.for.body.preheader_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.then14.i:                                      ; preds = %for.end.i.if.then14.i_crit_edge, %for.inc.i.thread.if.then14.i_crit_edge
  %link_event_work.i = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %link_event_work.i) #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then14.i, %for.end.i.for.body.preheader_crit_edge, %if.end11.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %event_count.076 = phi i32 [ %event_count.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %eid.074 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %23 = zext i32 %eid.074 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %eid.074, label %if.end15 [
    i32 28, label %for.body.for.inc_crit_edge
    i32 14, label %for.body.for.inc_crit_edge97
  ]

for.body.for.inc_crit_edge97:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call fastcc i32 @mask_all_events(ptr noundef %dev, i32 noundef %eid.074)
  %add = add i32 %call16, %event_count.076
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge97
  %event_count.1 = phi i32 [ %event_count.076, %for.body.for.inc_crit_edge ], [ %add, %if.end15 ], [ %event_count.076, %for.body.for.inc_crit_edge97 ]
  %inc = add nuw nsw i32 %eid.074, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event_count.1)
  %tobool17.not = icmp eq i32 %event_count.1, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %if.then18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %event_cnt = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_cnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %event_cnt, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_cnt, ptr %event_cnt, i32 1, ptr elementtype(i32) %event_cnt) #11, !srcloc !249
  %event_wq = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %event_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switchtec_event_isr.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switchtec_event_isr, %cleanup)) #11
          to label %if.then33 [label %cleanup], !srcloc !235

if.then33:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %dev34 = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switchtec_event_isr.__UNIQUE_ID_ddebug258, ptr noundef %dev34, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef %event_count.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then18, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then33 ], [ %ret.0, %for.end.cleanup_crit_edge ], [ 1, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switchtec_dma_mrpc_isr(i32 noundef %irq, ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_part_cfg = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %mmio_part_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_part_cfg, align 8
  %mrpc_comp_hdr = getelementptr inbounds %struct.part_cfg_regs, ptr %1, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mrpc_comp_hdr, i32 150994944) #11, !srcloc !232
  %mrpc_work = getelementptr inbounds %struct.switchtec_dev, ptr %dev, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %mrpc_work) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mask_all_events(ptr noundef %stdev, i32 noundef %eid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %eid, 536870911
  %1 = lshr i32 1073864704, %0
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %partition_count = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 5
  %3 = ptrtoint ptr %partition_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %partition_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp160 = icmp sgt i32 %4, 0
  br i1 %cmp160, label %for.body.lr.ph, label %for.cond.preheader.if.end20_crit_edge

for.cond.preheader.if.end20_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %eid
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %map_reg.i = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %eid, i32 1
  %7 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_reg.i, align 4
  %dev.i = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %mask_event.exit.for.body_crit_edge, %for.body.lr.ph
  %count.064 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %mask_event.exit.for.body_crit_edge ]
  %idx.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mask_event.exit.for.body_crit_edge ]
  %call.i = tail call ptr %8(ptr noundef %stdev, i32 noundef %6, i32 noundef %idx.061) #11
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call.i) #11, !srcloc !228
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %11 = and i32 %10, -2147483639
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %do.body.i, label %for.body.mask_event.exit_crit_edge

for.body.mask_event.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mask_event.exit

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mask_event.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mask_all_events, %do.end.i)) #11
          to label %if.then14.i [label %do.end.i], !srcloc !235

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mask_event.__UNIQUE_ID_ddebug256, ptr noundef %dev.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef %eid, i32 noundef %idx.061, i32 noundef %10) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body.i
  %and16.i = and i32 %10, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %and16.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call.i, i32 %13) #11, !srcloc !232
  br label %mask_event.exit

mask_event.exit:                                  ; preds = %do.end.i, %for.body.mask_event.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %do.end.i ], [ 0, %for.body.mask_event.exit_crit_edge ]
  %add = add i32 %retval.0.i, %count.064
  %inc = add nuw nsw i32 %idx.061, 1
  %14 = ptrtoint ptr %partition_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %partition_count, align 8
  %cmp1 = icmp slt i32 %inc, %15
  br i1 %cmp1, label %mask_event.exit.for.body_crit_edge, label %mask_event.exit.if.end20_crit_edge

mask_event.exit.if.end20_crit_edge:               ; preds = %mask_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

mask_event.exit.for.body_crit_edge:               ; preds = %mask_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %entry
  %16 = lshr i32 -1610743808, %0
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.not = icmp eq i32 %17, 0
  br i1 %cmp4.not, label %if.else16, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %if.else
  %pff_csr_count = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 6
  %18 = ptrtoint ptr %pff_csr_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pff_csr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp765 = icmp sgt i32 %19, 0
  br i1 %cmp765, label %for.body8.lr.ph, label %for.cond6.preheader.if.end20_crit_edge

for.cond6.preheader.if.end20_crit_edge:           ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %arrayidx.i39 = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %eid
  %map_reg.i40 = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %eid, i32 1
  %dev.i43 = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 1
  br label %for.body8

for.body8:                                        ; preds = %for.inc13.for.body8_crit_edge, %for.body8.lr.ph
  %count.170 = phi i32 [ 0, %for.body8.lr.ph ], [ %count.2, %for.inc13.for.body8_crit_edge ]
  %idx.166 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc14, %for.inc13.for.body8_crit_edge ]
  %arrayidx9 = getelementptr %struct.switchtec_dev, ptr %stdev, i32 0, i32 7, i32 %idx.166
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %for.body8.for.inc13_crit_edge, label %if.end

for.body8.for.inc13_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc13

if.end:                                           ; preds = %for.body8
  %22 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i39, align 4
  %24 = ptrtoint ptr %map_reg.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map_reg.i40, align 4
  %call.i41 = tail call ptr %25(ptr noundef %stdev, i32 noundef %23, i32 noundef %idx.166) #11
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call.i41) #11, !srcloc !228
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %28 = and i32 %27, -2147483639
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %29 = icmp eq i32 %28, 9
  br i1 %29, label %do.body.i42, label %if.end.mask_event.exit48_crit_edge

if.end.mask_event.exit48_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mask_event.exit48

do.body.i42:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mask_event.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mask_all_events, %do.end.i46)) #11
          to label %if.then14.i44 [label %do.end.i46], !srcloc !235

if.then14.i44:                                    ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mask_event.__UNIQUE_ID_ddebug256, ptr noundef %dev.i43, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef %eid, i32 noundef %idx.166, i32 noundef %27) #11
  br label %do.end.i46

do.end.i46:                                       ; preds = %if.then14.i44, %do.body.i42
  %and16.i45 = and i32 %27, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %and16.i45) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call.i41, i32 %30) #11, !srcloc !232
  br label %mask_event.exit48

mask_event.exit48:                                ; preds = %do.end.i46, %if.end.mask_event.exit48_crit_edge
  %retval.0.i47 = phi i32 [ 1, %do.end.i46 ], [ 0, %if.end.mask_event.exit48_crit_edge ]
  %add12 = add i32 %retval.0.i47, %count.170
  br label %for.inc13

for.inc13:                                        ; preds = %mask_event.exit48, %for.body8.for.inc13_crit_edge
  %count.2 = phi i32 [ %add12, %mask_event.exit48 ], [ %count.170, %for.body8.for.inc13_crit_edge ]
  %inc14 = add nuw nsw i32 %idx.166, 1
  %31 = ptrtoint ptr %pff_csr_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pff_csr_count, align 4
  %cmp7 = icmp slt i32 %inc14, %32
  br i1 %cmp7, label %for.inc13.for.body8_crit_edge, label %for.inc13.if.end20_crit_edge

for.inc13.if.end20_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.inc13.for.body8_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

if.else16:                                        ; preds = %if.else
  %arrayidx.i49 = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %eid
  %33 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i49, align 4
  %map_reg.i50 = getelementptr [32 x %struct.event_reg], ptr @event_regs, i32 0, i32 %eid, i32 1
  %35 = ptrtoint ptr %map_reg.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map_reg.i50, align 4
  %call.i51 = tail call ptr %36(ptr noundef %stdev, i32 noundef %34, i32 noundef 0) #11
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call.i51) #11, !srcloc !228
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %39 = and i32 %38, -2147483639
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %39)
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %do.body.i52, label %if.else16.if.end20_crit_edge

if.else16.if.end20_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.body.i52:                                      ; preds = %if.else16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mask_event.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mask_all_events, %do.end.i56)) #11
          to label %if.then14.i54 [label %do.end.i56], !srcloc !235

if.then14.i54:                                    ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i53 = getelementptr inbounds %struct.switchtec_dev, ptr %stdev, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mask_event.__UNIQUE_ID_ddebug256, ptr noundef %dev.i53, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef %eid, i32 noundef 0, i32 noundef %38) #11
  br label %do.end.i56

do.end.i56:                                       ; preds = %if.then14.i54, %do.body.i52
  %and16.i55 = and i32 %38, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  %41 = tail call i32 @llvm.bswap.i32(i32 %and16.i55) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call.i51, i32 %41) #11, !srcloc !232
  br label %if.end20

if.end20:                                         ; preds = %do.end.i56, %if.else16.if.end20_crit_edge, %for.inc13.if.end20_crit_edge, %for.cond6.preheader.if.end20_crit_edge, %mask_event.exit.if.end20_crit_edge, %for.cond.preheader.if.end20_crit_edge
  %count.3 = phi i32 [ 1, %do.end.i56 ], [ 0, %if.else16.if.end20_crit_edge ], [ 0, %for.cond6.preheader.if.end20_crit_edge ], [ 0, %for.cond.preheader.if.end20_crit_edge ], [ %count.2, %for.inc13.if.end20_crit_edge ], [ %add, %mask_event.exit.if.end20_crit_edge ]
  ret i32 %count.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !131, !132, !134, !136, !137, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !155, !156, !158, !160, !161, !163, !165, !167, !168, !170, !171, !173, !175, !176, !178, !180, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213}
!llvm.named.register.sp = !{!214}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @__UNIQUE_ID_description236, !1, !"__UNIQUE_ID_description236", i1 false, i1 false}
!1 = !{!"../drivers/pci/switch/switchtec.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_version237, !3, !"__UNIQUE_ID_version237", i1 false, i1 false}
!3 = !{!"../drivers/pci/switch/switchtec.c", i32 20, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file238, !9, !"__UNIQUE_ID_file238", i1 false, i1 false}
!9 = !{!"../drivers/pci/switch/switchtec.c", i32 21, i32 1}
!10 = !{ptr @__UNIQUE_ID_license239, !9, !"__UNIQUE_ID_license239", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author240, !12, !"__UNIQUE_ID_author240", i1 false, i1 false}
!12 = !{!"../drivers/pci/switch/switchtec.c", i32 22, i32 1}
!13 = !{ptr @__param_max_devices, !14, !"__param_max_devices", i1 false, i1 false}
!14 = !{!"../drivers/pci/switch/switchtec.c", i32 25, i32 1}
!15 = !{ptr @__UNIQUE_ID_max_devicestype241, !14, !"__UNIQUE_ID_max_devicestype241", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_max_devices242, !17, !"__UNIQUE_ID_max_devices242", i1 false, i1 false}
!17 = !{!"../drivers/pci/switch/switchtec.c", i32 26, i32 1}
!18 = !{ptr @__param_use_dma_mrpc, !19, !"__param_use_dma_mrpc", i1 false, i1 false}
!19 = !{!"../drivers/pci/switch/switchtec.c", i32 29, i32 1}
!20 = !{ptr @__UNIQUE_ID_use_dma_mrpctype243, !19, !"__UNIQUE_ID_use_dma_mrpctype243", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_use_dma_mrpc244, !22, !"__UNIQUE_ID_use_dma_mrpc244", i1 false, i1 false}
!22 = !{!"../drivers/pci/switch/switchtec.c", i32 30, i32 1}
!23 = !{ptr @__param_nirqs, !24, !"__param_nirqs", i1 false, i1 false}
!24 = !{!"../drivers/pci/switch/switchtec.c", i32 34, i32 1}
!25 = !{ptr @__UNIQUE_ID_nirqstype245, !24, !"__UNIQUE_ID_nirqstype245", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_nirqs246, !27, !"__UNIQUE_ID_nirqs246", i1 false, i1 false}
!27 = !{!"../drivers/pci/switch/switchtec.c", i32 35, i32 1}
!28 = !{ptr @__ksymtab_switchtec_class, !29, !"__ksymtab_switchtec_class", i1 false, i1 false}
!29 = !{!"../drivers/pci/switch/switchtec.c", i32 41, i32 1}
!30 = !{ptr @__initcall__kmod_switchtec__259_1833_switchtec_init6, !31, !"__initcall__kmod_switchtec__259_1833_switchtec_init6", i1 false, i1 false}
!31 = !{!"../drivers/pci/switch/switchtec.c", i32 1833, i32 1}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/switch/switchtec.c", i32 1842, i32 2}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @switchtec_exit._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @switchtec_exit._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__exitcall_switchtec_exit, !39, !"__exitcall_switchtec_exit", i1 false, i1 false}
!39 = !{!"../drivers/pci/switch/switchtec.c", i32 1844, i32 1}
!40 = !{ptr @switchtec_devt, !41, !"switchtec_devt", i1 false, i1 false}
!41 = !{!"../drivers/pci/switch/switchtec.c", i32 37, i32 14}
!42 = !{ptr @switchtec_class, !43, !"switchtec_class", i1 false, i1 false}
!43 = !{!"../drivers/pci/switch/switchtec.c", i32 40, i32 15}
!44 = !{ptr @__param_str_max_devices, !14, !"__param_str_max_devices", i1 false, i1 false}
!45 = !{ptr @max_devices, !46, !"max_devices", i1 false, i1 false}
!46 = !{!"../drivers/pci/switch/switchtec.c", i32 24, i32 12}
!47 = !{ptr @__param_str_use_dma_mrpc, !19, !"__param_str_use_dma_mrpc", i1 false, i1 false}
!48 = !{ptr @use_dma_mrpc, !49, !"use_dma_mrpc", i1 false, i1 false}
!49 = !{!"../drivers/pci/switch/switchtec.c", i32 28, i32 13}
!50 = !{ptr @__param_str_nirqs, !24, !"__param_str_nirqs", i1 false, i1 false}
!51 = !{ptr @nirqs, !52, !"nirqs", i1 false, i1 false}
!52 = !{!"../drivers/pci/switch/switchtec.c", i32 33, i32 12}
!53 = !{ptr @switchtec_init.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/pci/switch/switchtec.c", i32 1811, i32 20}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/switch/switchtec.c", i32 1821, i32 2}
!57 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @switchtec_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @switchtec_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @switchtec_pci_driver, !61, !"switchtec_pci_driver", i1 false, i1 false}
!61 = !{!"../drivers/pci/switch/switchtec.c", i32 1795, i32 26}
!62 = !{ptr @switchtec_pci_tbl, !63, !"switchtec_pci_tbl", i1 false, i1 false}
!63 = !{!"../drivers/pci/switch/switchtec.c", i32 1733, i32 35}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/switch/switchtec.c", i32 1658, i32 3}
!66 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/switch/switchtec.c", i32 1672, i32 3}
!68 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @switchtec_pci_probe._entry, !67, !"_entry", i1 false, i1 false}
!72 = !{ptr @switchtec_pci_probe._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/switch/switchtec.c", i32 1688, i32 2}
!75 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @switchtec_pci_probe._entry.13, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @switchtec_pci_probe._entry_ptr.16, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @stdev_create.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/pci/switch/switchtec.c", i32 1364, i32 2}
!80 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stdev_create.__key.18, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/pci/switch/switchtec.c", i32 1366, i32 2}
!83 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stdev_create.__key.20, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/pci/switch/switchtec.c", i32 1367, i32 2}
!86 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @stdev_create.__key.22, !85, !"__key", i1 false, i1 false}
!88 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @stdev_create.__key.24, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/pci/switch/switchtec.c", i32 1368, i32 2}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @stdev_create.__key.26, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/pci/switch/switchtec.c", i32 1369, i32 2}
!94 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/switch/switchtec.c", i32 1387, i32 20}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pci/switch/switchtec.c", i32 268, i32 2}
!99 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mrpc_event_work.__UNIQUE_ID_ddebug250, !98, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/switch/switchtec.c", i32 126, i32 17}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pci/switch/switchtec.c", i32 127, i32 19}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/switch/switchtec.c", i32 128, i32 20}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pci/switch/switchtec.c", i32 129, i32 17}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pci/switch/switchtec.c", i32 130, i32 21}
!111 = !{ptr @stuser_set_state.state_names, !112, !"state_names", i1 false, i1 false}
!112 = !{!"../drivers/pci/switch/switchtec.c", i32 125, i32 28}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/switch/switchtec.c", i32 135, i32 2}
!115 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @stuser_set_state.__UNIQUE_ID_ddebug249, !114, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/switch/switchtec.c", i32 109, i32 2}
!119 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @stuser_free.__UNIQUE_ID_ddebug248, !118, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/switch/switchtec.c", i32 300, i32 2}
!123 = !{ptr @mrpc_timeout_work.__UNIQUE_ID_ddebug251, !122, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!124 = !{ptr @switchtec_device_groups, !125, !"switchtec_device_groups", i1 false, i1 false}
!125 = !{!"../drivers/pci/switch/switchtec.c", i32 463, i32 1}
!126 = !{ptr @switchtec_device_group, !125, !"switchtec_device_group", i1 false, i1 false}
!127 = !{ptr @switchtec_device_attrs, !128, !"switchtec_device_attrs", i1 false, i1 false}
!128 = !{!"../drivers/pci/switch/switchtec.c", i32 449, i32 26}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/switch/switchtec.c", i32 334, i32 8}
!131 = !{ptr @dev_attr_device_version, !130, !"dev_attr_device_version", i1 false, i1 false}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pci/switch/switchtec.c", i32 332, i32 25}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/switch/switchtec.c", i32 346, i32 8}
!136 = !{ptr @dev_attr_fw_version, !135, !"dev_attr_fw_version", i1 false, i1 false}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pci/switch/switchtec.c", i32 344, i32 25}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/switch/switchtec.c", i32 384, i32 1}
!141 = !{ptr @dev_attr_vendor_id, !140, !"dev_attr_vendor_id", i1 false, i1 false}
!142 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/switch/switchtec.c", i32 385, i32 1}
!144 = !{ptr @dev_attr_product_id, !143, !"dev_attr_product_id", i1 false, i1 false}
!145 = !{ptr @.str.47, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/switch/switchtec.c", i32 386, i32 1}
!147 = !{ptr @dev_attr_product_revision, !146, !"dev_attr_product_revision", i1 false, i1 false}
!148 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pci/switch/switchtec.c", i32 401, i32 8}
!150 = !{ptr @dev_attr_component_vendor, !149, !"dev_attr_component_vendor", i1 false, i1 false}
!151 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/switch/switchtec.c", i32 396, i32 26}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/switch/switchtec.c", i32 415, i32 8}
!155 = !{ptr @dev_attr_component_id, !154, !"dev_attr_component_id", i1 false, i1 false}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pci/switch/switchtec.c", i32 413, i32 25}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/switch/switchtec.c", i32 429, i32 8}
!160 = !{ptr @dev_attr_component_revision, !159, !"dev_attr_component_revision", i1 false, i1 false}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pci/switch/switchtec.c", i32 425, i32 26}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/switch/switchtec.c", i32 427, i32 25}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pci/switch/switchtec.c", i32 438, i32 8}
!167 = !{ptr @dev_attr_partition, !166, !"dev_attr_partition", i1 false, i1 false}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pci/switch/switchtec.c", i32 447, i32 8}
!170 = !{ptr @dev_attr_partition_count, !169, !"dev_attr_partition_count", i1 false, i1 false}
!171 = !{ptr @switchtec_fops, !172, !"switchtec_fops", i1 false, i1 false}
!172 = !{!"../drivers/pci/switch/switchtec.c", i32 1247, i32 37}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!175 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.58, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!178 = !{ptr @.str.59, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!180 = !{ptr @event_regs, !181, !"event_regs", i1 false, i1 false}
!181 = !{!"../drivers/pci/switch/switchtec.c", i32 954, i32 3}
!182 = !{ptr @.str.60, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/switch/switchtec.c", i32 479, i32 2}
!184 = !{ptr @switchtec_dev_open.__UNIQUE_ID_ddebug252, !183, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!185 = !{ptr @stuser_create.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../drivers/pci/switch/switchtec.c", i32 95, i32 2}
!187 = !{ptr @.str.61, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.62, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pci/switch/switchtec.c", i32 98, i32 2}
!190 = !{ptr @stuser_create.__UNIQUE_ID_ddebug247, !189, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!191 = !{ptr @.str.63, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pci/switch/switchtec.c", i32 1453, i32 3}
!193 = !{ptr @.str.64, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @switchtec_event_isr.__UNIQUE_ID_ddebug257, !192, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!195 = !{ptr @.str.65, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pci/switch/switchtec.c", i32 1472, i32 3}
!197 = !{ptr @switchtec_event_isr.__UNIQUE_ID_ddebug258, !196, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!198 = !{ptr @.str.66, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pci/switch/switchtec.c", i32 1277, i32 3}
!200 = !{ptr @.str.67, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @check_link_state_events.__UNIQUE_ID_ddebug255, !199, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!202 = !{ptr @.str.68, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pci/switch/switchtec.c", i32 1415, i32 2}
!204 = !{ptr @.str.69, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mask_event.__UNIQUE_ID_ddebug256, !203, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!206 = !{ptr @.str.70, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pci/switch/switchtec.c", i32 1708, i32 2}
!208 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @switchtec_pci_remove._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @switchtec_pci_remove._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.72, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pci/switch/switchtec.c", i32 38, i32 8}
!213 = !{ptr @switchtec_minor_ida, !212, !"switchtec_minor_ida", i1 false, i1 false}
!214 = !{!"sp"}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{i64 5038669}
!225 = !{i64 2152578014}
!226 = !{i64 5038051}
!227 = !{i64 2152578626}
!228 = !{i64 5038889}
!229 = !{i64 2152579238}
!230 = !{i8 0, i8 2}
!231 = !{i64 2152580593}
!232 = !{i64 5038471}
!233 = !{i64 2154504335}
!234 = !{i64 2154504708}
!235 = !{i64 2148543874, i64 2148543879, i64 2148543892, i64 2148543936, i64 2148543970, i64 2148543991}
!236 = !{i64 2148809614}
!237 = !{i64 2148724054, i64 2148724086, i64 2148724115, i64 2148724149, i64 2148724180, i64 2148724203}
!238 = !{!"branch_weights", i32 2000, i32 1}
!239 = !{i64 2150112455}
!240 = !{i64 2153935516, i64 2153935541}
!241 = !{i64 2153934835, i64 2153934860}
!242 = !{i64 6430390}
!243 = !{i64 6430587}
!244 = !{i64 2153915820}
!245 = !{!"auto-init"}
!246 = !{i64 808952, i64 808969}
!247 = !{i64 2148721589, i64 2148721621, i64 2148721650, i64 2148721684, i64 2148721715, i64 2148721738}
!248 = !{!"branch_weights", i32 1, i32 2000}
!249 = !{i64 2148720059, i64 2148720085, i64 2148720114, i64 2148720148, i64 2148720179, i64 2148720202}
