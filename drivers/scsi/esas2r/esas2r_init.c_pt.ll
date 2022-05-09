; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_init.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.106, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon.84 }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon.84 = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%union.anon.106 = type { i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.97, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.105 }
%union.anon.97 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.105 = type { ptr }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.110, i32 }
%union.anon.110 = type { ptr }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.107, ptr, ptr, i32, i32 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.atto_vda_scsi_req = type { i32, i8, i8, i8, i8, i32, i32, [16 x i8], %union.anon.85, %union.anon.87 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type <{ i64, i16, i8, i8 }>
%union.anon.87 = type { [245 x i32] }
%struct.esas2r_inbound_list_source_entry = type { i64, i32, i32 }
%union.atto_vda_req = type { %struct.atto_vda_scsi_req }
%struct.esas2r_sas_nvram = type { [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [16 x i8], i8, i8, i8, [161 x i8] }
%struct.atto_vda_cfg_req = type { i32, i8, i8, i8, i8, i32, %union.anon.95 }
%union.anon.95 = type { %struct.atto_vda_cfg_init, [4 x i8] }
%struct.atto_vda_cfg_init = type { %struct.atto_vda_date_and_time, i32, i32, i32, i32, i32, i32, i32, i32, [72 x i8] }
%struct.atto_vda_date_and_time = type { i8, i8, i8, i8, i8, i8, i16 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tried to init invalid adapter index %u!\00", [56 x i8] zeroinitializer }, align 32
@esas2r_adapters = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tried to init existing adapter index %u!\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to set DMA mask\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s-bit PCI addressing enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"esas2r_%02d\00", [20 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&a->request_lock\00", [47 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&a->fw_event_lock\00", [46 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&a->fm_api_mutex\00", [47 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&a->fs_api_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esas2r/%d\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&a->buffered_ioctl_waiter\00", [38 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&a->nvram_waiter\00", [47 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&a->fm_api_waiter\00", [46 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&a->fs_api_waiter\00", [46 x i8] zeroinitializer }, align 32
@esas2r_init_adapter.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&a->vda_waiter\00", [17 x i8] zeroinitializer }, align 32
@num_requests = external dso_local local_unnamed_addr global i32, align 4
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate a VDA request!\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not map PCI regions!\00", [37 x i8] zeroinitializer }, align 32
@interrupt_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to allocate %d bytes of consistent memory!\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to initialize adapter structure (2)!\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize hardware!\00", [33 x i8] zeroinitializer }, align 32
@esas2r_buffered_ioctl = external dso_local local_unnamed_addr global ptr, align 4
@esas2r_buffered_ioctl_pcid = external dso_local local_unnamed_addr global ptr, align 4
@esas2r_buffered_ioctl_size = external dso_local local_unnamed_addr global i32, align 4
@esas2r_buffered_ioctl_addr = external dso_local local_unnamed_addr global i32, align 4
@.str.31 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"pci_disable_device() called.  msix_enabled: %d msi_enabled: %d irq: %d pin: %d\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"before pci_disable_device() enable_cnt: %d\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"after pci_disable_device() enable_cnt: %d\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pci_set_drv_data(%p, NULL) called\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scsi_remove_host() called\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi_host_put() called\00", [41 x i8] zeroinitializer }, align 32
@esas2r_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @esas2r_suspend, ptr @esas2r_resume, ptr @esas2r_suspend, ptr @esas2r_resume, ptr @esas2r_suspend, ptr @esas2r_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setting adapter to degraded mode: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@num_sg_lists = external dso_local local_unnamed_addr global i32, align 4
@sgl_page_size = external dso_local local_unnamed_addr global i32, align 4
@num_ae_requests = external dso_local local_unnamed_addr global i32, align 4
@esas2r_init_adapter_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&a->sg_list_lock\00", [47 x i8] zeroinitializer }, align 32
@esas2r_init_adapter_struct.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&a->mem_lock\00", [19 x i8] zeroinitializer }, align 32
@esas2r_init_adapter_struct.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&a->queue_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to allocate memory for asynchronous events\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to allocate memory for s/g list descriptors\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to allocate memory for the request table\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to access registers\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown firmware version\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware start has timed out\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"timeout waiting for communication list init\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"init message %x failed (%x, %x)\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid/missing NVRAM parameters\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init messages failed\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%1d.%02d\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATTO ExpressSAS R680\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATTO ExpressSAS R608\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATTO ExpressSAS R60F\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATTO ExpressSAS R6F0\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATTO ExpressSAS R644\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATTO ExpressSAS R648\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ATTO ThunderStream SC 3808D\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ATTO ThunderStream SC 3808E\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATTO ThunderLink SH 1068\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ATTO SAS Controller\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R680\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R608\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R60F\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R6F0\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R644\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R648\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SC 3808D\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SC 3808E\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SH 1068\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pci_request_region(2) failed, error %d\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ioremap failed for regs mem region\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ioremap failed for data_window mem region\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"failed to enable MSI for adapter %d, falling back to legacy interrupts (err=%d)\00", [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"unknown interrupt_mode %d requested, falling back to legacy interrupt\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"esas2r_claim_interrupts irq=%d (%p, %s, %lx)\00", [51 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to request IRQ %02X\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"claimed IRQ %d flags: 0x%lx\00", [36 x i8] zeroinitializer }, align 32
@bin_attr_fw = external dso_local global %struct.bin_attribute, align 4
@bin_attr_fs = external dso_local global %struct.bin_attribute, align 4
@bin_attr_vda = external dso_local global %struct.bin_attribute, align 4
@bin_attr_hw = external dso_local global %struct.bin_attribute, align 4
@bin_attr_live_nvram = external dso_local global %struct.bin_attribute, align 4
@bin_attr_default_nvram = external dso_local global %struct.bin_attribute, align 4
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"free_irq(%d) called\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"suspending adapter()\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"esas2r_suspend(): 0\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resuming adapter()\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not re-map PCI regions!\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not re-claim IRQ!\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"esas2r_resume(): %d\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max read request size > 512B\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to allocate %lu bytes of consistent memory!\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65536]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 254]
@__sancov_gen_cov_switch_values.97 = internal global [11 x i64] [i64 9, i64 16, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 16486, i64 16487, i64 16488]
@__sancov_gen_cov_switch_values.98 = internal global [11 x i64] [i64 9, i64 16, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 16486, i64 16487, i64 16488]
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 273, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 280, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 296, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 302, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 302, i32 60 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 305, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 307, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 308, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 309, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 310, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 314, i32 53 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 316, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 318, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 319, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 320, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 321, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 322, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 340, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 352, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 380, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 399, i32 7 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 416, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 598, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 607, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 613, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 618, i32 11 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 631, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 637, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant [14 x i8] c"esas2r_pm_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 713, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 719, i32 6 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 773, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 774, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 775, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 792, i32 7 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 802, i32 7 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 814, i32 7 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 974, i32 9 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 997, i32 9 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1009, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1121, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1272, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1296, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1300, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1321, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1637, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1640, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1643, i32 10 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1646, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1649, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1652, i32 10 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1655, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1658, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1661, i32 10 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1664, i32 9 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1671, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1674, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1677, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1680, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1683, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1686, i32 10 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1689, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1692, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1695, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1698, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 33, i32 31 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 34, i32 28 }
@___asan_gen_.334 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 35, i32 39 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 160, i32 7 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 170, i32 7 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 189, i32 7 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 212, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 225, i32 7 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 240, i32 6 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 250, i32 31 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 257, i32 6 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 494, i32 11 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 649, i32 39 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 654, i32 39 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 664, i32 39 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 672, i32 31 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 702, i32 31 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 708, i32 39 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 750, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private constant [37 x i8] c"../drivers/scsi/esas2r/esas2r_init.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 62, i32 7 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @esas2r_init_adapter.__key, ptr @.str.7, ptr @esas2r_init_adapter.__key.8, ptr @.str.9, ptr @esas2r_init_adapter.__key.10, ptr @.str.11, ptr @esas2r_init_adapter.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @esas2r_init_adapter.__key.16, ptr @.str.17, ptr @esas2r_init_adapter.__key.18, ptr @.str.19, ptr @esas2r_init_adapter.__key.20, ptr @.str.21, ptr @esas2r_init_adapter.__key.22, ptr @.str.23, ptr @esas2r_init_adapter.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @esas2r_pm_ops, ptr @.str.37, ptr @esas2r_init_adapter_struct.__key, ptr @.str.38, ptr @esas2r_init_adapter_struct.__key.39, ptr @.str.40, ptr @esas2r_init_adapter_struct.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @sema_init.__key, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter_struct.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_init_adapter_struct.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_init_adapter(ptr noundef %host, ptr noundef %pcid, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %bus_addr = alloca i64, align 8
  %next_uncached = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bus_addr) #10
  %0 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %bus_addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_uncached) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %index)
  %cmp = icmp sgt i32 %index, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %index) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [0 x ptr], ptr @esas2r_adapters, i32 0, i32 %index
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %index) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 53
  %3 = call ptr @memset(ptr %hostdata, i32 0, i32 558792)
  %pcid4 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 12, i32 10, i32 3, i32 2
  %4 = ptrtoint ptr %pcid4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pcid, ptr %pcid4, align 4
  %host5 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 12, i32 10, i32 3, i32 3
  %5 = ptrtoint ptr %host5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %host, ptr %host5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  tail call void @esas2r_kill_adapter(i32 noundef %index)
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  %call14 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hostdata, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 12, i32 10, i32 3, i32 7
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.6, i32 noundef %index)
  %request_lock = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 49, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %request_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @esas2r_init_adapter.__key, i16 noundef signext 3) #10
  %fw_event_lock = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %fw_event_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @esas2r_init_adapter.__key.8, i16 noundef signext 3) #10
  %fm_api_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 38
  tail call void @__mutex_init(ptr noundef %fm_api_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @esas2r_init_adapter.__key.10) #10
  %fs_api_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 5, i32 1
  tail call void @__mutex_init(ptr noundef %fs_api_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @esas2r_init_adapter.__key.12) #10
  %nvram_semaphore = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 6, i32 1
  %wait_list1.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 10, i32 0, i32 0, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %nvram_semaphore to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %nvram_semaphore, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 7
  %8 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 7, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 8
  %10 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 9
  %11 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 10, i32 0, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.74, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 10, i32 0, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds i8, ptr %nvram_semaphore, i32 33
  %14 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %nvram_semaphore, i32 34
  %15 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %17 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 15, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @esas2r_fw_event_off(ptr noundef %hostdata) #10
  %fw_event_q_name = getelementptr inbounds %struct.esas2r_adapter, ptr %hostdata, i32 0, i32 81
  %index30 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 12, i32 10, i32 3, i32 6
  %19 = ptrtoint ptr %index30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index30, align 4
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_event_q_name, i32 noundef 20, ptr noundef nonnull @.str.14, i32 noundef %20)
  %call34 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.15, i32 noundef 917514, i32 noundef 1, ptr noundef %fw_event_q_name) #10
  %fw_event_q = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 16
  %21 = ptrtoint ptr %fw_event_q to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34, ptr %fw_event_q, align 4
  %buffered_ioctl_waiter = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 12, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %buffered_ioctl_waiter, ptr noundef nonnull @.str.17, ptr noundef nonnull @esas2r_init_adapter.__key.16) #10
  %nvram_waiter = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 12, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %nvram_waiter, ptr noundef nonnull @.str.19, ptr noundef nonnull @esas2r_init_adapter.__key.18) #10
  %fm_api_waiter = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 12, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %fm_api_waiter, ptr noundef nonnull @.str.21, ptr noundef nonnull @esas2r_init_adapter.__key.20) #10
  %fs_api_waiter = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %fs_api_waiter, ptr noundef nonnull @.str.23, ptr noundef nonnull @esas2r_init_adapter.__key.22) #10
  %vda_waiter = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 12, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %vda_waiter, ptr noundef nonnull @.str.25, ptr noundef nonnull @esas2r_init_adapter.__key.24) #10
  %req_list = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 1, i32 4, i32 7
  %22 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %req_list, ptr %req_list, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %req_list, ptr %prev.i, align 4
  %active_list = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i190 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 0, i32 3, i32 7
  %25 = ptrtoint ptr %prev.i190 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %active_list, ptr %prev.i190, align 4
  %defer_list = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %defer_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %defer_list, ptr %defer_list, align 4
  %prev.i191 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %defer_list, ptr %prev.i191, align 4
  %free_sg_list_head = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %28 = ptrtoint ptr %free_sg_list_head to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %free_sg_list_head, ptr %free_sg_list_head, align 4
  %prev.i192 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %prev.i192 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_sg_list_head, ptr %prev.i192, align 4
  %avail_request = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 49, i32 21
  %30 = ptrtoint ptr %avail_request to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %avail_request, ptr %avail_request, align 4
  %prev.i193 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 49, i32 22
  %31 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %avail_request, ptr %prev.i193, align 4
  %vrq_mds_head = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 34
  %32 = ptrtoint ptr %vrq_mds_head to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %vrq_mds_head, ptr %vrq_mds_head, align 4
  %prev.i194 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 35
  %33 = ptrtoint ptr %prev.i194 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vrq_mds_head, ptr %prev.i194, align 4
  %fw_event_list = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 16, i32 1
  %34 = ptrtoint ptr %fw_event_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %fw_event_list, ptr %fw_event_list, align 4
  %prev.i195 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 17
  %35 = ptrtoint ptr %prev.i195 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %fw_event_list, ptr %prev.i195, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_requests to i32))
  %36 = load i32, ptr @num_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp50200 = icmp sgt i32 %36, 1
  br i1 %cmp50200, label %for.body.preheader, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end11
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %host, i32 229, i32 49, i32 0, i32 7, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %last_request.0202 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.0201 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %req_list51 = getelementptr inbounds %struct.esas2r_request, ptr %last_request.0202, i32 0, i32 1
  %37 = ptrtoint ptr %req_list51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %req_list51, ptr %req_list51, align 4
  %prev.i196 = getelementptr inbounds %struct.esas2r_request, ptr %last_request.0202, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i196 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %req_list51, ptr %prev.i196, align 4
  %39 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i193, align 4
  %call.i.i198 = tail call zeroext i1 @__list_add_valid(ptr noundef %last_request.0202, ptr noundef %40, ptr noundef %avail_request) #10
  br i1 %call.i.i198, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %last_request.0202, ptr %prev.i193, align 4
  %42 = ptrtoint ptr %last_request.0202 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %avail_request, ptr %last_request.0202, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %last_request.0202, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %last_request.0202, ptr %40, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %call53 = tail call fastcc zeroext i1 @alloc_vda_req(ptr noundef %hostdata, ptr noundef %last_request.0202)
  br i1 %call53, label %for.inc, label %if.then54

if.then54:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.26) #10
  tail call void @esas2r_kill_adapter(i32 noundef %index)
  br label %cleanup

for.inc:                                          ; preds = %list_add_tail.exit
  %incdec.ptr = getelementptr %struct.esas2r_request, ptr %last_request.0202, i32 1
  %inc = add nuw nsw i32 %i.0201, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_requests to i32))
  %45 = load i32, ptr @num_requests, align 4
  %cmp50 = icmp slt i32 %inc, %45
  br i1 %cmp50, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %call57 = tail call fastcc i32 @esas2r_map_regions(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.27) #10
  tail call void @esas2r_kill_adapter(i32 noundef %index)
  br label %cleanup

if.end61:                                         ; preds = %for.end
  %46 = ptrtoint ptr %index30 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %index, ptr %index30, align 4
  %dis_ints_cnt = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 49, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt, ptr %dis_ints_cnt, i32 1, ptr elementtype(i32) %dis_ints_cnt) #10, !srcloc !191
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %hostdata, i32 0, i32 6
  %call.i.i187 = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %disable_cnt, i32 1, i32 3, i32 1) #10
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disable_cnt, ptr %disable_cnt, i32 1, ptr elementtype(i32) %disable_cnt) #10, !srcloc !191
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 49, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 24, ptr noundef %flags) #10
  %init_msg = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 9, i32 3, i32 1
  %49 = ptrtoint ptr %init_msg to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %init_msg, align 8
  %max_vdareq_size = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 10, i32 1, i32 1
  %50 = ptrtoint ptr %max_vdareq_size to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 128, ptr %max_vdareq_size, align 4
  %build_sgl = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 9, i32 5, i32 3
  %51 = ptrtoint ptr %build_sgl to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @esas2r_build_sg_list_sge, ptr %build_sgl, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @interrupt_mode to i32))
  %52 = load i32, ptr @interrupt_mode, align 4
  tail call fastcc void @esas2r_setup_interrupts(ptr noundef %hostdata, i32 noundef %52)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_sg_lists to i32))
  %53 = load i32, ptr @num_sg_lists, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sgl_page_size to i32))
  %54 = load i32, ptr @sgl_page_size, align 4
  %conv1.i = and i32 %54, 65535
  %mul.i = mul i32 %conv1.i, %53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_requests to i32))
  %55 = load i32, ptr @num_requests, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %56 = load i32, ptr @num_ae_requests, align 4
  %add2.i = add i32 %56, %55
  %add4.i = shl i32 %add2.i, 5
  %and.i = add i32 %add4.i, 110
  %reass.add.i = and i32 %and.i, -32
  %add14.i = add i32 %mul.i, 1040
  %add15.i = add i32 %add14.i, %reass.add.i
  %uncached_size = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 14, i32 50, i32 15
  %57 = ptrtoint ptr %uncached_size to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add15.i, ptr %uncached_size, align 8
  %call.i199 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add15.i, ptr noundef nonnull %bus_addr, i32 noundef 3264, i32 noundef 0) #10
  %uncached = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %58 = ptrtoint ptr %uncached to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i199, ptr %uncached, align 8
  %cmp71 = icmp eq ptr %call.i199, null
  br i1 %cmp71, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %uncached_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %uncached_size, align 8
  %call74 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %60) #10
  call void @esas2r_kill_adapter(i32 noundef %index)
  br label %cleanup

if.end75:                                         ; preds = %if.end61
  %61 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %bus_addr, align 8
  %uncached_phys = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 0, i32 7, i32 1, i32 4
  %63 = ptrtoint ptr %uncached_phys to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %uncached_phys, align 8
  %64 = ptrtoint ptr %uncached_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %uncached_size, align 8
  %66 = call ptr @memset(ptr %call.i199, i32 0, i32 %65)
  %67 = ptrtoint ptr %uncached to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %uncached, align 8
  %69 = ptrtoint ptr %next_uncached to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %next_uncached, align 4
  %call79 = call zeroext i1 @esas2r_init_adapter_struct(ptr noundef %hostdata, ptr noundef nonnull %next_uncached)
  br i1 %call79, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %call81 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.29) #10
  call void @esas2r_kill_adapter(i32 noundef %index)
  br label %cleanup

if.end82:                                         ; preds = %if.end75
  %tasklet = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 50, i32 12, i32 10, i32 1
  %70 = ptrtoint ptr %hostdata to i32
  call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @esas2r_adapter_tasklet, i32 noundef %70) #10
  call fastcc void @esas2r_disable_chip_interrupts(ptr noundef %hostdata)
  %call83 = call zeroext i1 @esas2r_check_adapter(ptr noundef %hostdata)
  %call84 = call zeroext i1 @esas2r_init_adapter_hw(ptr noundef %hostdata, i1 noundef zeroext true)
  br i1 %call84, label %if.end82.if.end87_crit_edge, label %if.then85

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %call86 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.30) #10
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end82.if.end87_crit_edge
  call fastcc void @esas2r_claim_interrupts(ptr noundef %hostdata)
  %flags2 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 13, i32 49, i32 18
  %71 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags2, align 4
  %73 = and i32 %72, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool89.not = icmp eq i32 %73, 0
  br i1 %tobool89.not, label %if.end87.if.end91_crit_edge, label %if.then90

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @esas2r_enable_chip_interrupts(ptr noundef %hostdata)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end87.if.end91_crit_edge
  call void @_set_bit(i32 noundef 8, ptr noundef %flags2) #10
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags, align 4
  %76 = and i32 %75, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool95.not = icmp eq i32 %76, 0
  br i1 %tobool95.not, label %if.then96, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  call void @esas2r_kickoff_timer(ptr noundef %hostdata) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end91.cleanup_crit_edge, %if.then80, %if.then72, %if.then59, %if.then54, %if.then9, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then1 ], [ 0, %if.then54 ], [ 0, %if.then59 ], [ 0, %if.then72 ], [ 0, %if.then80 ], [ 0, %if.then9 ], [ 1, %if.then96 ], [ 1, %if.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_uncached) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bus_addr) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_kill_adapter(i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x ptr], ptr @esas2r_adapters, i32 0, i32 %i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end80_crit_edge, label %if.then

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then:                                          ; preds = %entry
  tail call void @esas2r_fw_event_off(ptr noundef nonnull %1) #10
  tail call fastcc void @esas2r_adapter_power_down(ptr noundef nonnull %1, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @esas2r_buffered_ioctl to i32))
  %2 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 55
  %3 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @esas2r_buffered_ioctl_pcid to i32))
  %5 = load ptr, ptr @esas2r_buffered_ioctl_pcid, align 4
  %cmp = icmp eq ptr %4, %5
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @esas2r_buffered_ioctl_size to i32))
  %6 = load i32, ptr @esas2r_buffered_ioctl_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @esas2r_buffered_ioctl_addr to i32))
  %7 = load i32, ptr @esas2r_buffered_ioctl_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull %2, i32 noundef %7, i32 noundef 0) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @esas2r_buffered_ioctl to i32))
  store ptr null, ptr @esas2r_buffered_ioctl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %vda_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 67
  %8 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vda_buffer, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pcid6 = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 55
  %10 = ptrtoint ptr %pcid6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcid6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %ppvda_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 68
  %12 = ptrtoint ptr %ppvda_buffer to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ppvda_buffer, align 8
  %conv = trunc i64 %13 to i32
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 262416, ptr noundef nonnull %9, i32 noundef %conv, i32 noundef 0) #10
  %14 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vda_buffer, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %fs_api_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 72
  %15 = ptrtoint ptr %fs_api_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs_api_buffer, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %pcid13 = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 55
  %17 = ptrtoint ptr %pcid13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcid13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %fs_api_buffer_size = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 73
  %19 = ptrtoint ptr %fs_api_buffer_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fs_api_buffer_size, align 4
  %ppfs_api_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 71
  %21 = ptrtoint ptr %ppfs_api_buffer to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ppfs_api_buffer, align 8
  %conv16 = trunc i64 %22 to i32
  tail call void @dma_free_attrs(ptr noundef %dev14, i32 noundef %20, ptr noundef nonnull %16, i32 noundef %conv16, i32 noundef 0) #10
  %23 = ptrtoint ptr %fs_api_buffer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %fs_api_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10.if.end18_crit_edge
  %local_atto_ioctl = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 91
  %24 = ptrtoint ptr %local_atto_ioctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %local_atto_ioctl, align 8
  tail call void @kfree(ptr noundef %25) #10
  %26 = ptrtoint ptr %local_atto_ioctl to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %local_atto_ioctl, align 8
  %fw_event_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 79
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fw_event_lock) #10
  %fw_event_q = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 77
  %27 = ptrtoint ptr %fw_event_q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_event_q, align 4
  store ptr null, ptr %fw_event_q, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fw_event_lock, i32 noundef %call23) #10
  %tobool28.not = icmp eq ptr %28, null
  br i1 %tobool28.not, label %if.end18.if.end30_crit_edge, label %if.then29

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef nonnull %28) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end18.if.end30_crit_edge
  %uncached = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %uncached to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %uncached, align 8
  %tobool31.not = icmp eq ptr %30, null
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %if.then32

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %pcid33 = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 55
  %31 = ptrtoint ptr %pcid33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcid33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %uncached_size = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 76
  %33 = ptrtoint ptr %uncached_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %uncached_size, align 8
  %uncached_phys = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %uncached_phys to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %uncached_phys, align 8
  %conv36 = trunc i64 %36 to i32
  tail call void @dma_free_attrs(ptr noundef %dev34, i32 noundef %34, ptr noundef nonnull %30, i32 noundef %conv36, i32 noundef 0) #10
  %37 = ptrtoint ptr %uncached to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %uncached, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end30.if.end38_crit_edge
  %pcid39 = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 55
  %38 = ptrtoint ptr %pcid39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcid39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 49
  %40 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %40, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %41 = trunc i40 %bf.load to i32
  %42 = lshr i32 %41, 26
  %bf.cast = and i32 %42, 1
  %43 = lshr i32 %41, 27
  %bf.cast46 = and i32 %43, 1
  %irq = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 46
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %pin = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 24
  %46 = ptrtoint ptr %pin to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pin, align 1
  %conv49 = zext i8 %47 to i32
  %call50 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev40, ptr noundef nonnull @.str.31, i32 noundef %bf.cast, i32 noundef %bf.cast46, i32 noundef %45, i32 noundef %conv49) #10
  %48 = ptrtoint ptr %pcid39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcid39, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %enable_cnt = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 51
  %50 = ptrtoint ptr %enable_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %enable_cnt, align 8
  %call54 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev52, ptr noundef nonnull @.str.32, i32 noundef %51) #10
  %52 = ptrtoint ptr %pcid39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcid39, align 4
  tail call void @pci_disable_device(ptr noundef %53) #10
  %54 = ptrtoint ptr %pcid39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcid39, align 4
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %enable_cnt59 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 51
  %56 = ptrtoint ptr %enable_cnt59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enable_cnt59, align 8
  %call61 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev57, ptr noundef nonnull @.str.33, i32 noundef %57) #10
  %58 = ptrtoint ptr %pcid39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcid39, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %call65 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev63, ptr noundef nonnull @.str.34, ptr noundef %59) #10
  %60 = ptrtoint ptr %pcid39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcid39, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %driver_data.i.i, align 4
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx, align 4
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags2, align 4
  %66 = and i32 %65, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool69.not = icmp eq i32 %66, 0
  br i1 %tobool69.not, label %if.end38.if.end80_crit_edge, label %if.then70

if.end38.if.end80_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then70:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags2) #10
  %flags72 = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags72) #10
  %host = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 56
  %67 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %host, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 0, i32 49
  %call73 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.35) #10
  %69 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %host, align 8
  tail call void @scsi_remove_host(ptr noundef %70) #10
  %71 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %host, align 8
  %shost_gendev76 = getelementptr inbounds %struct.Scsi_Host, ptr %72, i32 0, i32 49
  %call77 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev76, ptr noundef nonnull @.str.36) #10
  %73 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %host, align 8
  tail call void @scsi_host_put(ptr noundef %74) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then70, %if.end38.if.end80_crit_edge, %entry.if.end80_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log_dev(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_fw_event_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @alloc_vda_req(ptr noundef %a, ptr nocapture noundef writeonly %rq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.esas2r_mem_desc, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1280, ptr %size, align 4
  %esas2r_param.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %esas2r_param.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1536, ptr %esas2r_param.i, align 8
  %virt_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %virt_addr.i, align 8
  %phys_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %phys_addr.i, align 8
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %5 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcid.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 1536, ptr noundef %phys_addr.i, i32 noundef 3264, i32 noundef 0) #10
  %esas2r_data.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %esas2r_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %esas2r_data.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %esas2r_param.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %esas2r_param.i, align 8
  %call5.i = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.92, i32 noundef %9) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call.i.i to i32
  %add7.i = add i32 %10, 255
  %and.i = and i32 %add7.i, -256
  %11 = inttoptr i32 %and.i to ptr
  %12 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %virt_addr.i, align 8
  %13 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %phys_addr.i, align 8
  %add12.i = add i64 %14, 255
  %and16.i = and i64 %add12.i, -256
  store i64 %and16.i, ptr %phys_addr.i, align 8
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = call ptr @memset(ptr %11, i32 0, i32 %16)
  %num_vrqs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 87
  %18 = ptrtoint ptr %num_vrqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_vrqs, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %num_vrqs, align 4
  %vrq_mds_head = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 85
  %20 = ptrtoint ptr %vrq_mds_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vrq_mds_head, align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vrq_mds_head, ptr noundef %21) #10
  br i1 %call.i.i17, label %if.end.i.i, label %if.end3.list_add.exit_crit_edge

if.end3.list_add.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vrq_mds_head, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %vrq_mds_head to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %vrq_mds_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end3.list_add.exit_crit_edge
  %vrq_md = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 3
  %26 = ptrtoint ptr %vrq_md to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %vrq_md, align 4
  %27 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %virt_addr.i, align 8
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %29 = ptrtoint ptr %vrq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %vrq, align 8
  %30 = ptrtoint ptr %num_vrqs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_vrqs, align 4
  %handle = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %28, i32 0, i32 5
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %handle, align 1
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %list_add.exit ], [ false, %if.then2 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esas2r_map_regions(ptr noundef %a) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %regs, align 4
  %data_window = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 3
  %1 = ptrtoint ptr %data_window to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %data_window, align 8
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %2 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcid, align 4
  %name = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 58
  %call = tail call i32 @pci_request_region(ptr noundef %3, i32 noundef 2, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcid, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 2, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp eq i32 %9, 0
  %sub = sub i32 1, %7
  %add = add i32 %sub, %9
  %cond = select i1 %cmp6, i32 0, i32 %add
  %call15 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %cond) #10
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %regs, align 4
  %cmp18 = icmp eq ptr %call15, null
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.77) #10
  %11 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcid, align 4
  tail call void @pci_release_region(ptr noundef %12, i32 noundef 2) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %13 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcid, align 4
  %call26 = tail call i32 @pci_request_region(ptr noundef %14, i32 noundef 0, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end22
  %call29 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef %call26) #10
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then28.if.end.i_crit_edge, label %if.then.i

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %16) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then28.if.end.i_crit_edge
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %regs, align 4
  %18 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcid, align 4
  tail call void @pci_release_region(ptr noundef %19, i32 noundef 2) #10
  %20 = ptrtoint ptr %data_window to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_window, align 8
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.end.i.esas2r_unmap_regions.exit_crit_edge, label %if.then4.i

if.end.i.esas2r_unmap_regions.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_unmap_regions.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %21) #10
  br label %esas2r_unmap_regions.exit

esas2r_unmap_regions.exit:                        ; preds = %if.then4.i, %if.end.i.esas2r_unmap_regions.exit_crit_edge
  %22 = ptrtoint ptr %data_window to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %data_window, align 8
  %23 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcid, align 4
  tail call void @pci_release_region(ptr noundef %24, i32 noundef 0) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcid, align 4
  %resource32 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 47
  %27 = ptrtoint ptr %resource32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resource32, align 8
  %end38 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 47, i32 0, i32 1
  %29 = ptrtoint ptr %end38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp39 = icmp eq i32 %30, 0
  %sub50 = sub i32 1, %28
  %add51 = add i32 %sub50, %30
  %cond53 = select i1 %cmp39, i32 0, i32 %add51
  %call54 = tail call ptr @ioremap(i32 noundef %28, i32 noundef %cond53) #10
  %31 = ptrtoint ptr %data_window to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call54, ptr %data_window, align 8
  %cmp57 = icmp eq ptr %call54, null
  br i1 %cmp57, label %if.then58, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then58:                                        ; preds = %if.end30
  %call59 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.78) #10
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %tobool.not.i88 = icmp eq ptr %33, null
  br i1 %tobool.not.i88, label %if.then58.if.end.i93_crit_edge, label %if.then.i89

if.then58.if.end.i93_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i93

if.then.i89:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %33) #10
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.then.i89, %if.then58.if.end.i93_crit_edge
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %regs, align 4
  %35 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcid, align 4
  tail call void @pci_release_region(ptr noundef %36, i32 noundef 2) #10
  %37 = ptrtoint ptr %data_window to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data_window, align 8
  %tobool3.not.i92 = icmp eq ptr %38, null
  br i1 %tobool3.not.i92, label %if.end.i93.esas2r_unmap_regions.exit95_crit_edge, label %if.then4.i94

if.end.i93.esas2r_unmap_regions.exit95_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_unmap_regions.exit95

if.then4.i94:                                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %38) #10
  br label %esas2r_unmap_regions.exit95

esas2r_unmap_regions.exit95:                      ; preds = %if.then4.i94, %if.end.i93.esas2r_unmap_regions.exit95_crit_edge
  %39 = ptrtoint ptr %data_window to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %data_window, align 8
  %40 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcid, align 4
  tail call void @pci_release_region(ptr noundef %41, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %esas2r_unmap_regions.exit95, %if.end30.cleanup_crit_edge, %esas2r_unmap_regions.exit, %if.then19, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -14, %if.then19 ], [ %call26, %esas2r_unmap_regions.exit ], [ -14, %esas2r_unmap_regions.exit95 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_build_sg_list_sge(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_setup_interrupts(ptr noundef %a, i32 noundef %intr_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %intr_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %intr_mode, label %sw.default [
    i32 0, label %entry.use_legacy_interrupts_crit_edge
    i32 1, label %sw.bb2
  ]

entry.use_legacy_interrupts_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %use_legacy_interrupts

use_legacy_interrupts:                            ; preds = %sw.default, %if.then, %entry.use_legacy_interrupts_crit_edge
  %intr_mode1 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 82
  %1 = ptrtoint ptr %intr_mode1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %intr_mode1, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %2 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcid, align 4
  %call = tail call i32 @pci_enable_msi(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %index = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 57
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %call3 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef %5, i32 noundef %call) #10
  br label %use_legacy_interrupts

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %intr_mode4 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 82
  %6 = ptrtoint ptr %intr_mode4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %intr_mode4, align 4
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags2) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @interrupt_mode to i32))
  %7 = load i32, ptr @interrupt_mode, align 4
  %call5 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef %7) #10
  br label %use_legacy_interrupts

sw.epilog:                                        ; preds = %if.end, %use_legacy_interrupts
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @esas2r_get_uncached_size(ptr nocapture readnone %a) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_sg_lists to i32))
  %0 = load i32, ptr @num_sg_lists, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sgl_page_size to i32))
  %1 = load i32, ptr @sgl_page_size, align 4
  %conv1 = and i32 %1, 65535
  %mul = mul i32 %conv1, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_requests to i32))
  %2 = load i32, ptr @num_requests, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %3 = load i32, ptr @num_ae_requests, align 4
  %add2 = add i32 %3, %2
  %add4 = shl i32 %add2, 5
  %and = add i32 %add4, 110
  %reass.add = and i32 %and, -32
  %add14 = add i32 %mul, 1040
  %add15 = add i32 %add14, %reass.add
  ret i32 %add15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_init_adapter_struct(ptr noundef %a, ptr nocapture noundef %uncached_area) local_unnamed_addr #0 align 64 {
entry:
  %devcontrol.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_list_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %sg_list_lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @esas2r_init_adapter_struct.__key, i16 noundef signext 3) #10
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %mem_lock, ptr noundef nonnull @.str.40, ptr noundef nonnull @esas2r_init_adapter_struct.__key.39, i16 noundef signext 3) #10
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @esas2r_init_adapter_struct.__key.41, i16 noundef signext 3) #10
  %arrayidx = getelementptr [256 x %struct.esas2r_target], ptr %a, i32 0, i32 256
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %arrayidx, align 8
  %general_req = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26
  %call9 = tail call fastcc zeroext i1 @alloc_vda_req(ptr noundef %a, ptr noundef %general_req)
  br i1 %call9, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %1 = load i32, ptr @num_ae_requests, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 112) #10
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !192

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %first_ae_req298 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 35
  %4 = ptrtoint ptr %first_ae_req298 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %first_ae_req298, align 4
  br label %if.then12

if.end7.i.i:                                      ; preds = %if.end
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #14
  %first_ae_req = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 35
  %6 = ptrtoint ptr %first_ae_req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %first_ae_req, align 4
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.if.then12_crit_edge, label %if.end14

if.end7.i.i.if.then12_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %if.end7.i.i.if.then12_crit_edge, %kcalloc.exit.thread
  %call13 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_sg_lists to i32))
  %7 = load i32, ptr @num_sg_lists, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 40) #10
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit217.thread, label %if.end7.i.i215, !prof !192

kcalloc.exit217.thread:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %sg_list_mds306 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 17
  %10 = ptrtoint ptr %sg_list_mds306 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sg_list_mds306, align 8
  br label %if.then18

if.end7.i.i215:                                   ; preds = %if.end14
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i214 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #14
  %sg_list_mds = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 17
  %12 = ptrtoint ptr %sg_list_mds to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i214, ptr %sg_list_mds, align 8
  %cmp17 = icmp eq ptr %call8.i.i214, null
  br i1 %cmp17, label %if.end7.i.i215.if.then18_crit_edge, label %if.end20

if.end7.i.i215.if.then18_crit_edge:               ; preds = %if.end7.i.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %if.end7.i.i215.if.then18_crit_edge, %kcalloc.exit217.thread
  %call19 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end7.i.i215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_requests to i32))
  %13 = load i32, ptr @num_requests, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %14 = load i32, ptr @num_ae_requests, align 4
  %add = add i32 %13, 1
  %add21 = add i32 %add, %14
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add21, i32 4) #10
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc.exit250.thread, label %if.end7.i.i248, !prof !192

kcalloc.exit250.thread:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %req_table314 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %17 = ptrtoint ptr %req_table314 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %req_table314, align 4
  br label %if.then25

if.end7.i.i248:                                   ; preds = %if.end20
  %18 = extractvalue { i32, i1 } %15, 0
  %call8.i.i247 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #14
  %req_table = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %19 = ptrtoint ptr %req_table to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i247, ptr %req_table, align 4
  %cmp24 = icmp eq ptr %call8.i.i247, null
  br i1 %cmp24, label %if.end7.i.i248.if.then25_crit_edge, label %if.end27

if.end7.i.i248.if.then25_crit_edge:               ; preds = %if.end7.i.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then25:                                        ; preds = %if.end7.i.i248.if.then25_crit_edge, %kcalloc.exit250.thread
  %call26 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end7.i.i248
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %20 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcid.i, align 4
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i = icmp eq i8 %23, 0
  br i1 %tobool.i.not.i, label %if.end27.esas2r_init_pci_cfg_space.exit_crit_edge, label %if.then.i

if.end27.esas2r_init_pci_cfg_space.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_init_pci_cfg_space.exit

if.then.i:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devcontrol.i) #10
  %24 = ptrtoint ptr %devcontrol.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %devcontrol.i, align 2, !annotation !193
  %call2.i = call i32 @pcie_capability_read_word(ptr noundef %21, i32 noundef 8, ptr noundef nonnull %devcontrol.i) #10
  %25 = ptrtoint ptr %devcontrol.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %devcontrol.i, align 2
  %27 = and i16 %26, 28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %27)
  %cmp.i = icmp ugt i16 %27, 8192
  br i1 %cmp.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.91) #10
  %28 = ptrtoint ptr %devcontrol.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %devcontrol.i, align 2
  %30 = and i16 %29, -28673
  %31 = or i16 %30, 8192
  store i16 %31, ptr %devcontrol.i, align 2
  %32 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcid.i, align 4
  %call12.i = call i32 @pcie_capability_write_word(ptr noundef %33, i32 noundef 8, i16 noundef zeroext %31) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devcontrol.i) #10
  br label %esas2r_init_pci_cfg_space.exit

esas2r_init_pci_cfg_space.exit:                   ; preds = %if.end.i, %if.end27.esas2r_init_pci_cfg_space.exit_crit_edge
  %34 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcid.i, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %37)
  %cmp28 = icmp eq i16 %37, 4476
  br i1 %cmp28, label %land.lhs.true, label %esas2r_init_pci_cfg_space.exit.if.end33_crit_edge

esas2r_init_pci_cfg_space.exit.if.end33_crit_edge: ; preds = %esas2r_init_pci_cfg_space.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %esas2r_init_pci_cfg_space.exit
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 10
  %38 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %subsystem_device, align 2
  %40 = and i16 %39, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not = icmp eq i16 %40, 0
  br i1 %tobool.not, label %land.lhs.true.if.end33_crit_edge, label %if.then32

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %41 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags2, align 8
  %or = or i32 %42, 7
  store i32 %or, ptr %flags2, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true.if.end33_crit_edge, %esas2r_init_pci_cfg_space.exit.if.end33_crit_edge
  %flags234 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %43 = ptrtoint ptr %flags234 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags234, align 4
  %subsystem_device42 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 10
  %45 = ptrtoint ptr %subsystem_device42 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %subsystem_device42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16488, i16 %46)
  %cmp44 = icmp eq i16 %46, 16488
  br i1 %cmp44, label %if.then46, label %if.end33.if.end49_crit_edge

if.end33.if.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %or48 = or i32 %44, 6
  %47 = ptrtoint ptr %flags234 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or48, ptr %flags234, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end33.if.end49_crit_edge
  %48 = ptrtoint ptr %uncached_area to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %uncached_area, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_sg_lists to i32))
  %50 = load i32, ptr @num_sg_lists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp51322.not = icmp eq i32 %50, 0
  br i1 %cmp51322.not, label %if.end49.for.end_crit_edge, label %for.body.lr.ph

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end49
  %51 = ptrtoint ptr %sg_list_mds to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sg_list_mds, align 8
  %free_sg_list_head = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sgl.0324 = phi ptr [ %52, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0323 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sgl_page_size to i32))
  %53 = load i32, ptr @sgl_page_size, align 4
  %size = getelementptr inbounds %struct.esas2r_mem_desc, ptr %sgl.0324, i32 0, i32 6
  %54 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %size, align 4
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %sgl.0324, ptr noundef %56, ptr noundef %free_sg_list_head) #10
  br i1 %call.i.i, label %if.end.i.i251, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i251:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sgl.0324, ptr %prev.i, align 4
  %58 = ptrtoint ptr %sgl.0324 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %free_sg_list_head, ptr %sgl.0324, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %sgl.0324, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %sgl.0324, ptr %56, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i251, %for.body.list_add_tail.exit_crit_edge
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size, align 4
  %add.i = add i32 %62, 16
  %esas2r_param.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %sgl.0324, i32 0, i32 5
  %63 = ptrtoint ptr %esas2r_param.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i, ptr %esas2r_param.i, align 8
  %virt_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %sgl.0324, i32 0, i32 1
  %64 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %virt_addr.i, align 8
  %phys_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %sgl.0324, i32 0, i32 2
  %65 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %phys_addr.i, align 8
  %66 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcid.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %call.i.i253 = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add.i, ptr noundef %phys_addr.i, i32 noundef 3264, i32 noundef 0) #10
  %esas2r_data.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %sgl.0324, i32 0, i32 4
  %68 = ptrtoint ptr %esas2r_data.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i.i253, ptr %esas2r_data.i, align 4
  %cmp.i254 = icmp eq ptr %call.i.i253, null
  br i1 %cmp.i254, label %if.then54, label %for.inc

if.then54:                                        ; preds = %list_add_tail.exit
  %esas2r_param.i.le = getelementptr inbounds %struct.esas2r_mem_desc, ptr %sgl.0324, i32 0, i32 5
  %69 = ptrtoint ptr %esas2r_param.i.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %esas2r_param.i.le, align 8
  %call5.i255 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.92, i32 noundef %70) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0323)
  %cmp55 = icmp ult i32 %i.0323, 8
  br i1 %cmp55, label %if.then54.cleanup_crit_edge, label %if.then54.for.end_crit_edge

if.then54.for.end_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %list_add_tail.exit
  %71 = ptrtoint ptr %call.i.i253 to i32
  %add7.i = add i32 %71, 15
  %and.i = and i32 %add7.i, -16
  %72 = inttoptr i32 %and.i to ptr
  %73 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %virt_addr.i, align 8
  %74 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %phys_addr.i, align 8
  %add12.i = add i64 %75, 15
  %and16.i = and i64 %add12.i, -16
  store i64 %and16.i, ptr %phys_addr.i, align 8
  %76 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size, align 4
  %78 = call ptr @memset(ptr %72, i32 0, i32 %77)
  %inc = add nuw i32 %i.0323, 1
  %incdec.ptr = getelementptr %struct.esas2r_mem_desc, ptr %sgl.0324, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_sg_lists to i32))
  %79 = load i32, ptr @num_sg_lists, align 4
  %cmp51 = icmp ult i32 %inc, %79
  br i1 %cmp51, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then54.for.end_crit_edge, %if.end49.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_requests to i32))
  %80 = load i32, ptr @num_requests, align 4
  %add60 = add i32 %80, 2
  %list_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 36
  %81 = ptrtoint ptr %list_size to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add60, ptr %list_size, align 8
  %mul = shl i32 %add60, 4
  %size62 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 6
  %82 = ptrtoint ptr %size62 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul, ptr %size62, align 4
  %add.i259 = add i32 %mul, 16
  %esas2r_param.i260 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 5
  %83 = ptrtoint ptr %esas2r_param.i260 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add.i259, ptr %esas2r_param.i260, align 8
  %virt_addr.i261 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 1
  %84 = ptrtoint ptr %virt_addr.i261 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %virt_addr.i261, align 8
  %phys_addr.i262 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 2
  %85 = ptrtoint ptr %phys_addr.i262 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %phys_addr.i262, align 8
  %86 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcid.i, align 4
  %dev.i264 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %call.i.i265 = call ptr @dma_alloc_attrs(ptr noundef %dev.i264, i32 noundef %add.i259, ptr noundef %phys_addr.i262, i32 noundef 3264, i32 noundef 0) #10
  %esas2r_data.i266 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 4
  %88 = ptrtoint ptr %esas2r_data.i266 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i.i265, ptr %esas2r_data.i266, align 4
  %cmp.i267 = icmp eq ptr %call.i.i265, null
  br i1 %cmp.i267, label %esas2r_initmem_alloc.exit275, label %if.end66

esas2r_initmem_alloc.exit275:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %esas2r_param.i260 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %esas2r_param.i260, align 8
  %call5.i268 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.92, i32 noundef %90) #10
  br label %cleanup

if.end66:                                         ; preds = %for.end
  %91 = ptrtoint ptr %call.i.i265 to i32
  %add7.i270 = add i32 %91, 15
  %and.i271 = and i32 %add7.i270, -16
  %92 = inttoptr i32 %and.i271 to ptr
  %93 = ptrtoint ptr %virt_addr.i261 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %virt_addr.i261, align 8
  %94 = ptrtoint ptr %phys_addr.i262 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %phys_addr.i262, align 8
  %add12.i272 = add i64 %95, 15
  %and16.i273 = and i64 %add12.i272, -16
  store i64 %and16.i273, ptr %phys_addr.i262, align 8
  %96 = ptrtoint ptr %size62 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size62, align 4
  %98 = call ptr @memset(ptr %92, i32 0, i32 %97)
  %99 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %list_size, align 8
  %mul68 = shl i32 %100, 4
  %size69 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 6
  %101 = ptrtoint ptr %size69 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul68, ptr %size69, align 4
  %add.i277 = add i32 %mul68, 16
  %esas2r_param.i278 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 5
  %102 = ptrtoint ptr %esas2r_param.i278 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add.i277, ptr %esas2r_param.i278, align 8
  %virt_addr.i279 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 1
  %103 = ptrtoint ptr %virt_addr.i279 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %virt_addr.i279, align 8
  %phys_addr.i280 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 2
  %104 = ptrtoint ptr %phys_addr.i280 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 0, ptr %phys_addr.i280, align 8
  %105 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pcid.i, align 4
  %dev.i282 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %call.i.i283 = call ptr @dma_alloc_attrs(ptr noundef %dev.i282, i32 noundef %add.i277, ptr noundef %phys_addr.i280, i32 noundef 3264, i32 noundef 0) #10
  %esas2r_data.i284 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 4
  %107 = ptrtoint ptr %esas2r_data.i284 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i.i283, ptr %esas2r_data.i284, align 4
  %cmp.i285 = icmp eq ptr %call.i.i283, null
  br i1 %cmp.i285, label %esas2r_initmem_alloc.exit293, label %if.end73

esas2r_initmem_alloc.exit293:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %esas2r_param.i278 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %esas2r_param.i278, align 8
  %call5.i286 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.92, i32 noundef %109) #10
  br label %cleanup

if.end73:                                         ; preds = %if.end66
  %110 = ptrtoint ptr %call.i.i283 to i32
  %add7.i288 = add i32 %110, 15
  %and.i289 = and i32 %add7.i288, -16
  %111 = inttoptr i32 %and.i289 to ptr
  %112 = ptrtoint ptr %virt_addr.i279 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %virt_addr.i279, align 8
  %113 = ptrtoint ptr %phys_addr.i280 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %phys_addr.i280, align 8
  %add12.i290 = add i64 %114, 15
  %and16.i291 = and i64 %add12.i290, -16
  store i64 %and16.i291, ptr %phys_addr.i280, align 8
  %115 = ptrtoint ptr %size69 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size69, align 4
  %117 = call ptr @memset(ptr %111, i32 0, i32 %116)
  %nvram = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %118 = ptrtoint ptr %nvram to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %49, ptr %nvram, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 256
  %disc_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 44
  %119 = ptrtoint ptr %disc_buffer to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %add.ptr, ptr %disc_buffer, align 8
  %add.ptr74 = getelementptr i8, ptr %49, i32 768
  %120 = ptrtoint ptr %add.ptr74 to i32
  %add75 = add i32 %120, 7
  %and76 = and i32 %add75, -8
  %121 = inttoptr i32 %and76 to ptr
  %outbound_copy = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 10
  %122 = ptrtoint ptr %outbound_copy to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %outbound_copy, align 4
  %add.ptr77 = getelementptr i8, ptr %121, i32 4
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %flags, align 4
  %125 = and i32 %124, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool79.not = icmp eq i32 %125, 0
  br i1 %tobool79.not, label %if.then80, label %if.end73.if.end81_crit_edge

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  call void @esas2r_nvram_set_defaults(ptr noundef %a) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end73.if.end81_crit_edge
  %126 = ptrtoint ptr %uncached_area to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %add.ptr77, ptr %uncached_area, align 4
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %flags, align 4
  %129 = and i32 %128, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool84.not = icmp eq i32 %129, 0
  br i1 %tobool84.not, label %if.end81.cleanup_crit_edge, label %if.then85

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then85:                                        ; preds = %if.end81
  call void @esas2r_targ_db_initialize(ptr noundef %a) #10
  %130 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %list_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp89325.not = icmp eq i32 %131, 0
  br i1 %cmp89325.not, label %if.then85.for.end95_crit_edge, label %for.body91.preheader

if.then85.for.end95_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end95

for.body91.preheader:                             ; preds = %if.then85
  %132 = ptrtoint ptr %virt_addr.i261 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %virt_addr.i261, align 8
  br label %for.body91

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %for.body91.preheader
  %element.0327 = phi ptr [ %incdec.ptr92, %for.body91.for.body91_crit_edge ], [ %133, %for.body91.preheader ]
  %i.1326 = phi i32 [ %inc94, %for.body91.for.body91_crit_edge ], [ 0, %for.body91.preheader ]
  %134 = ptrtoint ptr %element.0327 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %element.0327, align 8
  %reserved = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, ptr %element.0327, i32 0, i32 2
  %135 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %reserved, align 4
  %length = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, ptr %element.0327, i32 0, i32 1
  %136 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 65536, ptr %length, align 8
  %incdec.ptr92 = getelementptr %struct.esas2r_inbound_list_source_entry, ptr %element.0327, i32 1
  %inc94 = add nuw i32 %i.1326, 1
  %137 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %list_size, align 8
  %cmp89 = icmp ult i32 %inc94, %138
  br i1 %cmp89, label %for.body91.for.body91_crit_edge, label %for.body91.for.end95_crit_edge

for.body91.for.end95_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end95

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body91

for.end95:                                        ; preds = %for.body91.for.end95_crit_edge, %if.then85.for.end95_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %139 = load i32, ptr @num_ae_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp98328.not = icmp eq i32 %139, 0
  br i1 %cmp98328.not, label %for.end95.cleanup_crit_edge, label %for.body100.lr.ph

for.end95.cleanup_crit_edge:                      ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body100.lr.ph:                                ; preds = %for.end95
  %140 = ptrtoint ptr %first_ae_req to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %first_ae_req, align 4
  %cmd_ref_no.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 28
  br label %for.body100

for.body100:                                      ; preds = %if.end103.for.body100_crit_edge, %for.body100.lr.ph
  %rq.0330 = phi ptr [ %141, %for.body100.lr.ph ], [ %incdec.ptr105, %if.end103.for.body100_crit_edge ]
  %i.2329 = phi i32 [ 0, %for.body100.lr.ph ], [ %inc106, %if.end103.for.body100_crit_edge ]
  %req_list = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 1
  %142 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %req_list, ptr %req_list, align 4
  %prev.i294 = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 1, i32 1
  %143 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %req_list, ptr %prev.i294, align 4
  %call101 = call fastcc zeroext i1 @alloc_vda_req(ptr noundef %a, ptr noundef %rq.0330)
  br i1 %call101, label %if.end103, label %for.body100.cleanup_crit_edge

for.body100.cleanup_crit_edge:                    ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end103:                                        ; preds = %for.body100
  %vrq1.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 2
  %144 = ptrtoint ptr %vrq1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %vrq1.i, align 8
  %sg_table_head.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 6
  %146 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %sg_table_head.i, ptr %sg_table_head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 6, i32 1
  %147 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %sg_table_head.i, ptr %prev.i.i, align 4
  %add.ptr.i = getelementptr %union.atto_vda_req, ptr %145, i32 1
  %148 = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr.i, ptr %148, align 8
  %interrupt_cb.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 14
  %150 = ptrtoint ptr %interrupt_cb.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %interrupt_cb.i, align 8
  %comp_cb.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 13
  %151 = ptrtoint ptr %comp_cb.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i, align 4
  %flags.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 16
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %flags.i, align 8
  %timeout.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 8
  %153 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %timeout.i, align 4
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 17
  %154 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -2, ptr %req_stat.i, align 1
  %req_type.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 10
  %155 = ptrtoint ptr %req_type.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %req_type.i, align 2
  %func_rsp.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 12
  %156 = ptrtoint ptr %func_rsp.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %func_rsp.i, align 4
  %arrayidx3.i = getelementptr %struct.esas2r_request, ptr %rq.0330, i32 0, i32 12, i32 0, i32 3
  %157 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %arrayidx3.i, align 4
  %vda_req_sz.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 18
  %158 = ptrtoint ptr %vda_req_sz.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %vda_req_sz.i, align 2
  %159 = ptrtoint ptr %req_table to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %req_table, align 4
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 5
  %161 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %162, 65535
  %arrayidx4.i = getelementptr ptr, ptr %160, i32 %idxprom.i
  %163 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %rq.0330, ptr %arrayidx4.i, align 4
  %164 = ptrtoint ptr %cmd_ref_no.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %cmd_ref_no.i, align 2
  %inc.i = add i16 %165, 1
  store i16 %inc.i, ptr %cmd_ref_no.i, align 2
  %conv10.i = zext i16 %165 to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %166 = load i32, ptr %handle.i, align 1
  %conv13.i = and i32 %166, 65535
  %or.i = or i32 %conv13.i, %shl.i
  store i32 %or.i, ptr %handle.i, align 1
  %function.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 1
  %167 = ptrtoint ptr %function.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %function.i, align 1
  %sense_len.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 2
  %168 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -4, ptr %sense_len.i, align 1
  %sg_list_offset.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 4
  %169 = ptrtoint ptr %sg_list_offset.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %sg_list_offset.i, align 1
  %chain_offset.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 3
  %170 = ptrtoint ptr %chain_offset.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %chain_offset.i, align 1
  %flags15.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 6
  %171 = ptrtoint ptr %flags15.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 0, ptr %flags15.i, align 1
  %172 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 8
  %reserved.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %145, i32 0, i32 8, i32 0, i32 3
  %173 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %reserved.i, align 1
  %vrq_md.i = getelementptr inbounds %struct.esas2r_request, ptr %rq.0330, i32 0, i32 3
  %174 = ptrtoint ptr %vrq_md.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %vrq_md.i, align 4
  %phys_addr.i295 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %phys_addr.i295 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %phys_addr.i295, align 8
  %add.i296 = add i64 %177, 1024
  %178 = call i64 @llvm.bswap.i64(i64 %add.i296) #10
  %179 = ptrtoint ptr %172 to i32
  call void @__asan_storeN_noabort(i32 %179, i32 8)
  store i64 %178, ptr %172, align 1
  %180 = ptrtoint ptr %comp_cb.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @esas2r_ae_complete, ptr %comp_cb.i, align 4
  %incdec.ptr105 = getelementptr %struct.esas2r_request, ptr %rq.0330, i32 1
  %inc106 = add nuw i32 %i.2329, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %181 = load i32, ptr @num_ae_requests, align 4
  %cmp98 = icmp ult i32 %inc106, %181
  br i1 %cmp98, label %if.end103.for.body100_crit_edge, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end103.for.body100_crit_edge:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body100

cleanup:                                          ; preds = %if.end103.cleanup_crit_edge, %for.body100.cleanup_crit_edge, %for.end95.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %esas2r_initmem_alloc.exit293, %esas2r_initmem_alloc.exit275, %if.then54.cleanup_crit_edge, %if.then25, %if.then18, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then12 ], [ false, %if.then18 ], [ false, %if.then25 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then54.cleanup_crit_edge ], [ false, %esas2r_initmem_alloc.exit275 ], [ false, %esas2r_initmem_alloc.exit293 ], [ true, %if.end81.cleanup_crit_edge ], [ true, %for.end95.cleanup_crit_edge ], [ %call101, %if.end103.cleanup_crit_edge ], [ %call101, %for.body100.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_adapter_tasklet(i32 noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_disable_chip_interrupts(ptr noundef %a) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %dis_ints_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt, ptr %dis_ints_cnt, i32 1, ptr elementtype(i32) %dis_ints_cnt) #10, !srcloc !195
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !198
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_check_adapter(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %entry.skip_chip_reset_crit_edge

entry.skip_chip_reset_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_chip_reset

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !198
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 66060
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call7 = tail call i32 @jiffies_to_msecs(i32 noundef %8) #10
  br label %while.cond

while.cond:                                       ; preds = %if.end45.while.cond_crit_edge, %do.body
  tail call void @esas2r_force_interrupt(ptr noundef %a) #10
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 66688
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp eq i32 %11, -1
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %call17 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #10
  %sub = sub i32 %call17, %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %sub)
  %cmp18 = icmp ugt i32 %sub, 2000
  br i1 %cmp18, label %if.then19, label %if.then16.if.end45_crit_edge

if.then16.if.end45_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  %call.i = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.46) #10
  br label %cleanup338

if.else:                                          ; preds = %while.cond
  %13 = tail call i32 @llvm.bswap.i32(i32 %11)
  %and = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else.if.end45_crit_edge, label %if.then23

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then23:                                        ; preds = %if.else
  %and24 = and i32 %13, 458752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %15, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %11) #10, !srcloc !198
  %16 = zext i32 %and24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %and24, label %if.else40 [
    i32 0, label %if.then32
    i32 65536, label %if.then36
  ]

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 24, ptr noundef %flags) #10
  br label %do.body54

if.then36:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %flags) #10
  br label %do.body54

if.else40:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  %call.i437 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.47) #10
  br label %cleanup338

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.then16.if.end45_crit_edge
  %call47 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %call48 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #10
  %sub49 = sub i32 %call48, %call7
  %cmp50 = icmp ugt i32 %sub49, 180000
  br i1 %cmp50, label %if.then51, label %if.end45.while.cond_crit_edge

if.end45.while.cond_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  %call.i439 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48) #10
  br label %cleanup338

do.body54:                                        ; preds = %if.then36, %if.then32
  %.sink = phi i16 [ 1024, %if.then36 ], [ 128, %if.then32 ]
  %esas2r_build_sg_list_prd.sink = phi ptr [ @esas2r_build_sg_list_prd, %if.then36 ], [ @esas2r_build_sg_list_sge, %if.then32 ]
  %max_vdareq_size38 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 39
  %18 = ptrtoint ptr %max_vdareq_size38 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink, ptr %max_vdareq_size38, align 4
  %build_sgl39 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %19 = ptrtoint ptr %build_sgl39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %esas2r_build_sg_list_prd.sink, ptr %build_sgl39, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr58 = getelementptr i8, ptr %21, i32 66656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 268435456) #10, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %call60 = tail call i32 @jiffies_to_msecs(i32 noundef %22) #10
  br label %while.cond61

while.cond61:                                     ; preds = %if.end80.while.cond61_crit_edge, %do.body54
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr66 = getelementptr i8, ptr %24, i32 66688
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  %26 = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool72.not = icmp eq i32 %26, 0
  br i1 %tobool72.not, label %if.end80, label %do.body74

do.body74:                                        ; preds = %while.cond61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr78 = getelementptr i8, ptr %28, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %25) #10, !srcloc !198
  br label %skip_chip_reset

if.end80:                                         ; preds = %while.cond61
  %call82 = tail call i32 @schedule_timeout_interruptible(i32 noundef 5) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %call83 = tail call i32 @jiffies_to_msecs(i32 noundef %29) #10
  %sub84 = sub i32 %call83, %call60
  %cmp85 = icmp ugt i32 %sub84, 3000
  br i1 %cmp85, label %if.end80.skip_chip_reset_crit_edge, label %if.end80.while.cond61_crit_edge

if.end80.while.cond61_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond61

if.end80.skip_chip_reset_crit_edge:               ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_chip_reset

skip_chip_reset:                                  ; preds = %if.end80.skip_chip_reset_crit_edge, %do.body74, %entry.skip_chip_reset_crit_edge
  %regs91 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %30 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs91, align 4
  %add.ptr92 = getelementptr i8, ptr %31, i32 16428
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  %33 = and i32 %32, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs91, align 4
  %add.ptr102 = getelementptr i8, ptr %35, i32 16428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %33) #10, !srcloc !198
  %36 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs91, align 4
  %add.ptr107 = getelementptr i8, ptr %37, i32 16508
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  %39 = and i32 %38, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs91, align 4
  %add.ptr117 = getelementptr i8, ptr %41, i32 16508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %39) #10, !srcloc !198
  %phys_addr = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 2
  %42 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %phys_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %conv = trunc i64 %43 to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %45 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs91, align 4
  %add.ptr124 = getelementptr i8, ptr %46, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %44) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %shr = lshr i64 %43, 32
  %conv130 = trunc i64 %shr to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv130)
  %48 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs91, align 4
  %add.ptr132 = getelementptr i8, ptr %49, i32 16388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %47) #10, !srcloc !198
  %phys_addr134 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 2
  %50 = ptrtoint ptr %phys_addr134 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %phys_addr134, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %conv139 = trunc i64 %51 to i32
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv139)
  %53 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs91, align 4
  %add.ptr141 = getelementptr i8, ptr %54, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %52) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %shr146 = lshr i64 %51, 32
  %conv148 = trunc i64 %shr146 to i32
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv148)
  %56 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs91, align 4
  %add.ptr150 = getelementptr i8, ptr %57, i32 16468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %55) #10, !srcloc !198
  %uncached_phys = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 23
  %58 = ptrtoint ptr %uncached_phys to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %uncached_phys, align 8
  %outbound_copy = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 10
  %60 = ptrtoint ptr %outbound_copy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %outbound_copy, align 4
  %uncached = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 24
  %62 = ptrtoint ptr %uncached to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %uncached, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %63 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv152 = sext i32 %sub.ptr.sub to i64
  %add = add i64 %59, %conv152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %conv157 = trunc i64 %add to i32
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv157)
  %65 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs91, align 4
  %add.ptr159 = getelementptr i8, ptr %66, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %64) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void @arm_heavy_mb() #10
  %shr164 = lshr i64 %add, 32
  %conv166 = trunc i64 %shr164 to i32
  %67 = tail call i32 @llvm.bswap.i32(i32 %conv166)
  %68 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs91, align 4
  %add.ptr168 = getelementptr i8, ptr %69, i32 16476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %67) #10, !srcloc !198
  %list_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 36
  %70 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %list_size, align 8
  %sub170 = add i32 %71, -1
  %last_read = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 38
  %72 = ptrtoint ptr %last_read to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub170, ptr %last_read, align 8
  %last_write = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 37
  %73 = ptrtoint ptr %last_write to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub170, ptr %last_write, align 4
  %74 = ptrtoint ptr %outbound_copy to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %outbound_copy, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %sub170, ptr %75, align 4
  tail call void @_set_bit(i32 noundef 23, ptr noundef %flags) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %last_write to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %last_write, align 4
  %or = or i32 %78, 16384
  %79 = tail call i32 @llvm.bswap.i32(i32 %or)
  %80 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs91, align 4
  %add.ptr178 = getelementptr i8, ptr %81, i32 16408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %79) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %last_write to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %last_write, align 4
  %or184 = or i32 %83, 16384
  %84 = tail call i32 @llvm.bswap.i32(i32 %or184)
  %85 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs91, align 4
  %add.ptr186 = getelementptr i8, ptr %86, i32 16492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %84) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %last_write to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %last_write, align 4
  %or192 = or i32 %88, 16384
  %89 = tail call i32 @llvm.bswap.i32(i32 %or192)
  %90 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs91, align 4
  %add.ptr194 = getelementptr i8, ptr %91, i32 16412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 %89) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %92 = ptrtoint ptr %last_write to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %last_write, align 4
  %or200 = or i32 %93, 16384
  %94 = tail call i32 @llvm.bswap.i32(i32 %or200)
  %95 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs91, align 4
  %add.ptr202 = getelementptr i8, ptr %96, i32 16488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %94) #10, !srcloc !198
  %97 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs91, align 4
  %add.ptr207 = getelementptr i8, ptr %98, i32 16424
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %100 = and i32 %99, -252641281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %101 = or i32 %100, 131072
  %102 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs91, align 4
  %add.ptr219 = getelementptr i8, ptr %103, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 %101) #10, !srcloc !198
  %104 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs91, align 4
  %add.ptr224 = getelementptr i8, ptr %105, i32 16504
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %107 = and i32 %106, -252641281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %108 = or i32 %107, 131072
  %109 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs91, align 4
  %add.ptr236 = getelementptr i8, ptr %110, i32 16504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %108) #10, !srcloc !198
  %111 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs91, align 4
  %add.ptr241 = getelementptr i8, ptr %112, i32 16428
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr241) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  %114 = and i32 %113, 268370048
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  %116 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %list_size, align 8
  %shl = shl i32 %117, 16
  %or248 = or i32 %shl, %115
  %or249 = or i32 %or248, 32800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %118 = tail call i32 @llvm.bswap.i32(i32 %or249)
  %119 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs91, align 4
  %add.ptr254 = getelementptr i8, ptr %120, i32 16428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 %118) #10, !srcloc !198
  %121 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs91, align 4
  %add.ptr259 = getelementptr i8, ptr %122, i32 16508
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr259) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %124 = and i32 %123, 268370048
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  %126 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %list_size, align 8
  %shl266 = shl i32 %127, 16
  %or267 = or i32 %shl266, %125
  %or268 = or i32 %or267, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %128 = tail call i32 @llvm.bswap.i32(i32 %or268)
  %129 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs91, align 4
  %add.ptr273 = getelementptr i8, ptr %130, i32 16508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr273, i32 %128) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %131 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs91, align 4
  %add.ptr279 = getelementptr i8, ptr %132, i32 66656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr279, i32 65536) #10, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %call281 = tail call i32 @jiffies_to_msecs(i32 noundef %133) #10
  br label %while.cond282

while.cond282:                                    ; preds = %if.end301.while.cond282_crit_edge, %skip_chip_reset
  %134 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs91, align 4
  %add.ptr287 = getelementptr i8, ptr %135, i32 66688
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr287) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %137 = and i32 %136, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool293.not = icmp eq i32 %137, 0
  br i1 %tobool293.not, label %if.end301, label %do.body295

do.body295:                                       ; preds = %while.cond282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %138 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs91, align 4
  %add.ptr299 = getelementptr i8, ptr %139, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr299, i32 %136) #10, !srcloc !198
  %140 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs91, align 4
  %add.ptr315 = getelementptr i8, ptr %141, i32 66660
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr315) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %143 = and i32 %142, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool321.not = icmp eq i32 %143, 0
  %flags2324 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  br i1 %tobool321.not, label %if.else323, label %if.then322

if.end301:                                        ; preds = %while.cond282
  %call303 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %call304 = tail call i32 @jiffies_to_msecs(i32 noundef %144) #10
  %sub305 = sub i32 %call304, %call281
  %cmp306 = icmp ugt i32 %sub305, 3000
  br i1 %cmp306, label %if.then308, label %if.end301.while.cond282_crit_edge

if.end301.while.cond282_crit_edge:                ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond282

if.then308:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  %call.i441 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.49) #10
  br label %cleanup338

if.then322:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags2324) #10
  br label %do.body326

if.else323:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags2324) #10
  br label %do.body326

do.body326:                                       ; preds = %if.else323, %if.then322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %145 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs91, align 4
  %add.ptr330 = getelementptr i8, ptr %146, i32 16524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 16777216) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %147 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs91, align 4
  %add.ptr336 = getelementptr i8, ptr %148, i32 66692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr336, i32 -16517120) #10, !srcloc !198
  br label %cleanup338

cleanup338:                                       ; preds = %do.body326, %if.then308, %if.then51, %if.else40, %if.then19
  %retval.1 = phi i1 [ true, %do.body326 ], [ false, %if.then308 ], [ false, %if.then19 ], [ false, %if.then51 ], [ false, %if.else40 ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_init_adapter_hw(ptr noundef %a, i1 noundef zeroext %init_poll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %call5 = tail call zeroext i1 @esas2r_nvram_read_direct(ptr noundef %a) #10
  br i1 %call5, label %if.then4.if.end9_crit_edge, label %if.then6

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.51) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call zeroext i1 @esas2r_init_msgs(ptr noundef %a)
  br i1 %call10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  %call.i = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.52) #10
  br label %exit

if.end13:                                         ; preds = %if.end9
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %6 = load i32, ptr @num_ae_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp220.not = icmp eq i32 %6, 0
  br i1 %cmp220.not, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %first_ae_req = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 35
  %7 = ptrtoint ptr %first_ae_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %first_ae_req, align 4
  %queue_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %rq.0221 = phi ptr [ %8, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  tail call void @esas2r_build_ae_req(ptr noundef %a, ptr noundef %rq.0221) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #10
  tail call void @esas2r_start_vda_request(ptr noundef %a, ptr noundef %rq.0221) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call2.i) #10
  %inc = add nuw i32 %i.0222, 1
  %incdec.ptr = getelementptr %struct.esas2r_request, ptr %rq.0221, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @num_ae_requests to i32))
  %9 = load i32, ptr @num_ae_requests, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end13.for.end_crit_edge
  %flash_rev = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %10 = ptrtoint ptr %flash_rev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flash_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %if.then17, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call zeroext i1 @esas2r_read_flash_rev(ptr noundef %a) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end.if.end19_crit_edge
  %image_type = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %12 = ptrtoint ptr %image_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %image_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call zeroext i1 @esas2r_read_image_type(ptr noundef %a) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %fw_version = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 29
  %14 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp25 = icmp eq i32 %15, 0
  %fw_rev = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 49
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %fw_rev to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fw_rev, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %15, 16
  %conv31 = and i32 %shr, 255
  %17 = lshr i32 %15, 24
  %call39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %fw_rev, ptr noundef nonnull @.str.53, i32 noundef %conv31, i32 noundef %17)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then26
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool43.not = icmp eq i32 %20, 0
  br i1 %tobool43.not, label %if.end40.if.end48_crit_edge, label %land.lhs.true

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end40
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool46.not = icmp eq i32 %23, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end48_crit_edge, label %if.then47

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true
  %dis_ints_cnt.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #10, !srcloc !236
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 269484032) #10, !srcloc !198
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  tail call void @esas2r_disc_initialize(ptr noundef %a) #10
  br i1 %init_poll, label %if.then50, label %if.end48.if.end90_crit_edge

if.end48.if.end90_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then50:                                        ; preds = %if.end48
  %disc_start_time = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 45
  %27 = ptrtoint ptr %disc_start_time to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %disc_start_time, align 4
  tail call void @_set_bit(i32 noundef 15, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags) #10
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool55.not = icmp eq i32 %31, 0
  br i1 %tobool55.not, label %if.then50.if.end57_crit_edge, label %if.then56

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %disable_cnt, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disable_cnt, ptr %disable_cnt, i32 1, ptr elementtype(i32) %disable_cnt) #10, !srcloc !239
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then50.if.end57_crit_edge
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags, align 4
  %35 = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool60.not223 = icmp eq i32 %35, 0
  br i1 %tobool60.not223, label %if.end57.while.end_crit_edge, label %if.end57.while.body_crit_edge

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  br label %while.body

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end81.while.body_crit_edge, %if.end57.while.body_crit_edge
  %nexttick.0225 = phi i32 [ %spec.select, %if.end81.while.body_crit_edge ], [ 100, %if.end57.while.body_crit_edge ]
  %currtime.0224 = phi i32 [ %call63, %if.end81.while.body_crit_edge ], [ %28, %if.end57.while.body_crit_edge ]
  %call62 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %call63 = tail call i32 @jiffies_to_msecs(i32 noundef %36) #10
  %sub = sub i32 %call63, %currtime.0224
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool66.not = icmp eq i32 %39, 0
  br i1 %tobool66.not, label %if.then67, label %while.body.if.end68_crit_edge

while.body.if.end68_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then67:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @esas2r_disc_check_for_work(ptr noundef %a) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %while.body.if.end68_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nexttick.0225, i32 %sub)
  %cmp69.not = icmp ugt i32 %nexttick.0225, %sub
  br i1 %cmp69.not, label %if.end68.if.end73_crit_edge, label %if.then71

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %add72 = add i32 %nexttick.0225, 100
  tail call void @esas2r_timer_tick(ptr noundef %a) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68.if.end73_crit_edge
  %nexttick.1 = phi i32 [ %add72, %if.then71 ], [ %nexttick.0225, %if.end68.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nexttick.1, i32 %sub)
  %cmp74 = icmp ugt i32 %nexttick.1, %sub
  %sub77 = select i1 %cmp74, i32 %sub, i32 0
  %spec.select = sub i32 %nexttick.1, %sub77
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags, align 4
  %42 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end73.if.then80_crit_edge

if.end73.if.then80_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

lor.lhs.false.i:                                  ; preds = %if.end73
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %45 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i = icmp eq i32 %45, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.then80_crit_edge

lor.lhs.false.i.if.then80_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool7.not.i = icmp eq i32 %48, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false4.i.if.then80_crit_edge

lor.lhs.false4.i.if.then80_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false4.i
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags, align 4
  %51 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool11.not.i = icmp eq i32 %51, 0
  br i1 %tobool11.not.i, label %esas2r_is_tasklet_pending.exit, label %lor.lhs.false8.i.if.then80_crit_edge

lor.lhs.false8.i.if.then80_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

esas2r_is_tasklet_pending.exit:                   ; preds = %lor.lhs.false8.i
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags, align 4
  %and1.i25.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25.i)
  %tobool14.i.not = icmp eq i32 %and1.i25.i, 0
  br i1 %tobool14.i.not, label %esas2r_is_tasklet_pending.exit.if.end81_crit_edge, label %esas2r_is_tasklet_pending.exit.if.then80_crit_edge

esas2r_is_tasklet_pending.exit.if.then80_crit_edge: ; preds = %esas2r_is_tasklet_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

esas2r_is_tasklet_pending.exit.if.end81_crit_edge: ; preds = %esas2r_is_tasklet_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then80:                                        ; preds = %esas2r_is_tasklet_pending.exit.if.then80_crit_edge, %lor.lhs.false8.i.if.then80_crit_edge, %lor.lhs.false4.i.if.then80_crit_edge, %lor.lhs.false.i.if.then80_crit_edge, %if.end73.if.then80_crit_edge
  tail call void @esas2r_do_tasklet_tasks(ptr noundef %a) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %esas2r_is_tasklet_pending.exit.if.end81_crit_edge
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags, align 4
  %56 = and i32 %55, 16384
  %tobool60.not = icmp eq i32 %56, 0
  br i1 %tobool60.not, label %if.end81.while.end_crit_edge, label %if.end81.while.body_crit_edge

if.end81.while.body_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end81.while.end_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end81.while.end_crit_edge, %if.end57.while.end_crit_edge
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags, align 4
  %59 = and i32 %58, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool84.not = icmp eq i32 %59, 0
  br i1 %tobool84.not, label %while.end.if.end87_crit_edge, label %if.then85

while.end.if.end87_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then85:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %disable_cnt86 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i200 = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_cnt86, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %disable_cnt86, i32 1, i32 3, i32 1) #10
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disable_cnt86, ptr %disable_cnt86, i32 1, ptr elementtype(i32) %disable_cnt86) #10, !srcloc !191
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %while.end.if.end87_crit_edge
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %flags) #10
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %if.end48.if.end90_crit_edge
  tail call void @esas2r_targ_db_report_changes(ptr noundef %a) #10
  tail call void @esas2r_disc_start_waiting(ptr noundef %a) #10
  %int_mask = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 9
  %61 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4112, ptr %int_mask, align 8
  %dis_ints_cnt.i209 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i210 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i209, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i209, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i209, ptr %dis_ints_cnt.i209, i32 1, ptr elementtype(i32) %dis_ints_cnt.i209) #10, !srcloc !236
  %asmresult.i.i.i.i.i211 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i211)
  %cmp.i212 = icmp eq i32 %asmresult.i.i.i.i.i211, 0
  br i1 %cmp.i212, label %do.body.i215, label %if.end90.esas2r_enable_chip_interrupts.exit216_crit_edge

if.end90.esas2r_enable_chip_interrupts.exit216_crit_edge: ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_enable_chip_interrupts.exit216

do.body.i215:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %regs.i213 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %63 = ptrtoint ptr %regs.i213 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i213, align 4
  %add.ptr.i214 = getelementptr i8, ptr %64, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214, i32 269484032) #10, !srcloc !198
  br label %esas2r_enable_chip_interrupts.exit216

esas2r_enable_chip_interrupts.exit216:            ; preds = %do.body.i215, %if.end90.esas2r_enable_chip_interrupts.exit216_crit_edge
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags, align 4
  %67 = and i32 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i218 = icmp eq i32 %67, 0
  br i1 %tobool.not.i218, label %land.lhs.true.i, label %esas2r_enable_chip_interrupts.exit216.if.else.i_crit_edge

esas2r_enable_chip_interrupts.exit216.if.else.i_crit_edge: ; preds = %esas2r_enable_chip_interrupts.exit216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %esas2r_enable_chip_interrupts.exit216
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags, align 4
  %70 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.not.i219 = icmp eq i32 %70, 0
  br i1 %tobool3.not.i219, label %land.lhs.true4.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %nvram.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %71 = ptrtoint ptr %nvram.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nvram.i, align 4
  %options2.i = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %options2.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %options2.i, align 1
  %75 = and i8 %74, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool5.not.i = icmp eq i8 %75, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #10
  br label %exit

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %esas2r_enable_chip_interrupts.exit216.if.else.i_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #10
  br label %exit

exit:                                             ; preds = %if.else.i, %if.then.i, %if.then11, %entry.exit_crit_edge
  %rslt.0.off0 = phi i1 [ false, %entry.exit_crit_edge ], [ false, %if.then11 ], [ true, %if.then.i ], [ true, %if.else.i ]
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags, align 4
  %78 = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool93.not = icmp eq i32 %78, 0
  br i1 %tobool93.not, label %exit.if.else103_crit_edge, label %land.lhs.true94

exit.if.else103_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else103

land.lhs.true94:                                  ; preds = %exit
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags, align 4
  %81 = and i32 %80, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool97.not = icmp eq i32 %81, 0
  br i1 %tobool97.not, label %land.lhs.true94.if.else103_crit_edge, label %if.then98

land.lhs.true94.if.else103_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else103

if.then98:                                        ; preds = %land.lhs.true94
  br i1 %rslt.0.off0, label %if.then98.cleanup_crit_edge, label %if.then100

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then100:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %cleanup

if.else103:                                       ; preds = %land.lhs.true94.if.else103_crit_edge, %exit.if.else103_crit_edge
  br i1 %rslt.0.off0, label %if.else103.if.end108_crit_edge, label %if.then105

if.else103.if.end108_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then105:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flags) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.else103.if.end108_crit_edge
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags, align 4
  %84 = and i32 %83, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool111.not = icmp eq i32 %84, 0
  br i1 %tobool111.not, label %if.end108.cleanup_crit_edge, label %if.then112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then112:                                       ; preds = %if.end108
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %flags) #10
  %disable_cnt114 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i207 = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_cnt114, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %disable_cnt114, i32 1, i32 3, i32 1) #10
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disable_cnt114, ptr %disable_cnt114, i32 1, ptr elementtype(i32) %disable_cnt114) #10, !srcloc !236
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %85, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp116 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp116, label %if.then118, label %if.then112.cleanup_crit_edge

if.then112.cleanup_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then118:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @esas2r_do_deferred_processes(ptr noundef %a) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %if.then112.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.then100, %if.then98.cleanup_crit_edge, %do.body.i, %if.then47.cleanup_crit_edge
  %retval.0 = phi i1 [ %rslt.0.off0, %if.end108.cleanup_crit_edge ], [ %rslt.0.off0, %if.then118 ], [ %rslt.0.off0, %if.then112.cleanup_crit_edge ], [ true, %if.then98.cleanup_crit_edge ], [ false, %if.then100 ], [ true, %if.then47.cleanup_crit_edge ], [ true, %do.body.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_claim_interrupts(ptr noundef %a) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 82
  %0 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp, i32 128, i32 0
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %2 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcid, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 58
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.81, i32 noundef %5, ptr noundef %a, ptr noundef %name, i32 noundef %spec.select) #10
  %6 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcid, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq2, align 4
  %10 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp eq i32 %11, 0
  %cond = select i1 %cmp4, ptr @esas2r_interrupt, ptr @esas2r_msi_interrupt
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull %cond, ptr noundef null, i32 noundef %spec.select, ptr noundef %name, ptr noundef %a) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcid, align 4
  %irq10 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq10, align 4
  %call11 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef %15) #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags2) #10
  %16 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcid, align 4
  %irq14 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq14, align 4
  %call15 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.83, i32 noundef %19, i32 noundef %spec.select) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_enable_chip_interrupts(ptr noundef %a) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %dis_ints_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt, ptr %dis_ints_cnt, i32 1, ptr elementtype(i32) %dis_ints_cnt) #10, !srcloc !236
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 269484032) #10, !srcloc !198
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_kickoff_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_adapter_power_down(ptr noundef %a, i32 noundef %power_management) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags2, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_management)
  %tobool3.not = icmp eq i32 %power_management, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %timer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 59
  %call5 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %tasklet = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 54
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @esas2r_power_down(ptr noundef %a)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %__ms.0275 = phi i32 [ 500, %if.end ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0275, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %while.body.if.end7_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %while.body.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %sysfs_fw_created = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 93
  %7 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %sysfs_fw_created, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %host = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 8
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @bin_attr_fw) #10
  %10 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load11 = load i8, ptr %sysfs_fw_created, align 4
  %bf.clear = and i8 %bf.load11, 127
  store i8 %bf.clear, ptr %sysfs_fw_created, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %11 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load13 = load i8, ptr %sysfs_fw_created, align 4
  %12 = and i8 %bf.load13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %if.end12.if.end26_crit_edge, label %if.then18

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %host19 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %13 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host19, align 8
  %shost_dev20 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev20, ptr noundef nonnull @bin_attr_fs) #10
  %15 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load23 = load i8, ptr %sysfs_fw_created, align 4
  %bf.clear24 = and i8 %bf.load23, -65
  store i8 %bf.clear24, ptr %sysfs_fw_created, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end12.if.end26_crit_edge
  %16 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load27 = load i8, ptr %sysfs_fw_created, align 4
  %17 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool31.not = icmp eq i8 %17, 0
  br i1 %tobool31.not, label %if.end26.if.end40_crit_edge, label %if.then32

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %host33 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %18 = ptrtoint ptr %host33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host33, align 8
  %shost_dev34 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev34, ptr noundef nonnull @bin_attr_vda) #10
  %20 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load37 = load i8, ptr %sysfs_fw_created, align 4
  %bf.clear38 = and i8 %bf.load37, -33
  store i8 %bf.clear38, ptr %sysfs_fw_created, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.end26.if.end40_crit_edge
  %21 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load41 = load i8, ptr %sysfs_fw_created, align 4
  %22 = and i8 %bf.load41, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool45.not = icmp eq i8 %22, 0
  br i1 %tobool45.not, label %if.end40.if.end54_crit_edge, label %if.then46

if.end40.if.end54_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %host47 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %23 = ptrtoint ptr %host47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host47, align 8
  %shost_dev48 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev48, ptr noundef nonnull @bin_attr_hw) #10
  %25 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load51 = load i8, ptr %sysfs_fw_created, align 4
  %bf.clear52 = and i8 %bf.load51, -17
  store i8 %bf.clear52, ptr %sysfs_fw_created, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.end40.if.end54_crit_edge
  %26 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load55 = load i8, ptr %sysfs_fw_created, align 4
  %27 = and i8 %bf.load55, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool59.not = icmp eq i8 %27, 0
  br i1 %tobool59.not, label %if.end54.if.end68_crit_edge, label %if.then60

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %host61 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %28 = ptrtoint ptr %host61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host61, align 8
  %shost_dev62 = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev62, ptr noundef nonnull @bin_attr_live_nvram) #10
  %30 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load65 = load i8, ptr %sysfs_fw_created, align 4
  %bf.clear66 = and i8 %bf.load65, -9
  store i8 %bf.clear66, ptr %sysfs_fw_created, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %if.end54.if.end68_crit_edge
  %31 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load69 = load i8, ptr %sysfs_fw_created, align 4
  %32 = and i8 %bf.load69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool73.not = icmp eq i8 %32, 0
  br i1 %tobool73.not, label %if.end68.if.end82_crit_edge, label %if.then74

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %host75 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %33 = ptrtoint ptr %host75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host75, align 8
  %shost_dev76 = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev76, ptr noundef nonnull @bin_attr_default_nvram) #10
  %35 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load79 = load i8, ptr %sysfs_fw_created, align 4
  %bf.clear80 = and i8 %bf.load79, -5
  store i8 %bf.clear80, ptr %sysfs_fw_created, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then74, %if.end68.if.end82_crit_edge
  %36 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags2, align 4
  %38 = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool85.not = icmp eq i32 %38, 0
  br i1 %tobool85.not, label %if.end82.if.end93_crit_edge, label %if.then86

if.end82.if.end93_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %39 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcid, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %call88 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %42) #10
  %43 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcid, align 4
  %irq90 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 46
  %45 = ptrtoint ptr %irq90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq90, align 4
  %call91 = tail call ptr @free_irq(i32 noundef %46, ptr noundef %a) #10
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags2) #10
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %if.end82.if.end93_crit_edge
  %47 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags2, align 4
  %49 = and i32 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool96.not = icmp eq i32 %49, 0
  br i1 %tobool96.not, label %if.end93.if.end100_crit_edge, label %if.then97

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %pcid98 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %50 = ptrtoint ptr %pcid98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcid98, align 4
  tail call void @pci_disable_msi(ptr noundef %51) #10
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags2) #10
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end93.if.end100_crit_edge
  %virt_addr = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 1
  %52 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %virt_addr, align 8
  %tobool101.not = icmp eq ptr %53, null
  br i1 %tobool101.not, label %if.end100.if.end104_crit_edge, label %if.then102

if.end100.if.end104_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then102:                                       ; preds = %if.end100
  %54 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virt_addr, align 8
  %cmp.i = icmp eq ptr %55, null
  br i1 %cmp.i, label %if.then102.if.end104_crit_edge, label %if.end.i

if.then102.if.end104_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.end.i:                                         ; preds = %if.then102
  %phys_addr.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 2
  %56 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %phys_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %tobool.not.i = icmp eq i64 %57, 0
  %esas2r_data6.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 4
  %58 = ptrtoint ptr %esas2r_data6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %esas2r_data6.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %59 to i32
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %60 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcid.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %esas2r_param.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 5
  %62 = ptrtoint ptr %esas2r_param.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %esas2r_param.i, align 8
  %64 = trunc i64 %57 to i32
  %sub.ptr.sub.neg.i = sub i32 %64, %sub.ptr.lhs.cast.i
  %conv5.i = add i32 %sub.ptr.sub.neg.i, %sub.ptr.rhs.cast.i
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %63, ptr noundef %59, i32 noundef %conv5.i, i32 noundef 0) #10
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %59) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then1.i
  %65 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %virt_addr, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.end7.i, %if.then102.if.end104_crit_edge, %if.end100.if.end104_crit_edge
  %virt_addr105 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 1
  %66 = ptrtoint ptr %virt_addr105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virt_addr105, align 8
  %tobool106.not = icmp eq ptr %67, null
  br i1 %tobool106.not, label %if.end104.if.end109_crit_edge, label %if.then107

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then107:                                       ; preds = %if.end104
  %68 = ptrtoint ptr %virt_addr105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %virt_addr105, align 8
  %cmp.i222 = icmp eq ptr %69, null
  br i1 %cmp.i222, label %if.then107.if.end109_crit_edge, label %if.end.i226

if.then107.if.end109_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.end.i226:                                      ; preds = %if.then107
  %phys_addr.i223 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 2
  %70 = ptrtoint ptr %phys_addr.i223 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %phys_addr.i223, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool.not.i224 = icmp eq i64 %71, 0
  %esas2r_data6.i225 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 4
  %72 = ptrtoint ptr %esas2r_data6.i225 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %esas2r_data6.i225, align 4
  br i1 %tobool.not.i224, label %if.else.i235, label %if.then1.i234

if.then1.i234:                                    ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i227 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i228 = ptrtoint ptr %73 to i32
  %pcid.i229 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %74 = ptrtoint ptr %pcid.i229 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pcid.i229, align 4
  %dev.i230 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %esas2r_param.i231 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 42, i32 5
  %76 = ptrtoint ptr %esas2r_param.i231 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %esas2r_param.i231, align 8
  %78 = trunc i64 %71 to i32
  %sub.ptr.sub.neg.i232 = sub i32 %78, %sub.ptr.lhs.cast.i227
  %conv5.i233 = add i32 %sub.ptr.sub.neg.i232, %sub.ptr.rhs.cast.i228
  tail call void @dma_free_attrs(ptr noundef %dev.i230, i32 noundef %77, ptr noundef %73, i32 noundef %conv5.i233, i32 noundef 0) #10
  br label %if.end7.i236

if.else.i235:                                     ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %73) #10
  br label %if.end7.i236

if.end7.i236:                                     ; preds = %if.else.i235, %if.then1.i234
  %79 = ptrtoint ptr %virt_addr105 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %virt_addr105, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.end7.i236, %if.then107.if.end109_crit_edge, %if.end104.if.end109_crit_edge
  %free_sg_list_head = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %80 = ptrtoint ptr %free_sg_list_head to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %free_sg_list_head, align 8
  %cmp.not276 = icmp eq ptr %81, %free_sg_list_head
  br i1 %cmp.not276, label %if.end109.for.end_crit_edge, label %for.body.lr.ph

if.end109.for.end_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end109
  %pcid.i246 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  br label %for.body

for.body:                                         ; preds = %esas2r_initmem_free.exit254.for.body_crit_edge, %for.body.lr.ph
  %memdesc.0277 = phi ptr [ %81, %for.body.lr.ph ], [ %next.0, %esas2r_initmem_free.exit254.for.body_crit_edge ]
  %82 = ptrtoint ptr %memdesc.0277 to i32
  call void @__asan_load4_noabort(i32 %82)
  %next.0 = load ptr, ptr %memdesc.0277, align 8
  %virt_addr.i238 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.0277, i32 0, i32 1
  %83 = ptrtoint ptr %virt_addr.i238 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %virt_addr.i238, align 8
  %cmp.i239 = icmp eq ptr %84, null
  br i1 %cmp.i239, label %for.body.esas2r_initmem_free.exit254_crit_edge, label %if.end.i243

for.body.esas2r_initmem_free.exit254_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_initmem_free.exit254

if.end.i243:                                      ; preds = %for.body
  %phys_addr.i240 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.0277, i32 0, i32 2
  %85 = ptrtoint ptr %phys_addr.i240 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %phys_addr.i240, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %tobool.not.i241 = icmp eq i64 %86, 0
  %esas2r_data6.i242 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.0277, i32 0, i32 4
  %87 = ptrtoint ptr %esas2r_data6.i242 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %esas2r_data6.i242, align 4
  br i1 %tobool.not.i241, label %if.else.i252, label %if.then1.i251

if.then1.i251:                                    ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i244 = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i245 = ptrtoint ptr %88 to i32
  %89 = ptrtoint ptr %pcid.i246 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcid.i246, align 4
  %dev.i247 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %esas2r_param.i248 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.0277, i32 0, i32 5
  %91 = ptrtoint ptr %esas2r_param.i248 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %esas2r_param.i248, align 8
  %93 = trunc i64 %86 to i32
  %sub.ptr.sub.neg.i249 = sub i32 %93, %sub.ptr.lhs.cast.i244
  %conv5.i250 = add i32 %sub.ptr.sub.neg.i249, %sub.ptr.rhs.cast.i245
  tail call void @dma_free_attrs(ptr noundef %dev.i247, i32 noundef %92, ptr noundef %88, i32 noundef %conv5.i250, i32 noundef 0) #10
  br label %if.end7.i253

if.else.i252:                                     ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %88) #10
  br label %if.end7.i253

if.end7.i253:                                     ; preds = %if.else.i252, %if.then1.i251
  %94 = ptrtoint ptr %virt_addr.i238 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %virt_addr.i238, align 8
  br label %esas2r_initmem_free.exit254

esas2r_initmem_free.exit254:                      ; preds = %if.end7.i253, %for.body.esas2r_initmem_free.exit254_crit_edge
  %cmp.not = icmp eq ptr %next.0, %free_sg_list_head
  br i1 %cmp.not, label %esas2r_initmem_free.exit254.for.end_crit_edge, label %esas2r_initmem_free.exit254.for.body_crit_edge

esas2r_initmem_free.exit254.for.body_crit_edge:   ; preds = %esas2r_initmem_free.exit254
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

esas2r_initmem_free.exit254.for.end_crit_edge:    ; preds = %esas2r_initmem_free.exit254
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %esas2r_initmem_free.exit254.for.end_crit_edge, %if.end109.for.end_crit_edge
  %vrq_mds_head = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 85
  %95 = ptrtoint ptr %vrq_mds_head to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vrq_mds_head, align 8
  %cmp134.not278 = icmp eq ptr %96, %vrq_mds_head
  br i1 %cmp134.not278, label %for.end.for.end144_crit_edge, label %for.body136.lr.ph

for.end.for.end144_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end144

for.body136.lr.ph:                                ; preds = %for.end
  %pcid.i263 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  br label %for.body136

for.body136:                                      ; preds = %list_del.exit.for.body136_crit_edge, %for.body136.lr.ph
  %memdesc.1279 = phi ptr [ %96, %for.body136.lr.ph ], [ %next.1, %list_del.exit.for.body136_crit_edge ]
  %97 = ptrtoint ptr %memdesc.1279 to i32
  call void @__asan_load4_noabort(i32 %97)
  %next.1 = load ptr, ptr %memdesc.1279, align 8
  %virt_addr.i255 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.1279, i32 0, i32 1
  %98 = ptrtoint ptr %virt_addr.i255 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %virt_addr.i255, align 8
  %cmp.i256 = icmp eq ptr %99, null
  br i1 %cmp.i256, label %for.body136.esas2r_initmem_free.exit271_crit_edge, label %if.end.i260

for.body136.esas2r_initmem_free.exit271_crit_edge: ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_initmem_free.exit271

if.end.i260:                                      ; preds = %for.body136
  %phys_addr.i257 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.1279, i32 0, i32 2
  %100 = ptrtoint ptr %phys_addr.i257 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %phys_addr.i257, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %101)
  %tobool.not.i258 = icmp eq i64 %101, 0
  %esas2r_data6.i259 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.1279, i32 0, i32 4
  %102 = ptrtoint ptr %esas2r_data6.i259 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %esas2r_data6.i259, align 4
  br i1 %tobool.not.i258, label %if.else.i269, label %if.then1.i268

if.then1.i268:                                    ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i261 = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast.i262 = ptrtoint ptr %103 to i32
  %104 = ptrtoint ptr %pcid.i263 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcid.i263, align 4
  %dev.i264 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %esas2r_param.i265 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %memdesc.1279, i32 0, i32 5
  %106 = ptrtoint ptr %esas2r_param.i265 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %esas2r_param.i265, align 8
  %108 = trunc i64 %101 to i32
  %sub.ptr.sub.neg.i266 = sub i32 %108, %sub.ptr.lhs.cast.i261
  %conv5.i267 = add i32 %sub.ptr.sub.neg.i266, %sub.ptr.rhs.cast.i262
  tail call void @dma_free_attrs(ptr noundef %dev.i264, i32 noundef %107, ptr noundef %103, i32 noundef %conv5.i267, i32 noundef 0) #10
  br label %if.end7.i270

if.else.i269:                                     ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %103) #10
  br label %if.end7.i270

if.end7.i270:                                     ; preds = %if.else.i269, %if.then1.i268
  %109 = ptrtoint ptr %virt_addr.i255 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %virt_addr.i255, align 8
  br label %esas2r_initmem_free.exit271

esas2r_initmem_free.exit271:                      ; preds = %if.end7.i270, %for.body136.esas2r_initmem_free.exit271_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %memdesc.1279) #10
  br i1 %call.i.i, label %if.end.i.i, label %esas2r_initmem_free.exit271.list_del.exit_crit_edge

esas2r_initmem_free.exit271.list_del.exit_crit_edge: ; preds = %esas2r_initmem_free.exit271
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %esas2r_initmem_free.exit271
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %memdesc.1279, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i, align 4
  %112 = ptrtoint ptr %memdesc.1279 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %memdesc.1279, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev1.i.i.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %113, ptr %111, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %esas2r_initmem_free.exit271.list_del.exit_crit_edge
  %116 = ptrtoint ptr %memdesc.1279 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 256 to ptr), ptr %memdesc.1279, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %memdesc.1279, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %memdesc.1279) #10
  %cmp134.not = icmp eq ptr %next.1, %vrq_mds_head
  br i1 %cmp134.not, label %list_del.exit.for.end144_crit_edge, label %list_del.exit.for.body136_crit_edge

list_del.exit.for.body136_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body136

list_del.exit.for.end144_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end144

for.end144:                                       ; preds = %list_del.exit.for.end144_crit_edge, %for.end.for.end144_crit_edge
  %first_ae_req = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 35
  %118 = ptrtoint ptr %first_ae_req to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %first_ae_req, align 4
  tail call void @kfree(ptr noundef %119) #10
  %120 = ptrtoint ptr %first_ae_req to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %first_ae_req, align 4
  %sg_list_mds = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 17
  %121 = ptrtoint ptr %sg_list_mds to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sg_list_mds, align 8
  tail call void @kfree(ptr noundef %122) #10
  %123 = ptrtoint ptr %sg_list_mds to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %sg_list_mds, align 8
  %req_table = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %124 = ptrtoint ptr %req_table to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %req_table, align 4
  tail call void @kfree(ptr noundef %125) #10
  %126 = ptrtoint ptr %req_table to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %req_table, align 4
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %127 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs, align 4
  %tobool148.not = icmp eq ptr %128, null
  br i1 %tobool148.not, label %for.end144.if.end151_crit_edge, label %if.end.i274

for.end144.if.end151_crit_edge:                   ; preds = %for.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.end.i274:                                      ; preds = %for.end144
  tail call void @iounmap(ptr noundef nonnull %128) #10
  %129 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %regs, align 4
  %pcid.i273 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %130 = ptrtoint ptr %pcid.i273 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pcid.i273, align 4
  tail call void @pci_release_region(ptr noundef %131, i32 noundef 2) #10
  %data_window.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 3
  %132 = ptrtoint ptr %data_window.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data_window.i, align 8
  %tobool3.not.i = icmp eq ptr %133, null
  br i1 %tobool3.not.i, label %if.end.i274.esas2r_unmap_regions.exit_crit_edge, label %if.then4.i

if.end.i274.esas2r_unmap_regions.exit_crit_edge:  ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_unmap_regions.exit

if.then4.i:                                       ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %133) #10
  br label %esas2r_unmap_regions.exit

esas2r_unmap_regions.exit:                        ; preds = %if.then4.i, %if.end.i274.esas2r_unmap_regions.exit_crit_edge
  %134 = ptrtoint ptr %data_window.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %data_window.i, align 8
  %135 = ptrtoint ptr %pcid.i273 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pcid.i273, align 4
  tail call void @pci_release_region(ptr noundef %136, i32 noundef 0) #10
  %137 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %regs, align 4
  %138 = ptrtoint ptr %data_window.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %data_window.i, align 8
  br label %if.end151

if.end151:                                        ; preds = %esas2r_unmap_regions.exit, %for.end144.if.end151_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esas2r_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.85) #10
  %tobool.not = icmp eq ptr %hostdata, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @esas2r_adapter_power_down(ptr noundef nonnull %hostdata, i32 noundef 1)
  %call2 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.86) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esas2r_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.87) #10
  %tobool.not = icmp eq ptr %hostdata, null
  br i1 %tobool.not, label %entry.error_exit_crit_edge, label %if.end

entry.error_exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_exit

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @esas2r_map_regions(ptr noundef nonnull %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.88) #10
  br label %error_exit

if.end5:                                          ; preds = %if.end
  %intr_mode = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 14, i32 50, i32 30
  %2 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %3, label %sw.default.i [
    i32 0, label %if.end5.use_legacy_interrupts.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.end5.use_legacy_interrupts.i_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %use_legacy_interrupts.i

use_legacy_interrupts.i:                          ; preds = %sw.default.i, %if.then.i, %if.end5.use_legacy_interrupts.i_crit_edge
  %5 = ptrtoint ptr %intr_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %intr_mode, align 4
  br label %esas2r_setup_interrupts.exit

sw.bb2.i:                                         ; preds = %if.end5
  %pcid.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 50, i32 12, i32 10, i32 3, i32 2
  %6 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcid.i, align 4
  %call.i = tail call i32 @pci_enable_msi(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 50, i32 12, i32 10, i32 3, i32 6
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call3.i = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef %9, i32 noundef %call.i) #10
  br label %use_legacy_interrupts.i

if.end.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %intr_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %intr_mode, align 4
  %flags2.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 49, i32 18
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags2.i) #10
  br label %esas2r_setup_interrupts.exit

sw.default.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @interrupt_mode to i32))
  %11 = load i32, ptr @interrupt_mode, align 4
  %call5.i = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef %11) #10
  br label %use_legacy_interrupts.i

esas2r_setup_interrupts.exit:                     ; preds = %if.end.i, %use_legacy_interrupts.i
  %dis_ints_cnt.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 49, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #10, !srcloc !195
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %do.body.i, label %esas2r_setup_interrupts.exit.esas2r_disable_chip_interrupts.exit_crit_edge

esas2r_setup_interrupts.exit.esas2r_disable_chip_interrupts.exit_crit_edge: ; preds = %esas2r_setup_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_disable_chip_interrupts.exit

do.body.i:                                        ; preds = %esas2r_setup_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 49, i32 16
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !198
  br label %esas2r_disable_chip_interrupts.exit

esas2r_disable_chip_interrupts.exit:              ; preds = %do.body.i, %esas2r_setup_interrupts.exit.esas2r_disable_chip_interrupts.exit_crit_edge
  %call6 = tail call zeroext i1 @esas2r_power_up(ptr noundef nonnull %hostdata, i1 noundef zeroext true)
  br i1 %call6, label %if.end8, label %esas2r_disable_chip_interrupts.exit.error_exit_crit_edge

esas2r_disable_chip_interrupts.exit.error_exit_crit_edge: ; preds = %esas2r_disable_chip_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_exit

if.end8:                                          ; preds = %esas2r_disable_chip_interrupts.exit
  tail call fastcc void @esas2r_claim_interrupts(ptr noundef nonnull %hostdata)
  %flags2 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 49, i32 18
  %15 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags2, align 4
  %17 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #10, !srcloc !236
  %asmresult.i.i.i.i.i30 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i30)
  %cmp.i31 = icmp eq i32 %asmresult.i.i.i.i.i30, 0
  br i1 %cmp.i31, label %do.body.i34, label %if.then11.esas2r_enable_chip_interrupts.exit_crit_edge

if.then11.esas2r_enable_chip_interrupts.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_enable_chip_interrupts.exit

do.body.i34:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %regs.i32 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 49, i32 16
  %19 = ptrtoint ptr %regs.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %20, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 269484032) #10, !srcloc !198
  br label %esas2r_enable_chip_interrupts.exit

esas2r_enable_chip_interrupts.exit:               ; preds = %do.body.i34, %if.then11.esas2r_enable_chip_interrupts.exit_crit_edge
  tail call void @esas2r_kickoff_timer(ptr noundef nonnull %hostdata) #10
  br label %error_exit

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.89) #10
  br label %error_exit

error_exit:                                       ; preds = %if.else, %esas2r_enable_chip_interrupts.exit, %esas2r_disable_chip_interrupts.exit.error_exit_crit_edge, %if.then3, %entry.error_exit_crit_edge
  %rez.0 = phi i32 [ -12, %if.then3 ], [ 0, %esas2r_enable_chip_interrupts.exit ], [ -12, %if.else ], [ -19, %entry.error_exit_crit_edge ], [ -12, %esas2r_disable_chip_interrupts.exit.error_exit_crit_edge ]
  %call14 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 1, ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef %rez.0) #10
  ret i32 %rez.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_set_degraded_mode(ptr noundef %a, ptr noundef %error_str) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef %error_str) #10
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_nvram_set_defaults(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_targ_db_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_ae_complete(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_force_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_build_sg_list_prd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_init_msgs(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %general_req = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26
  %vrq1.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 2
  %0 = ptrtoint ptr %vrq1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1.i, align 8
  %sg_table_head.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 6
  %2 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sg_table_head.i, ptr %sg_table_head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sg_table_head.i, ptr %prev.i.i, align 4
  %add.ptr.i = getelementptr %union.atto_vda_req, ptr %1, i32 1
  %4 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %4, align 8
  %interrupt_cb.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 14
  %6 = ptrtoint ptr %interrupt_cb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %interrupt_cb.i, align 8
  %comp_cb.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 13
  %7 = ptrtoint ptr %comp_cb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i, align 4
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 16
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %flags.i, align 8
  %timeout.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 8
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %timeout.i, align 4
  %req_stat.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 17
  %10 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %req_stat.i, align 1
  %req_type.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 10
  %11 = ptrtoint ptr %req_type.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %req_type.i, align 2
  %func_rsp.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 12
  %12 = ptrtoint ptr %func_rsp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %func_rsp.i, align 4
  %arrayidx3.i = getelementptr %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 12, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx3.i, align 4
  %vda_req_sz.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 18
  %14 = ptrtoint ptr %vda_req_sz.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %vda_req_sz.i, align 2
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %15 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req_table.i, align 4
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %18, 65535
  %arrayidx4.i = getelementptr ptr, ptr %16, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %general_req, ptr %arrayidx4.i, align 4
  %cmd_ref_no.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 28
  %20 = ptrtoint ptr %cmd_ref_no.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cmd_ref_no.i, align 2
  %inc.i = add i16 %21, 1
  store i16 %inc.i, ptr %cmd_ref_no.i, align 2
  %conv10.i = zext i16 %21 to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %22 = load i32, ptr %handle.i, align 1
  %conv13.i = and i32 %22, 65535
  %or.i = or i32 %conv13.i, %shl.i
  store i32 %or.i, ptr %handle.i, align 1
  %function.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %function.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %function.i, align 1
  %sense_len.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -4, ptr %sense_len.i, align 1
  %sg_list_offset.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %sg_list_offset.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sg_list_offset.i, align 1
  %chain_offset.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %chain_offset.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %chain_offset.i, align 1
  %flags15.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %flags15.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %flags15.i, align 1
  %28 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 8
  %reserved.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 8, i32 0, i32 3
  %29 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %reserved.i, align 1
  %vrq_md.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 3
  %30 = ptrtoint ptr %vrq_md.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vrq_md.i, align 4
  %phys_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %phys_addr.i, align 8
  %add.i = add i64 %33, 1024
  %34 = tail call i64 @llvm.bswap.i64(i64 %add.i) #10
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %28, align 1
  %36 = ptrtoint ptr %comp_cb.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @esas2r_dummy_complete, ptr %comp_cb.i, align 4
  %init_msg = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 27
  %37 = ptrtoint ptr %init_msg to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %init_msg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp = icmp eq i8 %38, 0
  %spec.select = select i1 %cmp, i8 4, i8 %38
  %num_targets_backend48.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 52
  %ioctl_tunnel49.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 53
  %fw_version.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 29
  %fw_build11.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 30
  %fw_release13.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 12, i32 0, i32 2
  %flags2.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.then32.while.body_crit_edge, %entry
  %39 = phi i8 [ %spec.select, %entry ], [ %102, %if.then32.while.body_crit_edge ]
  %40 = ptrtoint ptr %init_msg to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %init_msg, align 8
  %41 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %39, label %while.body.if.end20.thread_crit_edge [
    i8 1, label %while.body.sw.bb.i_crit_edge
    i8 4, label %while.body.sw.bb.i_crit_edge92
    i8 2, label %sw.bb6.i
    i8 3, label %if.then42.i
  ]

while.body.sw.bb.i_crit_edge92:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

while.body.sw.bb.i_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

while.body.if.end20.thread_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.thread

sw.bb.i:                                          ; preds = %while.body.sw.bb.i_crit_edge, %while.body.sw.bb.i_crit_edge92
  tail call void @esas2r_build_cfg_req(ptr noundef %a, ptr noundef %general_req, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #10
  %42 = ptrtoint ptr %vrq1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vrq1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sgl_page_size to i32))
  %44 = load i32, ptr @sgl_page_size, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %sgl_page_size.i = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %43, i32 0, i32 6, i32 0, i32 1
  %46 = ptrtoint ptr %sgl_page_size.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %sgl_page_size.i, align 1
  %call.i = tail call i64 @ktime_get_real_seconds() #10
  %conv2.i = trunc i64 %call.i to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv2.i) #10
  %epoch_time.i = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %43, i32 0, i32 6, i32 0, i32 6
  %48 = ptrtoint ptr %epoch_time.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %epoch_time.i, align 1
  br label %esas2r_format_init_msg.exit

sw.bb6.i:                                         ; preds = %while.body
  %49 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %req_stat.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i = icmp eq i8 %50, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb6.i.if.end.i_crit_edge

sw.bb6.i.if.end.i_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %func_rsp.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %func_rsp.i, align 4
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #10
  %conv9.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx3.i, align 4
  %56 = ptrtoint ptr %fw_build11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %fw_build11.i, align 8
  %57 = ptrtoint ptr %fw_release13.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fw_release13.i, align 2
  %trunc.i = zext i16 %58 to i32
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %trunc.i) #10
  %add21.i = or i32 %rev.i, %conv9.i
  %59 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add21.i, ptr %fw_version.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb6.i.if.end.i_crit_edge
  %60 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags2.i, align 4
  %62 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.if.then26.i_crit_edge

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %63 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5392130, i32 %64)
  %cmp24.i = icmp ugt i32 %64, 5392130
  br i1 %cmp24.i, label %lor.lhs.false.i.if.then26.i_crit_edge, label %lor.lhs.false.i.if.end20.thread_crit_edge

lor.lhs.false.i.if.end20.thread_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.thread

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  tail call void @esas2r_build_cfg_req(ptr noundef %a, ptr noundef %general_req, i8 noundef zeroext 2, i32 noundef 112, ptr noundef null) #10
  %65 = ptrtoint ptr %vrq1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vrq1.i, align 8
  %sg_list_offset.i69 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %sg_list_offset.i69 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 12, ptr %sg_list_offset.i69, align 1
  %68 = load ptr, ptr %vrq1.i, align 8
  %ctl_len.i = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %68, i32 0, i32 6, i32 0, i32 1
  %69 = ptrtoint ptr %ctl_len.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 1879048192, ptr %ctl_len.i, align 1
  %70 = ptrtoint ptr %vrq_md.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vrq_md.i, align 4
  %phys_addr.i71 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %phys_addr.i71 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %phys_addr.i71, align 8
  %add30.i = add i64 %73, 1024
  %74 = tail call i64 @llvm.bswap.i64(i64 %add30.i) #10
  %75 = ptrtoint ptr %vrq1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vrq1.i, align 8
  %data32.i = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %data32.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %74, ptr %data32.i, align 1
  br label %esas2r_format_init_msg.exit

if.then42.i:                                      ; preds = %while.body
  %78 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %req_stat.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp45.i = icmp eq i8 %79, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.then42.i.if.end20.thread_crit_edge

if.then42.i.if.end20.thread_crit_edge:            ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.thread

if.then47.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %4, align 8
  %num_targets_backend.i = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %num_targets_backend.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %num_targets_backend.i, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %85 = ptrtoint ptr %num_targets_backend48.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %num_targets_backend48.i, align 4
  %ioctl_tunnel.i = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %81, i32 0, i32 7
  %86 = ptrtoint ptr %ioctl_tunnel.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %ioctl_tunnel.i, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #10
  %89 = ptrtoint ptr %ioctl_tunnel49.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %ioctl_tunnel49.i, align 8
  br label %if.end20.thread

if.end20.thread:                                  ; preds = %if.then47.i, %if.then42.i.if.end20.thread_crit_edge, %lor.lhs.false.i.if.end20.thread_crit_edge, %while.body.if.end20.thread_crit_edge
  %90 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %req_stat.i, align 1
  br label %if.then32

esas2r_format_init_msg.exit:                      ; preds = %if.then26.i, %sw.bb.i
  %storemerge.i = phi i8 [ 3, %if.then26.i ], [ 2, %sw.bb.i ]
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags.i, align 8
  %93 = or i8 %92, 8
  store i8 %93, ptr %flags.i, align 8
  %94 = ptrtoint ptr %init_msg to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %storemerge.i, ptr %init_msg, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %while.cond5.while.cond5_crit_edge, %esas2r_format_init_msg.exit
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  tail call void @esas2r_start_vda_request(ptr noundef %a, ptr noundef %general_req) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call11) #10
  tail call void @esas2r_wait_request(ptr noundef %a, ptr noundef %general_req) #10
  %95 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %req_stat.i, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %96, label %lor.lhs.false [
    i8 -2, label %while.cond5.while.cond5_crit_edge
    i8 0, label %while.cond5.if.then32_crit_edge
  ]

while.cond5.if.then32_crit_edge:                  ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

while.cond5.while.cond5_crit_edge:                ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond5

lor.lhs.false:                                    ; preds = %while.cond5
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %flags.i, align 8
  %100 = and i8 %99, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool27.not = icmp eq i8 %100, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %96)
  %cmp30.not = icmp eq i8 %96, 5
  %or.cond = select i1 %tobool27.not, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.end33, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %while.cond5.if.then32_crit_edge, %if.end20.thread
  %101 = ptrtoint ptr %init_msg to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %init_msg, align 8
  %tobool.not = icmp eq i8 %102, 0
  br i1 %tobool.not, label %if.then32.while.end42_crit_edge, label %if.then32.while.body_crit_edge

if.then32.while.body_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then32.while.end42_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end42

if.end33:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %init_msg to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %init_msg, align 8
  %conv35 = zext i8 %104 to i32
  %conv37 = zext i8 %96 to i32
  %conv39 = zext i8 %99 to i32
  %call40 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.50, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv39) #10
  %105 = ptrtoint ptr %init_msg to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %init_msg, align 8
  br label %while.end42

while.end42:                                      ; preds = %if.end33, %if.then32.while.end42_crit_edge
  %tobool.not78 = phi i1 [ false, %if.end33 ], [ true, %if.then32.while.end42_crit_edge ]
  %106 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %sg_table_head.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %107, %sg_table_head.i
  br i1 %cmp.i.not.i.i, label %while.end42.esas2r_rq_destroy_request.exit_crit_edge, label %do.body1.i.i

while.end42.esas2r_rq_destroy_request.exit_crit_edge: ; preds = %while.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_rq_destroy_request.exit

do.body1.i.i:                                     ; preds = %while.end42
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #10
  %108 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %sg_table_head.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %109, %sg_table_head.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %110 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i.i, align 4
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %114 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev3.i.i.i.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %109, ptr %111, align 4
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %free_sg_list_head.i.i, ptr %113, align 4
  store ptr %113, ptr %prev.i.i.i, align 4
  %117 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %sg_table_head.i, ptr %sg_table_head.i, align 4
  store ptr %sg_table_head.i, ptr %prev.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #10
  br label %esas2r_rq_destroy_request.exit

esas2r_rq_destroy_request.exit:                   ; preds = %list_splice_tail_init.exit.i.i, %while.end42.esas2r_rq_destroy_request.exit_crit_edge
  %118 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %req_table.i, align 4
  %120 = ptrtoint ptr %vrq1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vrq1.i, align 8
  %handle.i74 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %handle.i74 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %handle.i74, align 1
  %idxprom.i75 = and i32 %123, 65535
  %arrayidx.i = getelementptr ptr, ptr %119, i32 %idxprom.i75
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %arrayidx.i, align 4
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %4, align 8
  ret i1 %tobool.not78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_dummy_complete(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_vda_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_wait_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_nvram_read_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_read_flash_rev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_read_image_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_disc_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_disc_check_for_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_timer_tick(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_do_tasklet_tasks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_targ_db_report_changes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_disc_start_waiting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_do_deferred_processes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_reset_adapter(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags) #10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.esas2r_schedule_tasklet.exit_crit_edge

entry.esas2r_schedule_tasklet.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_schedule_tasklet.exit

if.then.i:                                        ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 54, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.esas2r_schedule_tasklet.exit_crit_edge

if.then.i.esas2r_schedule_tasklet.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_schedule_tasklet.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 54
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet.i) #10
  br label %esas2r_schedule_tasklet.exit

esas2r_schedule_tasklet.exit:                     ; preds = %if.then.i.i, %if.then.i.esas2r_schedule_tasklet.exit_crit_edge, %entry.esas2r_schedule_tasklet.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_reset_chip(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %entry
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 66688
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp eq i32 %5, -1
  br i1 %cmp.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flags.i) #10
  br label %return

if.end:                                           ; preds = %if.end.i
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags2, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags2, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %fw_coredump_buff = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 92
  %call6 = tail call zeroext i1 @esas2r_read_mem_block(ptr noundef %a, ptr noundef %fw_coredump_buff, i32 noundef -200802304, i32 noundef 524288) #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags2) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags2) #10
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %12 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcid, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -78, i8 %15)
  %cmp = icmp eq i8 %15, -78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  br i1 %cmp, label %do.body, label %do.body13

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %17, i32 65840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #10, !srcloc !198
  br label %if.end18

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr16 = getelementptr i8, ptr %17, i32 65800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 536870912) #10, !srcloc !198
  br label %if.end18

if.end18:                                         ; preds = %do.body13, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #10
  br label %return

return:                                           ; preds = %if.end18, %if.then4.i, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_is_adapter_present(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 66688
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flags) #10
  br label %return

return:                                           ; preds = %if.then4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then4 ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_read_mem_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_power_down(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 21, ptr noundef %flags) #10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %entry
  %dis_ints_cnt.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #10, !srcloc !195
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %do.body.i, label %if.then.esas2r_disable_chip_interrupts.exit_crit_edge

if.then.esas2r_disable_chip_interrupts.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_disable_chip_interrupts.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !198
  br label %esas2r_disable_chip_interrupts.exit

esas2r_disable_chip_interrupts.exit:              ; preds = %do.body.i, %if.then.esas2r_disable_chip_interrupts.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 66656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #10, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call4 = tail call i32 @jiffies_to_msecs(i32 noundef %8) #10
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %esas2r_disable_chip_interrupts.exit
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 66688
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.end, label %do.body12

do.body12:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %11) #10, !srcloc !198
  br label %while.end

if.end:                                           ; preds = %while.cond
  %call19 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %call20 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #10
  %sub = sub i32 %call20, %call4
  %cmp = icmp ugt i32 %sub, 3000
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %do.body12
  %flags223 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %16 = ptrtoint ptr %flags223 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags223, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %while.end.if.end28_crit_edge, label %if.then26

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr.i53 = getelementptr i8, ptr %20, i32 66656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 131072) #10, !srcloc !198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %21) #10
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %if.then26
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %23, i32 66688
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %25 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body7.i

do.body7.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr11.i = getelementptr i8, ptr %27, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %24) #10, !srcloc !198
  br label %if.end28

if.end.i:                                         ; preds = %while.cond.i
  %call14.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %call15.i = tail call i32 @jiffies_to_msecs(i32 noundef %28) #10
  %sub.i = sub i32 %call15.i, %call.i
  %cmp.i54 = icmp ugt i32 %sub.i, 30000
  br i1 %cmp.i54, label %if.end.i.if.end28_crit_edge, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.end.i.if.end28_crit_edge, %do.body7.i, %while.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  tail call void @esas2r_process_adapter_reset(ptr noundef %a) #10
  %call32 = tail call zeroext i16 @esas2r_targ_db_get_tgt_cnt(ptr noundef %a) #10
  %29 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 21
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %call32, ptr %29, align 8
  tail call void @esas2r_targ_db_remove_all(ptr noundef %a, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_process_adapter_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @esas2r_targ_db_get_tgt_cnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_targ_db_remove_all(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_power_up(ptr noundef %a, i1 noundef zeroext %init_poll) local_unnamed_addr #0 align 64 {
entry:
  %devcontrol.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %flags) #10
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %0 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcid.i, align 4
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not.i = icmp eq i8 %3, 0
  br i1 %tobool.i.not.i, label %entry.esas2r_init_pci_cfg_space.exit_crit_edge, label %if.then.i

entry.esas2r_init_pci_cfg_space.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %esas2r_init_pci_cfg_space.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devcontrol.i) #10
  %4 = ptrtoint ptr %devcontrol.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %devcontrol.i, align 2, !annotation !193
  %call2.i = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %devcontrol.i) #10
  %5 = ptrtoint ptr %devcontrol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %devcontrol.i, align 2
  %7 = and i16 %6, 28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %7)
  %cmp.i = icmp ugt i16 %7, 8192
  br i1 %cmp.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.91) #10
  %8 = ptrtoint ptr %devcontrol.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %devcontrol.i, align 2
  %10 = and i16 %9, -28673
  %11 = or i16 %10, 8192
  store i16 %11, ptr %devcontrol.i, align 2
  %12 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcid.i, align 4
  %call12.i = call i32 @pcie_capability_write_word(ptr noundef %13, i32 noundef 8, i16 noundef zeroext %11) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devcontrol.i) #10
  br label %esas2r_init_pci_cfg_space.exit

esas2r_init_pci_cfg_space.exit:                   ; preds = %if.end.i, %entry.esas2r_init_pci_cfg_space.exit_crit_edge
  call void @_set_bit(i32 noundef 20, ptr noundef %flags) #10
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %disable_cnt, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %disable_cnt, i32 1, i32 3, i32 1) #10
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disable_cnt, ptr %disable_cnt, i32 1, ptr elementtype(i32) %disable_cnt) #10, !srcloc !191
  %call = call zeroext i1 @esas2r_check_adapter(ptr noundef %a)
  %call3 = call zeroext i1 @esas2r_init_adapter_hw(ptr noundef %a, i1 noundef zeroext %init_poll)
  %spec.select = select i1 %call3, i1 %call, i1 false
  call void @esas2r_send_reset_ae(ptr noundef %a, i1 noundef zeroext true) #10
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #10
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_send_reset_ae(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @esas2r_get_model_name(ptr nocapture noundef readonly %a) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %0 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcid, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %3, label %sw.epilog [
    i16 73, label %entry.return_crit_edge
    i16 74, label %sw.bb1
    i16 75, label %sw.bb2
    i16 76, label %sw.bb3
    i16 77, label %sw.bb4
    i16 78, label %sw.bb5
    i16 16486, label %sw.bb6
    i16 16487, label %sw.bb7
    i16 16488, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.63, %sw.epilog ], [ @.str.62, %sw.bb8 ], [ @.str.61, %sw.bb7 ], [ @.str.60, %sw.bb6 ], [ @.str.59, %sw.bb5 ], [ @.str.58, %sw.bb4 ], [ @.str.57, %sw.bb3 ], [ @.str.56, %sw.bb2 ], [ @.str.55, %sw.bb1 ], [ @.str.54, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @esas2r_get_model_name_short(ptr nocapture noundef readonly %a) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %0 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcid, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %3, label %sw.epilog [
    i16 73, label %entry.return_crit_edge
    i16 74, label %sw.bb1
    i16 75, label %sw.bb2
    i16 76, label %sw.bb3
    i16 77, label %sw.bb4
    i16 78, label %sw.bb5
    i16 16486, label %sw.bb6
    i16 16487, label %sw.bb7
    i16 16488, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.73, %sw.epilog ], [ @.str.72, %sw.bb8 ], [ @.str.71, %sw.bb7 ], [ @.str.70, %sw.bb6 ], [ @.str.69, %sw.bb5 ], [ @.str.68, %sw.bb4 ], [ @.str.67, %sw.bb3 ], [ @.str.66, %sw.bb2 ], [ @.str.65, %sw.bb1 ], [ @.str.64, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_msi_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_complete_request_cb(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_build_cfg_req(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_build_ae_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 273, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 280, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 296, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 302, i32 10}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 302, i32 53}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 302, i32 60}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 305, i32 19}
!14 = !{ptr @esas2r_init_adapter.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 307, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @esas2r_init_adapter.__key.8, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 308, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @esas2r_init_adapter.__key.10, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 309, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @esas2r_init_adapter.__key.12, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 310, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 314, i32 53}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 316, i32 18}
!30 = !{ptr @esas2r_init_adapter.__key.16, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 318, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @esas2r_init_adapter.__key.18, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 319, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @esas2r_init_adapter.__key.20, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 320, i32 2}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @esas2r_init_adapter.__key.22, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 321, i32 2}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @esas2r_init_adapter.__key.24, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 322, i32 2}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 340, i32 8}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 352, i32 31}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 380, i32 7}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 399, i32 7}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 416, i32 31}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 598, i32 11}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 607, i32 11}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 613, i32 11}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 618, i32 11}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 631, i32 12}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 637, i32 12}
!67 = !{ptr @esas2r_pm_ops, !68, !"esas2r_pm_ops", i1 false, i1 false}
!68 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 713, i32 1}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 719, i32 6}
!71 = !{ptr @esas2r_init_adapter_struct.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 773, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @esas2r_init_adapter_struct.__key.39, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 774, i32 2}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @esas2r_init_adapter_struct.__key.41, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 775, i32 2}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 792, i32 7}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 802, i32 7}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 814, i32 7}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 974, i32 9}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 997, i32 9}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1009, i32 8}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1121, i32 8}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1272, i32 31}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1296, i32 8}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1300, i32 31}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1321, i32 22}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1637, i32 10}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1640, i32 10}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1643, i32 10}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1646, i32 10}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1649, i32 10}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1652, i32 10}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1655, i32 10}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1658, i32 10}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1661, i32 10}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1664, i32 9}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1671, i32 10}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1674, i32 10}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1677, i32 10}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1680, i32 10}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1683, i32 10}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1686, i32 10}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1689, i32 10}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1692, i32 10}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1695, i32 10}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 1698, i32 9}
!142 = !{ptr @sema_init.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 160, i32 7}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 170, i32 7}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 189, i32 7}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 212, i32 8}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 225, i32 7}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 240, i32 6}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 250, i32 31}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 257, i32 6}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 494, i32 11}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 649, i32 39}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 654, i32 39}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 664, i32 39}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 672, i32 31}
!174 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 702, i32 31}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 708, i32 39}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 750, i32 8}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/esas2r/esas2r_init.c", i32 62, i32 7}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i64 2148297462, i64 2148297488, i64 2148297517, i64 2148297551, i64 2148297582, i64 2148297605}
!192 = !{!"branch_weights", i32 1, i32 2000}
!193 = !{!"auto-init"}
!194 = !{i64 2148382873}
!195 = !{i64 2148298182, i64 2148298214, i64 2148298243, i64 2148298277, i64 2148298308, i64 2148298331}
!196 = !{i64 2148383102}
!197 = !{i64 2155167152}
!198 = !{i64 5075377}
!199 = !{i64 2155204240}
!200 = !{i64 5075795}
!201 = !{i64 2155205328}
!202 = !{i64 2155206139}
!203 = !{i64 2155206584}
!204 = !{i64 2155207490}
!205 = !{i64 2155208573}
!206 = !{i64 2155209000}
!207 = !{i64 2155210056}
!208 = !{i64 2155210471}
!209 = !{i64 2155211509}
!210 = !{i64 2155211924}
!211 = !{i64 2155212641}
!212 = !{i64 2155213451}
!213 = !{i64 2155214261}
!214 = !{i64 2155215071}
!215 = !{i64 2155215881}
!216 = !{i64 2155216691}
!217 = !{i64 2155217591}
!218 = !{i64 2155218428}
!219 = !{i64 2155219265}
!220 = !{i64 2155220086}
!221 = !{i64 2155221217}
!222 = !{i64 2155221772}
!223 = !{i64 2155222939}
!224 = !{i64 2155223494}
!225 = !{i64 2155224661}
!226 = !{i64 2155225133}
!227 = !{i64 2155226171}
!228 = !{i64 2155226625}
!229 = !{i64 2155227297}
!230 = !{i64 2155228380}
!231 = !{i64 2155228807}
!232 = !{i64 2155229863}
!233 = !{i64 2155230504}
!234 = !{i64 2155231221}
!235 = !{i64 2148385914}
!236 = !{i64 2148300647, i64 2148300679, i64 2148300708, i64 2148300742, i64 2148300773, i64 2148300796}
!237 = !{i64 2148386143}
!238 = !{i64 2155168006}
!239 = !{i64 2148299927, i64 2148299953, i64 2148299982, i64 2148300016, i64 2148300047, i64 2148300070}
!240 = !{i64 2155243895}
!241 = !{i64 2155240768}
!242 = !{i64 2155241851}
!243 = !{i64 2155242278}
!244 = !{i64 2155238377}
!245 = !{i64 2155239460}
!246 = !{i64 2155239887}
