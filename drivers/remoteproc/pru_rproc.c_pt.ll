; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/pru_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/pru_rproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pru_private_data = type { i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.pru_rproc = type { i32, ptr, ptr, ptr, ptr, [3 x %struct.pruss_mem_region], ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.pruss_mem_region = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pruss = type { ptr, ptr, ptr, [3 x %struct.pruss_mem_region], ptr, ptr }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.pru_irq_rsc = type { i8, i8, [0 x %struct.pruss_int_map] }
%struct.pruss_int_map = type { i8, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_pru_rproc__237_913_pru_rproc_driver_init6 = internal global ptr @pru_rproc_driver_init, section ".initcall6.init", align 4
@pru_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pru_rproc_probe, ptr @pru_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @pru_rproc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pru_rproc_driver_exit = internal global ptr @pru_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [44 x i8] c"pru_rproc.author=Suman Anna <s-anna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [46 x i8] c"pru_rproc.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [66 x i8] c"pru_rproc.author=Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [55 x i8] c"pru_rproc.description=PRU-ICSS Remote Processor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [44 x i8] c"pru_rproc.file=drivers/remoteproc/pru_rproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [25 x i8] c"pru_rproc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pru-rproc\00", [22 x i8] zeroinitializer }, align 32
@pru_rproc_match = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3356-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4376-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am5728-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am642-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am642-rtu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_rtu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am642-tx-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_tx_pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-rtu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_rtu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-tx-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_tx_pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_pru_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-rtu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_rtu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-tx-pru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_tx_pru_data }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iram\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@__const.pru_rproc_probe.mem_names = private unnamed_addr constant [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@pru_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 785, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to retrieve firmware-name %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pru_rproc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/remoteproc/pru_rproc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pru_rproc_probe._entry_ptr = internal global ptr @pru_rproc_probe._entry, section ".printk_index", align 4
@pru_rproc_ops = internal global { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @pru_rproc_start, ptr @pru_rproc_stop, ptr null, ptr null, ptr null, ptr @pru_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pru_rproc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 792, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rproc_alloc failed\0A\00", [44 x i8] zeroinitializer }, align 32
@pru_rproc_probe._entry_ptr.12 = internal global ptr @pru_rproc_probe._entry.10, section ".printk_index", align 4
@pru_rproc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 826, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to parse and map memory resource %d %s\0A\00", [49 x i8] zeroinitializer }, align 32
@pru_rproc_probe._entry_ptr.15 = internal global ptr @pru_rproc_probe._entry.13, section ".printk_index", align 4
@pru_rproc_probe.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.6, ptr @.str.7, ptr @.str.17, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pru_rproc\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"memory %8s: pa %pa size 0x%zx va %pK\0A\00", [58 x i8] zeroinitializer }, align 32
@pru_rproc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 846, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rproc_add failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@pru_rproc_probe._entry_ptr.20 = internal global ptr @pru_rproc_probe._entry.18, section ".printk_index", align 4
@pru_rproc_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.6, ptr @.str.7, ptr @.str.21, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PRU rproc node %pOF probed successfully\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PRU\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTU\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Tx_PRU\00", [25 x i8] zeroinitializer }, align 32
@pru_rproc_start.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.25, ptr @.str.7, ptr @.str.26, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pru_rproc_start\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"starting %s%d: entry-point = 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@pru_handle_intrmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 301, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported rsc type: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pru_handle_intrmap\00", [45 x i8] zeroinitializer }, align 32
@pru_handle_intrmap._entry_ptr = internal global ptr @pru_handle_intrmap._entry, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@pru_handle_intrmap.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.28, ptr @.str.7, ptr @.str.30, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mapping%d: event %d, chnl %d, host %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pru_handle_intrmap._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.7, i32 357, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"failed to get virq for fw mapping %d: event %d chnl %d host %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pru_handle_intrmap._entry_ptr.33 = internal global ptr @pru_handle_intrmap._entry.31, section ".printk_index", align 4
@__const.pru_rproc_stop.names = private unnamed_addr constant [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@pru_rproc_stop.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.7, ptr @.str.35, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pru_rproc_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stopping %s%d\0A\00", [17 x i8] zeroinitializer }, align 32
@pru_rproc_load_elf_segments.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.36, ptr @.str.7, ptr @.str.37, i8 0, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pru_rproc_load_elf_segments\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@pru_rproc_load_elf_segments._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.7, i32 608, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad phdr filesz 0x%x memsz 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@pru_rproc_load_elf_segments._entry_ptr = internal global ptr @pru_rproc_load_elf_segments._entry, section ".printk_index", align 4
@pru_rproc_load_elf_segments._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.7, i32 615, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"truncated fw: need 0x%x avail 0x%zx\0A\00", [59 x i8] zeroinitializer }, align 32
@pru_rproc_load_elf_segments._entry_ptr.41 = internal global ptr @pru_rproc_load_elf_segments._entry.39, section ".printk_index", align 4
@pru_rproc_load_elf_segments._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.7, i32 624, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad phdr da 0x%x mem 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@pru_rproc_load_elf_segments._entry_ptr.44 = internal global ptr @pru_rproc_load_elf_segments._entry.42, section ".printk_index", align 4
@pru_rproc_load_elf_segments._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.36, ptr @.str.7, i32 634, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PRU memory copy failed for da 0x%x memsz 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@pru_rproc_load_elf_segments._entry_ptr.47 = internal global ptr @pru_rproc_load_elf_segments._entry.45, section ".printk_index", align 4
@pru_rproc_parse_fw.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.7, ptr @.str.49, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pru_rproc_parse_fw\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no resource table found for this fw\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c".pru_irq_map\00", [19 x i8] zeroinitializer }, align 32
@pru_rproc_find_interrupt_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.7, i32 675, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c".pru_irq_map section truncated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pru_rproc_find_interrupt_map\00", [35 x i8] zeroinitializer }, align 32
@pru_rproc_find_interrupt_map._entry_ptr = internal global ptr @pru_rproc_find_interrupt_map._entry, section ".printk_index", align 4
@pru_rproc_find_interrupt_map._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.7, i32 681, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"header-less .pru_irq_map section\0A\00", [62 x i8] zeroinitializer }, align 32
@pru_rproc_find_interrupt_map._entry_ptr.55 = internal global ptr @pru_rproc_find_interrupt_map._entry.53, section ".printk_index", align 4
@pru_rproc_find_interrupt_map.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.52, ptr @.str.7, ptr @.str.56, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no .pru_irq_map section found for this fw\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"single_step\00", [20 x i8] zeroinitializer }, align 32
@pru_rproc_debug_ss_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pru_rproc_debug_ss_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"============== Control Registers ==============\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CTRL      := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STS (PC)  := 0x%08x (0x%08x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WAKEUP_EN := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CYCLE     := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"STALL     := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CTBIR0    := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CTBIR1    := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CTPPR0    := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CTPPR1    := 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"=============== Debug Registers ===============\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"PRU is executing, cannot print/access debug registers.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"GPREG%-2d := 0x%08x\09CT_REG%-2d := 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@pru_rproc_remove.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.73, ptr @.str.7, ptr @.str.74, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pru_rproc_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: removing rproc %s\0A\00", [41 x i8] zeroinitializer }, align 32
@pru_data = internal constant { %struct.pru_private_data, [24 x i8] } zeroinitializer, align 32
@k3_pru_data = internal constant { %struct.pru_private_data, [24 x i8] } { %struct.pru_private_data { i32 0, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@k3_rtu_data = internal constant { %struct.pru_private_data, [24 x i8] } { %struct.pru_private_data { i32 1, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@k3_tx_pru_data = internal constant { %struct.pru_private_data, [24 x i8] } { %struct.pru_private_data { i32 2, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 16384, i64 24576, i64 40960, i64 49152, i64 212992, i64 229376]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"pru_rproc_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 904, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 906, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"pru_rproc_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 886, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 777, i32 43 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 777, i32 51 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 777, i32 62 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 783, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 785, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"pru_rproc_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 530, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 792, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 825, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 833, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 846, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 852, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 377, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 377, i32 45 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 377, i32 52 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 381, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 301, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 334, i32 44 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 350, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 355, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 407, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 603, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 607, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 614, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 624, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 633, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 716, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 670, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 675, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 681, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 688, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 261, i32 22 }
@___asan_gen_.247 = private unnamed_addr constant [10 x i8] c"regs_fops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 198, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 263, i32 22 }
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"pru_rproc_debug_ss_fops\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 162, i32 14 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 163, i32 16 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 166, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 167, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 169, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 171, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 173, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 175, i32 16 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 177, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 179, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 182, i32 14 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 186, i32 15 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 191, i32 17 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 247, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 862, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [9 x i8] c"pru_data\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 867, i32 38 }
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"k3_pru_data\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 871, i32 38 }
@___asan_gen_.310 = private unnamed_addr constant [12 x i8] c"k3_rtu_data\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 876, i32 38 }
@___asan_gen_.313 = private unnamed_addr constant [15 x i8] c"k3_tx_pru_data\00", align 1
@___asan_gen_.314 = private constant [34 x i8] c"../drivers/remoteproc/pru_rproc.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 881, i32 38 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_pru_rproc_driver_exit, ptr @__initcall__kmod_pru_rproc__237_913_pru_rproc_driver_init6, ptr @pru_handle_intrmap._entry, ptr @pru_handle_intrmap._entry.31, ptr @pru_handle_intrmap._entry_ptr, ptr @pru_handle_intrmap._entry_ptr.33, ptr @pru_rproc_driver_exit, ptr @pru_rproc_find_interrupt_map._entry, ptr @pru_rproc_find_interrupt_map._entry.53, ptr @pru_rproc_find_interrupt_map._entry_ptr, ptr @pru_rproc_find_interrupt_map._entry_ptr.55, ptr @pru_rproc_load_elf_segments._entry, ptr @pru_rproc_load_elf_segments._entry.39, ptr @pru_rproc_load_elf_segments._entry.42, ptr @pru_rproc_load_elf_segments._entry.45, ptr @pru_rproc_load_elf_segments._entry_ptr, ptr @pru_rproc_load_elf_segments._entry_ptr.41, ptr @pru_rproc_load_elf_segments._entry_ptr.44, ptr @pru_rproc_load_elf_segments._entry_ptr.47, ptr @pru_rproc_probe._entry, ptr @pru_rproc_probe._entry.10, ptr @pru_rproc_probe._entry.13, ptr @pru_rproc_probe._entry.18, ptr @pru_rproc_probe._entry_ptr, ptr @pru_rproc_probe._entry_ptr.12, ptr @pru_rproc_probe._entry_ptr.15, ptr @pru_rproc_probe._entry_ptr.20, ptr @pru_rproc_driver, ptr @.str, ptr @pru_rproc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pru_rproc_ops, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @regs_fops, ptr @.str.58, ptr @pru_rproc_debug_ss_fops, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @pru_data, ptr @k3_pru_data, ptr @k3_rtu_data, ptr @k3_tx_pru_data], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_match to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_handle_intrmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_handle_intrmap._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_load_elf_segments._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_load_elf_segments._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_load_elf_segments._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_load_elf_segments._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_find_interrupt_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_find_interrupt_map._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_rproc_debug_ss_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pru_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_pru_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_rtu_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_tx_pru_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pru_rproc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pru_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @pru_rproc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fw_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #10
  %4 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_name, align 4, !annotation !179
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %fw_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call3) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %7 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_name, align 4
  %call7 = call ptr @devm_rproc_alloc(ptr noundef %dev1, ptr noundef %6, ptr noundef nonnull @pru_rproc_ops, ptr noundef %8, i32 noundef 84) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %ops = getelementptr inbounds %struct.rproc, ptr %call7, i32 0, i32 5
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 8
  %load = getelementptr inbounds %struct.rproc_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pru_rproc_load_elf_segments, ptr %load, align 4
  %12 = load ptr, ptr %ops, align 8
  %parse_fw = getelementptr inbounds %struct.rproc_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %parse_fw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pru_rproc_parse_fw, ptr %parse_fw, align 4
  %recovery_disabled = getelementptr inbounds %struct.rproc, ptr %call7, i32 0, i32 23
  %14 = ptrtoint ptr %recovery_disabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %recovery_disabled, align 8
  %auto_boot = getelementptr inbounds %struct.rproc, ptr %call7, i32 0, i32 30
  %15 = ptrtoint ptr %auto_boot to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %auto_boot, align 1
  %priv = getelementptr inbounds %struct.rproc, ptr %call7, i32 0, i32 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %dev15 = getelementptr inbounds %struct.pru_rproc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %dev15, align 4
  %data16 = getelementptr inbounds %struct.pru_rproc, ptr %17, i32 0, i32 4
  %19 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %data16, align 4
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %pruss = getelementptr inbounds %struct.pru_rproc, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %pruss to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %pruss, align 4
  %rproc18 = getelementptr inbounds %struct.pru_rproc, ptr %17, i32 0, i32 3
  %23 = ptrtoint ptr %rproc18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7, ptr %rproc18, align 4
  %24 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw_name, align 4
  %fw_name19 = getelementptr inbounds %struct.pru_rproc, ptr %17, i32 0, i32 6
  %26 = ptrtoint ptr %fw_name19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fw_name19, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13
  %i.0171 = phi i32 [ 0, %if.end13 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr @__const.pru_rproc_probe.mem_names, i32 0, i32 %i.0171
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %call20 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %28) #10
  %call21 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call20) #10
  %arrayidx22 = getelementptr %struct.pru_rproc, ptr %17, i32 0, i32 5, i32 %i.0171
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call21, ptr %arrayidx22, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end30, label %if.end36

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %i.0171, ptr noundef %28) #13
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx22, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end36:                                         ; preds = %for.body
  %33 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call20, align 4
  %pa = getelementptr %struct.pru_rproc, ptr %17, i32 0, i32 5, i32 %i.0171, i32 1
  %35 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pa, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 1
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i, align 4
  %38 = load i32, ptr %call20, align 4
  %sub.i = add i32 %37, 1
  %add.i = sub i32 %sub.i, %38
  %size = getelementptr %struct.pru_rproc, ptr %17, i32 0, i32 5, i32 %i.0171, i32 2
  %39 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_probe.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_probe, %if.then48)) #10
          to label %for.inc [label %if.then48], !srcloc !180

if.then48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  %42 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx22, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_probe.__UNIQUE_ID_ddebug234, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %28, ptr noundef %pa, i32 noundef %41, ptr noundef %43) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %if.end36
  %inc = add nuw nsw i32 %i.0171, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %pa.i = getelementptr inbounds %struct.pru_rproc, ptr %17, i32 0, i32 5, i32 0, i32 1
  %44 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pa.i, align 4
  %and.i = and i32 %45, 262143
  %46 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %for.end.cleanup_crit_edge [
    i32 40960, label %for.end.if.end65_crit_edge
    i32 16384, label %for.end.if.end65_crit_edge187
    i32 212992, label %for.end.if.end65_crit_edge188
    i32 49152, label %for.end.sw.bb5.i_crit_edge
    i32 24576, label %for.end.sw.bb5.i_crit_edge189
    i32 229376, label %for.end.sw.bb5.i_crit_edge190
  ]

for.end.sw.bb5.i_crit_edge190:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

for.end.sw.bb5.i_crit_edge189:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

for.end.sw.bb5.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

for.end.if.end65_crit_edge188:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

for.end.if.end65_crit_edge187:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5.i:                                         ; preds = %for.end.sw.bb5.i_crit_edge, %for.end.sw.bb5.i_crit_edge189, %for.end.sw.bb5.i_crit_edge190
  br label %if.end65

if.end65:                                         ; preds = %sw.bb5.i, %for.end.if.end65_crit_edge, %for.end.if.end65_crit_edge187, %for.end.if.end65_crit_edge188
  %.sink.i = phi i32 [ 1, %sw.bb5.i ], [ 0, %for.end.if.end65_crit_edge ], [ 0, %for.end.if.end65_crit_edge187 ], [ 0, %for.end.if.end65_crit_edge188 ]
  %47 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink.i, ptr %17, align 4
  %driver_data.i.i165 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i165 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7, ptr %driver_data.i.i165, align 4
  %49 = ptrtoint ptr %rproc18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rproc18, align 4
  %call67 = call i32 @devm_rproc_add(ptr noundef %dev1, ptr noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end73, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call67) #13
  br label %cleanup

if.end73:                                         ; preds = %if.end65
  %dbg_dir.i = getelementptr inbounds %struct.rproc, ptr %call7, i32 0, i32 11
  %51 = ptrtoint ptr %dbg_dir.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dbg_dir.i, align 8
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.end73.pru_rproc_create_debug_entries.exit_crit_edge, label %if.end.i

if.end73.pru_rproc_create_debug_entries.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %pru_rproc_create_debug_entries.exit

if.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef nonnull %52, ptr noundef nonnull %call7, ptr noundef nonnull @regs_fops) #10
  %53 = ptrtoint ptr %dbg_dir.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dbg_dir.i, align 8
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext 384, ptr noundef %54, ptr noundef nonnull %call7, ptr noundef nonnull @pru_rproc_debug_ss_fops) #10
  br label %pru_rproc_create_debug_entries.exit

pru_rproc_create_debug_entries.exit:              ; preds = %if.end.i, %if.end73.pru_rproc_create_debug_entries.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_probe, %if.then86)) #10
          to label %cleanup [label %if.then86], !srcloc !180

if.then86:                                        ; preds = %pru_rproc_create_debug_entries.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %pru_rproc_create_debug_entries.exit, %do.end72, %for.end.cleanup_crit_edge, %do.end30, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %32, %do.end30 ], [ %call67, %do.end72 ], [ -12, %do.end12 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %pru_rproc_create_debug_entries.exit ], [ -22, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_remove.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %name = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_remove.__UNIQUE_ID_ddebug236, ptr noundef %dev1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, ptr noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_load_elf_segments(ptr noundef %rproc, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp136.not = icmp eq i16 %3, 0
  br i1 %cmp136.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %e_phoff = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %e_phoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %e_phoff, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %data38 = getelementptr inbounds %struct.pru_rproc, ptr %7, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %phdr.0137 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %p_paddr = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0137, i32 0, i32 3
  %8 = ptrtoint ptr %p_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p_paddr, align 4
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0137, i32 0, i32 5
  %10 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_memsz, align 4
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0137, i32 0, i32 4
  %12 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_filesz, align 4
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0137, i32 0, i32 1
  %14 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_offset, align 4
  %16 = ptrtoint ptr %phdr.0137 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phdr.0137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp3.not = icmp ne i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp3.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_load_elf_segments.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_load_elf_segments, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !180

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %phdr.0137 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phdr.0137, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_load_elf_segments.__UNIQUE_ID_ddebug231, ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %19, i32 noundef %9, i32 noundef %11, i32 noundef %13) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp11 = icmp ugt i32 %13, %11
  br i1 %cmp11, label %do.end16, label %if.end17

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %13, i32 noundef %11) #13
  br label %for.end

if.end17:                                         ; preds = %do.end
  %add = add i32 %15, %13
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp18 = icmp ugt i32 %add, %21
  br i1 %cmp18, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %add, i32 noundef %21) #13
  br label %for.end

if.end26:                                         ; preds = %if.end17
  %p_flags = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0137, i32 0, i32 6
  %22 = ptrtoint ptr %p_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_flags, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  br i1 %tobool27.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end26
  %and.i.i = and i32 %9, 1048575
  %add.i.i = add i32 %and.i.i, %11
  %size.i.i = getelementptr inbounds %struct.pru_rproc, ptr %25, i32 0, i32 5, i32 0, i32 2
  %26 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %27)
  %cmp3.not.i.i = icmp ugt i32 %add.i.i, %27
  br i1 %cmp3.not.i.i, label %if.then.i.do.end36_crit_edge, label %if.then4.i.i

if.then.i.do.end36_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.then4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %mem_regions.i.i = getelementptr inbounds %struct.pru_rproc, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %mem_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem_regions.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %and.i.i
  br label %pru_da_to_va.exit

if.else.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.else.i.do.end36_crit_edge, label %if.end.i.i

if.else.i.do.end36_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.end.i.i:                                       ; preds = %if.else.i
  %pruss1.i.i = getelementptr inbounds %struct.pru_rproc, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %pruss1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pruss1.i.i, align 4
  %mem_regions.i6.i = getelementptr inbounds %struct.pruss, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %mem_regions.i6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %dram0.sroa.0.0.copyload.i.i = load ptr, ptr %mem_regions.i6.i, align 4
  %dram0.sroa.10.0.arrayidx.sroa_idx.i.i = getelementptr inbounds %struct.pruss, ptr %31, i32 0, i32 3, i32 0, i32 2
  %33 = ptrtoint ptr %dram0.sroa.10.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %dram0.sroa.10.0.copyload.i.i = load i32, ptr %dram0.sroa.10.0.arrayidx.sroa_idx.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.pruss, ptr %31, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %dram1.sroa.0.0.copyload.i.i = load ptr, ptr %arrayidx3.i.i, align 4
  %dram1.sroa.9.0.arrayidx3.sroa_idx.i.i = getelementptr %struct.pruss, ptr %31, i32 0, i32 3, i32 1, i32 2
  %35 = ptrtoint ptr %dram1.sroa.9.0.arrayidx3.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %dram1.sroa.9.0.copyload.i.i = load i32, ptr %dram1.sroa.9.0.arrayidx3.sroa_idx.i.i, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp4.i.i = icmp eq i32 %37, 1
  br i1 %cmp4.i.i, label %do.body.i.i, label %if.end.i.i.if.end6.i.i_crit_edge

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %do.body.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %dram0.sroa.0.0.i.i = phi ptr [ %dram1.sroa.0.0.copyload.i.i, %do.body.i.i ], [ %dram0.sroa.0.0.copyload.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %dram1.sroa.9.0.i.i = phi i32 [ %dram0.sroa.10.0.copyload.i.i, %do.body.i.i ], [ %dram1.sroa.9.0.copyload.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %dram1.sroa.0.0.i.i = phi ptr [ %dram0.sroa.0.0.copyload.i.i, %do.body.i.i ], [ %dram1.sroa.0.0.copyload.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %dram0.sroa.10.0.i.i = phi i32 [ %dram1.sroa.9.0.copyload.i.i, %do.body.i.i ], [ %dram0.sroa.10.0.copyload.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.pruss, ptr %31, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %shrd_ram.sroa.0.0.copyload.i.i = load ptr, ptr %arrayidx8.i.i, align 4
  %shrd_ram.sroa.6.0.arrayidx8.sroa_idx.i.i = getelementptr %struct.pruss, ptr %31, i32 0, i32 3, i32 2, i32 2
  %39 = ptrtoint ptr %shrd_ram.sroa.6.0.arrayidx8.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %shrd_ram.sroa.6.0.copyload.i.i = load i32, ptr %shrd_ram.sroa.6.0.arrayidx8.sroa_idx.i.i, align 4
  %add.i7.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i7.i, i32 %dram0.sroa.10.0.i.i)
  %cmp11.not.i.i = icmp ugt i32 %add.i7.i, %dram0.sroa.10.0.i.i
  br i1 %cmp11.not.i.i, label %if.else.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i8.i = getelementptr i8, ptr %dram0.sroa.0.0.i.i, i32 %9
  br label %pru_da_to_va.exit

if.else.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %9)
  %cmp14.i.i = icmp ugt i32 %9, 8191
  br i1 %cmp14.i.i, label %land.lhs.true15.i.i, label %if.else.i.i.do.end36_crit_edge

if.else.i.i.do.end36_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

land.lhs.true15.i.i:                              ; preds = %if.else.i.i
  %add18.i.i = add i32 %dram1.sroa.9.0.i.i, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i7.i, i32 %add18.i.i)
  %cmp19.not.i.i = icmp ugt i32 %add.i7.i, %add18.i.i
  br i1 %cmp19.not.i.i, label %if.else24.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub21.i.i = add i32 %9, -8192
  %add.ptr23.i.i = getelementptr i8, ptr %dram1.sroa.0.0.i.i, i32 %sub21.i.i
  br label %pru_da_to_va.exit

if.else24.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %cmp25.i.i = icmp ult i32 %9, 65536
  %add29.i.i = add i32 %shrd_ram.sroa.6.0.copyload.i.i, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i7.i, i32 %add29.i.i)
  %cmp30.not.i.i = icmp ugt i32 %add.i7.i, %add29.i.i
  %or.cond.i.i = select i1 %cmp25.i.i, i1 true, i1 %cmp30.not.i.i
  br i1 %or.cond.i.i, label %if.else24.i.i.do.end36_crit_edge, label %if.then31.i.i

if.else24.i.i.do.end36_crit_edge:                 ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.then31.i.i:                                    ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub32.i.i = add i32 %9, -65536
  %add.ptr34.i.i = getelementptr i8, ptr %shrd_ram.sroa.0.0.copyload.i.i, i32 %sub32.i.i
  br label %pru_da_to_va.exit

pru_da_to_va.exit:                                ; preds = %if.then31.i.i, %if.then20.i.i, %if.then12.i.i, %if.then4.i.i
  %va.0.i = phi ptr [ %add.ptr.i.i, %if.then4.i.i ], [ %add.ptr.i8.i, %if.then12.i.i ], [ %add.ptr23.i.i, %if.then20.i.i ], [ %add.ptr34.i.i, %if.then31.i.i ]
  %tobool32.not = icmp eq ptr %va.0.i, null
  br i1 %tobool32.not, label %pru_da_to_va.exit.do.end36_crit_edge, label %if.end37

pru_da_to_va.exit.do.end36_crit_edge:             ; preds = %pru_da_to_va.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

do.end36:                                         ; preds = %pru_da_to_va.exit.do.end36_crit_edge, %if.else24.i.i.do.end36_crit_edge, %if.else.i.i.do.end36_crit_edge, %if.else.i.do.end36_crit_edge, %if.then.i.do.end36_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %9, i32 noundef %11) #13
  br label %for.end

if.end37:                                         ; preds = %pru_da_to_va.exit
  %40 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data38, align 4
  %is_k3 = getelementptr inbounds %struct.pru_private_data, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %is_k3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %is_k3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool39.not = icmp sgt i8 %bf.load, -1
  %43 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %p_offset, align 4
  %add.ptr51 = getelementptr i8, ptr %1, i32 %44
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end37
  %div22.i = lshr i32 %13, 2
  %45 = ptrtoint ptr %va.0.i to i32
  %46 = or i32 %13, %45
  %47 = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %if.end.i, label %if.then40.do.end48_crit_edge

if.then40.do.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

if.end.i:                                         ; preds = %if.then40
  %49 = ptrtoint ptr %add.ptr51 to i32
  %50 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool4.not.i = icmp eq i32 %50, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @kmemdup(ptr noundef %add.ptr51, i32 noundef %13, i32 noundef 3264) #10
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %if.then5.i.do.end48_crit_edge, label %if.then5.i.if.end9.i_crit_edge

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then5.i.do.end48_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

if.end9.i:                                        ; preds = %if.then5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %s.0.i = phi ptr [ %add.ptr51, %if.end.i.if.end9.i_crit_edge ], [ %call.i, %if.then5.i.if.end9.i_crit_edge ]
  %tmp_src.0.i = phi ptr [ null, %if.end.i.if.end9.i_crit_edge ], [ %call.i, %if.then5.i.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %tobool10.not23.i = icmp ult i32 %13, 4
  br i1 %tobool10.not23.i, label %if.end9.i.pru_rproc_memcpy.exit_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  br label %while.body.i

if.end9.i.pru_rproc_memcpy.exit_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pru_rproc_memcpy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end9.i.while.body.i_crit_edge
  %size.026.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div22.i, %if.end9.i.while.body.i_crit_edge ]
  %d.025.i = phi ptr [ %incdec.ptr11.i, %while.body.i.while.body.i_crit_edge ], [ %va.0.i, %if.end9.i.while.body.i_crit_edge ]
  %s.124.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %s.0.i, %if.end9.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %size.026.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %s.124.i, i32 1
  %51 = ptrtoint ptr %s.124.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s.124.i, align 4
  %incdec.ptr11.i = getelementptr i32, ptr %d.025.i, i32 1
  %53 = ptrtoint ptr %d.025.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %d.025.i, align 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %while.body.i.pru_rproc_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.pru_rproc_memcpy.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pru_rproc_memcpy.exit

pru_rproc_memcpy.exit:                            ; preds = %while.body.i.pru_rproc_memcpy.exit_crit_edge, %if.end9.i.pru_rproc_memcpy.exit_crit_edge
  tail call void @kfree(ptr noundef %tmp_src.0.i) #10
  br label %for.inc

do.end48:                                         ; preds = %if.then5.i.do.end48_crit_edge, %if.then40.do.end48_crit_edge
  %retval.0.i108.ph = phi i32 [ -12, %if.then5.i.do.end48_crit_edge ], [ -22, %if.then40.do.end48_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %9, i32 noundef %11) #13
  br label %for.end

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %54 = call ptr @memcpy(ptr %va.0.i, ptr %add.ptr51, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %pru_rproc_memcpy.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0140, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %phdr.0137, i32 1
  %55 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %56 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end48, %do.end36, %do.end23, %do.end16, %entry.for.end_crit_edge
  %ret.3 = phi i32 [ -22, %do.end36 ], [ %retval.0.i108.ph, %do.end48 ], [ -22, %do.end23 ], [ -22, %do.end16 ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_parse_fw(ptr noundef %rproc, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4
  %call2 = tail call i32 @rproc_elf_load_rsc_table(ptr noundef %rproc, ptr noundef %fw) #10
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call2, label %entry.cleanup_crit_edge [
    i32 -22, label %do.body
    i32 0, label %entry.if.end11_crit_edge
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_parse_fw.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_parse_fw, %if.then6)) #10
          to label %if.end11 [label %if.then6], !srcloc !180

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_parse_fw.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.49) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.body, %entry.if.end11_crit_edge
  %call12 = tail call fastcc ptr @pru_rproc_find_interrupt_map(ptr noundef %dev1, ptr noundef %fw)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %tobool17.not = icmp eq ptr %call12, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i42 = icmp eq i8 %5, 1
  br i1 %cmp.i42, label %if.then.i46, label %if.else.i47

if.then.i46:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %sh_offset.i = getelementptr inbounds %struct.elf32_shdr, ptr %call12, i32 0, i32 4
  %8 = ptrtoint ptr %sh_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sh_offset.i, align 4
  %add.ptr52 = getelementptr i8, ptr %3, i32 %9
  %pru_interrupt_map53 = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %pru_interrupt_map53 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr52, ptr %pru_interrupt_map53, align 4
  %sh_size.i = getelementptr inbounds %struct.elf32_shdr, ptr %call12, i32 0, i32 5
  %11 = ptrtoint ptr %sh_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sh_size.i, align 4
  br label %elf_shdr_get_sh_size.exit

if.else.i47:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %sh_offset3.i = getelementptr inbounds %struct.elf64_shdr, ptr %call12, i32 0, i32 4
  %13 = ptrtoint ptr %sh_offset3.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sh_offset3.i, align 8
  %idx.ext = trunc i64 %14 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %pru_interrupt_map = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %pru_interrupt_map to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %pru_interrupt_map, align 4
  %sh_size3.i = getelementptr inbounds %struct.elf64_shdr, ptr %call12, i32 0, i32 5
  %16 = ptrtoint ptr %sh_size3.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sh_size3.i, align 8
  %extract.t54 = trunc i64 %17 to i32
  br label %elf_shdr_get_sh_size.exit

elf_shdr_get_sh_size.exit:                        ; preds = %if.else.i47, %if.then.i46
  %retval.0.i48.off0 = phi i32 [ %12, %if.then.i46 ], [ %extract.t54, %if.else.i47 ]
  %pru_interrupt_map_sz = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %pru_interrupt_map_sz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i48.off0, ptr %pru_interrupt_map_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %elf_shdr_get_sh_size.exit, %if.end16.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then14 ], [ 0, %elf_shdr_get_sh_size.exit ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rproc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_start(ptr noundef %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_start.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_start, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %data = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @__const.pru_rproc_stop.names, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %10 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bootaddr, align 8
  %shr = lshr i64 %11, 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_start.__UNIQUE_ID_ddebug229, ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %7, i32 noundef %9, i64 noundef %shr) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @pru_handle_intrmap(ptr noundef %rproc)
  %pru_interrupt_map = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %pru_interrupt_map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pru_interrupt_map, align 4
  %pru_interrupt_map_sz = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %pru_interrupt_map_sz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pru_interrupt_map_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %bootaddr8 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %14 = ptrtoint ptr %bootaddr8 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bootaddr8, align 8
  %.tr = trunc i64 %15 to i32
  %16 = shl i32 %.tr, 14
  %17 = and i32 %16, -65536
  %conv = or i32 %17, 2
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  %arrayidx.i = getelementptr %struct.pru_rproc, ptr %1, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_stop(ptr noundef %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_stop.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_stop, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %data = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @__const.pru_rproc_stop.names, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_stop.__UNIQUE_ID_ddebug230, ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef %7, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx.i = getelementptr %struct.pru_rproc, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !182
  %13 = and i32 %12, -33554433
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !181
  %mapped_irq.i = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %mapped_irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapped_irq.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end.pru_dispose_irq_mapping.exit_crit_edge, label %while.cond.preheader.i

do.end.pru_dispose_irq_mapping.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pru_dispose_irq_mapping.exit

while.cond.preheader.i:                           ; preds = %do.end
  %evt_count.i = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %evt_count.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %evt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not22.i = icmp eq i8 %19, 0
  br i1 %tobool1.not22.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %20 = phi i8 [ %27, %if.end10.i.while.body.i_crit_edge ], [ %19, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i8 %20, -1
  %21 = ptrtoint ptr %evt_count.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %dec.i, ptr %evt_count.i, align 4
  %22 = ptrtoint ptr %mapped_irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapped_irq.i, align 4
  %idxprom.i = zext i8 %dec.i to i32
  %arrayidx.i12 = getelementptr i32, ptr %23, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 0
  br i1 %cmp.not.i, label %while.body.i.if.end10.i_crit_edge, label %if.then5.i

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @irq_dispose_mapping(i32 noundef %25) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %while.body.i.if.end10.i_crit_edge
  %26 = ptrtoint ptr %evt_count.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %evt_count.i, align 4
  %tobool1.not.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i, label %if.end10.i.while.end.i_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end10.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %28 = ptrtoint ptr %mapped_irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mapped_irq.i, align 4
  tail call void @kfree(ptr noundef %29) #10
  %30 = ptrtoint ptr %mapped_irq.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %mapped_irq.i, align 4
  br label %pru_dispose_irq_mapping.exit

pru_dispose_irq_mapping.exit:                     ; preds = %while.end.i, %do.end.pru_dispose_irq_mapping.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pru_rproc_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %da to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.i = icmp eq i32 %len, 0
  br i1 %cmp.i, label %entry.pru_d_da_to_va.exit_crit_edge, label %if.end.i

entry.pru_d_da_to_va.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pru_d_da_to_va.exit

if.end.i:                                         ; preds = %entry
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pruss1.i = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pruss1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pruss1.i, align 4
  %mem_regions.i = getelementptr inbounds %struct.pruss, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mem_regions.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %dram0.sroa.0.0.copyload.i = load ptr, ptr %mem_regions.i, align 4
  %dram0.sroa.10.0.arrayidx.sroa_idx.i = getelementptr inbounds %struct.pruss, ptr %3, i32 0, i32 3, i32 0, i32 2
  %5 = ptrtoint ptr %dram0.sroa.10.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %dram0.sroa.10.0.copyload.i = load i32, ptr %dram0.sroa.10.0.arrayidx.sroa_idx.i, align 4
  %arrayidx3.i = getelementptr %struct.pruss, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dram1.sroa.0.0.copyload.i = load ptr, ptr %arrayidx3.i, align 4
  %dram1.sroa.9.0.arrayidx3.sroa_idx.i = getelementptr %struct.pruss, ptr %3, i32 0, i32 3, i32 1, i32 2
  %7 = ptrtoint ptr %dram1.sroa.9.0.arrayidx3.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %dram1.sroa.9.0.copyload.i = load i32, ptr %dram1.sroa.9.0.arrayidx3.sroa_idx.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4.i = icmp eq i32 %9, 1
  br i1 %cmp4.i, label %do.body.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.body.i, %if.end.i.if.end6.i_crit_edge
  %dram0.sroa.0.0.i = phi ptr [ %dram1.sroa.0.0.copyload.i, %do.body.i ], [ %dram0.sroa.0.0.copyload.i, %if.end.i.if.end6.i_crit_edge ]
  %dram1.sroa.9.0.i = phi i32 [ %dram0.sroa.10.0.copyload.i, %do.body.i ], [ %dram1.sroa.9.0.copyload.i, %if.end.i.if.end6.i_crit_edge ]
  %dram1.sroa.0.0.i = phi ptr [ %dram0.sroa.0.0.copyload.i, %do.body.i ], [ %dram1.sroa.0.0.copyload.i, %if.end.i.if.end6.i_crit_edge ]
  %dram0.sroa.10.0.i = phi i32 [ %dram1.sroa.9.0.copyload.i, %do.body.i ], [ %dram0.sroa.10.0.copyload.i, %if.end.i.if.end6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.pruss, ptr %3, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %shrd_ram.sroa.0.0.copyload.i = load ptr, ptr %arrayidx8.i, align 4
  %shrd_ram.sroa.6.0.arrayidx8.sroa_idx.i = getelementptr %struct.pruss, ptr %3, i32 0, i32 3, i32 2, i32 2
  %11 = ptrtoint ptr %shrd_ram.sroa.6.0.arrayidx8.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %shrd_ram.sroa.6.0.copyload.i = load i32, ptr %shrd_ram.sroa.6.0.arrayidx8.sroa_idx.i, align 4
  %add.i = add i32 %conv, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %dram0.sroa.10.0.i)
  %cmp11.not.i = icmp ugt i32 %add.i, %dram0.sroa.10.0.i
  br i1 %cmp11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dram0.sroa.0.0.i, i32 %conv
  br label %pru_d_da_to_va.exit

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %conv)
  %cmp14.i = icmp ugt i32 %conv, 8191
  br i1 %cmp14.i, label %land.lhs.true15.i, label %if.else.i.pru_d_da_to_va.exit_crit_edge

if.else.i.pru_d_da_to_va.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pru_d_da_to_va.exit

land.lhs.true15.i:                                ; preds = %if.else.i
  %add18.i = add i32 %dram1.sroa.9.0.i, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add18.i)
  %cmp19.not.i = icmp ugt i32 %add.i, %add18.i
  br i1 %cmp19.not.i, label %if.else24.i, label %if.then20.i

if.then20.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub21.i = add i32 %conv, -8192
  %add.ptr23.i = getelementptr i8, ptr %dram1.sroa.0.0.i, i32 %sub21.i
  br label %pru_d_da_to_va.exit

if.else24.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %conv)
  %cmp25.i = icmp ult i32 %conv, 65536
  %add29.i = add i32 %shrd_ram.sroa.6.0.copyload.i, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add29.i)
  %cmp30.not.i = icmp ugt i32 %add.i, %add29.i
  %or.cond.i = select i1 %cmp25.i, i1 true, i1 %cmp30.not.i
  br i1 %or.cond.i, label %if.else24.i.pru_d_da_to_va.exit_crit_edge, label %if.then31.i

if.else24.i.pru_d_da_to_va.exit_crit_edge:        ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pru_d_da_to_va.exit

if.then31.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub32.i = add i32 %conv, -65536
  %add.ptr34.i = getelementptr i8, ptr %shrd_ram.sroa.0.0.copyload.i, i32 %sub32.i
  br label %pru_d_da_to_va.exit

pru_d_da_to_va.exit:                              ; preds = %if.then31.i, %if.else24.i.pru_d_da_to_va.exit_crit_edge, %if.then20.i, %if.else.i.pru_d_da_to_va.exit_crit_edge, %if.then12.i, %entry.pru_d_da_to_va.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.pru_d_da_to_va.exit_crit_edge ], [ %add.ptr.i, %if.then12.i ], [ %add.ptr23.i, %if.then20.i ], [ %add.ptr34.i, %if.then31.i ], [ null, %if.else24.i.pru_d_da_to_va.exit_crit_edge ], [ null, %if.else.i.pru_d_da_to_va.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pru_handle_intrmap(ptr nocapture noundef readonly %rproc) unnamed_addr #2 align 64 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %pru_interrupt_map = getelementptr inbounds %struct.pru_rproc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pru_interrupt_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pru_interrupt_map, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec) #10
  %6 = getelementptr inbounds i8, ptr %fwspec, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 64)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %conv) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %num_evts = getelementptr inbounds %struct.pru_irq_rsc, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %num_evts to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_evts, align 1
  %conv8 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %11)
  %cmp9 = icmp ugt i8 %11, -96
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %mul = mul nuw nsw i32 %conv8, 3
  %add = add nuw nsw i32 %mul, 2
  %pru_interrupt_map_sz = getelementptr inbounds %struct.pru_rproc, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %pru_interrupt_map_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pru_interrupt_map_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp15.not = icmp eq i32 %add, %13
  br i1 %cmp15.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %evt_count = getelementptr inbounds %struct.pru_rproc, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %evt_count to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %evt_count, align 4
  %15 = shl nuw nsw i32 %conv8, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #14
  %mapped_irq = getelementptr inbounds %struct.pru_rproc, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %mapped_irq, align 4
  %tobool23.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %evt_count to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %evt_count, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %dev27 = getelementptr inbounds %struct.pru_rproc, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end26.dev_of_node.exit_crit_edge, label %if.end.i

if.end26.dev_of_node.exit_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %of_node.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %if.end26.dev_of_node.exit_crit_edge
  %retval.0.i141 = phi ptr [ %21, %if.end.i ], [ null, %if.end26.dev_of_node.exit_crit_edge ]
  %call29 = tail call ptr @of_get_parent(ptr noundef %retval.0.i141) #10
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then31, label %if.end35

if.then31:                                        ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapped_irq, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %mapped_irq, align 4
  %25 = ptrtoint ptr %evt_count to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %evt_count, align 4
  br label %cleanup

if.end35:                                         ; preds = %dev_of_node.exit
  %call36 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %call29, ptr noundef nonnull @.str.29) #10
  tail call void @of_node_put(ptr noundef nonnull %call29) #10
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mapped_irq, align 4
  tail call void @kfree(ptr noundef %27) #10
  %28 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mapped_irq, align 4
  %29 = ptrtoint ptr %evt_count to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %evt_count, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call36, i32 0, i32 3
  %30 = ptrtoint ptr %fwspec to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fwnode.i, ptr %fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %31 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %param_count, align 4
  %32 = ptrtoint ptr %evt_count to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %evt_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp46154.not = icmp eq i8 %33, 0
  br i1 %cmp46154.not, label %if.end42.for.end_crit_edge, label %for.body.lr.ph

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end42
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %arrayidx59 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pru_irq_rsc, ptr %5, i32 0, i32 2, i32 %i.0155
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %conv48 = zext i8 %35 to i32
  %36 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv48, ptr %param, align 4
  %chnl = getelementptr %struct.pru_irq_rsc, ptr %5, i32 0, i32 2, i32 %i.0155, i32 1
  %37 = ptrtoint ptr %chnl to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chnl, align 1
  %conv52 = zext i8 %38 to i32
  %39 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv52, ptr %arrayidx54, align 4
  %host = getelementptr %struct.pru_irq_rsc, ptr %5, i32 0, i32 2, i32 %i.0155, i32 2
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %host, align 1
  %conv57 = zext i8 %41 to i32
  %42 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv57, ptr %arrayidx59, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_handle_intrmap.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_handle_intrmap, %if.then65)) #10
          to label %do.end74 [label %if.then65], !srcloc !180

if.then65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %param, align 4
  %45 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx54, align 4
  %47 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx59, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_handle_intrmap.__UNIQUE_ID_ddebug228, ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %i.0155, i32 noundef %44, i32 noundef %46, i32 noundef %48) #10
  br label %do.end74

do.end74:                                         ; preds = %if.then65, %for.body
  %call75 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %fwspec) #10
  %49 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mapped_irq, align 4
  %arrayidx77 = getelementptr i32, ptr %50, i32 %i.0155
  %51 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call75, ptr %arrayidx77, align 4
  %52 = load ptr, ptr %mapped_irq, align 4
  %arrayidx79 = getelementptr i32, ptr %52, i32 %i.0155
  %53 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool80.not = icmp eq i32 %54, 0
  br i1 %tobool80.not, label %do.end84, label %for.inc

do.end84:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %param, align 4
  %57 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx54, align 4
  %59 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %i.0155, i32 noundef %56, i32 noundef %58, i32 noundef %60) #13
  call fastcc void @pru_dispose_irq_mapping(ptr noundef %3)
  call void @of_node_put(ptr noundef nonnull %call36) #10
  br label %cleanup

for.inc:                                          ; preds = %do.end74
  %inc = add nuw nsw i32 %i.0155, 1
  %61 = ptrtoint ptr %evt_count to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %evt_count, align 4
  %conv45 = zext i8 %62 to i32
  %cmp46 = icmp ult i32 %inc, %conv45
  br i1 %cmp46, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end42.for.end_crit_edge
  call void @of_node_put(ptr noundef nonnull %call36) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end84, %if.then38, %if.then31, %if.then24, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end84 ], [ 0, %for.end ], [ -19, %if.then38 ], [ -19, %if.then31 ], [ -12, %if.then24 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pru_dispose_irq_mapping(ptr nocapture noundef %pru) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapped_irq = getelementptr inbounds %struct.pru_rproc, ptr %pru, i32 0, i32 7
  %0 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapped_irq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.cond.preheader:                             ; preds = %entry
  %evt_count = getelementptr inbounds %struct.pru_rproc, ptr %pru, i32 0, i32 12
  %2 = ptrtoint ptr %evt_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %evt_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not22 = icmp eq i8 %3, 0
  br i1 %tobool1.not22, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %4 = phi i8 [ %11, %if.end10.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i8 %4, -1
  %5 = ptrtoint ptr %evt_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %dec, ptr %evt_count, align 4
  %6 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapped_irq, align 4
  %idxprom = zext i8 %dec to i32
  %arrayidx = getelementptr i32, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %while.body.if.end10_crit_edge, label %if.then5

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @irq_dispose_mapping(i32 noundef %9) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %while.body.if.end10_crit_edge
  %10 = ptrtoint ptr %evt_count to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %evt_count, align 4
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %12 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapped_irq, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %mapped_irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mapped_irq, align 4
  br label %return

return:                                           ; preds = %while.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_rsc_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pru_rproc_find_interrupt_map(ptr noundef %dev, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %e_shnum = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %e_shnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_shnum, align 4
  %e_shstrndx = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %e_shstrndx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %e_shstrndx, align 2
  %e_shoff = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %e_shoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %e_shoff, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %7
  %conv = zext i16 %5 to i32
  %add.ptr1 = getelementptr %struct.elf32_shdr, ptr %add.ptr, i32 %conv
  %sh_offset = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr1, i32 0, i32 4
  %8 = ptrtoint ptr %sh_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sh_offset, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 %9
  %conv3 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp63.not = icmp eq i16 %3, 0
  br i1 %cmp63.not, label %entry.do.body26_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %shdr.065 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %i.064 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %shdr.065 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shdr.065, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr2, i32 %11
  %call = tail call i32 @strcmp(ptr noundef %add.ptr6, ptr noundef nonnull dereferenceable(13) @.str.50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %sh_size.le = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.065, i32 0, i32 5
  %12 = ptrtoint ptr %sh_size.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sh_size.le, align 4
  %sh_offset5 = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.065, i32 0, i32 4
  %14 = ptrtoint ptr %sh_offset5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sh_offset5, align 4
  %add = add i32 %15, %13
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp8 = icmp ugt i32 %add, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp11 = icmp ult i32 %add, %13
  %or.cond = or i1 %cmp8, %cmp11
  br i1 %or.cond, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #13
  br label %cleanup35

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16 = icmp ult i32 %13, 2
  br i1 %cmp16, label %do.end21, label %if.end15.cleanup35_crit_edge

if.end15.cleanup35_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #13
  br label %cleanup35

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.064, 1
  %incdec.ptr = getelementptr %struct.elf32_shdr, ptr %shdr.065, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.inc.do.body26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

do.body26:                                        ; preds = %for.inc.do.body26_crit_edge, %entry.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pru_rproc_find_interrupt_map.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pru_rproc_find_interrupt_map, %if.then31)) #10
          to label %cleanup35 [label %if.then31], !srcloc !180

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pru_rproc_find_interrupt_map.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.56) #10
  br label %cleanup35

cleanup35:                                        ; preds = %if.then31, %do.body26, %do.end21, %if.end15.cleanup35_crit_edge, %do.end
  %retval.2 = phi ptr [ null, %if.then31 ], [ null, %do.body26 ], [ %shdr.065, %if.end15.cleanup35_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end21 ], [ inttoptr (i32 -22 to ptr), %do.end ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @regs_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.59) #10
  %arrayidx.i = getelementptr %struct.pru_rproc, ptr %3, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !182
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, i32 noundef %7) #10
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !182
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %shl = shl i32 %11, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.61, i32 noundef %11, i32 noundef %shl) #10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #10, !srcloc !182
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62, i32 noundef %15) #10
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #10, !srcloc !182
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %19) #10
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #10, !srcloc !182
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, i32 noundef %23) #10
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #10, !srcloc !182
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %27) #10
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #10, !srcloc !182
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, i32 noundef %31) #10
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %33, i32 40
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #10, !srcloc !182
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, i32 noundef %35) #10
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %37, i32 44
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #10, !srcloc !182
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef %39) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.69) #10
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !182
  %43 = and i32 %42, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %arrayidx.i65 = getelementptr %struct.pru_rproc, ptr %3, i32 0, i32 5, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.70) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.069 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.069, 2
  %44 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %45, i32 %mul
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #10, !srcloc !182
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %add12 = add nuw nsw i32 %mul, 128
  %48 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i65, align 4
  %add.ptr.i68 = getelementptr i8, ptr %49, i32 %add12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #10, !srcloc !182
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %i.069, i32 noundef %47, i32 noundef %i.069, i32 noundef %51) #10
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_debug_ss_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @pru_rproc_debug_ss_get, ptr noundef nonnull @pru_rproc_debug_ss_set, ptr noundef nonnull @.str.72) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pru_rproc_debug_ss_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dbg_single_step = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dbg_single_step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_single_step, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pru_rproc_debug_ss_set(ptr nocapture noundef readonly %data, i64 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dbg_single_step = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dbg_single_step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_single_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr %struct.pru_rproc, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !182
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  br i1 %tobool.not, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %dbg_single_step5 = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %dbg_single_step5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dbg_single_step5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true4.if.then10_crit_edge

land.lhs.true4.if.then10_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %dbg_continuous = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %dbg_continuous to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %dbg_continuous, align 4
  br label %if.then10

if.then10:                                        ; preds = %if.then7, %land.lhs.true4.if.then10_crit_edge
  %or = or i32 %7, 258
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dbg_continuous11 = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %dbg_continuous11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dbg_continuous11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %reg_val.0 = phi i32 [ %or, %if.then10 ], [ %12, %if.else ]
  %dbg_single_step14 = getelementptr inbounds %struct.pru_rproc, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %dbg_single_step14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %dbg_single_step14, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #10
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #10, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !158, !159, !160, !162, !164, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_pru_rproc__237_913_pru_rproc_driver_init6, !1, !"__initcall__kmod_pru_rproc__237_913_pru_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/pru_rproc.c", i32 913, i32 1}
!2 = !{ptr @__exitcall_pru_rproc_driver_exit, !1, !"__exitcall_pru_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/pru_rproc.c", i32 915, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/pru_rproc.c", i32 916, i32 1}
!7 = !{ptr @__UNIQUE_ID_author240, !8, !"__UNIQUE_ID_author240", i1 false, i1 false}
!8 = !{!"../drivers/remoteproc/pru_rproc.c", i32 917, i32 1}
!9 = !{ptr @__UNIQUE_ID_description241, !10, !"__UNIQUE_ID_description241", i1 false, i1 false}
!10 = !{!"../drivers/remoteproc/pru_rproc.c", i32 918, i32 1}
!11 = !{ptr @__UNIQUE_ID_file242, !12, !"__UNIQUE_ID_file242", i1 false, i1 false}
!12 = !{!"../drivers/remoteproc/pru_rproc.c", i32 919, i32 1}
!13 = !{ptr @__UNIQUE_ID_license243, !12, !"__UNIQUE_ID_license243", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/pru_rproc.c", i32 906, i32 13}
!16 = !{ptr @pru_rproc_driver, !17, !"pru_rproc_driver", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/pru_rproc.c", i32 904, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/pru_rproc.c", i32 777, i32 43}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/pru_rproc.c", i32 777, i32 51}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/pru_rproc.c", i32 777, i32 62}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/pru_rproc.c", i32 783, i32 36}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/pru_rproc.c", i32 785, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pru_rproc_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @pru_rproc_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/remoteproc/pru_rproc.c", i32 792, i32 3}
!36 = !{ptr @pru_rproc_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pru_rproc_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/remoteproc/pru_rproc.c", i32 825, i32 4}
!40 = !{ptr @pru_rproc_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pru_rproc_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/remoteproc/pru_rproc.c", i32 833, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pru_rproc_probe.__UNIQUE_ID_ddebug234, !43, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/remoteproc/pru_rproc.c", i32 846, i32 3}
!48 = !{ptr @pru_rproc_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pru_rproc_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/remoteproc/pru_rproc.c", i32 852, i32 2}
!52 = !{ptr @pru_rproc_probe.__UNIQUE_ID_ddebug235, !51, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!53 = !{ptr @pru_rproc_ops, !54, !"pru_rproc_ops", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/pru_rproc.c", i32 530, i32 25}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/remoteproc/pru_rproc.c", i32 377, i32 38}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/remoteproc/pru_rproc.c", i32 377, i32 45}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/remoteproc/pru_rproc.c", i32 377, i32 52}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/remoteproc/pru_rproc.c", i32 381, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pru_rproc_start.__UNIQUE_ID_ddebug229, !62, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/remoteproc/pru_rproc.c", i32 301, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pru_handle_intrmap._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @pru_handle_intrmap._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/remoteproc/pru_rproc.c", i32 334, i32 44}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/remoteproc/pru_rproc.c", i32 350, i32 3}
!74 = !{ptr @pru_handle_intrmap.__UNIQUE_ID_ddebug228, !73, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/remoteproc/pru_rproc.c", i32 355, i32 4}
!77 = !{ptr @pru_handle_intrmap._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @pru_handle_intrmap._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/remoteproc/pru_rproc.c", i32 407, i32 2}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pru_rproc_stop.__UNIQUE_ID_ddebug230, !80, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/remoteproc/pru_rproc.c", i32 603, i32 3}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pru_rproc_load_elf_segments.__UNIQUE_ID_ddebug231, !84, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/remoteproc/pru_rproc.c", i32 607, i32 4}
!89 = !{ptr @pru_rproc_load_elf_segments._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pru_rproc_load_elf_segments._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/remoteproc/pru_rproc.c", i32 614, i32 4}
!93 = !{ptr @pru_rproc_load_elf_segments._entry.39, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pru_rproc_load_elf_segments._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/remoteproc/pru_rproc.c", i32 624, i32 4}
!97 = !{ptr @pru_rproc_load_elf_segments._entry.42, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pru_rproc_load_elf_segments._entry_ptr.44, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/remoteproc/pru_rproc.c", i32 633, i32 5}
!101 = !{ptr @pru_rproc_load_elf_segments._entry.45, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pru_rproc_load_elf_segments._entry_ptr.47, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/remoteproc/pru_rproc.c", i32 716, i32 3}
!105 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @pru_rproc_parse_fw.__UNIQUE_ID_ddebug233, !104, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/remoteproc/pru_rproc.c", i32 670, i32 33}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/remoteproc/pru_rproc.c", i32 675, i32 4}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pru_rproc_find_interrupt_map._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @pru_rproc_find_interrupt_map._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/remoteproc/pru_rproc.c", i32 681, i32 4}
!116 = !{ptr @pru_rproc_find_interrupt_map._entry.53, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pru_rproc_find_interrupt_map._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/remoteproc/pru_rproc.c", i32 688, i32 2}
!120 = !{ptr @pru_rproc_find_interrupt_map.__UNIQUE_ID_ddebug232, !119, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/remoteproc/pru_rproc.c", i32 261, i32 22}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/remoteproc/pru_rproc.c", i32 263, i32 22}
!125 = !{ptr @regs_fops, !126, !"regs_fops", i1 false, i1 false}
!126 = !{!"../drivers/remoteproc/pru_rproc.c", i32 198, i32 1}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/pru_rproc.c", i32 162, i32 14}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/remoteproc/pru_rproc.c", i32 163, i32 16}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/remoteproc/pru_rproc.c", i32 166, i32 16}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/remoteproc/pru_rproc.c", i32 167, i32 16}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/remoteproc/pru_rproc.c", i32 169, i32 16}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/remoteproc/pru_rproc.c", i32 171, i32 16}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/remoteproc/pru_rproc.c", i32 173, i32 16}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/remoteproc/pru_rproc.c", i32 175, i32 16}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/remoteproc/pru_rproc.c", i32 177, i32 16}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/remoteproc/pru_rproc.c", i32 179, i32 16}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/remoteproc/pru_rproc.c", i32 182, i32 14}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/remoteproc/pru_rproc.c", i32 186, i32 15}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/remoteproc/pru_rproc.c", i32 191, i32 17}
!153 = !{ptr @pru_rproc_debug_ss_fops, !154, !"pru_rproc_debug_ss_fops", i1 false, i1 false}
!154 = !{!"../drivers/remoteproc/pru_rproc.c", i32 247, i32 1}
!155 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/remoteproc/pru_rproc.c", i32 862, i32 2}
!158 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @pru_rproc_remove.__UNIQUE_ID_ddebug236, !157, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!160 = !{ptr @pru_rproc_match, !161, !"pru_rproc_match", i1 false, i1 false}
!161 = !{!"../drivers/remoteproc/pru_rproc.c", i32 886, i32 34}
!162 = !{ptr @pru_data, !163, !"pru_data", i1 false, i1 false}
!163 = !{!"../drivers/remoteproc/pru_rproc.c", i32 867, i32 38}
!164 = !{ptr @k3_pru_data, !165, !"k3_pru_data", i1 false, i1 false}
!165 = !{!"../drivers/remoteproc/pru_rproc.c", i32 871, i32 38}
!166 = !{ptr @k3_rtu_data, !167, !"k3_rtu_data", i1 false, i1 false}
!167 = !{!"../drivers/remoteproc/pru_rproc.c", i32 876, i32 38}
!168 = !{ptr @k3_tx_pru_data, !169, !"k3_tx_pru_data", i1 false, i1 false}
!169 = !{!"../drivers/remoteproc/pru_rproc.c", i32 881, i32 38}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
!180 = !{i64 2148996399, i64 2148996404, i64 2148996417, i64 2148996461, i64 2148996495, i64 2148996516}
!181 = !{i64 5807509}
!182 = !{i64 5807927}
