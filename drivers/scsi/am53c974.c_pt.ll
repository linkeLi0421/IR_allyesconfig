; ModuleID = '/llk/IR_all_yes/drivers/scsi/am53c974.c_pt.bc'
source_filename = "../drivers/scsi/am53c974.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.esp_driver_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.esp = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.list_head, [16 x %struct.esp_target_data], i32, [16 x i8], [32 x %struct.esp_event_ent], i32, [8 x i8], i32, [8 x i8], i32, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32 }
%struct.esp_target_data = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.esp_event_ent = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pci_esp_priv = type { ptr, i8 }
%struct.esp_cmd_entry = type { %struct.list_head, ptr, i32, ptr, ptr, i32, i8, [2 x i8], [2 x i8], i8, i8, ptr, ptr, i32, ptr }

@__initcall__kmod_am53c974__286_530_am53c974_driver_init6 = internal global ptr @am53c974_driver_init, section ".initcall6.init", align 4
@am53c974_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @am53c974_pci_tbl, ptr @pci_esp_probe_one, ptr @pci_esp_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_am53c974_driver_exit = internal global ptr @am53c974_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description287 = internal constant [42 x i8] c"am53c974.description=AM53C974 SCSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author288 = internal constant [47 x i8] c"am53c974.author=Hannes Reinecke <hare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [36 x i8] c"am53c974.file=drivers/scsi/am53c974\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [21 x i8] c"am53c974.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [22 x i8] c"am53c974.version=1.00\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"am53c974\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias292 = internal constant [23 x i8] c"am53c974.alias=tmscsim\00", section ".modinfo", align 1
@__param_str_am53c974_debug = internal constant [24 x i8] c"am53c974.am53c974_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@am53c974_debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_am53c974_debug = internal constant %struct.kernel_param { ptr @__param_str_am53c974_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @am53c974_debug } }, section "__param", align 4
@__UNIQUE_ID_am53c974_debugtype293 = internal constant [38 x i8] c"am53c974.parmtype=am53c974_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_am53c974_debug294 = internal constant [46 x i8] c"am53c974.parm=am53c974_debug:Enable debugging\00", section ".modinfo", align 1
@__param_str_am53c974_fenab = internal constant [24 x i8] c"am53c974.am53c974_fenab\00", align 1
@am53c974_fenab = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_am53c974_fenab = internal constant %struct.kernel_param { ptr @__param_str_am53c974_fenab, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @am53c974_fenab } }, section "__param", align 4
@__UNIQUE_ID_am53c974_fenabtype295 = internal constant [38 x i8] c"am53c974.parmtype=am53c974_fenab:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_am53c974_fenab296 = internal constant [62 x i8] c"am53c974.parm=am53c974_fenab:Enable 24-bit DMA transfer sizes\00", section ".modinfo", align 1
@am53c974_pci_tbl = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 8224, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@scsi_esp_template = external dso_local global %struct.scsi_host_template, align 8
@pci_esp_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot enable device\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_esp_probe_one\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/scsi/am53c974.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr = internal global ptr @pci_esp_probe_one._entry, section ".printk_index", align 4
@pci_esp_probe_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 387, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set 32bit DMA mask\0A\00", [34 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr.10 = internal global ptr @pci_esp_probe_one._entry.8, section ".printk_index", align 4
@pci_esp_probe_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate scsi host\0A\00", [34 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr.13 = internal global ptr @pci_esp_probe_one._entry.11, section ".printk_index", align 4
@pci_esp_probe_one._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 402, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate esp_priv\0A\00", [35 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr.16 = internal global ptr @pci_esp_probe_one._entry.14, section ".printk_index", align 4
@pci_esp_ops = internal constant { %struct.esp_driver_ops, [60 x i8] } { %struct.esp_driver_ops { ptr @pci_esp_write8, ptr @pci_esp_read8, ptr @pci_esp_irq_pending, ptr @pci_esp_dma_length_limit, ptr @pci_esp_reset_dma, ptr @pci_esp_dma_drain, ptr @pci_esp_dma_invalidate, ptr @pci_esp_send_dma_cmd, ptr @pci_esp_dma_error }, [60 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 427, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pci memory selection failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr.20 = internal global ptr @pci_esp_probe_one._entry.17, section ".printk_index", align 4
@pci_esp_probe_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 433, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci I/O map failed\0A\00", [44 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr.23 = internal global ptr @pci_esp_probe_one._entry.21, section ".printk_index", align 4
@pci_esp_probe_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 445, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate command block\0A\00", [62 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr.26 = internal global ptr @pci_esp_probe_one._entry.24, section ".printk_index", align 4
@pci_esp_probe_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 455, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@pci_esp_probe_one._entry_ptr.29 = internal global ptr @pci_esp_probe_one._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pci_esp_irq_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 123, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma intr dreg[%02x]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_esp_irq_pending\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@pci_esp_irq_pending._entry_ptr = internal global ptr @pci_esp_irq_pending._entry, section ".printk_index", align 4
@pci_esp_dma_drain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 172, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA blast done (%d tries, %d bytes left)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_esp_dma_drain\00", [46 x i8] zeroinitializer }, align 32
@pci_esp_dma_drain._entry_ptr = internal global ptr @pci_esp_dma_drain._entry, section ".printk_index", align 4
@pci_esp_dma_drain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_esp_dma_invalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 185, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalidate DMA\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_esp_dma_invalidate\00", [41 x i8] zeroinitializer }, align 32
@pci_esp_dma_invalidate._entry_ptr = internal global ptr @pci_esp_dma_invalidate._entry, section ".printk_index", align 4
@pci_esp_send_dma_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 236, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"start dma addr[%x] count[%d:%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci_esp_send_dma_cmd\00", [43 x i8] zeroinitializer }, align 32
@pci_esp_send_dma_cmd._entry_ptr = internal global ptr @pci_esp_send_dma_cmd._entry, section ".printk_index", align 4
@dc390_check_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No valid Tekram EEprom found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dc390_check_eeprom\00", [45 x i8] zeroinitializer }, align 32
@dc390_check_eeprom._entry_ptr = internal global ptr @dc390_check_eeprom._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"am53c974_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 523, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 535, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"am53c974_debug\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 21, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"am53c974_fenab\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 22, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"am53c974_pci_tbl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 516, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 381, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 386, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 393, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 401, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"pci_esp_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 270, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 426, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 433, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 444, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 455, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 123, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 172, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 185, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 235, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [27 x i8] c"../drivers/scsi/am53c974.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 361, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_am53c974_debug294, ptr @__UNIQUE_ID_am53c974_debugtype293, ptr @__UNIQUE_ID_am53c974_fenab296, ptr @__UNIQUE_ID_am53c974_fenabtype295, ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_version291, ptr @__exitcall_am53c974_driver_exit, ptr @__initcall__kmod_am53c974__286_530_am53c974_driver_init6, ptr @__modver_attr, ptr @__param_am53c974_debug, ptr @__param_am53c974_fenab, ptr @am53c974_driver_exit, ptr @dc390_check_eeprom._entry, ptr @dc390_check_eeprom._entry_ptr, ptr @pci_esp_dma_drain._entry, ptr @pci_esp_dma_drain._entry_ptr, ptr @pci_esp_dma_invalidate._entry, ptr @pci_esp_dma_invalidate._entry_ptr, ptr @pci_esp_irq_pending._entry, ptr @pci_esp_irq_pending._entry_ptr, ptr @pci_esp_probe_one._entry, ptr @pci_esp_probe_one._entry.11, ptr @pci_esp_probe_one._entry.14, ptr @pci_esp_probe_one._entry.17, ptr @pci_esp_probe_one._entry.21, ptr @pci_esp_probe_one._entry.24, ptr @pci_esp_probe_one._entry.27, ptr @pci_esp_probe_one._entry.8, ptr @pci_esp_probe_one._entry_ptr, ptr @pci_esp_probe_one._entry_ptr.10, ptr @pci_esp_probe_one._entry_ptr.13, ptr @pci_esp_probe_one._entry_ptr.16, ptr @pci_esp_probe_one._entry_ptr.20, ptr @pci_esp_probe_one._entry_ptr.23, ptr @pci_esp_probe_one._entry_ptr.26, ptr @pci_esp_probe_one._entry_ptr.29, ptr @pci_esp_send_dma_cmd._entry, ptr @pci_esp_send_dma_cmd._entry_ptr, ptr @am53c974_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @am53c974_debug, ptr @am53c974_fenab, ptr @am53c974_pci_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @pci_esp_ops, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am53c974_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am53c974_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am53c974_fenab to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am53c974_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_probe_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_irq_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_dma_drain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_dma_invalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_esp_send_dma_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc390_check_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @am53c974_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @am53c974_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am53c974_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @am53c974_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_esp_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %bval.i.i.i = alloca i8, align 1
  %EEbuf.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %fail_disable_device

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @scsi_esp_template, i32 noundef 692) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %fail_disable_device

if.end17:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #13
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %fail_host_alloc

if.end25:                                         ; preds = %if.end17
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 53
  %host = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 1, i32 1
  %1 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call10, ptr %host, align 4
  %dev28 = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 2
  %2 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev28, align 4
  %ops = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pci_esp_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 49, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 64
  store i32 %or, ptr %flags, align 4
  %6 = load i8, ptr @am53c974_fenab, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool29.not = icmp eq i8 %6, 0
  br i1 %tobool29.not, label %if.end25.if.end33_crit_edge, label %if.then30

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %config2 = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 32
  %7 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config2, align 2
  %9 = or i8 %8, 64
  store i8 %9, ptr %config2, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25.if.end33_crit_edge
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hostdata.i, ptr %call7.i.i, align 8
  %call35 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %dev1, ptr noundef nonnull @.str.18) #12
  br label %fail_priv_alloc

if.end42:                                         ; preds = %if.end33
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.end42.cond.end_crit_edge, label %cond.false

if.end42.cond.end_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 8
  %sub = add i32 %12, 1
  %add = sub i32 %sub, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end42.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end42.cond.end_crit_edge ]
  %call49 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %cond) #9
  %15 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call49, ptr %hostdata.i, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.end55, label %if.end57

do.end55:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %dev1, ptr noundef nonnull @.str.22) #12
  br label %fail_release_regions

if.end57:                                         ; preds = %cond.end
  %dma_regs = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %dma_regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call49, ptr %dma_regs, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %command_block_dma = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 16, ptr noundef %command_block_dma, i32 noundef 3264, i32 noundef 0) #9
  %command_block = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 3, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %command_block to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %command_block, align 4
  %tobool62.not = icmp eq ptr %call.i, null
  br i1 %tobool62.not, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %dev1, ptr noundef nonnull @.str.25) #12
  br label %fail_unmap_regs

if.end68:                                         ; preds = %if.end57
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i190 = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @scsi_esp_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp70 = icmp slt i32 %call.i190, 0
  br i1 %cmp70, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %dev1, ptr noundef nonnull @.str.28) #12
  br label %fail_unmap_command_block

if.end77:                                         ; preds = %if.end68
  %scsi_id = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 49, i32 0, i32 4
  %21 = ptrtoint ptr %scsi_id to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 7, ptr %scsi_id, align 4
  %22 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev28, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 -136
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %EEbuf.i) #9
  %24 = call ptr @memset(ptr %EEbuf.i, i32 255, i32 128)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %dc390_eeprom_get_data.exit.i.i.for.body.i.i_crit_edge, %if.end77
  %indvars.iv.i.i = phi i32 [ 128, %if.end77 ], [ %indvars.iv.next.i.i, %dc390_eeprom_get_data.exit.i.i.for.body.i.i_crit_edge ]
  %ptr.addr.017.i.i = phi ptr [ %EEbuf.i, %if.end77 ], [ %incdec.ptr.i.i, %dc390_eeprom_get_data.exit.i.i.for.body.i.i_crit_edge ]
  %call.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 192, i8 noundef zeroext 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 34359680) #9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %i.014.i.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %j.013.i.i.i = phi i32 [ 128, %for.body.i.i ], [ %conv3.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %carry_flag.012.i.i.i = phi i8 [ 1, %for.body.i.i ], [ %conv5.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %carry_flag.012.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %carry_flag.012.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 128, i8 noundef zeroext 64) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %bval.0.i.i.i = phi i8 [ -64, %if.then.i.i.i ], [ -128, %for.body.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 34359680) #9
  %call1.i.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 128, i8 noundef zeroext %bval.0.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 34359680) #9
  %call2.i.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 128, i8 noundef zeroext 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 34359680) #9
  %and.i.i.i = and i32 %j.013.i.i.i, %indvars.iv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i.i = icmp ne i32 %and.i.i.i, 0
  %conv5.i.i.i = zext i1 %tobool4.not.i.i.i to i8
  %conv3.i.i.i = lshr i32 %j.013.i.i.i, 1
  %inc.i.i.i = add nuw nsw i32 %i.014.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 9
  br i1 %exitcond.not.i.i.i, label %dc390_eeprom_prepare_read.exit.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

dc390_eeprom_prepare_read.exit.i.i:               ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bval.i.i.i) #9
  %29 = ptrtoint ptr %bval.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %bval.i.i.i, align 1, !annotation !115
  br label %for.body.i16.i.i

for.body.i16.i.i:                                 ; preds = %for.body.i16.i.i.for.body.i16.i.i_crit_edge, %dc390_eeprom_prepare_read.exit.i.i
  %wval.015.i.i.i = phi i16 [ 0, %dc390_eeprom_prepare_read.exit.i.i ], [ %spec.select.i.i.i, %for.body.i16.i.i.for.body.i16.i.i_crit_edge ]
  %i.014.i11.i.i = phi i32 [ 0, %dc390_eeprom_prepare_read.exit.i.i ], [ %inc.i14.i.i, %for.body.i16.i.i.for.body.i16.i.i_crit_edge ]
  %shl.i.i.i = shl i16 %wval.015.i.i.i, 1
  %call.i12.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 128, i8 noundef zeroext -128) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 34359680) #9
  %call2.i13.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 128, i8 noundef zeroext 64) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 34359680) #9
  %call3.i.i.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %bval.i.i.i) #9
  %32 = ptrtoint ptr %bval.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bval.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %33)
  %cmp5.i.i.i = icmp eq i8 %33, 34
  %34 = zext i1 %cmp5.i.i.i to i16
  %spec.select.i.i.i = or i16 %shl.i.i.i, %34
  %inc.i14.i.i = add nuw nsw i32 %i.014.i11.i.i, 1
  %exitcond.not.i15.i.i = icmp eq i32 %inc.i14.i.i, 16
  br i1 %exitcond.not.i15.i.i, label %dc390_eeprom_get_data.exit.i.i, label %for.body.i16.i.i.for.body.i16.i.i_crit_edge

for.body.i16.i.i.for.body.i16.i.i_crit_edge:      ; preds = %for.body.i16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i16.i.i

dc390_eeprom_get_data.exit.i.i:                   ; preds = %for.body.i16.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bval.i.i.i) #9
  %incdec.ptr.i.i = getelementptr i16, ptr %ptr.addr.017.i.i, i32 1
  %35 = ptrtoint ptr %ptr.addr.017.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %spec.select.i.i.i, ptr %ptr.addr.017.i.i, align 2
  %call3.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 128, i8 noundef zeroext 0) #9
  %call4.i.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 128, i8 noundef zeroext 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 34359680) #9
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 192
  br i1 %exitcond.not.i.i, label %dc390_eeprom_get_data.exit.i.i.for.body.i_crit_edge, label %dc390_eeprom_get_data.exit.i.i.for.body.i.i_crit_edge

dc390_eeprom_get_data.exit.i.i.for.body.i.i_crit_edge: ; preds = %dc390_eeprom_get_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dc390_eeprom_get_data.exit.i.i.for.body.i_crit_edge: ; preds = %dc390_eeprom_get_data.exit.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %dc390_eeprom_get_data.exit.i.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %dc390_eeprom_get_data.exit.i.i.for.body.i_crit_edge ]
  %wval.029.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %dc390_eeprom_get_data.exit.i.i.for.body.i_crit_edge ]
  %ptr.028.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %EEbuf.i, %dc390_eeprom_get_data.exit.i.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %ptr.028.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ptr.028.i, align 2
  %conv.i = zext i16 %38 to i32
  %add.i = add nuw nsw i32 %wval.029.i, %conv.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %incdec.ptr.i = getelementptr i16, ptr %ptr.028.i, i32 1
  %phi.cast.i = and i32 %add.i, 65535
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4660, i32 %phi.cast.i)
  %cmp4.not.i = icmp eq i32 %phi.cast.i, 4660
  br i1 %cmp4.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %23, ptr noundef nonnull @.str.39) #12
  br label %dc390_check_eeprom.exit

if.end.i:                                         ; preds = %for.end.i
  %arrayidx.i = getelementptr inbounds [128 x i8], ptr %EEbuf.i, i32 0, i32 64
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %41 = ptrtoint ptr %scsi_id to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %scsi_id, align 4
  %arrayidx7.i = getelementptr inbounds [128 x i8], ptr %EEbuf.i, i32 0, i32 67
  %42 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %43 to i32
  %shl.i = shl i32 2, %conv8.i
  %conv9.i = trunc i32 %shl.i to i8
  %num_tags.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 19
  %44 = ptrtoint ptr %num_tags.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv9.i, ptr %num_tags.i, align 1
  %arrayidx10.i = getelementptr inbounds [128 x i8], ptr %EEbuf.i, i32 0, i32 65
  %45 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx10.i, align 1
  %47 = and i8 %46, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %if.end.i.dc390_check_eeprom.exit_crit_edge, label %if.then12.i

if.end.i.dc390_check_eeprom.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dc390_check_eeprom.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %config4.i = getelementptr inbounds %struct.esp, ptr %hostdata.i, i32 0, i32 33
  %48 = ptrtoint ptr %config4.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %config4.i, align 1
  %50 = or i8 %49, 12
  store i8 %50, ptr %config4.i, align 1
  br label %dc390_check_eeprom.exit

dc390_check_eeprom.exit:                          ; preds = %if.then12.i, %if.end.i.dc390_check_eeprom.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %EEbuf.i) #9
  %51 = ptrtoint ptr %scsi_id to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %scsi_id, align 4
  %conv79 = zext i8 %52 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 25
  %53 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv79, ptr %this_id, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 21
  %54 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %max_id, align 4
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %irq81 = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 47
  %57 = ptrtoint ptr %irq81 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %irq81, align 8
  %58 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %resource, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 44
  %60 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %io_port, align 8
  %61 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp88 = icmp eq i32 %62, 0
  br i1 %cmp88, label %dc390_check_eeprom.exit.cond.end100_crit_edge, label %cond.false91

dc390_check_eeprom.exit.cond.end100_crit_edge:    ; preds = %dc390_check_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end100

cond.false91:                                     ; preds = %dc390_check_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %resource, align 8
  %sub98 = sub i32 %62, %64
  %65 = trunc i32 %sub98 to i8
  %phi.cast = add i8 %65, 1
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false91, %dc390_check_eeprom.exit.cond.end100_crit_edge
  %cond101 = phi i8 [ %phi.cast, %cond.false91 ], [ 0, %dc390_check_eeprom.exit.cond.end100_crit_edge ]
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 45
  %66 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %cond101, ptr %n_io_port, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 23
  %67 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %59, ptr %unique_id, align 8
  %shl = shl nuw i32 1, %conv79
  %scsi_id_mask = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 49, i32 0, i32 5
  %68 = ptrtoint ptr %scsi_id_mask to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl, ptr %scsi_id_mask, align 4
  %cfreq = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 1, i32 49, i32 0, i32 7, i32 0, i32 2
  %69 = ptrtoint ptr %cfreq to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 40000000, ptr %cfreq, align 4
  %call106 = call i32 @scsi_esp_register(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %cond.end100.cleanup_crit_edge, label %fail_free_irq

cond.end100.cleanup_crit_edge:                    ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail_free_irq:                                    ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call111 = call ptr @free_irq(i32 noundef %71, ptr noundef %hostdata.i) #9
  br label %fail_unmap_command_block

fail_unmap_command_block:                         ; preds = %fail_free_irq, %do.end75
  %err.0 = phi i32 [ %call.i190, %do.end75 ], [ %call106, %fail_free_irq ]
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %driver_data.i.i, align 4
  %73 = ptrtoint ptr %command_block to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %command_block, align 4
  %75 = ptrtoint ptr %command_block_dma to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %command_block_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 16, ptr noundef %74, i32 noundef %76, i32 noundef 0) #9
  br label %fail_unmap_regs

fail_unmap_regs:                                  ; preds = %fail_unmap_command_block, %do.end66
  %err.1 = phi i32 [ %err.0, %fail_unmap_command_block ], [ -12, %do.end66 ]
  %77 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hostdata.i, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %78) #9
  br label %fail_release_regions

fail_release_regions:                             ; preds = %fail_unmap_regs, %do.end55
  %err.2 = phi i32 [ %err.1, %fail_unmap_regs ], [ -22, %do.end55 ]
  call void @pci_release_regions(ptr noundef %pdev) #9
  br label %fail_priv_alloc

fail_priv_alloc:                                  ; preds = %fail_release_regions, %do.end40
  %err.3 = phi i32 [ -19, %do.end40 ], [ %err.2, %fail_release_regions ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %fail_host_alloc

fail_host_alloc:                                  ; preds = %fail_priv_alloc, %do.end23
  %err.4 = phi i32 [ %err.3, %fail_priv_alloc ], [ -12, %do.end23 ]
  call void @scsi_host_put(ptr noundef nonnull %call10) #9
  br label %fail_disable_device

fail_disable_device:                              ; preds = %fail_host_alloc, %do.end15, %do.end7
  %err.5 = phi i32 [ -19, %do.end7 ], [ %err.4, %fail_host_alloc ], [ -12, %do.end15 ]
  call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_disable_device, %cond.end100.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %err.5, %fail_disable_device ], [ 0, %cond.end100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_esp_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @scsi_esp_unregister(ptr noundef %3) #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #9
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %command_block = getelementptr inbounds %struct.esp, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %command_block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %command_block, align 4
  %command_block_dma = getelementptr inbounds %struct.esp, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %command_block_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %command_block_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16, ptr noundef %8, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %12) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  tail call void @kfree(ptr noundef %1) #9
  %host = getelementptr inbounds %struct.esp, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  tail call void @scsi_host_put(ptr noundef %14) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_esp_intr(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_esp_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_esp_write8(ptr nocapture noundef readonly %esp, i8 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esp, align 4
  %mul = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #9, !srcloc !117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pci_esp_read8(ptr nocapture noundef readonly %esp, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esp, align 4
  %mul = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_esp_irq_pending(ptr nocapture noundef readonly %esp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %esp, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 84
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %dma_status = getelementptr inbounds %struct.pci_esp_priv, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dma_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %dma_status, align 4
  %8 = load i8, ptr @am53c974_debug, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 49
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.32, ptr noundef %shost_gendev, ptr noundef nonnull @.str.30, i32 noundef %conv) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %11 = ptrtoint ptr %dma_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dma_status, align 4
  %13 = and i8 %12, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp ne i8 %13, 0
  %. = zext i1 %tobool8.not to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_esp_dma_length_limit(ptr nocapture noundef readonly %esp, i32 noundef %dma_addr, i32 noundef %dma_len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config2 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %0 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config2, align 2
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %shl = select i1 %tobool.not, i32 65536, i32 16777216
  %3 = tail call i32 @llvm.umin.i32(i32 %shl, i32 %dma_len)
  %and5 = and i32 %dma_addr, 16777215
  %add = add nuw nsw i32 %3, %and5
  %4 = tail call i32 @llvm.umin.i32(i32 %add, i32 16777216)
  %sub = sub nsw i32 %4, %and5
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pci_esp_reset_dma(ptr nocapture noundef %esp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_esp_dma_drain(ptr nocapture noundef readonly %esp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sreg = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 11
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 4
  %2 = and i8 %1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch = icmp eq i8 %2, 0
  br i1 %switch, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry.while.body_crit_edge
  %dec121 = phi i32 [ %dec, %do.end.while.body_crit_edge ], [ 999, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %esp, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %6 = and i8 %5, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp13 = icmp ult i8 %6, 2
  br i1 %cmp13, label %while.body.while.end_crit_edge, label %do.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !121
  %dec = add nsw i32 %dec121, -1
  %cmp7.not = icmp eq i32 %dec, 0
  br i1 %cmp7.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %7 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esp, align 4
  %add.ptr.i118 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i118, i8 -127) #9, !srcloc !117
  %9 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esp, align 4
  %add.ptr.i119122 = getelementptr i8, ptr %10, i32 84
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i119122) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not123 = icmp eq i8 %12, 0
  br i1 %tobool.not123, label %while.end.while.end42_crit_edge, label %while.end.while.body27_crit_edge

while.end.while.body27_crit_edge:                 ; preds = %while.end
  br label %while.body27

while.end.while.end42_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42

while.body27:                                     ; preds = %do.end37.while.body27_crit_edge, %while.end.while.body27_crit_edge
  %lim.1124 = phi i32 [ %dec28, %do.end37.while.body27_crit_edge ], [ 1000, %while.end.while.body27_crit_edge ]
  %dec28 = add nsw i32 %lim.1124, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec28)
  %cmp29 = icmp eq i32 %dec28, 0
  br i1 %cmp29, label %while.body27.while.end42_crit_edge, label %do.end37

while.body27.while.end42_crit_edge:               ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42

do.end37:                                         ; preds = %while.body27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !123
  %13 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %esp, align 4
  %add.ptr.i119 = getelementptr i8, ptr %14, i32 84
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i119) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %16 = and i8 %15, 32
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %do.end37.while.end42_crit_edge, label %do.end37.while.body27_crit_edge

do.end37.while.body27_crit_edge:                  ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body27

do.end37.while.end42_crit_edge:                   ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42

while.end42:                                      ; preds = %do.end37.while.end42_crit_edge, %while.body27.while.end42_crit_edge, %while.end.while.end42_crit_edge
  %lim.2 = phi i32 [ 1000, %while.end.while.end42_crit_edge ], [ 0, %while.body27.while.end42_crit_edge ], [ %dec28, %do.end37.while.end42_crit_edge ]
  %17 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %esp, align 4
  %add.ptr.i120 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i120, i8 -128) #9, !srcloc !117
  %19 = load i8, ptr @am53c974_debug, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool44.not = icmp eq i8 %19, 0
  br i1 %tobool44.not, label %while.end42.do.end52_crit_edge, label %do.end48

while.end42.do.end52_crit_edge:                   ; preds = %while.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

do.end48:                                         ; preds = %while.end42
  call void @__sanitizer_cov_trace_pc() #11
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  %conv49 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.32, ptr noundef %shost_gendev, ptr noundef nonnull @.str.33, i32 noundef %lim.2, i32 noundef %conv49) #12
  br label %do.end52

do.end52:                                         ; preds = %do.end48, %while.end42.do.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp54 = icmp eq i8 %6, 1
  br i1 %cmp54, label %land.rhs, label %do.end52.cleanup_crit_edge

do.end52.cleanup_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %do.end52
  %.b116 = load i1, ptr @pci_esp_dma_drain.__already_done, align 1
  br i1 %.b116, label %land.rhs.if.then98_crit_edge, label %if.then64, !prof !124

land.rhs.if.then98_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

if.then64:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @pci_esp_dma_drain.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 174, i32 noundef 9, ptr noundef null) #9
  br label %if.then98

if.then98:                                        ; preds = %if.then64, %land.rhs.if.then98_crit_edge
  %active_cmd = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 5
  %22 = ptrtoint ptr %active_cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_cmd, align 4
  %flags = getelementptr inbounds %struct.esp_cmd_entry, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 4
  %26 = or i8 %25, 8
  store i8 %26, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %do.end52.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_esp_dma_invalidate(ptr nocapture noundef readonly %esp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = load i8, ptr @am53c974_debug, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.32, ptr noundef %shost_gendev, ptr noundef nonnull @.str.35) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %7 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esp, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #9, !srcloc !117
  %dma_status = getelementptr inbounds %struct.pci_esp_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dma_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dma_status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_esp_send_dma_cmd(ptr noundef %esp, i32 noundef %addr, i32 noundef %esp_count, i32 noundef %dma_count, i32 noundef %write, i8 noundef zeroext %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmd)
  %tobool.not = icmp sgt i8 %cmd, -1
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !125

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/am53c974.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #9, !srcloc !126
  unreachable

do.end9:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_status = getelementptr inbounds %struct.pci_esp_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dma_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool10.not = icmp eq i32 %write, 0
  %spec.select = select i1 %tobool10.not, i8 0, i8 -128
  %5 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %esp, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %spec.select) #9, !srcloc !117
  %conv16 = trunc i32 %esp_count to i8
  %7 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %conv16) #9, !srcloc !117
  %shr17 = lshr i32 %esp_count, 8
  %conv19 = trunc i32 %shr17 to i8
  %9 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esp, align 4
  %add.ptr.i57 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i57, i8 %conv19) #9, !srcloc !117
  %config2 = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 32
  %11 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config2, align 2
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool22.not, label %do.end9.if.end27_crit_edge, label %if.then23

do.end9.if.end27_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %shr24 = lshr i32 %esp_count, 16
  %conv26 = trunc i32 %shr24 to i8
  %14 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %esp, align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 %conv26) #9, !srcloc !117
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.end9.if.end27_crit_edge
  %16 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %esp, align 4
  %add.ptr.i59 = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %esp_count) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %18) #9, !srcloc !128
  %19 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %esp, align 4
  %add.ptr.i60 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %addr) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %21) #9, !srcloc !128
  %22 = load i8, ptr @am53c974_debug, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %if.end27.do.end36_crit_edge, label %do.end33

if.end27.do.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %host = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 3
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.32, ptr noundef %shost_gendev, ptr noundef nonnull @.str.37, i32 noundef %addr, i32 noundef %esp_count, i32 noundef %dma_count) #12
  br label %do.end36

do.end36:                                         ; preds = %do.end33, %if.end27.do.end36_crit_edge
  tail call void @scsi_esp_cmd(ptr noundef %esp, i8 noundef zeroext %cmd) #9
  %conv38 = or i8 %spec.select, 3
  %25 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %esp, align 4
  %add.ptr.i61 = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i61, i8 %conv38) #9, !srcloc !117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_esp_dma_error(ptr nocapture noundef readonly %esp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.esp, ptr %esp, i32 0, i32 4
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_status = getelementptr inbounds %struct.pci_esp_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_status, align 4
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %esp, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp eq i8 %9, 3
  br i1 %cmp, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %esp, align 4
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21, i8 2) #9, !srcloc !117
  br label %cleanup

if.end6:                                          ; preds = %entry
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %esp, align 4
  %add.ptr.i22 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22, i8 0) #9, !srcloc !117
  %14 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %esp, align 4
  %add.ptr.i23 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i23) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %17 = ptrtoint ptr %dma_status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %dma_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 1, %if.then5 ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_esp_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_esp_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_am53c974__286_530_am53c974_driver_init6, !1, !"__initcall__kmod_am53c974__286_530_am53c974_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/am53c974.c", i32 530, i32 1}
!2 = !{ptr @__exitcall_am53c974_driver_exit, !1, !"__exitcall_am53c974_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description287, !4, !"__UNIQUE_ID_description287", i1 false, i1 false}
!4 = !{!"../drivers/scsi/am53c974.c", i32 532, i32 1}
!5 = !{ptr @__UNIQUE_ID_author288, !6, !"__UNIQUE_ID_author288", i1 false, i1 false}
!6 = !{!"../drivers/scsi/am53c974.c", i32 533, i32 1}
!7 = !{ptr @__UNIQUE_ID_file289, !8, !"__UNIQUE_ID_file289", i1 false, i1 false}
!8 = !{!"../drivers/scsi/am53c974.c", i32 534, i32 1}
!9 = !{ptr @__UNIQUE_ID_license290, !8, !"__UNIQUE_ID_license290", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version291, !11, !"__UNIQUE_ID_version291", i1 false, i1 false}
!11 = !{!"../drivers/scsi/am53c974.c", i32 535, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias292, !17, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!17 = !{!"../drivers/scsi/am53c974.c", i32 536, i32 1}
!18 = !{ptr @__param_am53c974_debug, !19, !"__param_am53c974_debug", i1 false, i1 false}
!19 = !{!"../drivers/scsi/am53c974.c", i32 538, i32 1}
!20 = !{ptr @__UNIQUE_ID_am53c974_debugtype293, !19, !"__UNIQUE_ID_am53c974_debugtype293", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_am53c974_debug294, !22, !"__UNIQUE_ID_am53c974_debug294", i1 false, i1 false}
!22 = !{!"../drivers/scsi/am53c974.c", i32 539, i32 1}
!23 = !{ptr @__param_am53c974_fenab, !24, !"__param_am53c974_fenab", i1 false, i1 false}
!24 = !{!"../drivers/scsi/am53c974.c", i32 541, i32 1}
!25 = !{ptr @__UNIQUE_ID_am53c974_fenabtype295, !24, !"__UNIQUE_ID_am53c974_fenabtype295", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_am53c974_fenab296, !27, !"__UNIQUE_ID_am53c974_fenab296", i1 false, i1 false}
!27 = !{!"../drivers/scsi/am53c974.c", i32 542, i32 1}
!28 = !{ptr @am53c974_debug, !29, !"am53c974_debug", i1 false, i1 false}
!29 = !{!"../drivers/scsi/am53c974.c", i32 21, i32 13}
!30 = !{ptr @am53c974_driver, !31, !"am53c974_driver", i1 false, i1 false}
!31 = !{!"../drivers/scsi/am53c974.c", i32 523, i32 26}
!32 = !{ptr @am53c974_pci_tbl, !33, !"am53c974_pci_tbl", i1 false, i1 false}
!33 = !{!"../drivers/scsi/am53c974.c", i32 516, i32 29}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/am53c974.c", i32 381, i32 3}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pci_esp_probe_one._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @pci_esp_probe_one._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/am53c974.c", i32 386, i32 3}
!44 = !{ptr @pci_esp_probe_one._entry.8, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pci_esp_probe_one._entry_ptr.10, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/am53c974.c", i32 393, i32 3}
!48 = !{ptr @pci_esp_probe_one._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pci_esp_probe_one._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/am53c974.c", i32 401, i32 3}
!52 = !{ptr @pci_esp_probe_one._entry.14, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pci_esp_probe_one._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/am53c974.c", i32 426, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pci_esp_probe_one._entry.17, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @pci_esp_probe_one._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/am53c974.c", i32 433, i32 3}
!61 = !{ptr @pci_esp_probe_one._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pci_esp_probe_one._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/am53c974.c", i32 444, i32 3}
!65 = !{ptr @pci_esp_probe_one._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pci_esp_probe_one._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/am53c974.c", i32 455, i32 3}
!69 = !{ptr @pci_esp_probe_one._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pci_esp_probe_one._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pci_esp_ops, !72, !"pci_esp_ops", i1 false, i1 false}
!72 = !{!"../drivers/scsi/am53c974.c", i32 270, i32 36}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/am53c974.c", i32 123, i32 2}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pci_esp_irq_pending._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @pci_esp_irq_pending._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/am53c974.c", i32 172, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pci_esp_dma_drain._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @pci_esp_dma_drain._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/scsi/am53c974.c", i32 174, i32 6}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/am53c974.c", i32 185, i32 2}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @pci_esp_dma_invalidate._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @pci_esp_dma_invalidate._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/am53c974.c", i32 235, i32 2}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pci_esp_send_dma_cmd._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @pci_esp_send_dma_cmd._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/am53c974.c", i32 361, i32 3}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dc390_check_eeprom._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @dc390_check_eeprom._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @__param_str_am53c974_debug, !19, !"__param_str_am53c974_debug", i1 false, i1 false}
!102 = !{ptr @__param_str_am53c974_fenab, !24, !"__param_str_am53c974_fenab", i1 false, i1 false}
!103 = !{ptr @am53c974_fenab, !104, !"am53c974_fenab", i1 false, i1 false}
!104 = !{!"../drivers/scsi/am53c974.c", i32 22, i32 13}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i8 0, i8 2}
!115 = !{!"auto-init"}
!116 = !{i64 2152539828}
!117 = !{i64 4998483}
!118 = !{i64 4998878}
!119 = !{i64 2152538223}
!120 = !{i64 2154979149}
!121 = !{i64 2154978991}
!122 = !{i64 2154979449}
!123 = !{i64 2154979291}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{i64 2154984415, i64 2154984903, i64 2154984452, i64 2154984508, i64 2154984542, i64 2154984566, i64 2154984607, i64 2154984628, i64 2154984656, i64 2154984690}
!127 = !{i64 2152540802}
!128 = !{i64 4998680}
