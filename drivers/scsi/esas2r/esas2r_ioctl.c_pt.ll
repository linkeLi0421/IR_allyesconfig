; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_ioctl.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.esas2r_buffered_ioctl = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.atto_ioctl = type { i8, i8, i8, i8, i32, [56 x i8], %union.anon.107 }
%union.anon.107 = type { %struct.atto_hba_get_adapter_info }
%struct.atto_hba_get_adapter_info = type { %struct.anon.108, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i32, [312 x i8] }
%struct.anon.108 = type { i16, i16, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [19 x i8] }
%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.101, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.15, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.23 }
%union.anon.15 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.23 = type { ptr }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.105, i32 }
%union.anon.105 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.102, ptr, ptr, i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.106, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.106 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.atto_hba_get_adapter_address = type { i8, i8, i16, [256 x i8] }
%struct.esas2r_sas_nvram = type { [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [16 x i8], i8, i8, i8, [161 x i8] }
%struct.atto_vda_ioctl_req = type { i32, i8, i8, i8, i8, i32, %union.anon.9, %union.anon.10, %union.anon.12 }
%union.anon.9 = type { %struct.atto_vda_sge }
%struct.atto_vda_sge = type <{ i32, i64 }>
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i16, i8, i8 }
%union.anon.12 = type { [1 x %struct.atto_vda_sge] }
%struct.atto_vda_scsi_req = type { i32, i8, i8, i8, i8, i32, i32, [16 x i8], %union.anon.3, %union.anon.5 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type <{ i64, i16, i8, i8 }>
%union.anon.5 = type { [245 x i32] }
%struct.atto_hba_trace = type { i8, i8, [2 x i8], i32, i32, i32, [48 x i8] }
%struct.atto_hba_adap_ctrl = type { i8, i8, [2 x i8], %union.anon.109 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i8, i8, i16, i16, i16, [32 x i8], [20 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.atto_express_ioctl_header = type { [8 x i8], i8, i8, i8, [5 x i8] }
%struct.atto_express_ioctl = type { %struct.atto_express_ioctl_header, %union.anon.115 }
%union.anon.115 = type { %struct.atto_ioctl_vda, [523672 x i8] }
%struct.atto_ioctl_vda = type { i8, i8, i8, i8, i32, [8 x i8], %union.anon.118, %union.anon.124 }
%union.anon.118 = type { %struct.atto_ioctl_vda_mgt_cmd, [128 x i8] }
%struct.atto_ioctl_vda_mgt_cmd = type { i8, i8, i16, i32, [8 x i8], %union.anon.123 }
%union.anon.123 = type { %struct.atto_vda_devinfo }
%struct.atto_vda_devinfo = type { %struct.atto_dev_addr, [8 x i8], [16 x i8], [4 x i8], i64, i32, i8, %union.anon.17, i8, i8, i8, i8, i16, [32 x i8], %union.anon.18, i16, i16, i8, i8, i16, [2 x i8] }
%struct.atto_dev_addr = type <{ i64, i64, i8, i8, i8, [1 x i8] }>
%union.anon.17 = type { i8 }
%union.anon.18 = type { i16 }
%union.anon.124 = type { %struct.atto_vda_devinfo2 }
%struct.atto_vda_devinfo2 = type { %struct.atto_dev_addr, [8 x i8], [16 x i8], [4 x i8], i64, i32, i8, i8, i8, i8, i8, i8, i16, [32 x i8], %union.anon.125, i16, i16, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i64, i32, i32, i32, i32, i32, [15 x i8], [4 x i8], i8, [8 x %struct.atto_dev_addr2] }
%union.anon.125 = type { i16 }
%struct.atto_dev_addr2 = type { i64, i64, i8, i8, i8, [5 x i8] }
%struct.atto_channel_info = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, [3 x i8], i32 }>
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.esas2r_ioctl_fs = type { i8, i8, i8, i8, i8, [11 x i8], %struct.esas2r_ioctlfs_command, [1 x i8] }
%struct.esas2r_ioctlfs_command = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.atto_ioctl_smp = type <{ i8, i8, i8, i8, i16, i8, i8, i64, i64, i32, i32, i8, [31 x i8], %union.anon.126 }>
%union.anon.126 = type { [1 x i32] }
%struct.atto_csmi = type { i32, i32, %union.atto_ioctl_csmi }
%union.atto_ioctl_csmi = type { %struct.atto_csmi_smp_passthru }
%struct.atto_csmi_smp_passthru = type { i8, i8, i8, i8, [8 x i8], i32, [1020 x i8], i8, [3 x i8], i32, [1020 x i8] }
%struct.atto_csmi_get_driver_info = type { [81 x i8], [81 x i8], i16, i16, i16, i16, i16, i16 }
%struct.atto_csmi_get_cntlr_cfg = type { i32, %struct.anon.127, i32, i16, i8, i8, %union.anon.128, [81 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, [7 x i8] }
%struct.anon.127 = type { i32, i32 }
%union.anon.128 = type { [32 x i8] }
%struct.atto_csmi_get_cntlr_sts = type { i32, i32, [28 x i8] }
%struct.atto_csmi_get_scsi_addr = type { [8 x i8], [8 x i8], i8, i8, i8, i8 }
%struct.atto_csmi_get_dev_addr = type { i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.anon.22 = type { i32, i16, i8, i8 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/esas2r/esas2r_ioctl.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ioctl (%p, %x, %p)\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ioctl_handler access_ok failed for cmd %u, address %p\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Express\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid signature\00", [46 x i8] zeroinitializer }, align 32
@esas2r_adapters = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad channel value\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not allocate an internal request\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"err %d on ioctl cmd %u\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ioctl_handler copy_to_user didn't copy everything (err %d, cmd %u)\00", [61 x i8] zeroinitializer }, align 32
@esas2r_buffered_ioctl = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@esas2r_buffered_ioctl_addr = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@esas2r_buffered_ioctl_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@esas2r_buffered_ioctl_pcid = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"esas2r\00", [25 x i8] zeroinitializer }, align 32
@buffered_ioctl_semaphore = internal global { %struct.semaphore, [40 x i8] } { %struct.semaphore { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @buffered_ioctl_semaphore, i64 48), ptr getelementptr (i8, ptr @buffered_ioctl_semaphore, i64 48) } }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"could not allocate %d bytes of consistent memory for a buffered ioctl!\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(buffered_ioctl_semaphore).lock\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 16, i64 74, i64 75, i64 77, i64 16487]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [12 x i64] [i64 10, i64 32, i64 17664, i64 17665, i64 17666, i64 17669, i64 17670, i64 17674, i64 17675, i64 17676, i64 17677, i64 17679]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 4294967258, i64 4294967274, i64 4294967280, i64 4294967284]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 13, i64 112, i64 251]
@__sancov_gen_cov_switch_values.27 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 60]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 27]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1260, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1281, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1291, i32 7 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1299, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1301, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1342, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1402, i32 7 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1491, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1516, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"esas2r_buffered_ioctl\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 54, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"esas2r_buffered_ioctl_addr\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 55, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"esas2r_buffered_ioctl_size\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 56, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"esas2r_buffered_ioctl_pcid\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 57, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1220, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1221, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [25 x i8] c"buffered_ioctl_semaphore\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 240, i32 7 }
@___asan_gen_.81 = private constant [38 x i8] c"../drivers/scsi/esas2r/esas2r_ioctl.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 59, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 174, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @esas2r_buffered_ioctl, ptr @esas2r_buffered_ioctl_addr, ptr @esas2r_buffered_ioctl_size, ptr @esas2r_buffered_ioctl_pcid, ptr @.str.9, ptr @.str.10, ptr @buffered_ioctl_semaphore, ptr @.str.11, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_buffered_ioctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_buffered_ioctl_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_buffered_ioctl_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_buffered_ioctl_pcid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffered_ioctl_semaphore to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @handle_hba_ioctl(ptr noundef %a, ptr noundef %ioctl_hba) local_unnamed_addr #0 align 64 {
entry:
  %bi = alloca %struct.esas2r_buffered_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %bi) #8
  %0 = getelementptr inbounds i8, ptr %bi, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %a, ptr %bi, align 4
  %ioctl = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 1
  %3 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ioctl_hba, ptr %ioctl, align 4
  %data_length = getelementptr inbounds %struct.atto_ioctl, ptr %ioctl_hba, i32 0, i32 4
  %4 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_length, align 4
  %add = add i32 %5, 576
  %length = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %length, align 4
  %callback = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 5
  %7 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hba_ioctl_callback, ptr %callback, align 4
  %context = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 6
  %8 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %context, align 4
  %done_callback = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 7
  %9 = ptrtoint ptr %done_callback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hba_ioctl_done_callback, ptr %done_callback, align 4
  %done_context = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 8
  %10 = ptrtoint ptr %done_context to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %done_context, align 4
  %offset = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %offset, align 4
  %call = call fastcc zeroext i8 @handle_buffered_ioctl(ptr noundef nonnull %bi)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %bi) #8
  ret i8 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hba_ioctl_callback(ptr noundef %a, ptr noundef %rq, ptr noundef %sgc, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  %stat = alloca i16, align 2
  %caps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %status = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %status, align 2
  %function = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %function, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb160
    i8 2, label %sw.bb204
    i8 3, label %sw.bb215
    i8 4, label %sw.bb304
    i8 5, label %sw.bb398
    i8 6, label %entry.sw.bb470_crit_edge
    i8 12, label %entry.sw.bb470_crit_edge1014
    i8 14, label %sw.bb474
    i8 15, label %sw.bb540
  ]

entry.sw.bb470_crit_edge1014:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb470

entry.sw.bb470_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb470

sw.bb:                                            ; preds = %entry
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %5 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcid, align 4
  %class = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 11
  %data = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6
  %flags = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %status, align 2
  br label %cleanup589

if.end:                                           ; preds = %sw.bb
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not = icmp eq i8 %12, 0
  br i1 %cmp.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %status, align 2
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %0, align 4
  br label %cleanup589

if.end8:                                          ; preds = %if.end
  %15 = call ptr @memset(ptr %data, i32 0, i32 512)
  %16 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcid, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor, align 8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %data, align 1
  %21 = load ptr, ptr %pcid, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device, align 2
  %device_id = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %device_id to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %device_id, align 1
  %25 = load ptr, ptr %pcid, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_vendor, align 4
  %ss_vendor_id = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %ss_vendor_id to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %ss_vendor_id, align 1
  %29 = load ptr, ptr %pcid, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %subsystem_device, align 2
  %ss_device_id = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %ss_device_id to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %ss_device_id, align 1
  %33 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %class, align 1
  %class_code17 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 4
  %35 = ptrtoint ptr %class_code17 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %class_code17, align 1
  %arrayidx19 = getelementptr i8, ptr %class, i32 1
  %36 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx19, align 1
  %arrayidx22 = getelementptr %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr i8, ptr %class, i32 2
  %39 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx23, align 1
  %arrayidx26 = getelementptr %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx26, align 1
  %42 = load ptr, ptr %pcid, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %revision, align 4
  %rev_id = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 5
  %45 = ptrtoint ptr %rev_id to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %rev_id, align 1
  %46 = load ptr, ptr %pcid, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %number, align 4
  %bus_num = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 6
  %51 = ptrtoint ptr %bus_num to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %bus_num, align 1
  %52 = load ptr, ptr %pcid, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %devfn, align 4
  %55 = trunc i32 %54 to i8
  %56 = lshr i8 %55, 3
  %dev_num = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 7
  %57 = ptrtoint ptr %dev_num to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %dev_num, align 1
  %58 = load ptr, ptr %pcid, align 4
  %devfn36 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %devfn36 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %devfn36, align 4
  %61 = trunc i32 %60 to i8
  %conv38 = and i8 %61, 7
  %func_num = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 8
  %62 = ptrtoint ptr %func_num to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv38, ptr %func_num, align 1
  %63 = load ptr, ptr %pcid, align 4
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 19
  %64 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.i.not = icmp eq i8 %65, 0
  br i1 %tobool.i.not, label %if.end8.if.end62_crit_edge, label %if.then41

if.end8.if.end62_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then41:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stat) #8
  %66 = ptrtoint ptr %stat to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %stat, align 2, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caps) #8
  %67 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %caps, align 4, !annotation !51
  %call43 = call i32 @pcie_capability_read_word(ptr noundef %63, i32 noundef 18, ptr noundef nonnull %stat) #8
  %68 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcid, align 4
  %call45 = call i32 @pcie_capability_read_dword(ptr noundef %69, i32 noundef 12, ptr noundef nonnull %caps) #8
  %70 = ptrtoint ptr %stat to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %stat, align 2
  %72 = trunc i16 %71 to i8
  %conv48 = and i8 %72, 15
  %link_speed_curr = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 12
  %73 = ptrtoint ptr %link_speed_curr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv48, ptr %link_speed_curr, align 1
  %74 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %caps, align 4
  %76 = trunc i32 %75 to i8
  %conv51 = and i8 %76, 15
  %link_speed_max = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 11
  %77 = ptrtoint ptr %link_speed_max to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv51, ptr %link_speed_max, align 1
  %78 = lshr i16 %71, 4
  %79 = trunc i16 %78 to i8
  %conv56 = and i8 %79, 63
  %link_width_curr = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 10
  %80 = ptrtoint ptr %link_width_curr to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv56, ptr %link_width_curr, align 1
  %and58 = lshr i32 %75, 4
  %81 = trunc i32 %and58 to i8
  %conv60 = and i8 %81, 63
  %link_width_max = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 9
  %82 = ptrtoint ptr %link_width_max to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv60, ptr %link_width_max, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caps) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stat) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then41, %if.end8.if.end62_crit_edge
  %msi_vector_cnt = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 14
  %83 = ptrtoint ptr %msi_vector_cnt to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %msi_vector_cnt, align 1
  %84 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pcid, align 4
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 49
  %86 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %86, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %87 = and i40 %bf.load, 67108864
  %tobool65.not = icmp eq i40 %87, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %interrupt_mode = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 13
  %88 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 3, ptr %interrupt_mode, align 1
  br label %if.end81

if.else:                                          ; preds = %if.end62
  %89 = and i40 %bf.load, 134217728
  %tobool73.not = icmp eq i40 %89, 0
  %interrupt_mode79 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 13
  br i1 %tobool73.not, label %if.else77, label %if.then74

if.then74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %interrupt_mode79 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %interrupt_mode79, align 1
  br label %if.end81

if.else77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %interrupt_mode79 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %interrupt_mode79, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.else77, %if.then74, %if.then66
  %adap_type = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 1
  %92 = ptrtoint ptr %adap_type to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %adap_type, align 1
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %93 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags2, align 4
  %95 = and i32 %94, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool83.not = icmp eq i32 %95, 0
  br i1 %tobool83.not, label %if.end81.if.end86_crit_edge, label %if.then84

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %adap_type to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 10, ptr %adap_type, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81.if.end86_crit_edge
  %flags87 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %97 = ptrtoint ptr %flags87 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %flags87, align 4
  %99 = and i32 %98, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool89.not = icmp eq i32 %99, 0
  br i1 %tobool89.not, label %if.end86.if.end93_crit_edge, label %if.then90

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %adap_flags = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 2
  %100 = ptrtoint ptr %adap_flags to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %adap_flags, align 1
  %102 = or i8 %101, 1
  store i8 %102, ptr %adap_flags, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end86.if.end93_crit_edge
  %adap_flags94 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 2
  %103 = ptrtoint ptr %adap_flags94 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %adap_flags94, align 1
  %105 = or i8 %104, 6
  store i8 %105, ptr %adap_flags94, align 1
  %106 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pcid, align 4
  %subsystem_device99 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 10
  %108 = ptrtoint ptr %subsystem_device99 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %subsystem_device99, align 2
  %110 = zext i16 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %109, label %if.end93.if.end125_crit_edge [
    i16 75, label %if.end93.if.then120_crit_edge
    i16 74, label %if.end93.if.then120_crit_edge1015
    i16 77, label %if.end93.if.then120_crit_edge1016
    i16 16487, label %if.end93.if.then120_crit_edge1017
  ]

if.end93.if.then120_crit_edge1017:                ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

if.end93.if.then120_crit_edge1016:                ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

if.end93.if.then120_crit_edge1015:                ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

if.end93.if.then120_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

if.end93.if.end125_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then120:                                       ; preds = %if.end93.if.then120_crit_edge, %if.end93.if.then120_crit_edge1015, %if.end93.if.then120_crit_edge1016, %if.end93.if.then120_crit_edge1017
  %111 = or i8 %104, 70
  %112 = ptrtoint ptr %adap_flags94 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %adap_flags94, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end93.if.end125_crit_edge
  %num_ports = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 3
  %113 = ptrtoint ptr %num_ports to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 8, ptr %num_ports, align 1
  %num_phys = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 4
  %114 = ptrtoint ptr %num_phys to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 8, ptr %num_phys, align 1
  %firmware_rev = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 11
  %fw_rev = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 49
  %call127 = call ptr @strcpy(ptr noundef %firmware_rev, ptr noundef %fw_rev) #11
  %flash_rev = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 12
  %flash_rev129 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %call131 = call ptr @strcpy(ptr noundef %flash_rev, ptr noundef %flash_rev129) #11
  %model_name_short = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 13
  %call133 = call ptr @esas2r_get_model_name_short(ptr noundef %a) #8
  %call134 = call ptr @strcpy(ptr noundef %model_name_short, ptr noundef %call133) #11
  %model_name = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 14
  %call136 = call ptr @esas2r_get_model_name(ptr noundef %a) #8
  %call137 = call ptr @strcpy(ptr noundef %model_name, ptr noundef %call136) #11
  %num_targets = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 15
  %115 = ptrtoint ptr %num_targets to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 256, ptr %num_targets, align 1
  %num_busses = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 18
  %116 = ptrtoint ptr %num_busses to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %num_busses, align 1
  %num_targsper_bus = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 16
  %117 = ptrtoint ptr %num_targsper_bus to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 256, ptr %num_targsper_bus, align 1
  %num_lunsper_targ = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 17
  %118 = ptrtoint ptr %num_lunsper_targ to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 256, ptr %num_lunsper_targ, align 1
  %119 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pcid, align 4
  %subsystem_device140 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 10
  %121 = ptrtoint ptr %subsystem_device140 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %subsystem_device140, align 2
  %.off = add i16 %122, -75
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  %spec.select = select i1 %switch, i8 4, i8 2
  %123 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 19
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %spec.select, ptr %123, align 1
  %adap_flags2 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 20
  %125 = ptrtoint ptr %adap_flags2 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %adap_flags2, align 1
  %127 = or i8 %126, 8
  store i8 %127, ptr %adap_flags2, align 1
  %num_targets_backend = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 52
  %128 = ptrtoint ptr %num_targets_backend to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_targets_backend, align 4
  %num_targets_backend157 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 22
  %130 = ptrtoint ptr %num_targets_backend157 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %129, ptr %num_targets_backend157, align 1
  %ioctl_tunnel = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 53
  %131 = ptrtoint ptr %ioctl_tunnel to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ioctl_tunnel, align 8
  %and158 = and i32 %132, 127
  %tunnel_flags = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 23
  %133 = ptrtoint ptr %tunnel_flags to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %and158, ptr %tunnel_flags, align 1
  br label %cleanup589

sw.bb160:                                         ; preds = %entry
  %data161 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6
  %flags162 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %134 = ptrtoint ptr %flags162 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %flags162, align 1
  %136 = and i8 %135, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool165.not = icmp eq i8 %136, 0
  br i1 %tobool165.not, label %if.end168, label %if.then166

if.then166:                                       ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 5, ptr %status, align 2
  br label %cleanup589

if.end168:                                        ; preds = %sw.bb160
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp171.not = icmp eq i8 %139, 0
  br i1 %cmp171.not, label %if.else176, label %if.then173

if.then173:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 2, ptr %status, align 2
  %141 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %0, align 4
  br label %cleanup589

if.else176:                                       ; preds = %if.end168
  %142 = ptrtoint ptr %data161 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %data161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %143)
  %switch866 = icmp ult i8 %143, 2
  br i1 %switch866, label %if.then185, label %if.else199

if.then185:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp188 = icmp eq i8 %143, 0
  br i1 %cmp188, label %land.lhs.true, label %if.then185.if.else195_crit_edge

if.then185.if.else195_crit_edge:                  ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else195

land.lhs.true:                                    ; preds = %if.then185
  %port_id = getelementptr inbounds %struct.atto_hba_get_adapter_address, ptr %data161, i32 0, i32 1
  %144 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %port_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %145)
  %cmp191 = icmp ugt i8 %145, 7
  br i1 %cmp191, label %if.then193, label %land.lhs.true.if.else195_crit_edge

land.lhs.true.if.else195_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else195

if.then193:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 10, ptr %status, align 2
  br label %cleanup589

if.else195:                                       ; preds = %land.lhs.true.if.else195_crit_edge, %if.then185.if.else195_crit_edge
  %address = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 2
  %nvram = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %147 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %nvram, align 4
  %sas_addr = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %148, i32 0, i32 13
  %149 = ptrtoint ptr %sas_addr to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %150 = load i64, ptr %sas_addr, align 1
  %151 = ptrtoint ptr %address to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %150, ptr %address, align 1
  %addr_len = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 1
  %152 = ptrtoint ptr %addr_len to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 8, ptr %addr_len, align 1
  br label %cleanup589

if.else199:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 8, ptr %status, align 2
  br label %cleanup589

sw.bb204:                                         ; preds = %entry
  %flags205 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %154 = ptrtoint ptr %flags205 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %flags205, align 1
  %156 = and i8 %155, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool208.not = icmp eq i8 %156, 0
  br i1 %tobool208.not, label %if.end213, label %if.then209

if.then209:                                       ; preds = %sw.bb204
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %157 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %vrq.i, align 8
  %159 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %158, i32 0, i32 8
  %160 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %a, ptr %sgc, align 4
  %first_req.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %161 = ptrtoint ptr %first_req.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %rq, ptr %first_req.i.i, align 4
  %162 = load ptr, ptr %vrq.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %162, i32 116
  %sge.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %163 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %add.ptr1.i.i, ptr %limit.i.i, align 4
  %164 = ptrtoint ptr %sge.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %159, ptr %sge.i.i, align 4
  %last.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %165 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %159, ptr %last.i.i, align 4
  %166 = load ptr, ptr %vrq.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %159 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %166 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i8
  %sg_list_offset12.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %sg_list_offset12.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv.i.i, ptr %sg_list_offset12.i.i, align 1
  %chain.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %168 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %chain.i.i, align 4
  %length.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %169 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %length.i, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %170, i8 noundef zeroext 0) #8
  %171 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %vrq.i, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %172, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp.i.i = icmp eq i32 %174, 0
  br i1 %cmp.i.i, label %if.then209.hba_ioctl_tunnel.exit.thread_crit_edge, label %esas2r_build_sg_list.exit.i, !prof !52

if.then209.hba_ioctl_tunnel.exit.thread_crit_edge: ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  br label %hba_ioctl_tunnel.exit.thread

esas2r_build_sg_list.exit.i:                      ; preds = %if.then209
  %build_sgl.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %175 = ptrtoint ptr %build_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %build_sgl.i.i, align 8
  %call.i.i = tail call zeroext i1 %176(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i.i, label %esas2r_build_sg_list.exit.i.hba_ioctl_tunnel.exit.thread_crit_edge, label %hba_ioctl_tunnel.exit

esas2r_build_sg_list.exit.i.hba_ioctl_tunnel.exit.thread_crit_edge: ; preds = %esas2r_build_sg_list.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hba_ioctl_tunnel.exit.thread

hba_ioctl_tunnel.exit.thread:                     ; preds = %esas2r_build_sg_list.exit.i.hba_ioctl_tunnel.exit.thread_crit_edge, %if.then209.hba_ioctl_tunnel.exit.thread_crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup589

hba_ioctl_tunnel.exit:                            ; preds = %esas2r_build_sg_list.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 3, ptr %status, align 2
  br label %cleanup589

if.end213:                                        ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 5, ptr %status, align 2
  br label %cleanup589

sw.bb215:                                         ; preds = %entry
  %data216 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6
  %flags217 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %179 = ptrtoint ptr %flags217 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %flags217, align 1
  %181 = and i8 %180, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool220.not = icmp eq i8 %181, 0
  br i1 %tobool220.not, label %if.end225, label %if.then221

if.then221:                                       ; preds = %sw.bb215
  %vrq.i883 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %182 = ptrtoint ptr %vrq.i883 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %vrq.i883, align 8
  %184 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %183, i32 0, i32 8
  %185 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %a, ptr %sgc, align 4
  %first_req.i.i884 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %186 = ptrtoint ptr %first_req.i.i884 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %rq, ptr %first_req.i.i884, align 4
  %187 = load ptr, ptr %vrq.i883, align 8
  %add.ptr1.i.i885 = getelementptr i8, ptr %187, i32 116
  %sge.i.i886 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i.i887 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %188 = ptrtoint ptr %limit.i.i887 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %add.ptr1.i.i885, ptr %limit.i.i887, align 4
  %189 = ptrtoint ptr %sge.i.i886 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %184, ptr %sge.i.i886, align 4
  %last.i.i888 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %190 = ptrtoint ptr %last.i.i888 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %184, ptr %last.i.i888, align 4
  %191 = load ptr, ptr %vrq.i883, align 8
  %sub.ptr.lhs.cast.i.i889 = ptrtoint ptr %184 to i32
  %sub.ptr.rhs.cast.i.i890 = ptrtoint ptr %191 to i32
  %sub.ptr.sub.i.i891 = sub i32 %sub.ptr.lhs.cast.i.i889, %sub.ptr.rhs.cast.i.i890
  %conv.i.i892 = trunc i32 %sub.ptr.sub.i.i891 to i8
  %sg_list_offset12.i.i893 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %sg_list_offset12.i.i893 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv.i.i892, ptr %sg_list_offset12.i.i893, align 1
  %chain.i.i894 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %193 = ptrtoint ptr %chain.i.i894 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %chain.i.i894, align 4
  %length.i895 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %194 = ptrtoint ptr %length.i895 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %length.i895, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %195, i8 noundef zeroext 0) #8
  %196 = ptrtoint ptr %vrq.i883 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %vrq.i883, align 8
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %197, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp.i.i896 = icmp eq i32 %199, 0
  br i1 %cmp.i.i896, label %if.then221.cleanup302_crit_edge, label %esas2r_build_sg_list.exit.i899, !prof !52

if.then221.cleanup302_crit_edge:                  ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup302

esas2r_build_sg_list.exit.i899:                   ; preds = %if.then221
  %build_sgl.i.i897 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %200 = ptrtoint ptr %build_sgl.i.i897 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %build_sgl.i.i897, align 8
  %call.i.i898 = tail call zeroext i1 %201(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i.i898, label %esas2r_build_sg_list.exit.i899.cleanup302_crit_edge, label %hba_ioctl_tunnel.exit904

esas2r_build_sg_list.exit.i899.cleanup302_crit_edge: ; preds = %esas2r_build_sg_list.exit.i899
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup302

hba_ioctl_tunnel.exit904:                         ; preds = %esas2r_build_sg_list.exit.i899
  call void @__sanitizer_cov_trace_pc() #10
  %202 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 3, ptr %status, align 2
  br label %cleanup589

if.end225:                                        ; preds = %sw.bb215
  %203 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %204)
  %cmp228 = icmp ugt i8 %204, 1
  br i1 %cmp228, label %if.then230, label %if.end233

if.then230:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 2, ptr %status, align 2
  %206 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %0, align 4
  br label %cleanup589

if.end233:                                        ; preds = %if.end225
  %trace_type = getelementptr inbounds %struct.atto_hba_trace, ptr %data216, i32 0, i32 1
  %207 = ptrtoint ptr %trace_type to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %trace_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %208)
  %cmp235 = icmp ne i8 %208, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp240.not = icmp eq i8 %204, 0
  %or.cond = select i1 %cmp235, i1 true, i1 %cmp240.not
  br i1 %or.cond, label %if.else299, label %if.then242

if.then242:                                       ; preds = %if.end233
  %209 = ptrtoint ptr %data216 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %data216, align 1
  %211 = zext i8 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %210, label %if.then287 [
    i8 4, label %if.then246
    i8 5, label %if.then278
    i8 0, label %if.then242.if.end291_crit_edge
  ]

if.then242.if.end291_crit_edge:                   ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291

if.then246:                                       ; preds = %if.then242
  %data_length = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 4
  %212 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %data_length, align 4
  %current_offset = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 2
  %214 = ptrtoint ptr %current_offset to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %current_offset, align 1
  %flags2247 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %216 = ptrtoint ptr %flags2247 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %flags2247, align 4
  %218 = shl i32 %217, 15
  %219 = and i32 %218, 524288
  %220 = tail call i32 @llvm.umin.i32(i32 %213, i32 %219)
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %219)
  %cmp256.not = icmp uge i32 %215, %219
  %add = add i32 %220, %215
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %219)
  %cmp259 = icmp ugt i32 %add, %219
  %or.cond851 = select i1 %cmp256.not, i1 true, i1 %cmp259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp262 = icmp eq i32 %220, 0
  %or.cond852 = select i1 %or.cond851, i1 true, i1 %cmp262
  br i1 %or.cond852, label %cleanup270, label %cleanup270.thread

cleanup270.thread:                                ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 10
  %fw_coredump_buff = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 92
  %add.ptr268 = getelementptr i8, ptr %fw_coredump_buff, i32 %215
  %221 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr268, i32 %220)
  %222 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %220, ptr %data_length, align 4
  br label %if.end291

cleanup270:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 8, ptr %status, align 2
  br label %cleanup589

if.then278:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #10
  %fw_coredump_buff279 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 92
  %224 = call ptr @memset(ptr %fw_coredump_buff279, i32 0, i32 524288)
  %flags2281 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags2281) #8
  br label %if.end291

if.then287:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #10
  %225 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 5, ptr %status, align 2
  br label %cleanup589

if.end291:                                        ; preds = %if.then278, %cleanup270.thread, %if.then242.if.end291_crit_edge
  %trace_mask = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 6
  %226 = ptrtoint ptr %trace_mask to i32
  call void @__asan_storeN_noabort(i32 %226, i32 4)
  store i32 0, ptr %trace_mask, align 1
  %current_offset292 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 2
  %227 = ptrtoint ptr %current_offset292 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 4)
  store i32 0, ptr %current_offset292, align 1
  %total_length = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 4
  %228 = ptrtoint ptr %total_length to i32
  call void @__asan_storeN_noabort(i32 %228, i32 4)
  store i32 524288, ptr %total_length, align 1
  %flags2293 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %229 = ptrtoint ptr %flags2293 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %flags2293, align 4
  %231 = and i32 %230, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool295.not = icmp eq i32 %231, 0
  br i1 %tobool295.not, label %if.then296, label %if.end291.cleanup589_crit_edge

if.end291.cleanup589_crit_edge:                   ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup589

if.then296:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  %232 = ptrtoint ptr %total_length to i32
  call void @__asan_storeN_noabort(i32 %232, i32 4)
  store i32 0, ptr %total_length, align 1
  br label %cleanup589

if.else299:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 5, ptr %status, align 2
  br label %cleanup589

cleanup302:                                       ; preds = %esas2r_build_sg_list.exit.i899.cleanup302_crit_edge, %if.then221.cleanup302_crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup589

sw.bb304:                                         ; preds = %entry
  %data305 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6
  %lun306 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 9
  %234 = ptrtoint ptr %lun306 to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %lun.sroa.0.0.copyload = load i32, ptr %lun306, align 1
  %lun.sroa.8.0.arraydecay307.sroa_idx = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 9, i32 4
  %235 = ptrtoint ptr %lun.sroa.8.0.arraydecay307.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %lun.sroa.8.0.copyload = load i32, ptr %lun.sroa.8.0.arraydecay307.sroa_idx, align 1
  %flags308 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %236 = ptrtoint ptr %flags308 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %flags308, align 1
  %238 = and i8 %237, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool311.not = icmp eq i8 %238, 0
  br i1 %tobool311.not, label %if.end316, label %if.then312

if.then312:                                       ; preds = %sw.bb304
  %vrq.i905 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %239 = ptrtoint ptr %vrq.i905 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %vrq.i905, align 8
  %241 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %240, i32 0, i32 8
  %242 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %a, ptr %sgc, align 4
  %first_req.i.i906 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %243 = ptrtoint ptr %first_req.i.i906 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %rq, ptr %first_req.i.i906, align 4
  %244 = load ptr, ptr %vrq.i905, align 8
  %add.ptr1.i.i907 = getelementptr i8, ptr %244, i32 116
  %sge.i.i908 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i.i909 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %245 = ptrtoint ptr %limit.i.i909 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %add.ptr1.i.i907, ptr %limit.i.i909, align 4
  %246 = ptrtoint ptr %sge.i.i908 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %241, ptr %sge.i.i908, align 4
  %last.i.i910 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %247 = ptrtoint ptr %last.i.i910 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %241, ptr %last.i.i910, align 4
  %248 = load ptr, ptr %vrq.i905, align 8
  %sub.ptr.lhs.cast.i.i911 = ptrtoint ptr %241 to i32
  %sub.ptr.rhs.cast.i.i912 = ptrtoint ptr %248 to i32
  %sub.ptr.sub.i.i913 = sub i32 %sub.ptr.lhs.cast.i.i911, %sub.ptr.rhs.cast.i.i912
  %conv.i.i914 = trunc i32 %sub.ptr.sub.i.i913 to i8
  %sg_list_offset12.i.i915 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %248, i32 0, i32 4
  %249 = ptrtoint ptr %sg_list_offset12.i.i915 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv.i.i914, ptr %sg_list_offset12.i.i915, align 1
  %chain.i.i916 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %250 = ptrtoint ptr %chain.i.i916 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr null, ptr %chain.i.i916, align 4
  %length.i917 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %251 = ptrtoint ptr %length.i917 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %length.i917, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %252, i8 noundef zeroext 0) #8
  %253 = ptrtoint ptr %vrq.i905 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %vrq.i905, align 8
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %256 = load i32, ptr %254, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %cmp.i.i918 = icmp eq i32 %256, 0
  br i1 %cmp.i.i918, label %if.then312._crit_edge, label %esas2r_build_sg_list.exit.i921, !prof !52

if.then312._crit_edge:                            ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  br label %260

esas2r_build_sg_list.exit.i921:                   ; preds = %if.then312
  %build_sgl.i.i919 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %257 = ptrtoint ptr %build_sgl.i.i919 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %build_sgl.i.i919, align 8
  %call.i.i920 = tail call zeroext i1 %258(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i.i920, label %esas2r_build_sg_list.exit.i921._crit_edge, label %.thread

esas2r_build_sg_list.exit.i921._crit_edge:        ; preds = %esas2r_build_sg_list.exit.i921
  call void @__sanitizer_cov_trace_pc() #10
  br label %260

.thread:                                          ; preds = %esas2r_build_sg_list.exit.i921
  call void @__sanitizer_cov_trace_pc() #10
  %259 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 3, ptr %status, align 2
  br label %cleanup589

260:                                              ; preds = %esas2r_build_sg_list.exit.i921._crit_edge, %if.then312._crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup589

if.end316:                                        ; preds = %sw.bb304
  %261 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %cmp319.not = icmp eq i8 %262, 0
  br i1 %cmp319.not, label %if.end324, label %if.then321

if.then321:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #10
  %263 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 2, ptr %status, align 2
  %264 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %0, align 4
  br label %cleanup589

if.end324:                                        ; preds = %if.end316
  %target_id = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 5
  %265 = ptrtoint ptr %target_id to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %target_id, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %266)
  %cmp325 = icmp ugt i32 %266, 255
  br i1 %cmp325, label %if.end324.if.then329_crit_edge, label %lor.lhs.false327

if.end324.if.then329_crit_edge:                   ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then329

lor.lhs.false327:                                 ; preds = %if.end324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lun.sroa.8.0.copyload)
  %267 = icmp eq i32 %lun.sroa.8.0.copyload, 0
  %conv22.i = and i32 %lun.sroa.0.0.copyload, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %conv22.i, 0
  %or.cond39.i = select i1 %267, i1 %cmp23.i, i1 false
  %268 = and i32 %lun.sroa.0.0.copyload, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp29.i = icmp eq i32 %268, 0
  %or.cond40.i = select i1 %or.cond39.i, i1 %cmp29.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %lun.sroa.0.0.copyload)
  %cmp34.i = icmp ult i32 %lun.sroa.0.0.copyload, 16777216
  %spec.select.i = select i1 %or.cond40.i, i1 %cmp34.i, i1 false
  br i1 %spec.select.i, label %if.end331, label %lor.lhs.false327.if.then329_crit_edge

lor.lhs.false327.if.then329_crit_edge:            ; preds = %lor.lhs.false327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then329

if.then329:                                       ; preds = %lor.lhs.false327.if.then329_crit_edge, %if.end324.if.then329_crit_edge
  %269 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 8, ptr %status, align 2
  br label %cleanup589

if.end331:                                        ; preds = %lor.lhs.false327
  %270 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %a, ptr %sgc, align 4
  %first_req.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %271 = ptrtoint ptr %first_req.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %rq, ptr %first_req.i, align 4
  %vrq.i927 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %272 = ptrtoint ptr %vrq.i927 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %vrq.i927, align 8
  %add.ptr1.i = getelementptr i8, ptr %273, i32 116
  %sge.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %274 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %add.ptr1.i, ptr %limit.i, align 4
  %275 = load ptr, ptr %vrq.i927, align 8
  %u.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %275, i32 0, i32 9
  %276 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %u.i, ptr %sge.i, align 4
  %last10.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %277 = ptrtoint ptr %last10.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %u.i, ptr %last10.i, align 4
  %278 = load ptr, ptr %vrq.i927, align 8
  %sg_list_offset12.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %278, i32 0, i32 4
  %279 = ptrtoint ptr %sg_list_offset12.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 44, ptr %sg_list_offset12.i, align 1
  %chain.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %280 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr null, ptr %chain.i, align 4
  %data_length332 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 4
  %281 = ptrtoint ptr %data_length332 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %data_length332, align 4
  %length = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %283 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %length, align 4
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %284 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cur_offset, align 4
  %add.ptr333 = getelementptr i8, ptr %285, i32 416
  store ptr %add.ptr333, ptr %cur_offset, align 4
  %286 = ptrtoint ptr %target_id to i32
  call void @__asan_loadN_noabort(i32 %286, i32 4)
  %287 = load i32, ptr %target_id, align 1
  %conv335 = trunc i32 %287 to i16
  %target_id336 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 9
  %288 = ptrtoint ptr %target_id336 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %conv335, ptr %target_id336, align 8
  %arrayidx338 = getelementptr %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 9, i32 1
  %289 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx338, align 1
  %conv339 = zext i8 %290 to i32
  %291 = shl nuw i32 %conv339, 24
  %292 = load ptr, ptr %vrq.i927, align 8
  %flags340 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %292, i32 0, i32 6
  %293 = ptrtoint ptr %flags340 to i32
  call void @__asan_loadN_noabort(i32 %293, i32 4)
  %294 = load i32, ptr %flags340, align 1
  %or341 = or i32 %294, %291
  store i32 %or341, ptr %flags340, align 1
  %295 = load ptr, ptr %vrq.i927, align 8
  %cdb = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %295, i32 0, i32 7
  %296 = call ptr @memcpy(ptr %cdb, ptr %data305, i32 16)
  %297 = load i32, ptr %data_length332, align 4
  %298 = tail call i32 @llvm.bswap.i32(i32 %297)
  %299 = ptrtoint ptr %vrq.i927 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %vrq.i927, align 8
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 %298, ptr %300, align 1
  %sense_length = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 15, i32 14
  %302 = ptrtoint ptr %sense_length to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %sense_length, align 1
  %sense_len = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 11
  %304 = ptrtoint ptr %sense_len to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %303, ptr %sense_len, align 1
  %sense_data = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 9, i32 12
  %sense_buf = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 5
  %305 = ptrtoint ptr %sense_buf to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %sense_data, ptr %sense_buf, align 4
  %aux_req_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 21
  %306 = ptrtoint ptr %aux_req_cx to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %0, ptr %aux_req_cx, align 4
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 13
  %307 = ptrtoint ptr %comp_cb to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %comp_cb, align 4
  %aux_req_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 20
  %309 = ptrtoint ptr %aux_req_cb to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %308, ptr %aux_req_cb, align 8
  store ptr @scsi_passthru_comp_cb, ptr %comp_cb, align 4
  %flags351 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 15, i32 15
  %310 = ptrtoint ptr %flags351 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %flags351, align 1
  %and352 = and i32 %311, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and352)
  %tobool353.not = icmp eq i32 %and352, 0
  br i1 %tobool353.not, label %if.else358, label %if.end331.if.end373.sink.split_crit_edge

if.end331.if.end373.sink.split_crit_edge:         ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373.sink.split

if.else358:                                       ; preds = %if.end331
  %and360 = and i32 %311, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360)
  %tobool361.not = icmp eq i32 %and360, 0
  br i1 %tobool361.not, label %if.else366, label %if.else358.if.end373.sink.split_crit_edge

if.else358.if.end373.sink.split_crit_edge:        ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373.sink.split

if.else366:                                       ; preds = %if.else358
  %312 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %tobool368.not = icmp eq i32 %313, 0
  br i1 %tobool368.not, label %if.else366.if.end373_crit_edge, label %if.then369

if.else366.if.end373_crit_edge:                   ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373

if.then369:                                       ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #10
  %314 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 8, ptr %status, align 2
  br label %cleanup589

if.end373.sink.split:                             ; preds = %if.else358.if.end373.sink.split_crit_edge, %if.end331.if.end373.sink.split_crit_edge
  %.sink1010 = phi i32 [ 2, %if.end331.if.end373.sink.split_crit_edge ], [ 1, %if.else358.if.end373.sink.split_crit_edge ]
  %315 = ptrtoint ptr %vrq.i927 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %vrq.i927, align 8
  %flags356 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %316, i32 0, i32 6
  %317 = ptrtoint ptr %flags356 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 4)
  %318 = load i32, ptr %flags356, align 1
  %or365 = or i32 %318, %.sink1010
  store i32 %or365, ptr %flags356, align 1
  br label %if.end373

if.end373:                                        ; preds = %if.end373.sink.split, %if.else366.if.end373_crit_edge
  %319 = ptrtoint ptr %flags351 to i32
  call void @__asan_loadN_noabort(i32 %319, i32 4)
  %320 = load i32, ptr %flags351, align 1
  %and375 = and i32 %320, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and375)
  %tobool376.not = icmp eq i32 %and375, 0
  br i1 %tobool376.not, label %if.else381, label %if.end373.if.end390.sink.split_crit_edge

if.end373.if.end390.sink.split_crit_edge:         ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end390.sink.split

if.else381:                                       ; preds = %if.end373
  %and383 = and i32 %320, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383)
  %tobool384.not = icmp eq i32 %and383, 0
  br i1 %tobool384.not, label %if.else381.if.end390_crit_edge, label %if.else381.if.end390.sink.split_crit_edge

if.else381.if.end390.sink.split_crit_edge:        ; preds = %if.else381
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end390.sink.split

if.else381.if.end390_crit_edge:                   ; preds = %if.else381
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end390

if.end390.sink.split:                             ; preds = %if.else381.if.end390.sink.split_crit_edge, %if.end373.if.end390.sink.split_crit_edge
  %.sink1012 = phi i32 [ 131072, %if.end373.if.end390.sink.split_crit_edge ], [ 65536, %if.else381.if.end390.sink.split_crit_edge ]
  %321 = ptrtoint ptr %vrq.i927 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %vrq.i927, align 8
  %flags379 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %322, i32 0, i32 6
  %323 = ptrtoint ptr %flags379 to i32
  call void @__asan_loadN_noabort(i32 %323, i32 4)
  %324 = load i32, ptr %flags379, align 1
  %or388 = or i32 %324, %.sink1012
  store i32 %or388, ptr %flags379, align 1
  br label %if.end390

if.end390:                                        ; preds = %if.end390.sink.split, %if.else381.if.end390_crit_edge
  %325 = ptrtoint ptr %vrq.i927 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %vrq.i927, align 8
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_loadN_noabort(i32 %327, i32 4)
  %328 = load i32, ptr %326, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp.i = icmp eq i32 %328, 0
  br i1 %cmp.i, label %if.end390.if.end394_crit_edge, label %esas2r_build_sg_list.exit, !prof !52

if.end390.if.end394_crit_edge:                    ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end394

esas2r_build_sg_list.exit:                        ; preds = %if.end390
  %build_sgl.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %329 = ptrtoint ptr %build_sgl.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %build_sgl.i, align 8
  %call.i = tail call zeroext i1 %330(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i, label %esas2r_build_sg_list.exit.if.end394_crit_edge, label %if.then392

esas2r_build_sg_list.exit.if.end394_crit_edge:    ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end394

if.then392:                                       ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  %331 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 3, ptr %status, align 2
  br label %cleanup589

if.end394:                                        ; preds = %esas2r_build_sg_list.exit.if.end394_crit_edge, %if.end390.if.end394_crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup589

sw.bb398:                                         ; preds = %entry
  %data399 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6
  %flags400 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %332 = ptrtoint ptr %flags400 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %flags400, align 1
  %334 = and i8 %333, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool403.not = icmp eq i8 %334, 0
  br i1 %tobool403.not, label %if.end408, label %if.then404

if.then404:                                       ; preds = %sw.bb398
  %vrq.i931 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %335 = ptrtoint ptr %vrq.i931 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %vrq.i931, align 8
  %337 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %336, i32 0, i32 8
  %338 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %a, ptr %sgc, align 4
  %first_req.i.i932 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %339 = ptrtoint ptr %first_req.i.i932 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %rq, ptr %first_req.i.i932, align 4
  %340 = load ptr, ptr %vrq.i931, align 8
  %add.ptr1.i.i933 = getelementptr i8, ptr %340, i32 116
  %sge.i.i934 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i.i935 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %341 = ptrtoint ptr %limit.i.i935 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %add.ptr1.i.i933, ptr %limit.i.i935, align 4
  %342 = ptrtoint ptr %sge.i.i934 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %337, ptr %sge.i.i934, align 4
  %last.i.i936 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %343 = ptrtoint ptr %last.i.i936 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %337, ptr %last.i.i936, align 4
  %344 = load ptr, ptr %vrq.i931, align 8
  %sub.ptr.lhs.cast.i.i937 = ptrtoint ptr %337 to i32
  %sub.ptr.rhs.cast.i.i938 = ptrtoint ptr %344 to i32
  %sub.ptr.sub.i.i939 = sub i32 %sub.ptr.lhs.cast.i.i937, %sub.ptr.rhs.cast.i.i938
  %conv.i.i940 = trunc i32 %sub.ptr.sub.i.i939 to i8
  %sg_list_offset12.i.i941 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %344, i32 0, i32 4
  %345 = ptrtoint ptr %sg_list_offset12.i.i941 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %conv.i.i940, ptr %sg_list_offset12.i.i941, align 1
  %chain.i.i942 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %346 = ptrtoint ptr %chain.i.i942 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr null, ptr %chain.i.i942, align 4
  %length.i943 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %347 = ptrtoint ptr %length.i943 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %length.i943, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %348, i8 noundef zeroext 0) #8
  %349 = ptrtoint ptr %vrq.i931 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %vrq.i931, align 8
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_loadN_noabort(i32 %351, i32 4)
  %352 = load i32, ptr %350, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %cmp.i.i944 = icmp eq i32 %352, 0
  br i1 %cmp.i.i944, label %if.then404._crit_edge, label %esas2r_build_sg_list.exit.i947, !prof !52

if.then404._crit_edge:                            ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #10
  br label %356

esas2r_build_sg_list.exit.i947:                   ; preds = %if.then404
  %build_sgl.i.i945 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %353 = ptrtoint ptr %build_sgl.i.i945 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %build_sgl.i.i945, align 8
  %call.i.i946 = tail call zeroext i1 %354(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i.i946, label %esas2r_build_sg_list.exit.i947._crit_edge, label %.thread1006

esas2r_build_sg_list.exit.i947._crit_edge:        ; preds = %esas2r_build_sg_list.exit.i947
  call void @__sanitizer_cov_trace_pc() #10
  br label %356

.thread1006:                                      ; preds = %esas2r_build_sg_list.exit.i947
  call void @__sanitizer_cov_trace_pc() #10
  %355 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 3, ptr %status, align 2
  br label %cleanup589

356:                                              ; preds = %esas2r_build_sg_list.exit.i947._crit_edge, %if.then404._crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup589

if.end408:                                        ; preds = %sw.bb398
  %357 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %cmp411.not = icmp eq i8 %358, 0
  br i1 %cmp411.not, label %if.end416, label %if.then413

if.then413:                                       ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #10
  %359 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 2, ptr %status, align 2
  %360 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 0, ptr %0, align 4
  br label %cleanup589

if.end416:                                        ; preds = %if.end408
  %target_id417 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 2
  %361 = ptrtoint ptr %target_id417 to i32
  call void @__asan_loadN_noabort(i32 %361, i32 4)
  %362 = load i32, ptr %target_id417, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %362)
  %cmp418 = icmp ugt i32 %362, 255
  br i1 %cmp418, label %if.then420, label %if.end422

if.then420:                                       ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #10
  %363 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 8, ptr %status, align 2
  br label %cleanup589

if.end422:                                        ; preds = %if.end416
  %target_state = getelementptr %struct.esas2r_target, ptr %a, i32 %362, i32 2
  %364 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %365)
  %cmp429.not = icmp eq i8 %365, 5
  br i1 %cmp429.not, label %if.else433, label %if.then431

if.then431:                                       ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #10
  %366 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 1, ptr %status, align 2
  br label %if.end461

if.else433:                                       ; preds = %if.end422
  %367 = ptrtoint ptr %data399 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %data399, align 1
  %369 = zext i8 %368 to i64
  call void @__sanitizer_cov_trace_switch(i64 %369, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %368, label %if.else457 [
    i8 0, label %if.then438
    i8 1, label %if.then455
  ]

if.then438:                                       ; preds = %if.else433
  %sas_addr439 = getelementptr %struct.esas2r_target, ptr %a, i32 %362, i32 10
  %370 = ptrtoint ptr %sas_addr439 to i32
  call void @__asan_load8_noabort(i32 %370)
  %371 = load i64, ptr %sas_addr439, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %371)
  %cmp440 = icmp eq i64 %371, 0
  br i1 %cmp440, label %if.then442, label %if.else444

if.then442:                                       ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #10
  %372 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 5, ptr %status, align 2
  br label %if.end461

if.else444:                                       ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #10
  %address446 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 4
  %373 = ptrtoint ptr %address446 to i32
  call void @__asan_storeN_noabort(i32 %373, i32 8)
  store i64 %371, ptr %address446, align 1
  %addr_len448 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 1
  %374 = ptrtoint ptr %addr_len448 to i32
  call void @__asan_storeN_noabort(i32 %374, i32 2)
  store i16 8, ptr %addr_len448, align 1
  br label %if.end461

if.then455:                                       ; preds = %if.else433
  call void @__sanitizer_cov_trace_pc() #10
  %375 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 10, ptr %status, align 2
  br label %if.end461

if.else457:                                       ; preds = %if.else433
  call void @__sanitizer_cov_trace_pc() #10
  %376 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 8, ptr %status, align 2
  br label %if.end461

if.end461:                                        ; preds = %if.else457, %if.then455, %if.else444, %if.then442, %if.then431
  %377 = ptrtoint ptr %target_id417 to i32
  call void @__asan_loadN_noabort(i32 %377, i32 4)
  %378 = load i32, ptr %target_id417, align 1
  %conv463 = trunc i32 %378 to i16
  %call464 = tail call zeroext i16 @esas2r_targ_db_find_next_present(ptr noundef %a, i16 noundef zeroext %conv463) #8
  %conv465 = zext i16 %call464 to i32
  %379 = ptrtoint ptr %target_id417 to i32
  call void @__asan_storeN_noabort(i32 %379, i32 4)
  store i32 %conv465, ptr %target_id417, align 1
  br label %cleanup589

sw.bb470:                                         ; preds = %entry.sw.bb470_crit_edge, %entry.sw.bb470_crit_edge1014
  %vrq.i953 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %380 = ptrtoint ptr %vrq.i953 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %vrq.i953, align 8
  %382 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %381, i32 0, i32 8
  %383 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %a, ptr %sgc, align 4
  %first_req.i.i954 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %384 = ptrtoint ptr %first_req.i.i954 to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %rq, ptr %first_req.i.i954, align 4
  %385 = load ptr, ptr %vrq.i953, align 8
  %add.ptr1.i.i955 = getelementptr i8, ptr %385, i32 116
  %sge.i.i956 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i.i957 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %386 = ptrtoint ptr %limit.i.i957 to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %add.ptr1.i.i955, ptr %limit.i.i957, align 4
  %387 = ptrtoint ptr %sge.i.i956 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %382, ptr %sge.i.i956, align 4
  %last.i.i958 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %388 = ptrtoint ptr %last.i.i958 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %382, ptr %last.i.i958, align 4
  %389 = load ptr, ptr %vrq.i953, align 8
  %sub.ptr.lhs.cast.i.i959 = ptrtoint ptr %382 to i32
  %sub.ptr.rhs.cast.i.i960 = ptrtoint ptr %389 to i32
  %sub.ptr.sub.i.i961 = sub i32 %sub.ptr.lhs.cast.i.i959, %sub.ptr.rhs.cast.i.i960
  %conv.i.i962 = trunc i32 %sub.ptr.sub.i.i961 to i8
  %sg_list_offset12.i.i963 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %389, i32 0, i32 4
  %390 = ptrtoint ptr %sg_list_offset12.i.i963 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %conv.i.i962, ptr %sg_list_offset12.i.i963, align 1
  %chain.i.i964 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %391 = ptrtoint ptr %chain.i.i964 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr null, ptr %chain.i.i964, align 4
  %length.i965 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %392 = ptrtoint ptr %length.i965 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %length.i965, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %393, i8 noundef zeroext 0) #8
  %394 = ptrtoint ptr %vrq.i953 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %vrq.i953, align 8
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_loadN_noabort(i32 %396, i32 4)
  %397 = load i32, ptr %395, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %cmp.i.i966 = icmp eq i32 %397, 0
  br i1 %cmp.i.i966, label %sw.bb470.hba_ioctl_tunnel.exit974.thread_crit_edge, label %esas2r_build_sg_list.exit.i969, !prof !52

sw.bb470.hba_ioctl_tunnel.exit974.thread_crit_edge: ; preds = %sw.bb470
  call void @__sanitizer_cov_trace_pc() #10
  br label %hba_ioctl_tunnel.exit974.thread

esas2r_build_sg_list.exit.i969:                   ; preds = %sw.bb470
  %build_sgl.i.i967 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %398 = ptrtoint ptr %build_sgl.i.i967 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %build_sgl.i.i967, align 8
  %call.i.i968 = tail call zeroext i1 %399(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i.i968, label %esas2r_build_sg_list.exit.i969.hba_ioctl_tunnel.exit974.thread_crit_edge, label %hba_ioctl_tunnel.exit974

esas2r_build_sg_list.exit.i969.hba_ioctl_tunnel.exit974.thread_crit_edge: ; preds = %esas2r_build_sg_list.exit.i969
  call void @__sanitizer_cov_trace_pc() #10
  br label %hba_ioctl_tunnel.exit974.thread

hba_ioctl_tunnel.exit974.thread:                  ; preds = %esas2r_build_sg_list.exit.i969.hba_ioctl_tunnel.exit974.thread_crit_edge, %sw.bb470.hba_ioctl_tunnel.exit974.thread_crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup589

hba_ioctl_tunnel.exit974:                         ; preds = %esas2r_build_sg_list.exit.i969
  call void @__sanitizer_cov_trace_pc() #10
  %400 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 3, ptr %status, align 2
  br label %cleanup589

sw.bb474:                                         ; preds = %entry
  %data475 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6
  %flags476 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %401 = ptrtoint ptr %flags476 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %flags476, align 1
  %403 = and i8 %402, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %tobool479.not = icmp eq i8 %403, 0
  br i1 %tobool479.not, label %if.end482, label %if.then480

if.then480:                                       ; preds = %sw.bb474
  call void @__sanitizer_cov_trace_pc() #10
  %404 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 5, ptr %status, align 2
  br label %cleanup589

if.end482:                                        ; preds = %sw.bb474
  %405 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %cmp485.not = icmp eq i8 %406, 0
  br i1 %cmp485.not, label %if.end490, label %if.then487

if.then487:                                       ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #10
  %407 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 2, ptr %status, align 2
  %408 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 0, ptr %0, align 4
  br label %cleanup589

if.end490:                                        ; preds = %if.end482
  %409 = ptrtoint ptr %data475 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %data475, align 1
  %411 = zext i8 %410 to i64
  call void @__sanitizer_cov_trace_switch(i64 %411, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %410, label %if.then500 [
    i8 0, label %if.then494
    i8 1, label %if.end490.if.end503_crit_edge
  ]

if.end490.if.end503_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end503

if.then494:                                       ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @esas2r_reset_adapter(ptr noundef %a) #8
  br label %if.end503

if.then500:                                       ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #10
  %412 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 5, ptr %status, align 2
  br label %cleanup589

if.end503:                                        ; preds = %if.then494, %if.end490.if.end503_crit_edge
  %flags504 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %413 = ptrtoint ptr %flags504 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load volatile i32, ptr %flags504, align 4
  %415 = and i32 %414, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool506.not = icmp eq i32 %415, 0
  br i1 %tobool506.not, label %if.else508, label %if.then507

if.then507:                                       ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #10
  %adap_state = getelementptr inbounds %struct.atto_hba_adap_ctrl, ptr %data475, i32 0, i32 1
  %416 = ptrtoint ptr %adap_state to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 2, ptr %adap_state, align 1
  br label %cleanup589

if.else508:                                       ; preds = %if.end503
  %417 = ptrtoint ptr %flags504 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load volatile i32, ptr %flags504, align 4
  %419 = and i32 %418, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool511.not = icmp eq i32 %419, 0
  br i1 %tobool511.not, label %if.else514, label %if.then512

if.then512:                                       ; preds = %if.else508
  call void @__sanitizer_cov_trace_pc() #10
  %adap_state513 = getelementptr inbounds %struct.atto_hba_adap_ctrl, ptr %data475, i32 0, i32 1
  %420 = ptrtoint ptr %adap_state513 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 3, ptr %adap_state513, align 1
  br label %cleanup589

if.else514:                                       ; preds = %if.else508
  %421 = ptrtoint ptr %flags504 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load volatile i32, ptr %flags504, align 4
  %423 = and i32 %422, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %423)
  %tobool517.not = icmp eq i32 %423, 0
  br i1 %tobool517.not, label %if.else520, label %if.then518

if.then518:                                       ; preds = %if.else514
  call void @__sanitizer_cov_trace_pc() #10
  %adap_state519 = getelementptr inbounds %struct.atto_hba_adap_ctrl, ptr %data475, i32 0, i32 1
  %424 = ptrtoint ptr %adap_state519 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 4, ptr %adap_state519, align 1
  br label %cleanup589

if.else520:                                       ; preds = %if.else514
  %425 = ptrtoint ptr %flags504 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load volatile i32, ptr %flags504, align 4
  %427 = and i32 %426, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %427)
  %tobool523.not = icmp eq i32 %427, 0
  br i1 %tobool523.not, label %if.else526, label %if.then524

if.then524:                                       ; preds = %if.else520
  call void @__sanitizer_cov_trace_pc() #10
  %adap_state525 = getelementptr inbounds %struct.atto_hba_adap_ctrl, ptr %data475, i32 0, i32 1
  %428 = ptrtoint ptr %adap_state525 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 6, ptr %adap_state525, align 1
  br label %cleanup589

if.else526:                                       ; preds = %if.else520
  %429 = ptrtoint ptr %flags504 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load volatile i32, ptr %flags504, align 4
  %431 = and i32 %430, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %tobool529.not = icmp eq i32 %431, 0
  %adap_state533 = getelementptr inbounds %struct.atto_hba_adap_ctrl, ptr %data475, i32 0, i32 1
  br i1 %tobool529.not, label %if.else532, label %if.then530

if.then530:                                       ; preds = %if.else526
  call void @__sanitizer_cov_trace_pc() #10
  %432 = ptrtoint ptr %adap_state533 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 5, ptr %adap_state533, align 1
  br label %cleanup589

if.else532:                                       ; preds = %if.else526
  call void @__sanitizer_cov_trace_pc() #10
  %433 = ptrtoint ptr %adap_state533 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 1, ptr %adap_state533, align 1
  br label %cleanup589

sw.bb540:                                         ; preds = %entry
  %data541 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6
  %flags543 = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 3
  %434 = ptrtoint ptr %flags543 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %flags543, align 1
  %436 = and i8 %435, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool546.not = icmp eq i8 %436, 0
  br i1 %tobool546.not, label %if.end551, label %if.then547

if.then547:                                       ; preds = %sw.bb540
  %vrq.i975 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %437 = ptrtoint ptr %vrq.i975 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %vrq.i975, align 8
  %439 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %438, i32 0, i32 8
  %440 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %a, ptr %sgc, align 4
  %first_req.i.i976 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %441 = ptrtoint ptr %first_req.i.i976 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %rq, ptr %first_req.i.i976, align 4
  %442 = load ptr, ptr %vrq.i975, align 8
  %add.ptr1.i.i977 = getelementptr i8, ptr %442, i32 116
  %sge.i.i978 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i.i979 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %443 = ptrtoint ptr %limit.i.i979 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %add.ptr1.i.i977, ptr %limit.i.i979, align 4
  %444 = ptrtoint ptr %sge.i.i978 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %439, ptr %sge.i.i978, align 4
  %last.i.i980 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %445 = ptrtoint ptr %last.i.i980 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %439, ptr %last.i.i980, align 4
  %446 = load ptr, ptr %vrq.i975, align 8
  %sub.ptr.lhs.cast.i.i981 = ptrtoint ptr %439 to i32
  %sub.ptr.rhs.cast.i.i982 = ptrtoint ptr %446 to i32
  %sub.ptr.sub.i.i983 = sub i32 %sub.ptr.lhs.cast.i.i981, %sub.ptr.rhs.cast.i.i982
  %conv.i.i984 = trunc i32 %sub.ptr.sub.i.i983 to i8
  %sg_list_offset12.i.i985 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %446, i32 0, i32 4
  %447 = ptrtoint ptr %sg_list_offset12.i.i985 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 %conv.i.i984, ptr %sg_list_offset12.i.i985, align 1
  %chain.i.i986 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %448 = ptrtoint ptr %chain.i.i986 to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr null, ptr %chain.i.i986, align 4
  %length.i987 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %449 = ptrtoint ptr %length.i987 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %length.i987, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %450, i8 noundef zeroext 0) #8
  %451 = ptrtoint ptr %vrq.i975 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %vrq.i975, align 8
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_loadN_noabort(i32 %453, i32 4)
  %454 = load i32, ptr %452, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %cmp.i.i988 = icmp eq i32 %454, 0
  br i1 %cmp.i.i988, label %if.then547._crit_edge, label %esas2r_build_sg_list.exit.i991, !prof !52

if.then547._crit_edge:                            ; preds = %if.then547
  call void @__sanitizer_cov_trace_pc() #10
  br label %458

esas2r_build_sg_list.exit.i991:                   ; preds = %if.then547
  %build_sgl.i.i989 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %455 = ptrtoint ptr %build_sgl.i.i989 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %build_sgl.i.i989, align 8
  %call.i.i990 = tail call zeroext i1 %456(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i.i990, label %esas2r_build_sg_list.exit.i991._crit_edge, label %.thread1009

esas2r_build_sg_list.exit.i991._crit_edge:        ; preds = %esas2r_build_sg_list.exit.i991
  call void @__sanitizer_cov_trace_pc() #10
  br label %458

.thread1009:                                      ; preds = %esas2r_build_sg_list.exit.i991
  call void @__sanitizer_cov_trace_pc() #10
  %457 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 3, ptr %status, align 2
  br label %cleanup589

458:                                              ; preds = %esas2r_build_sg_list.exit.i991._crit_edge, %if.then547._crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup589

if.end551:                                        ; preds = %sw.bb540
  %459 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %460)
  %cmp554.not = icmp eq i8 %460, 0
  br i1 %cmp554.not, label %if.end559, label %if.then556

if.then556:                                       ; preds = %if.end551
  call void @__sanitizer_cov_trace_pc() #10
  %461 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 2, ptr %status, align 2
  %462 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 0, ptr %0, align 4
  br label %cleanup589

if.end559:                                        ; preds = %if.end551
  %463 = ptrtoint ptr %data541 to i32
  call void @__asan_loadN_noabort(i32 %463, i32 4)
  %464 = load i32, ptr %data541, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %464)
  %cmp561 = icmp ugt i32 %464, 255
  br i1 %cmp561, label %if.then563, label %if.end565

if.then563:                                       ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #10
  %465 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 8, ptr %status, align 2
  br label %cleanup589

if.end565:                                        ; preds = %if.end559
  %conv569 = trunc i32 %464 to i16
  %call574 = tail call zeroext i16 @esas2r_targ_db_find_next_present(ptr noundef %a, i16 noundef zeroext %conv569) #8
  %conv575 = zext i16 %call574 to i32
  %466 = ptrtoint ptr %data541 to i32
  call void @__asan_storeN_noabort(i32 %466, i32 4)
  store i32 %conv575, ptr %data541, align 1
  %target_state577 = getelementptr %struct.esas2r_target, ptr %a, i32 %464, i32 2
  %467 = ptrtoint ptr %target_state577 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %target_state577, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %468)
  %cmp579.not = icmp eq i8 %468, 5
  br i1 %cmp579.not, label %if.end583, label %if.then581

if.then581:                                       ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #10
  %469 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 1, ptr %status, align 2
  br label %cleanup589

if.end583:                                        ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #10
  %470 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 5, ptr %status, align 2
  br label %cleanup589

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %471 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 4, ptr %status, align 2
  br label %cleanup589

cleanup589:                                       ; preds = %sw.default, %if.end583, %if.then581, %if.then563, %if.then556, %458, %.thread1009, %if.else532, %if.then530, %if.then524, %if.then518, %if.then512, %if.then507, %if.then500, %if.then487, %if.then480, %hba_ioctl_tunnel.exit974, %hba_ioctl_tunnel.exit974.thread, %if.end461, %if.then420, %if.then413, %356, %.thread1006, %if.end394, %if.then392, %if.then369, %if.then329, %if.then321, %260, %.thread, %cleanup302, %if.else299, %if.then296, %if.end291.cleanup589_crit_edge, %if.then287, %cleanup270, %if.then230, %hba_ioctl_tunnel.exit904, %if.end213, %hba_ioctl_tunnel.exit, %hba_ioctl_tunnel.exit.thread, %if.else199, %if.else195, %if.then193, %if.then173, %if.then166, %if.end125, %if.then5, %if.then
  %retval.4 = phi i32 [ 1, %458 ], [ 1, %356 ], [ 1, %260 ], [ 1, %cleanup302 ], [ 1, %if.end394 ], [ 1, %hba_ioctl_tunnel.exit.thread ], [ 1, %hba_ioctl_tunnel.exit974.thread ], [ 0, %.thread1009 ], [ 0, %hba_ioctl_tunnel.exit974 ], [ 0, %.thread1006 ], [ 0, %.thread ], [ 0, %hba_ioctl_tunnel.exit ], [ 0, %if.then556 ], [ 0, %if.then563 ], [ 0, %if.then581 ], [ 0, %if.end583 ], [ 0, %if.then480 ], [ 0, %if.then487 ], [ 0, %if.then500 ], [ 0, %if.then512 ], [ 0, %if.then524 ], [ 0, %if.else532 ], [ 0, %if.then530 ], [ 0, %if.then518 ], [ 0, %if.then507 ], [ 0, %if.then413 ], [ 0, %if.then420 ], [ 0, %if.end461 ], [ 0, %if.then321 ], [ 0, %if.then329 ], [ 0, %if.then369 ], [ 0, %if.then392 ], [ 0, %if.then166 ], [ 0, %if.else199 ], [ 0, %if.else195 ], [ 0, %if.then193 ], [ 0, %if.then173 ], [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.end125 ], [ 0, %sw.default ], [ 0, %if.end213 ], [ 0, %if.then230 ], [ 0, %cleanup270 ], [ 0, %if.then287 ], [ 0, %if.end291.cleanup589_crit_edge ], [ 0, %if.then296 ], [ 0, %if.else299 ], [ 0, %hba_ioctl_tunnel.exit904 ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hba_ioctl_done_callback(ptr nocapture noundef readnone %a, ptr nocapture noundef readnone %rq, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %function = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drvr_rev_major = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 5
  %3 = ptrtoint ptr %drvr_rev_major to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %drvr_rev_major, align 1
  %drvr_rev_minor = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 6
  %4 = ptrtoint ptr %drvr_rev_minor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %drvr_rev_minor, align 1
  %drvr_rev_ascii = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 9
  %5 = call ptr @memcpy(ptr %drvr_rev_ascii, ptr @.str.9, i32 5)
  %drvr_name = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 10
  %6 = call ptr @memcpy(ptr %drvr_name, ptr @.str.10, i32 7)
  %num_busses = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 18
  %7 = ptrtoint ptr %num_busses to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_busses, align 1
  %num_targsper_bus = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 16
  %8 = ptrtoint ptr %num_targsper_bus to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 256, ptr %num_targsper_bus, align 1
  %num_lunsper_targ = getelementptr inbounds %struct.atto_ioctl, ptr %0, i32 0, i32 6, i32 0, i32 17
  %9 = ptrtoint ptr %num_lunsper_targ to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 1, ptr %num_lunsper_targ, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @handle_buffered_ioctl(ptr nocapture noundef readonly %bi) unnamed_addr #0 align 64 {
entry:
  %sgc = alloca %struct.esas2r_sg_context, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sgc) #8
  %2 = call ptr @memset(ptr %sgc, i32 255, i32 52)
  %call = tail call i32 @down_interruptible(ptr noundef nonnull @buffered_ioctl_semaphore) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup62_crit_edge

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.allocate_buffer_crit_edge, label %if.then3

if.end.allocate_buffer_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_buffer

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr @esas2r_buffered_ioctl_size, align 4
  %length = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %if.then4, label %if.end11thread-pre-split

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 55
  %7 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcid, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = load i32, ptr @esas2r_buffered_ioctl_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #8
  br label %allocate_buffer

allocate_buffer:                                  ; preds = %if.then4, %if.end.allocate_buffer_crit_edge
  %length6 = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 2
  %10 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length6, align 4
  store i32 %11, ptr @esas2r_buffered_ioctl_size, align 4
  %pcid7 = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 55
  %12 = ptrtoint ptr %pcid7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcid7, align 4
  store ptr %13, ptr @esas2r_buffered_ioctl_pcid, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev9, i32 noundef %11, ptr noundef nonnull @esas2r_buffered_ioctl_addr, i32 noundef 3264, i32 noundef 0) #8
  store ptr %call.i, ptr @esas2r_buffered_ioctl, align 4
  br label %if.end11

if.end11thread-pre-split:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %.pr = load ptr, ptr @esas2r_buffered_ioctl, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %allocate_buffer
  %14 = phi ptr [ %.pr, %if.end11thread-pre-split ], [ %call.i, %allocate_buffer ]
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %length14 = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 2
  %15 = ptrtoint ptr %length14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length14, align 4
  %call15 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %16) #8
  br label %if.end61

if.end16:                                         ; preds = %if.end11
  %ioctl = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 1
  %17 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioctl, align 4
  %length17 = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 2
  %19 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length17, align 4
  %21 = call ptr @memcpy(ptr %14, ptr %18, i32 %20)
  %call18 = tail call ptr @esas2r_alloc_request(ptr noundef %1) #8
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.6) #8
  br label %if.end61

if.end22:                                         ; preds = %if.end16
  %buffered_ioctl_done = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 75
  %22 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buffered_ioctl_done, align 4
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %call18, i32 0, i32 13
  %23 = ptrtoint ptr %comp_cb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @complete_buffered_ioctl_req, ptr %comp_cb, align 4
  %24 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %offset = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 4
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %27 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %cur_offset, align 4
  %get_phys_addr = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 4
  %28 = ptrtoint ptr %get_phys_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @get_physaddr_buffered_ioctl, ptr %get_phys_addr, align 4
  %29 = load i32, ptr @esas2r_buffered_ioctl_size, align 4
  %length23 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %30 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %length23, align 4
  %callback = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 5
  %31 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %callback, align 4
  %context = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 6
  %33 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context, align 4
  %call24 = call i32 %32(ptr noundef %1, ptr noundef nonnull %call18, ptr noundef nonnull %sgc, ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end22
  %35 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffered_ioctl_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool30.not114 = icmp eq i32 %36, 0
  br i1 %tobool30.not114, label %while.body.lr.ph, label %while.cond.preheader.land.lhs.true_crit_edge

while.cond.preheader.land.lhs.true_crit_edge:     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buffered_ioctl_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 74
  br label %while.body

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %buffered_ioctl_done, align 4
  br label %land.lhs.true

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 276) #8
  %38 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buffered_ioctl_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool35.not = icmp eq i32 %39, 0
  br i1 %tobool35.not, label %if.then36, label %while.body.land.lhs.true_crit_edge

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then36:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %40 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call38111 = call i32 @prepare_to_wait_event(ptr noundef %buffered_ioctl_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %41 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buffered_ioctl_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool40.not112 = icmp eq i32 %42, 0
  br i1 %tobool40.not112, label %if.then36.if.end42_crit_edge, label %if.then36.for.end_crit_edge

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  br label %if.end42

if.end42:                                         ; preds = %cleanup.if.end42_crit_edge, %if.then36.if.end42_crit_edge
  %call38113 = phi i32 [ %call38, %cleanup.if.end42_crit_edge ], [ %call38111, %if.then36.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38113)
  %tobool43.not = icmp eq i32 %call38113, 0
  br i1 %tobool43.not, label %cleanup, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

cleanup:                                          ; preds = %if.end42
  call void @schedule() #8
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %buffered_ioctl_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %43 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buffered_ioctl_done, align 4
  %tobool40.not = icmp eq i32 %44, 0
  br i1 %tobool40.not, label %cleanup.if.end42_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end42_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then36.for.end_crit_edge
  call void @finish_wait(ptr noundef %buffered_ioctl_waiter, ptr noundef nonnull %__wq_entry) #8
  br label %if.end47

if.end47:                                         ; preds = %for.end, %if.end42.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  %45 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr115 = load i32, ptr %buffered_ioctl_done, align 4
  %tobool30.not = icmp eq i32 %.pr115, 0
  br i1 %tobool30.not, label %if.end47.while.body_crit_edge, label %if.end47.land.lhs.true_crit_edge

if.end47.land.lhs.true_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

land.lhs.true:                                    ; preds = %if.end47.land.lhs.true_crit_edge, %while.body.land.lhs.true_crit_edge, %if.then26, %while.cond.preheader.land.lhs.true_crit_edge
  %done_callback = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 7
  %46 = ptrtoint ptr %done_callback to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %done_callback, align 4
  %tobool51.not = icmp eq ptr %47, null
  br i1 %tobool51.not, label %land.lhs.true.if.then58_crit_edge, label %if.then52

land.lhs.true.if.then58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %done_context = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 8
  %48 = ptrtoint ptr %done_context to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %done_context, align 4
  call void %47(ptr noundef %1, ptr noundef nonnull %call18, ptr noundef %49) #8
  br label %if.then58

if.then58:                                        ; preds = %if.then52, %land.lhs.true.if.then58_crit_edge
  call void @esas2r_free_request(ptr noundef %1, ptr noundef nonnull %call18) #8
  %50 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioctl, align 4
  %52 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %53 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length17, align 4
  %55 = call ptr @memcpy(ptr %51, ptr %52, i32 %54)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.then20, %if.then13
  %result.0109 = phi i8 [ 0, %if.then58 ], [ 108, %if.then20 ], [ 108, %if.then13 ]
  call void @up(ptr noundef nonnull @buffered_ioctl_semaphore) #8
  br label %cleanup62

cleanup62:                                        ; preds = %if.end61, %entry.cleanup62_crit_edge
  %retval.0 = phi i8 [ %result.0109, %if.end61 ], [ 108, %entry.cleanup62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc) #8
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_write_params(ptr noundef %a, ptr noundef %rq, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 62
  %0 = ptrtoint ptr %nvram_command_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nvram_command_done, align 4
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 13
  %1 = ptrtoint ptr %comp_cb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @complete_nvr_req, ptr %comp_cb, align 4
  %call = tail call zeroext i1 @esas2r_nvram_write(ptr noundef %a, ptr noundef %rq, ptr noundef %data) #8
  br i1 %call, label %while.cond.preheader, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %nvram_command_done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvram_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not42 = icmp eq i32 %3, 0
  br i1 %tobool.not42, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %nvram_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 61
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1261) #8
  %4 = ptrtoint ptr %nvram_command_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nvram_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.then7, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then7:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call939 = call i32 @prepare_to_wait_event(ptr noundef %nvram_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %7 = ptrtoint ptr %nvram_command_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nvram_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not40 = icmp eq i32 %8, 0
  br i1 %tobool11.not40, label %if.then7.if.end_crit_edge, label %if.then7.for.end_crit_edge

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then7.if.end_crit_edge
  %call941 = phi i32 [ %call9, %cleanup.if.end_crit_edge ], [ %call939, %if.then7.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call941)
  %tobool13.not = icmp eq i32 %call941, 0
  br i1 %tobool13.not, label %cleanup, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

cleanup:                                          ; preds = %if.end
  call void @schedule() #8
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %nvram_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %9 = ptrtoint ptr %nvram_command_done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nvram_command_done, align 4
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then7.for.end_crit_edge
  call void @finish_wait(ptr noundef %nvram_waiter, ptr noundef nonnull %__wq_entry) #8
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.end.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  %11 = ptrtoint ptr %nvram_command_done to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %nvram_command_done, align 4
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %if.end17.while.body_crit_edge, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %12 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  %spec.select = zext i1 %cmp to i32
  br label %if.end22

if.end22:                                         ; preds = %while.end, %entry.if.end22_crit_edge
  %result.0 = phi i32 [ 0, %entry.if.end22_crit_edge ], [ %spec.select, %while.end ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_nvr_req(ptr noundef %a, ptr nocapture noundef readnone %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 62
  %0 = ptrtoint ptr %nvram_command_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %nvram_command_done, align 4
  %nvram_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 61
  tail call void @__wake_up(ptr noundef %nvram_waiter, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_nvram_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_ioctl_handler(ptr noundef %hostdata, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %hostdata, i32 noundef %cmd, ptr noundef %arg) #8
  %cmp = icmp eq ptr %arg, null
  %0 = add i32 %cmd, -17680
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %0)
  %1 = icmp ult i32 %0, -16
  %2 = or i1 %1, %cmp
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @memdup_user(ptr noundef nonnull %arg, i32 noundef 524320) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %cmd, ptr noundef nonnull %arg) #8
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %call4, ptr noundef nonnull dereferenceable(8) @.str.3, i32 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp11.not = icmp eq i32 %bcmp, 0
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.4) #8
  tail call void @kfree(ptr noundef %call4) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %return_code = getelementptr inbounds %struct.atto_express_ioctl_header, ptr %call4, i32 0, i32 1
  %4 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %return_code, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17668, i32 %cmd)
  %cmp16 = icmp eq i32 %cmd, 17668
  br i1 %cmp16, label %if.then17, label %if.end27

if.then17:                                        ; preds = %if.end14
  %data = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %data, align 1
  %channel = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %if.then17
  %k.0332 = phi i32 [ 0, %if.then17 ], [ %k.1, %if.end25.while.body_crit_edge ]
  %i.0330 = phi i32 [ 0, %if.then17 ], [ %inc26, %if.end25.while.body_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @esas2r_adapters, i32 0, i32 %i.0330
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.body.if.end25_crit_edge, label %if.then19

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 1
  %inc = add i32 %9, 1
  store i32 %inc, ptr %data, align 1
  %conv = trunc i32 %i.0330 to i8
  %arrayidx23 = getelementptr [256 x i8], ptr %channel, i32 0, i32 %k.0332
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx23, align 1
  %inc24 = add i32 %k.0332, 1
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %while.body.if.end25_crit_edge
  %k.1 = phi i32 [ %inc24, %if.then19 ], [ %k.0332, %while.body.if.end25_crit_edge ]
  %inc26 = add nuw nsw i32 %i.0330, 1
  %exitcond.not = icmp eq i32 %inc26, 32
  br i1 %exitcond.not, label %if.end25.if.then.i_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end25.if.then.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end27:                                         ; preds = %if.end14
  %channel29 = getelementptr inbounds %struct.atto_express_ioctl_header, ptr %call4, i32 0, i32 2
  %11 = ptrtoint ptr %channel29 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel29, align 1
  %conv30 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp31 = icmp eq i8 %12, -1
  br i1 %cmp31, label %if.end27.if.end54_crit_edge, label %if.else

if.end27.if.end54_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %12)
  %cmp37 = icmp ugt i8 %12, 31
  br i1 %cmp37, label %if.else.if.then45_crit_edge, label %lor.lhs.false39

if.else.if.then45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false39:                                  ; preds = %if.else
  %arrayidx42 = getelementptr [0 x ptr], ptr @esas2r_adapters, i32 0, i32 %conv30
  %13 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx42, align 4
  %cmp43 = icmp eq ptr %14, null
  br i1 %cmp43, label %lor.lhs.false39.if.then45_crit_edge, label %lor.lhs.false39.if.end54_crit_edge

lor.lhs.false39.if.end54_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

lor.lhs.false39.if.then45_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false39.if.then45_crit_edge, %if.else.if.then45_crit_edge
  %15 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 104, ptr %return_code, align 1
  %call48 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.5) #8
  tail call void @kfree(ptr noundef %call4) #8
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false39.if.end54_crit_edge, %if.end27.if.end54_crit_edge
  %a.0 = phi ptr [ %hostdata, %if.end27.if.end54_crit_edge ], [ %14, %lor.lhs.false39.if.end54_crit_edge ]
  %16 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %sw.default [
    i32 17664, label %sw.bb
    i32 17665, label %sw.bb95
    i32 17666, label %sw.bb100
    i32 17670, label %sw.bb114
    i32 17669, label %sw.bb120
    i32 17674, label %sw.bb143
    i32 17675, label %sw.bb148
    i32 17676, label %sw.bb153
    i32 17677, label %sw.bb158
    i32 17679, label %sw.bb171
  ]

sw.bb:                                            ; preds = %if.end54
  %img_type = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %img_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %img_type, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %18, label %if.else90 [
    i8 5, label %if.then59
    i8 6, label %if.then77
  ]

if.then59:                                        ; preds = %sw.bb
  %image = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 5, i32 4
  %call62 = tail call i32 @esas2r_write_fw(ptr noundef %a.0, ptr noundef %image, i32 noundef 0, i32 noundef 524320)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call62)
  %cmp63 = icmp sgt i32 %call62, -1
  br i1 %cmp63, label %if.then65, label %if.then59.if.then186_crit_edge

if.then59.if.then186_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

if.then65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = tail call i32 @esas2r_read_fw(ptr noundef %a.0, ptr noundef %image, i32 noundef 0, i32 noundef 524320)
  br label %ioctl_done

if.then77:                                        ; preds = %sw.bb
  %image79 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 5, i32 4
  %call81 = tail call i32 @esas2r_write_fs(ptr noundef %a.0, ptr noundef %image79, i32 noundef 0, i32 noundef 524320)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call81)
  %cmp82 = icmp sgt i32 %call81, -1
  br i1 %cmp82, label %if.then84, label %if.then77.if.then186_crit_edge

if.then77.if.then186_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

if.then84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %call88 = tail call i32 @esas2r_read_fs(ptr noundef %a.0, ptr noundef %image79, i32 noundef 0, i32 noundef 524320)
  br label %ioctl_done

if.else90:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 107, ptr %return_code, align 1
  br label %if.then.i

sw.bb95:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %data96 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %data_buffer = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 2
  %nvram = getelementptr inbounds %struct.esas2r_adapter, ptr %a.0, i32 0, i32 25
  %21 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nvram, align 4
  %23 = call ptr @memcpy(ptr %data_buffer, ptr %22, i32 256)
  %24 = ptrtoint ptr %data96 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 1, ptr %data96, align 1
  br label %if.then.i

sw.bb100:                                         ; preds = %if.end54
  %call101 = tail call ptr @esas2r_alloc_request(ptr noundef %a.0) #8
  %cmp102 = icmp eq ptr %call101, null
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %call4) #8
  %call105 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end106:                                        ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  %data107 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %data_buffer108 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 2
  %call110 = tail call i32 @esas2r_write_params(ptr noundef %a.0, ptr noundef nonnull %call101, ptr noundef %data_buffer108)
  %conv111 = trunc i32 %call110 to i16
  %25 = ptrtoint ptr %data107 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %conv111, ptr %data107, align 1
  tail call void @esas2r_free_request(ptr noundef %a.0, ptr noundef nonnull %call101) #8
  br label %if.then.i

sw.bb114:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %data115 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %data_buffer116 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 2
  tail call void @esas2r_nvram_get_defaults(ptr noundef %a.0, ptr noundef %data_buffer116) #8
  %26 = ptrtoint ptr %data115 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 1, ptr %data115, align 1
  br label %if.then.i

sw.bb120:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %data121 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %27 = ptrtoint ptr %data121 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %data121, align 1
  %minor_rev = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %minor_rev to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %minor_rev, align 1
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a.0, i32 0, i32 55
  %29 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcid, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %conv123 = trunc i32 %32 to i8
  %IRQ = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %IRQ to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv123, ptr %IRQ, align 1
  %34 = load ptr, ptr %pcid, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device, align 2
  %device_id = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %device_id to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %device_id, align 1
  %38 = load ptr, ptr %pcid, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vendor, align 8
  %vendor_id = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %vendor_id to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %vendor_id, align 1
  %42 = load ptr, ptr %pcid, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %subsystem_device, align 2
  %ven_dev_id = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 5, i32 4
  %45 = ptrtoint ptr %ven_dev_id to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %ven_dev_id, align 1
  %46 = load ptr, ptr %pcid, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %revision, align 4
  %revision_id = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 3
  %49 = ptrtoint ptr %revision_id to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %revision_id, align 1
  %50 = load ptr, ptr %pcid, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %number, align 4
  %pci_bus = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 4
  %55 = ptrtoint ptr %pci_bus to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %pci_bus, align 1
  %56 = load ptr, ptr %pcid, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %devfn, align 4
  %conv136 = trunc i32 %58 to i8
  %pci_dev_func = getelementptr inbounds %struct.atto_channel_info, ptr %data121, i32 0, i32 5
  %59 = ptrtoint ptr %pci_dev_func to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv136, ptr %pci_dev_func, align 1
  %core_rev = getelementptr inbounds %struct.atto_channel_info, ptr %data121, i32 0, i32 6
  %60 = ptrtoint ptr %core_rev to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %core_rev, align 1
  %host = getelementptr inbounds %struct.esas2r_adapter, ptr %a.0, i32 0, i32 56
  %61 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %62, i32 0, i32 17
  %63 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %host_no, align 4
  %conv139 = trunc i32 %64 to i8
  %host_no141 = getelementptr inbounds %struct.atto_channel_info, ptr %data121, i32 0, i32 7
  %65 = ptrtoint ptr %host_no141 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv139, ptr %host_no141, align 1
  %hbaapi_rev = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 6, i32 0, i32 1
  %66 = ptrtoint ptr %hbaapi_rev to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 0, ptr %hbaapi_rev, align 1
  br label %if.then.i

sw.bb143:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %data144 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %call145 = tail call fastcc zeroext i8 @handle_smp_ioctl(ptr noundef %a.0, ptr noundef %data144)
  %67 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call145, ptr %return_code, align 1
  br label %if.then.i

sw.bb148:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %data149 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %call150 = tail call fastcc zeroext i8 @handle_csmi_ioctl(ptr noundef %a.0, ptr noundef %data149)
  %68 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %call150, ptr %return_code, align 1
  br label %if.then.i

sw.bb153:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %data154 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %call155 = tail call zeroext i8 @handle_hba_ioctl(ptr noundef %a.0, ptr noundef %data154)
  %69 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call155, ptr %return_code, align 1
  br label %if.then.i

sw.bb158:                                         ; preds = %if.end54
  %data159 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %data_length = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 4
  %70 = ptrtoint ptr %data_length to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %data_length, align 1
  %add = add i32 %71, 632
  %call161 = tail call i32 @esas2r_write_vda(ptr noundef %a.0, ptr noundef %data159, i32 noundef 0, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call161)
  %cmp162 = icmp sgt i32 %call161, -1
  br i1 %cmp162, label %if.then164, label %sw.bb158.if.then186_crit_edge

sw.bb158.if.then186_crit_edge:                    ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

if.then164:                                       ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %data_length to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %data_length, align 1
  %add168 = add i32 %73, 632
  %call169 = tail call i32 @esas2r_read_vda(ptr noundef %a.0, ptr noundef %data159, i32 noundef 0, i32 noundef %add168)
  br label %ioctl_done

sw.bb171:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %data172 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1
  %74 = ptrtoint ptr %data172 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store ptr %a.0, ptr %data172, align 1
  %pcid173 = getelementptr inbounds %struct.esas2r_adapter, ptr %a.0, i32 0, i32 55
  %75 = ptrtoint ptr %pcid173 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcid173, align 4
  %pci_dev = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 4
  %77 = ptrtoint ptr %pci_dev to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store ptr %76, ptr %pci_dev, align 1
  %host175 = getelementptr inbounds %struct.esas2r_adapter, ptr %a.0, i32 0, i32 56
  %78 = ptrtoint ptr %host175 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %host175, align 8
  %scsi_host = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 5
  %80 = ptrtoint ptr %scsi_host to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store ptr %79, ptr %scsi_host, align 1
  %81 = load ptr, ptr %host175, align 8
  %host_no178 = getelementptr inbounds %struct.Scsi_Host, ptr %81, i32 0, i32 17
  %82 = ptrtoint ptr %host_no178 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %host_no178, align 4
  %conv179 = trunc i32 %83 to i16
  %host_no181 = getelementptr inbounds %struct.atto_express_ioctl, ptr %call4, i32 0, i32 1, i32 0, i32 5, i32 4
  %84 = ptrtoint ptr %host_no181 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %conv179, ptr %host_no181, align 1
  br label %if.then.i

sw.default:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 101, ptr %return_code, align 1
  br label %if.then.i

ioctl_done:                                       ; preds = %if.then164, %if.then84, %if.then65
  %err.0 = phi i32 [ %call169, %if.then164 ], [ %call69, %if.then65 ], [ %call88, %if.then84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp184 = icmp slt i32 %err.0, 0
  br i1 %cmp184, label %ioctl_done.if.then186_crit_edge, label %ioctl_done.if.then.i_crit_edge

ioctl_done.if.then.i_crit_edge:                   ; preds = %ioctl_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

ioctl_done.if.then186_crit_edge:                  ; preds = %ioctl_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

if.then186:                                       ; preds = %ioctl_done.if.then186_crit_edge, %sw.bb158.if.then186_crit_edge, %if.then77.if.then186_crit_edge, %if.then59.if.then186_crit_edge
  %err.0326 = phi i32 [ %err.0, %ioctl_done.if.then186_crit_edge ], [ %call81, %if.then77.if.then186_crit_edge ], [ %call62, %if.then59.if.then186_crit_edge ], [ %call161, %sw.bb158.if.then186_crit_edge ]
  %call187 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %err.0326, i32 noundef %cmd) #8
  %86 = zext i32 %err.0326 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %err.0326, label %sw.default194 [
    i32 -12, label %if.then186.sw.bb188_crit_edge
    i32 -16, label %if.then186.sw.bb188_crit_edge333
    i32 -38, label %if.then186.sw.bb191_crit_edge
    i32 -22, label %if.then186.sw.bb191_crit_edge334
  ]

if.then186.sw.bb191_crit_edge334:                 ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb191

if.then186.sw.bb191_crit_edge:                    ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb191

if.then186.sw.bb188_crit_edge333:                 ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb188

if.then186.sw.bb188_crit_edge:                    ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb188

sw.bb188:                                         ; preds = %if.then186.sw.bb188_crit_edge, %if.then186.sw.bb188_crit_edge333
  %87 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 108, ptr %return_code, align 1
  br label %if.then.i

sw.bb191:                                         ; preds = %if.then186.sw.bb191_crit_edge, %if.then186.sw.bb191_crit_edge334
  %88 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 110, ptr %return_code, align 1
  br label %if.then.i

sw.default194:                                    ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %return_code to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 109, ptr %return_code, align 1
  br label %if.then.i

if.then.i:                                        ; preds = %sw.default194, %sw.bb191, %sw.bb188, %ioctl_done.if.then.i_crit_edge, %sw.default, %sw.bb171, %sw.bb153, %sw.bb148, %sw.bb143, %sw.bb120, %sw.bb114, %if.end106, %sw.bb95, %if.else90, %if.end25.if.then.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.if.then202_crit_edge, label %if.end.i.i

if.then.i.if.then202_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then202

if.end.i.i:                                       ; preds = %if.then.i
  %90 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 524320, i32 -1226833920) #12, !srcloc !53
  %asmresult.i.i = extractvalue { i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.if.then202_crit_edge

if.end.i.i.if.then202_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then202

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call4, i32 noundef 524320) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef %call4, i32 noundef 524320) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %cmp200.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %cmp200.not, label %if.end204, label %copy_to_user.exit.if.then202_crit_edge

copy_to_user.exit.if.then202_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then202

if.then202:                                       ; preds = %copy_to_user.exit.if.then202_crit_edge, %if.end.i.i.if.then202_crit_edge, %if.then.i.if.then202_crit_edge
  %n.addr.0.i329 = phi i32 [ %call.i1.i.i, %copy_to_user.exit.if.then202_crit_edge ], [ 524320, %if.then.i.if.then202_crit_edge ], [ 524320, %if.end.i.i.if.then202_crit_edge ]
  %call203 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %n.addr.0.i329, i32 noundef %cmd) #8
  tail call void @kfree(ptr noundef %call4) #8
  br label %cleanup

if.end204:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end204, %if.then202, %if.then104, %if.then45, %if.then12, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ -524, %if.then12 ], [ -14, %if.then202 ], [ 0, %if.end204 ], [ -12, %if.then104 ], [ -524, %if.then45 ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_write_fw(ptr noundef %a, ptr nocapture noundef readonly %buf, i32 noundef %off, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp = icmp eq i32 %off, 0
  br i1 %cmp, label %if.then, label %if.else45

if.then:                                          ; preds = %entry
  %firmware = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %firmware, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp1 = icmp slt i32 %count, 4
  br i1 %cmp1, label %if.then.cleanup85_crit_edge, label %lor.lhs.false

if.then.cleanup85_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

lor.lhs.false:                                    ; preds = %if.then
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp2 = icmp ugt i8 %2, 1
  br i1 %cmp2, label %lor.lhs.false.cleanup85_crit_edge, label %if.end

lor.lhs.false.cleanup85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp7 = icmp eq i8 %2, 1
  %spec.select = select i1 %cmp7, i32 2176, i32 2160
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %count)
  %cmp11 = icmp ugt i32 %spec.select, %count
  br i1 %cmp11, label %if.end.cleanup85_crit_edge, label %if.end14

if.end.cleanup85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end14:                                         ; preds = %if.end
  %length15 = getelementptr inbounds %struct.esas2r_flash_img, ptr %buf, i32 0, i32 4
  %3 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %4)
  %cmp16 = icmp ugt i32 %4, 1048576
  br i1 %cmp16, label %if.end14.cleanup85_crit_edge, label %if.end19

if.end14.cleanup85_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end19:                                         ; preds = %if.end14
  %action = getelementptr inbounds %struct.esas2r_flash_img, ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %action, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %6, label %if.end19.cleanup85_crit_edge [
    i8 0, label %if.then23
    i8 1, label %if.end19.if.then37_crit_edge
    i8 2, label %if.end19.if.then37_crit_edge129
  ]

if.end19.if.then37_crit_edge129:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end19.if.then37_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end19.cleanup85_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then23:                                        ; preds = %if.end19
  %call = tail call fastcc i32 @allocate_fw_buffers(ptr noundef %a, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then23.cleanup85_crit_edge, label %cleanup

if.then23.cleanup85_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then37:                                        ; preds = %if.end19.if.then37_crit_edge, %if.end19.if.then37_crit_edge129
  %header39 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1
  %8 = call ptr @memcpy(ptr %header39, ptr %buf, i32 2176)
  %9 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %firmware, align 8
  br label %cleanup85

cleanup:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %header27 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1
  %10 = call ptr @memcpy(ptr %header27, ptr %buf, i32 2176)
  br label %if.end49

if.else45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %length48 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1, i32 4
  %11 = ptrtoint ptr %length48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else45, %cleanup
  %length.1 = phi i32 [ %4, %cleanup ], [ %12, %if.else45 ]
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %length.1)
  %cmp50 = icmp ugt i32 %add, %length.1
  %sub = sub i32 %length.1, %off
  %spec.select125 = select i1 %cmp50, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select125)
  %cmp54 = icmp sgt i32 %spec.select125, 0
  br i1 %cmp54, label %if.then56, label %if.end49.cleanup85_crit_edge

if.end49.cleanup85_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then56:                                        ; preds = %if.end49
  %firmware57 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60
  %header58 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1
  %action59 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1, i32 3
  %13 = ptrtoint ptr %action59 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %action59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp61 = icmp eq i8 %14, 1
  br i1 %cmp61, label %if.then56.cleanup85_crit_edge, label %if.end64

if.then56.cleanup85_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end64:                                         ; preds = %if.then56
  %data = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 2
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %tobool66.not = icmp eq ptr %16, null
  br i1 %tobool66.not, label %if.end64.cleanup85_crit_edge, label %if.end68

if.end64.cleanup85_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end68:                                         ; preds = %if.end64
  %arrayidx = getelementptr i8, ptr %16, i32 %off
  %17 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %spec.select125)
  %add71 = add i32 %spec.select125, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %length.1, i32 %add71)
  %cmp72 = icmp eq i32 %length.1, %add71
  br i1 %cmp72, label %if.then74, label %if.end68.cleanup85_crit_edge

if.end68.cleanup85_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then74:                                        ; preds = %if.end68
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  tail call fastcc void @do_fm_api(ptr noundef %a, ptr noundef %19)
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = call ptr @memcpy(ptr %header58, ptr %21, i32 2176)
  %23 = ptrtoint ptr %firmware57 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %firmware57, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then74.cleanup85_crit_edge, label %if.then.i

if.then74.cleanup85_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.then.i:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %24 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcid.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %orig_len.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 4
  %26 = ptrtoint ptr %orig_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %orig_len.i, align 8
  %phys.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 3
  %28 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %phys.i, align 8
  %conv.i = trunc i64 %29 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %27, ptr noundef nonnull %21, i32 noundef %conv.i, i32 noundef 0) #8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %data, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %if.then.i, %if.then74.cleanup85_crit_edge, %if.end68.cleanup85_crit_edge, %if.end64.cleanup85_crit_edge, %if.then56.cleanup85_crit_edge, %if.end49.cleanup85_crit_edge, %if.then37, %if.then23.cleanup85_crit_edge, %if.end19.cleanup85_crit_edge, %if.end14.cleanup85_crit_edge, %if.end.cleanup85_crit_edge, %lor.lhs.false.cleanup85_crit_edge, %if.then.cleanup85_crit_edge
  %retval.1 = phi i32 [ %spec.select125, %if.then56.cleanup85_crit_edge ], [ -12, %if.end64.cleanup85_crit_edge ], [ %spec.select125, %if.end68.cleanup85_crit_edge ], [ %spec.select125, %if.end49.cleanup85_crit_edge ], [ %spec.select125, %if.then74.cleanup85_crit_edge ], [ %spec.select125, %if.then.i ], [ -38, %if.end19.cleanup85_crit_edge ], [ -12, %if.then23.cleanup85_crit_edge ], [ -22, %if.end14.cleanup85_crit_edge ], [ -22, %if.end.cleanup85_crit_edge ], [ -22, %if.then.cleanup85_crit_edge ], [ -22, %lor.lhs.false.cleanup85_crit_edge ], [ %count, %if.then37 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_read_fw(ptr noundef %a, ptr nocapture noundef writeonly %buf, i32 noundef %off, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.smin.i32(i32 %count, i32 2176)
  %header = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1
  %4 = call ptr @memcpy(ptr %buf, ptr %header, i32 %3)
  br label %return

if.then6:                                         ; preds = %entry
  %header8 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1
  %length9 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1, i32 4
  %5 = ptrtoint ptr %length9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp10 = icmp eq i32 %off, 0
  br i1 %cmp10, label %if.then11, label %if.then6.if.end45_crit_edge

if.then6.if.end45_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then11:                                        ; preds = %if.then6
  %action = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1, i32 3
  %7 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %action, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %8, label %if.then11.return_crit_edge [
    i8 1, label %if.then16
    i8 2, label %if.then30
  ]

if.then11.return_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then16:                                        ; preds = %if.then11
  %data.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 2
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then16.allocate_fw_buffers.exit_crit_edge, label %if.then.i.i

if.then16.allocate_fw_buffers.exit_crit_edge:     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_fw_buffers.exit

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %pcid.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %12 = ptrtoint ptr %pcid.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcid.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %orig_len.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 4
  %14 = ptrtoint ptr %orig_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_len.i.i, align 8
  %phys.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 3
  %16 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %phys.i.i, align 8
  %conv.i.i = trunc i64 %17 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %15, ptr noundef nonnull %11, i32 noundef %conv.i.i, i32 noundef 0) #8
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data.i.i, align 4
  br label %allocate_fw_buffers.exit

allocate_fw_buffers.exit:                         ; preds = %if.then.i.i, %if.then16.allocate_fw_buffers.exit_crit_edge
  %orig_len.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 4
  %19 = ptrtoint ptr %orig_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %6, ptr %orig_len.i, align 8
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %20 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcid.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %phys.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %6, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 0) #8
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %data.i.i, align 4
  %tobool.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not, label %allocate_fw_buffers.exit.return_crit_edge, label %if.end18

allocate_fw_buffers.exit.return_crit_edge:        ; preds = %allocate_fw_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end18:                                         ; preds = %allocate_fw_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = call ptr @memcpy(ptr %call.i.i, ptr %header8, i32 2176)
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  tail call fastcc void @do_fm_api(ptr noundef %a, ptr noundef %25)
  br label %if.end45

if.then30:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.smin.i32(i32 %count, i32 2176)
  tail call fastcc void @do_fm_api(ptr noundef %a, ptr noundef %header8)
  %27 = call ptr @memcpy(ptr %buf, ptr %header8, i32 %26)
  br label %return

if.end45:                                         ; preds = %if.end18, %if.then6.if.end45_crit_edge
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp46 = icmp ugt i32 %add, %6
  %sub = sub i32 %6, %off
  %spec.select = select i1 %cmp46, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp50 = icmp slt i32 %spec.select, 0
  br i1 %cmp50, label %if.end45.return_crit_edge, label %if.end53

if.end45.return_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end53:                                         ; preds = %if.end45
  %data55 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 2
  %28 = ptrtoint ptr %data55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data55, align 4
  %tobool56.not = icmp eq ptr %29, null
  br i1 %tobool56.not, label %if.end53.return_crit_edge, label %if.end58

if.end53.return_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end58:                                         ; preds = %if.end53
  %arrayidx = getelementptr i8, ptr %29, i32 %off
  %30 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %spec.select)
  %add61 = add i32 %spec.select, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add61)
  %cmp62.not = icmp ugt i32 %6, %add61
  br i1 %cmp62.not, label %if.end58.return_crit_edge, label %if.then64

if.end58.return_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then64:                                        ; preds = %if.end58
  %31 = ptrtoint ptr %data55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data55, align 4
  %tobool.not.i107 = icmp eq ptr %32, null
  br i1 %tobool.not.i107, label %if.then64.return_crit_edge, label %if.then.i

if.then64.return_crit_edge:                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %pcid.i108 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %33 = ptrtoint ptr %pcid.i108 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcid.i108, align 4
  %dev.i109 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %orig_len.i110 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 4
  %35 = ptrtoint ptr %orig_len.i110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %orig_len.i110, align 8
  %phys.i111 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 3
  %37 = ptrtoint ptr %phys.i111 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %phys.i111, align 8
  %conv.i = trunc i64 %38 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i109, i32 noundef %36, ptr noundef nonnull %32, i32 noundef %conv.i, i32 noundef 0) #8
  %39 = ptrtoint ptr %data55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %data55, align 4
  br label %return

return:                                           ; preds = %if.then.i, %if.then64.return_crit_edge, %if.end58.return_crit_edge, %if.end53.return_crit_edge, %if.end45.return_crit_edge, %if.then30, %allocate_fw_buffers.exit.return_crit_edge, %if.then11.return_crit_edge, %if.then, %entry.return_crit_edge
  %retval.1 = phi i32 [ %3, %if.then ], [ %26, %if.then30 ], [ -12, %allocate_fw_buffers.exit.return_crit_edge ], [ -38, %if.then11.return_crit_edge ], [ 0, %if.end45.return_crit_edge ], [ -12, %if.end53.return_crit_edge ], [ %spec.select, %if.end58.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ %spec.select, %if.then64.return_crit_edge ], [ %spec.select, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_write_fs(ptr noundef %a, ptr nocapture noundef readonly %buf, i32 noundef %off, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp = icmp eq i32 %off, 0
  br i1 %cmp, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then:                                          ; preds = %entry
  %command = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %buf, i32 0, i32 6
  %length1 = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %buf, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length1, align 4
  %add = add i32 %1, 32
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %command, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp4 = icmp eq i8 %3, 2
  %spec.store.select = select i1 %cmp4, i32 32, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count)
  %cmp7 = icmp ult i32 %count, 32
  br i1 %cmp7, label %if.then.return_crit_edge, label %if.end10

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end10:                                         ; preds = %if.then
  %fs_api_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 72
  %4 = ptrtoint ptr %fs_api_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_api_buffer, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end10.re_allocate_buffer_crit_edge, label %if.then11

if.end10.re_allocate_buffer_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %re_allocate_buffer

if.then11:                                        ; preds = %if.end10
  %fs_api_buffer_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 73
  %6 = ptrtoint ptr %fs_api_buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs_api_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.store.select)
  %cmp12 = icmp ult i32 %7, %spec.store.select
  br i1 %cmp12, label %if.then14, label %if.then11.if.end27_crit_edge

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %8 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcid, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %ppfs_api_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 71
  %10 = ptrtoint ptr %ppfs_api_buffer to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ppfs_api_buffer, align 8
  %conv17 = trunc i64 %11 to i32
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull %5, i32 noundef %conv17, i32 noundef 0) #8
  br label %re_allocate_buffer

re_allocate_buffer:                               ; preds = %if.then14, %if.end10.re_allocate_buffer_crit_edge
  %fs_api_buffer_size19 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 73
  %12 = ptrtoint ptr %fs_api_buffer_size19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %fs_api_buffer_size19, align 4
  %pcid20 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %13 = ptrtoint ptr %pcid20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcid20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %ppfs_api_buffer23 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 71
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev21, i32 noundef %spec.store.select, ptr noundef %ppfs_api_buffer23, i32 noundef 3264, i32 noundef 0) #8
  %15 = ptrtoint ptr %fs_api_buffer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %fs_api_buffer, align 8
  br label %if.end27

if.end27:                                         ; preds = %re_allocate_buffer, %if.then11.if.end27_crit_edge, %entry.if.end27_crit_edge
  %fs_api_buffer28 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 72
  %16 = ptrtoint ptr %fs_api_buffer28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs_api_buffer28, align 8
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %if.end27.return_crit_edge, label %if.end31

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end31:                                         ; preds = %if.end27
  %fs_api_buffer_size32 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 73
  %18 = ptrtoint ptr %fs_api_buffer_size32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs_api_buffer_size32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %off)
  %cmp33 = icmp ult i32 %19, %off
  br i1 %cmp33, label %if.end31.return_crit_edge, label %if.end36

if.end31.return_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end36:                                         ; preds = %if.end31
  %add37 = add i32 %count, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %19)
  %cmp39 = icmp ugt i32 %add37, %19
  %sub = sub i32 %19, %off
  %spec.select = select i1 %cmp39, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp44 = icmp slt i32 %spec.select, 1
  br i1 %cmp44, label %if.end36.return_crit_edge, label %if.end47

if.end36.return_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end47:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %17, i32 %off
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %spec.select)
  br label %return

return:                                           ; preds = %if.end47, %if.end36.return_crit_edge, %if.end31.return_crit_edge, %if.end27.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %spec.select, %if.end47 ], [ -12, %if.end27.return_crit_edge ], [ 0, %if.end31.return_crit_edge ], [ 0, %if.end36.return_crit_edge ], [ -22, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_read_fs(ptr noundef %a, ptr nocapture noundef writeonly %buf, i32 noundef %off, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %sgc = alloca %struct.esas2r_sg_context, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_api_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 72
  %0 = ptrtoint ptr %fs_api_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_api_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp = icmp eq i32 %off, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sgc) #8
  %2 = call ptr @memset(ptr %sgc, i32 255, i32 52)
  %fs_api_mutex = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 89
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fs_api_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.cleanup44.thread_crit_edge

if.then1.cleanup44.thread_crit_edge:              ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44.thread

cleanup44.thread:                                 ; preds = %if.then8, %if.then1.cleanup44.thread_crit_edge
  %status = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %status, align 1
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc) #8
  br label %return

if.end5:                                          ; preds = %if.then1
  %call6 = tail call ptr @esas2r_alloc_request(ptr noundef %a) #8
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %fs_api_mutex) #8
  br label %cleanup44.thread

if.end10:                                         ; preds = %if.end5
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %call6, i32 0, i32 13
  %4 = ptrtoint ptr %comp_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @fs_api_complete_req, ptr %comp_cb, align 4
  %data = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %1, i32 0, i32 7
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %5 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %cur_offset, align 4
  %get_phys_addr = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 4
  %6 = ptrtoint ptr %get_phys_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @get_physaddr_fs_api, ptr %get_phys_addr, align 4
  %fs_api_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 70
  %7 = ptrtoint ptr %fs_api_command_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fs_api_command_done, align 4
  %call11 = call zeroext i1 @esas2r_process_fs_ioctl(ptr noundef %a, ptr noundef nonnull %1, ptr noundef nonnull %call6, ptr noundef nonnull %sgc) #8
  br i1 %call11, label %while.cond.preheader, label %if.then12

while.cond.preheader:                             ; preds = %if.end10
  %8 = ptrtoint ptr %fs_api_command_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fs_api_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not113 = icmp eq i32 %9, 0
  br i1 %tobool20.not113, label %while.body.lr.ph, label %while.cond.preheader.cleanup44_crit_edge

while.cond.preheader.cleanup44_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %fs_api_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 69
  br label %while.body

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %status13 = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %status13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp14 = icmp eq i8 %11, 3
  %spec.select = select i1 %cmp14, i32 -16, i32 %count
  br label %cleanup44

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1998) #8
  %12 = ptrtoint ptr %fs_api_command_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs_api_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool25.not = icmp eq i32 %13, 0
  br i1 %tobool25.not, label %if.then26, label %while.body.cleanup44_crit_edge

while.body.cleanup44_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.then26:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call28110 = call i32 @prepare_to_wait_event(ptr noundef %fs_api_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %15 = ptrtoint ptr %fs_api_command_done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs_api_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool30.not111 = icmp eq i32 %16, 0
  br i1 %tobool30.not111, label %if.then26.if.end32_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  br label %if.end32

if.end32:                                         ; preds = %cleanup.if.end32_crit_edge, %if.then26.if.end32_crit_edge
  %call28112 = phi i32 [ %call28, %cleanup.if.end32_crit_edge ], [ %call28110, %if.then26.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28112)
  %tobool33.not = icmp eq i32 %call28112, 0
  br i1 %tobool33.not, label %cleanup, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

cleanup:                                          ; preds = %if.end32
  call void @schedule() #8
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %fs_api_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %fs_api_command_done to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs_api_command_done, align 4
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %cleanup.if.end32_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end32_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then26.for.end_crit_edge
  call void @finish_wait(ptr noundef %fs_api_waiter, ptr noundef nonnull %__wq_entry) #8
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end32.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  %19 = ptrtoint ptr %fs_api_command_done to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %fs_api_command_done, align 4
  %tobool20.not = icmp eq i32 %.pr, 0
  br i1 %tobool20.not, label %if.end37.while.body_crit_edge, label %if.end37.cleanup44_crit_edge

if.end37.cleanup44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup44:                                        ; preds = %if.end37.cleanup44_crit_edge, %while.body.cleanup44_crit_edge, %if.then12, %while.cond.preheader.cleanup44_crit_edge
  %count.addr.0 = phi i32 [ %count, %while.cond.preheader.cleanup44_crit_edge ], [ %spec.select, %if.then12 ], [ %count, %if.end37.cleanup44_crit_edge ], [ %count, %while.body.cleanup44_crit_edge ]
  call void @mutex_unlock(ptr noundef %fs_api_mutex) #8
  call void @esas2r_free_request(ptr noundef %a, ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %count.addr.0)
  %cmp40 = icmp sgt i32 %count.addr.0, -1
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc) #8
  br i1 %cmp40, label %cleanup44.if.end49_crit_edge, label %cleanup44.return_crit_edge

cleanup44.return_crit_edge:                       ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup44.if.end49_crit_edge:                     ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end49:                                         ; preds = %cleanup44.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %count.addr.2 = phi i32 [ %count.addr.0, %cleanup44.if.end49_crit_edge ], [ %count, %if.end.if.end49_crit_edge ]
  %fs_api_buffer_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 73
  %20 = ptrtoint ptr %fs_api_buffer_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fs_api_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %off)
  %cmp50 = icmp ult i32 %21, %off
  br i1 %cmp50, label %if.end49.return_crit_edge, label %if.end53

if.end49.return_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end53:                                         ; preds = %if.end49
  %add = add i32 %count.addr.2, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp55 = icmp ugt i32 %add, %21
  %sub = sub i32 %21, %off
  %spec.select99 = select i1 %cmp55, i32 %sub, i32 %count.addr.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select99)
  %cmp60 = icmp slt i32 %spec.select99, 0
  br i1 %cmp60, label %if.end53.return_crit_edge, label %if.end63

if.end53.return_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end63:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fs_api_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_api_buffer, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 %off
  %24 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %spec.select99)
  br label %return

return:                                           ; preds = %if.end63, %if.end53.return_crit_edge, %if.end49.return_crit_edge, %cleanup44.return_crit_edge, %cleanup44.thread, %entry.return_crit_edge
  %retval.1 = phi i32 [ %count.addr.0, %cleanup44.return_crit_edge ], [ %spec.select99, %if.end63 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end49.return_crit_edge ], [ 0, %if.end53.return_crit_edge ], [ -16, %cleanup44.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_alloc_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_nvram_get_defaults(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @handle_smp_ioctl(ptr noundef %a, ptr noundef %si) unnamed_addr #0 align 64 {
entry:
  %bi = alloca %struct.esas2r_buffered_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %bi) #8
  %0 = getelementptr inbounds i8, ptr %bi, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %a, ptr %bi, align 4
  %ioctl = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 1
  %3 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %si, ptr %ioctl, align 4
  %req_length = getelementptr inbounds %struct.atto_ioctl_smp, ptr %si, i32 0, i32 9
  %4 = ptrtoint ptr %req_length to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %req_length, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add i32 %6, 68
  %rsp_length = getelementptr inbounds %struct.atto_ioctl_smp, ptr %si, i32 0, i32 10
  %7 = ptrtoint ptr %rsp_length to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %rsp_length, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add2 = add i32 %add, %9
  %length = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add2, ptr %length, align 4
  %callback = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 5
  %11 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @smp_ioctl_callback, ptr %callback, align 4
  %call = call fastcc zeroext i8 @handle_buffered_ioctl(ptr noundef nonnull %bi)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %bi) #8
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @handle_csmi_ioctl(ptr noundef %a, ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  %bi = alloca %struct.esas2r_buffered_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %bi) #8
  %0 = getelementptr inbounds i8, ptr %bi, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %a, ptr %bi, align 4
  %data = getelementptr inbounds %struct.atto_csmi, ptr %ci, i32 0, i32 2
  %ioctl = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 1
  %3 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %ioctl, align 4
  %length = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2064, ptr %length, align 4
  %offset = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 4
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %callback = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 5
  %6 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @csmi_ioctl_callback, ptr %callback, align 4
  %context = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 6
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ci, ptr %context, align 4
  %done_callback = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 7
  %8 = ptrtoint ptr %done_callback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @csmi_ioctl_done_callback, ptr %done_callback, align 4
  %done_context = getelementptr inbounds %struct.esas2r_buffered_ioctl, ptr %bi, i32 0, i32 8
  %9 = ptrtoint ptr %done_context to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ci, ptr %done_context, align 4
  %call = call fastcc zeroext i8 @handle_buffered_ioctl(ptr noundef nonnull %bi)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %bi) #8
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_write_vda(ptr nocapture noundef %a, ptr nocapture noundef readonly %buf, i32 noundef %off, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vda_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 67
  %0 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vda_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #8
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_addr, align 4, !annotation !51
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %3 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcid, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 262416, ptr noundef nonnull %dma_addr, i32 noundef 3264, i32 noundef 0) #8
  %5 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %vda_buffer, align 8
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %7 to i64
  %ppvda_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 68
  %8 = ptrtoint ptr %ppvda_buffer to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %ppvda_buffer, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %9 = phi ptr [ %call.i, %if.end.if.end5_crit_edge ], [ %1, %entry.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 262416, i32 %off)
  %cmp = icmp ugt i32 %off, 262416
  br i1 %cmp, label %if.end5.return_crit_edge, label %if.end8

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8:                                          ; preds = %if.end5
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 262416, i32 %add)
  %cmp9 = icmp ugt i32 %add, 262416
  %sub = sub nuw nsw i32 262416, %off
  %spec.select = select i1 %cmp9, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp13 = icmp slt i32 %spec.select, 1
  br i1 %cmp13, label %if.end8.return_crit_edge, label %if.end16

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %9, i32 %off
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %spec.select)
  br label %return

return:                                           ; preds = %if.end16, %if.end8.return_crit_edge, %if.end5.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end16 ], [ -12, %if.end.return_crit_edge ], [ 0, %if.end5.return_crit_edge ], [ 0, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_read_vda(ptr noundef %a, ptr nocapture noundef writeonly %buf, i32 noundef %off, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %sgc = alloca %struct.esas2r_sg_context, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vda_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 67
  %0 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vda_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp = icmp eq i32 %off, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sgc) #8
  %2 = getelementptr inbounds i8, ptr %sgc, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %call = tail call ptr @esas2r_alloc_request(ptr noundef %a) #8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %cleanup31.thread, label %if.end5

cleanup31.thread:                                 ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc) #8
  br label %return

if.end5:                                          ; preds = %if.then1
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %comp_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vda_complete_req, ptr %comp_cb, align 4
  %first_req = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %5 = ptrtoint ptr %first_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %first_req, align 4
  %6 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %a, ptr %sgc, align 4
  %7 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vda_buffer, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 272
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %9 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %cur_offset, align 4
  %get_phys_addr = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 4
  %10 = ptrtoint ptr %get_phys_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @get_physaddr_vda, ptr %get_phys_addr, align 4
  %vda_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 66
  %11 = ptrtoint ptr %vda_command_done to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vda_command_done, align 4
  %call7 = call zeroext i1 @esas2r_process_vda_ioctl(ptr noundef %a, ptr noundef nonnull %1, ptr noundef nonnull %call, ptr noundef nonnull %sgc) #8
  br i1 %call7, label %while.cond.preheader, label %if.end37.thread

while.cond.preheader:                             ; preds = %if.end5
  %12 = ptrtoint ptr %vda_command_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vda_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not88 = icmp eq i32 %13, 0
  br i1 %tobool11.not88, label %while.body.lr.ph, label %while.cond.preheader.cleanup31_crit_edge

while.cond.preheader.cleanup31_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %vda_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 65
  br label %while.body

if.end37.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @esas2r_free_request(ptr noundef %a, ptr noundef nonnull %call) #8
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc) #8
  br label %if.end40

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1866) #8
  %14 = ptrtoint ptr %vda_command_done to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vda_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.then17, label %while.body.cleanup31_crit_edge

while.body.cleanup31_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then17:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call1985 = call i32 @prepare_to_wait_event(ptr noundef %vda_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %vda_command_done to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vda_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not86 = icmp eq i32 %18, 0
  br i1 %tobool21.not86, label %if.then17.if.end23_crit_edge, label %if.then17.for.end_crit_edge

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  br label %if.end23

if.end23:                                         ; preds = %cleanup.if.end23_crit_edge, %if.then17.if.end23_crit_edge
  %call1987 = phi i32 [ %call19, %cleanup.if.end23_crit_edge ], [ %call1985, %if.then17.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1987)
  %tobool24.not = icmp eq i32 %call1987, 0
  br i1 %tobool24.not, label %cleanup, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

cleanup:                                          ; preds = %if.end23
  call void @schedule() #8
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %vda_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %19 = ptrtoint ptr %vda_command_done to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vda_command_done, align 4
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %cleanup.if.end23_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then17.for.end_crit_edge
  call void @finish_wait(ptr noundef %vda_waiter, ptr noundef nonnull %__wq_entry) #8
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.end23.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  %21 = ptrtoint ptr %vda_command_done to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %vda_command_done, align 4
  %tobool11.not = icmp eq i32 %.pr, 0
  br i1 %tobool11.not, label %if.end28.while.body_crit_edge, label %if.end28.cleanup31_crit_edge

if.end28.cleanup31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup31:                                        ; preds = %if.end28.cleanup31_crit_edge, %while.body.cleanup31_crit_edge, %while.cond.preheader.cleanup31_crit_edge
  call void @esas2r_free_request(ptr noundef %a, ptr noundef nonnull %call) #8
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc) #8
  br label %if.end37

if.end37:                                         ; preds = %cleanup31, %if.end.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 262416, i32 %off)
  %cmp38 = icmp ugt i32 %off, 262416
  br i1 %cmp38, label %if.end37.return_crit_edge, label %if.end37.if.end40_crit_edge

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end37.return_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end40:                                         ; preds = %if.end37.if.end40_crit_edge, %if.end37.thread
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 262416, i32 %add)
  %cmp41 = icmp ugt i32 %add, 262416
  %sub = sub nuw nsw i32 262416, %off
  %spec.select = select i1 %cmp41, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp44 = icmp slt i32 %spec.select, 0
  br i1 %cmp44, label %if.end40.return_crit_edge, label %if.end46

if.end40.return_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vda_buffer, align 8
  %add.ptr48 = getelementptr i8, ptr %23, i32 %off
  %24 = call ptr @memcpy(ptr %buf, ptr %add.ptr48, i32 %spec.select)
  br label %return

return:                                           ; preds = %if.end46, %if.end40.return_crit_edge, %if.end37.return_crit_edge, %cleanup31.thread, %entry.return_crit_edge
  %retval.1 = phi i32 [ %spec.select, %if.end46 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end37.return_crit_edge ], [ 0, %if.end40.return_crit_edge ], [ -16, %cleanup31.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_ioctl(ptr nocapture noundef readonly %sd, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call = tail call i32 @esas2r_ioctl_handler(ptr noundef %hostdata, i32 noundef %cmd, ptr noundef %arg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_fw_buffers(ptr noundef %a, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.free_fw_buffers.exit_crit_edge, label %if.then.i

entry.free_fw_buffers.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fw_buffers.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %2 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcid.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %orig_len.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 4
  %4 = ptrtoint ptr %orig_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_len.i, align 8
  %phys.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 3
  %6 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %phys.i, align 8
  %conv.i = trunc i64 %7 to i32
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %conv.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data.i, align 4
  br label %free_fw_buffers.exit

free_fw_buffers.exit:                             ; preds = %if.then.i, %entry.free_fw_buffers.exit_crit_edge
  %orig_len = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 4
  %9 = ptrtoint ptr %orig_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %length, ptr %orig_len, align 8
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %10 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcid, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %phys = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %length, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #8
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %data.i, align 4
  %tobool.not = icmp ne ptr %call.i, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_fm_api(ptr noundef %a, ptr noundef %fi) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_api_mutex = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 88
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fm_api_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 9, ptr %status, align 1
  br label %cleanup65

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @esas2r_alloc_request(ptr noundef %a) #8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %status3 = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 1
  %1 = ptrtoint ptr %status3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 9, ptr %status3, align 1
  br label %free_sem

if.end4:                                          ; preds = %if.end
  %header = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 1
  %cmp5 = icmp eq ptr %header, %fi
  br i1 %cmp5, label %if.then6, label %if.end4.if.end23_crit_edge

if.end4.if.end23_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then6:                                         ; preds = %if.end4
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %2 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcid, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %header_buff_phys = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 2176, ptr noundef %header_buff_phys, i32 noundef 3264, i32 noundef 0) #8
  %header_buff = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 5
  %4 = ptrtoint ptr %header_buff to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %header_buff, align 4
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %status14 = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 1
  %5 = ptrtoint ptr %status14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %status14, align 1
  br label %free_req

if.end15:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr %call.i, ptr %fi, i32 2176)
  %7 = ptrtoint ptr %header_buff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header_buff, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end15, %if.end4.if.end23_crit_edge
  %fi.sink = phi ptr [ %8, %if.end15 ], [ %fi, %if.end4.if.end23_crit_edge ]
  %get_physaddr_fm_api.sink = phi ptr [ @get_physaddr_fm_api_header, %if.end15 ], [ @get_physaddr_fm_api, %if.end4.if.end23_crit_edge ]
  %save_offset20 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 84
  %9 = ptrtoint ptr %save_offset20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fi.sink, ptr %save_offset20, align 4
  %get_phys_addr22 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 83, i32 4
  %10 = ptrtoint ptr %get_phys_addr22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %get_physaddr_fm_api.sink, ptr %get_phys_addr22, align 8
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %call1, i32 0, i32 13
  %11 = ptrtoint ptr %comp_cb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @complete_fm_api_req, ptr %comp_cb, align 4
  %fm_api_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 64
  %12 = ptrtoint ptr %fm_api_command_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fm_api_command_done, align 4
  %save_offset24 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 84
  %13 = ptrtoint ptr %save_offset24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %save_offset24, align 4
  %fm_api_sgc25 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 83
  %cur_offset = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 83, i32 3
  %15 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cur_offset, align 4
  %call28 = tail call zeroext i1 @esas2r_fm_api(ptr noundef %a, ptr noundef %14, ptr noundef nonnull %call1, ptr noundef %fm_api_sgc25) #8
  br i1 %call28, label %while.cond.preheader, label %if.end23.all_done_crit_edge

if.end23.all_done_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %all_done

while.cond.preheader:                             ; preds = %if.end23
  %16 = ptrtoint ptr %fm_api_command_done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fm_api_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not116 = icmp eq i32 %17, 0
  br i1 %tobool32.not116, label %while.body.lr.ph, label %while.cond.preheader.all_done_crit_edge

while.cond.preheader.all_done_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %all_done

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %fm_api_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 63
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 162) #8
  %18 = ptrtoint ptr %fm_api_command_done to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fm_api_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool37.not = icmp eq i32 %19, 0
  br i1 %tobool37.not, label %if.then38, label %while.body.all_done_crit_edge

while.body.all_done_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %all_done

if.then38:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call40113 = call i32 @prepare_to_wait_event(ptr noundef %fm_api_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %21 = ptrtoint ptr %fm_api_command_done to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fm_api_command_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool42.not114 = icmp eq i32 %22, 0
  br i1 %tobool42.not114, label %if.then38.if.end44_crit_edge, label %if.then38.for.end_crit_edge

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  br label %if.end44

if.end44:                                         ; preds = %cleanup.if.end44_crit_edge, %if.then38.if.end44_crit_edge
  %call40115 = phi i32 [ %call40, %cleanup.if.end44_crit_edge ], [ %call40113, %if.then38.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40115)
  %tobool45.not = icmp eq i32 %call40115, 0
  br i1 %tobool45.not, label %cleanup, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

cleanup:                                          ; preds = %if.end44
  call void @schedule() #8
  %call40 = call i32 @prepare_to_wait_event(ptr noundef %fm_api_waiter, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %23 = ptrtoint ptr %fm_api_command_done to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fm_api_command_done, align 4
  %tobool42.not = icmp eq i32 %24, 0
  br i1 %tobool42.not, label %cleanup.if.end44_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end44_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then38.for.end_crit_edge
  call void @finish_wait(ptr noundef %fm_api_waiter, ptr noundef nonnull %__wq_entry) #8
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.end44.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  %25 = ptrtoint ptr %fm_api_command_done to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %fm_api_command_done, align 4
  %tobool32.not = icmp eq i32 %.pr, 0
  br i1 %tobool32.not, label %if.end49.while.body_crit_edge, label %if.end49.all_done_crit_edge

if.end49.all_done_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %all_done

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

all_done:                                         ; preds = %if.end49.all_done_crit_edge, %while.body.all_done_crit_edge, %while.cond.preheader.all_done_crit_edge, %if.end23.all_done_crit_edge
  br i1 %cmp5, label %if.then54, label %all_done.free_req_crit_edge

all_done.free_req_crit_edge:                      ; preds = %all_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_req

if.then54:                                        ; preds = %all_done
  call void @__sanitizer_cov_trace_pc() #10
  %header_buff56 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 5
  %26 = ptrtoint ptr %header_buff56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %header_buff56, align 4
  %28 = call ptr @memcpy(ptr %fi, ptr %27, i32 2176)
  %pcid57 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %29 = ptrtoint ptr %pcid57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcid57, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = load ptr, ptr %header_buff56, align 4
  %header_buff_phys62 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 60, i32 6
  %32 = ptrtoint ptr %header_buff_phys62 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %header_buff_phys62, align 8
  %conv = trunc i64 %33 to i32
  call void @dma_free_attrs(ptr noundef %dev58, i32 noundef 2176, ptr noundef %31, i32 noundef %conv, i32 noundef 0) #8
  br label %free_req

free_req:                                         ; preds = %if.then54, %all_done.free_req_crit_edge, %if.then13
  call void @esas2r_free_request(ptr noundef %a, ptr noundef nonnull %call1) #8
  br label %free_sem

free_sem:                                         ; preds = %free_req, %if.then2
  call void @mutex_unlock(ptr noundef %fm_api_mutex) #8
  br label %cleanup65

cleanup65:                                        ; preds = %free_sem, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vda_complete_req(ptr noundef %a, ptr nocapture noundef readnone %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vda_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 66
  %0 = ptrtoint ptr %vda_command_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %vda_command_done, align 4
  %vda_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 65
  tail call void @__wake_up(ptr noundef %vda_waiter, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_physaddr_vda(ptr nocapture noundef readonly %sgc, ptr nocapture noundef writeonly %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgc, align 4
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %2 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_offset, align 4
  %vda_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 67
  %4 = ptrtoint ptr %vda_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vda_buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %ppvda_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 68
  %6 = ptrtoint ptr %ppvda_buffer to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppvda_buffer, align 8
  %conv = sext i32 %sub.ptr.sub to i64
  %add = add i64 %7, %conv
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %addr, align 8
  %sub = sub i32 262416, %sub.ptr.sub
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_process_vda_ioctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fs_api_complete_req(ptr noundef %a, ptr nocapture noundef readnone %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_api_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 70
  %0 = ptrtoint ptr %fs_api_command_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %fs_api_command_done, align 4
  %fs_api_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 69
  tail call void @__wake_up(ptr noundef %fs_api_waiter, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_physaddr_fs_api(ptr nocapture noundef readonly %sgc, ptr nocapture noundef writeonly %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgc, align 4
  %fs_api_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %fs_api_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_api_buffer, align 8
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %4 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_offset, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %ppfs_api_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 71
  %6 = ptrtoint ptr %ppfs_api_buffer to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppfs_api_buffer, align 8
  %conv = zext i32 %sub.ptr.sub to i64
  %add = add i64 %7, %conv
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %addr, align 8
  %fs_api_buffer_size = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 73
  %9 = ptrtoint ptr %fs_api_buffer_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fs_api_buffer_size, align 4
  %sub = sub i32 %10, %sub.ptr.sub
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_process_fs_ioctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_get_model_name_short(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_get_model_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_passthru_comp_cb(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %aux_req_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 21
  %0 = ptrtoint ptr %aux_req_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux_req_cx, align 4
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %2 = ptrtoint ptr %func_rsp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %func_rsp, align 4
  %scsi_status = getelementptr inbounds %struct.atto_ioctl, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 15, i32 13
  %4 = ptrtoint ptr %scsi_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %scsi_status, align 1
  %sense_len = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 11
  %5 = ptrtoint ptr %sense_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sense_len, align 1
  %sense_length = getelementptr inbounds %struct.atto_ioctl, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 15, i32 14
  %7 = ptrtoint ptr %sense_length to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %sense_length, align 1
  %residual_length = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 3
  %8 = ptrtoint ptr %residual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %residual_length, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %residual_length2 = getelementptr inbounds %struct.atto_ioctl, ptr %1, i32 0, i32 6, i32 0, i32 9, i32 8
  %11 = ptrtoint ptr %residual_length2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %residual_length2, align 1
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %12 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %req_stat, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %13, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 8, label %entry.sw.bb_crit_edge27
    i8 7, label %sw.bb3
    i8 6, label %sw.bb4
    i8 3, label %entry.sw.bb5_crit_edge
    i8 112, label %entry.sw.bb5_crit_edge28
    i8 4, label %sw.bb6
    i8 5, label %sw.bb7
    i8 -5, label %sw.bb8
    i8 2, label %sw.bb9
    i8 10, label %sw.bb10
    i8 13, label %sw.bb11
  ]

entry.sw.bb5_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge27
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge28
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %sts.0 = phi i8 [ 1, %entry.sw.epilog_crit_edge ], [ 7, %sw.bb11 ], [ 8, %sw.bb10 ], [ 9, %sw.bb9 ], [ 10, %sw.bb8 ], [ 6, %sw.bb7 ], [ 5, %sw.bb6 ], [ 4, %sw.bb5 ], [ 2, %sw.bb4 ], [ 3, %sw.bb3 ], [ 0, %sw.bb ]
  %req_status = getelementptr inbounds %struct.atto_ioctl, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 15, i32 12
  %15 = ptrtoint ptr %req_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %sts.0, ptr %req_status, align 1
  %target_id = getelementptr inbounds %struct.atto_ioctl, ptr %1, i32 0, i32 6, i32 0, i32 5
  %16 = ptrtoint ptr %target_id to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %target_id, align 1
  %conv12 = trunc i32 %17 to i16
  %call = tail call zeroext i16 @esas2r_targ_db_find_next_present(ptr noundef %a, i16 noundef zeroext %conv12) #8
  %conv13 = zext i16 %call to i32
  %18 = ptrtoint ptr %target_id to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %conv13, ptr %target_id, align 1
  %aux_req_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 20
  %19 = ptrtoint ptr %aux_req_cb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aux_req_cb, align 8
  tail call void %20(ptr noundef %a, ptr noundef %rq) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @esas2r_targ_db_find_next_present(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_reset_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_build_ioctl_req(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_buffered_ioctl_req(ptr noundef %a, ptr nocapture noundef readnone %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffered_ioctl_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 75
  %0 = ptrtoint ptr %buffered_ioctl_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %buffered_ioctl_done, align 4
  %buffered_ioctl_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 74
  tail call void @__wake_up(ptr noundef %buffered_ioctl_waiter, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_physaddr_buffered_ioctl(ptr nocapture noundef readonly %sgc, ptr nocapture noundef writeonly %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %0 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_offset, align 4
  %2 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load i32, ptr @esas2r_buffered_ioctl_addr, align 4
  %add = add i32 %sub.ptr.sub, %3
  %conv = zext i32 %add to i64
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %addr, align 8
  %5 = load i32, ptr @esas2r_buffered_ioctl_size, align 4
  %sub = sub i32 %5, %sub.ptr.sub
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smp_ioctl_callback(ptr noundef %a, ptr noundef %rq, ptr noundef %sgc, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %1 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vrq, align 8
  %3 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %a, ptr %sgc, align 4
  %first_req.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %5 = ptrtoint ptr %first_req.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rq, ptr %first_req.i, align 4
  %6 = load ptr, ptr %vrq, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 116
  %sge.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr1.i, ptr %limit.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %sge.i, align 4
  %last.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %last.i, align 4
  %10 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vrq, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i8
  br label %esas2r_sgc_init.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vrq, align 8
  %u.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %u.i, ptr %sge.i, align 4
  %last10.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %last10.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %u.i, ptr %last10.i, align 4
  %16 = load ptr, ptr %vrq, align 8
  br label %esas2r_sgc_init.exit

esas2r_sgc_init.exit:                             ; preds = %if.else.i, %if.then.i
  %.sink28.i = phi ptr [ %16, %if.else.i ], [ %11, %if.then.i ]
  %.sink.i = phi i8 [ 44, %if.else.i ], [ %conv.i, %if.then.i ]
  %sg_list_offset12.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %.sink28.i, i32 0, i32 4
  %17 = ptrtoint ptr %sg_list_offset12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink.i, ptr %sg_list_offset12.i, align 1
  %chain.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %18 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %chain.i, align 4
  %length = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %20, i8 noundef zeroext 2) #8
  %21 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vrq, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  br i1 %cmp.i, label %esas2r_sgc_init.exit.if.end_crit_edge, label %esas2r_build_sg_list.exit, !prof !52

esas2r_sgc_init.exit.if.end_crit_edge:            ; preds = %esas2r_sgc_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

esas2r_build_sg_list.exit:                        ; preds = %esas2r_sgc_init.exit
  %build_sgl.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %25 = ptrtoint ptr %build_sgl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %build_sgl.i, align 8
  %call.i = tail call zeroext i1 %26(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i, label %esas2r_build_sg_list.exit.if.end_crit_edge, label %if.then

esas2r_build_sg_list.exit.if.end_crit_edge:       ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.atto_ioctl_smp, ptr %0, i32 0, i32 2
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %status, align 1
  br label %cleanup

if.end:                                           ; preds = %esas2r_build_sg_list.exit.if.end_crit_edge, %esas2r_sgc_init.exit.if.end_crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csmi_ioctl_callback(ptr noundef %a, ptr noundef %rq, ptr noundef %sgc, ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %context, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %3)
  %switch = icmp eq i32 %3, 28
  br i1 %switch, label %if.end9, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end9:                                          ; preds = %entry
  %path.0.in = getelementptr inbounds %struct.atto_csmi, ptr %context, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %path.0.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %path.0 = load i8, ptr %path.0.in, align 1
  %tid.0.in = getelementptr inbounds %struct.atto_csmi, ptr %context, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %tid.0.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %tid.0 = load i8, ptr %tid.0.in, align 1
  %lun.0.in = getelementptr inbounds %struct.atto_csmi, ptr %context, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %lun.0.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %lun.0 = load i8, ptr %lun.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %path.0)
  %cmp10.not = icmp eq i8 %path.0, 0
  br i1 %cmp10.not, label %if.end9.if.end13_crit_edge, label %if.end9.cleanup169.sink.split_crit_edge

if.end9.cleanup169.sink.split_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169.sink.split

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %if.end9.if.end13_crit_edge, %entry.if.end13_crit_edge
  %tid.0284 = phi i8 [ %tid.0, %if.end9.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  %lun.0283 = phi i8 [ %lun.0, %if.end9.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  %conv14 = zext i8 %tid.0284 to i16
  %target_id15 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 9
  %7 = ptrtoint ptr %target_id15 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv14, ptr %target_id15, align 8
  %conv16 = zext i8 %lun.0283 to i32
  %8 = shl nuw i32 %conv16, 24
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %9 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vrq, align 8
  %flags17 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %flags17 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %flags17, align 1
  %or = or i32 %12, %8
  store i32 %or, ptr %flags17, align 1
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %context, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %14, label %if.end13.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb76
    i32 29, label %sw.bb142
    i32 28, label %sw.bb115
    i32 27, label %sw.bb90
    i32 23, label %if.end13.sw.bb85_crit_edge
    i32 24, label %if.end13.sw.bb85_crit_edge285
    i32 25, label %if.end13.sw.bb85_crit_edge286
    i32 20, label %if.end13.sw.bb85_crit_edge287
    i32 21, label %if.end13.sw.bb85_crit_edge288
    i32 22, label %if.end13.sw.bb85_crit_edge289
    i32 26, label %if.end13.sw.bb85_crit_edge290
    i32 30, label %if.end13.sw.bb85_crit_edge291
    i32 60, label %if.end13.sw.bb85_crit_edge292
  ]

if.end13.sw.bb85_crit_edge292:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge291:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge290:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge289:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge288:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge287:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge286:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge285:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.bb85_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %description = getelementptr inbounds %struct.atto_csmi_get_driver_info, ptr %0, i32 0, i32 1
  %call = tail call ptr @esas2r_get_model_name(ptr noundef %a) #8
  %call19 = tail call ptr @strcpy(ptr noundef %description, ptr noundef %call) #11
  %csmi_major_rev = getelementptr inbounds %struct.atto_csmi_get_driver_info, ptr %0, i32 0, i32 6
  %16 = ptrtoint ptr %csmi_major_rev to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %csmi_major_rev, align 2
  %csmi_minor_rev = getelementptr inbounds %struct.atto_csmi_get_driver_info, ptr %0, i32 0, i32 7
  %17 = ptrtoint ptr %csmi_minor_rev to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 81, ptr %csmi_minor_rev, align 2
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %0, align 4
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %19 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcid, align 4
  %21 = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 1
  %call21 = tail call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef 24, ptr noundef %21) #8
  %22 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcid, align 4
  %base_memaddr_hi = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 1, i32 1
  %call23 = tail call i32 @pci_read_config_dword(ptr noundef %23, i32 noundef 28, ptr noundef %base_memaddr_hi) #8
  %24 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcid, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_device, align 2
  %conv25 = zext i16 %27 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 9
  %28 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_vendor, align 4
  %conv27 = zext i16 %29 to i32
  %shl = shl nuw i32 %conv27, 16
  %or28 = or i32 %shl, %conv25
  %board_id = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 2
  %30 = ptrtoint ptr %board_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or28, ptr %board_id, align 4
  %slot_num = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 3
  %31 = ptrtoint ptr %slot_num to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %slot_num, align 4
  %cntlr_class = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 4
  %32 = ptrtoint ptr %cntlr_class to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %cntlr_class, align 2
  %io_bus_type = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 5
  %33 = ptrtoint ptr %io_bus_type to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %io_bus_type, align 1
  %34 = load ptr, ptr %pcid, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %number, align 4
  %39 = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 6
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %39, align 4
  %41 = load ptr, ptr %pcid, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devfn, align 4
  %44 = trunc i32 %43 to i8
  %45 = lshr i8 %44, 3
  %device_num = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 6, i32 0, i32 1
  %46 = ptrtoint ptr %device_num to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %device_num, align 1
  %47 = load ptr, ptr %pcid, align 4
  %devfn33 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %devfn33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %devfn33, align 4
  %50 = trunc i32 %49 to i8
  %conv35 = and i8 %50, 7
  %function_num = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 6, i32 0, i32 2
  %51 = ptrtoint ptr %function_num to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv35, ptr %function_num, align 2
  %serial_num = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 7
  %52 = call ptr @memset(ptr %serial_num, i32 0, i32 81)
  %fw_version = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 29
  %53 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_version, align 4
  %55 = trunc i32 %54 to i16
  %conv39 = and i16 %55, 255
  %major_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 8
  %56 = ptrtoint ptr %major_rev to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv39, ptr %major_rev, align 2
  %57 = load i32, ptr %fw_version, align 4
  %58 = trunc i32 %57 to i16
  %59 = lshr i16 %58, 8
  %minor_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 9
  %60 = ptrtoint ptr %minor_rev to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %minor_rev, align 4
  %61 = load i32, ptr %fw_version, align 4
  %shr47 = lshr i32 %61, 16
  %62 = trunc i32 %shr47 to i16
  %conv50 = and i16 %62, 255
  %build_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 10
  %63 = ptrtoint ptr %build_rev to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv50, ptr %build_rev, align 2
  %64 = load i32, ptr %fw_version, align 4
  %shr52 = lshr i32 %64, 24
  %65 = trunc i32 %shr52 to i16
  %release_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 11
  %66 = ptrtoint ptr %release_rev to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %release_rev, align 4
  %flash_ver = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 47
  %67 = ptrtoint ptr %flash_ver to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flash_ver, align 4
  %shr58 = lshr i32 %68, 24
  %69 = trunc i32 %shr58 to i16
  %bios_major_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 12
  %70 = ptrtoint ptr %bios_major_rev to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %bios_major_rev, align 2
  %71 = load i32, ptr %flash_ver, align 4
  %shr65 = lshr i32 %71, 16
  %72 = trunc i32 %shr65 to i16
  %conv68 = and i16 %72, 255
  %bios_minor_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 13
  %73 = ptrtoint ptr %bios_minor_rev to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv68, ptr %bios_minor_rev, align 4
  %74 = load i32, ptr %flash_ver, align 4
  %conv70 = trunc i32 %74 to i16
  %bios_build_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 14
  %75 = ptrtoint ptr %bios_build_rev to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv70, ptr %bios_build_rev, align 2
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %76 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags2, align 4
  %78 = and i32 %77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not = icmp eq i32 %78, 0
  %spec.select = select i1 %tobool.not, i32 10, i32 5
  %79 = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 16
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.select, ptr %79, align 4
  %rrom_major_rev = getelementptr inbounds %struct.atto_csmi_get_cntlr_cfg, ptr %0, i32 0, i32 17
  %81 = call ptr @memset(ptr %rrom_major_rev, i32 0, i32 16)
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %flags77 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %82 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags77, align 4
  %84 = and i32 %83, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool79.not = icmp eq i32 %84, 0
  %. = select i1 %tobool79.not, i32 1, i32 2
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %., ptr %0, align 4
  %offline_reason = getelementptr inbounds %struct.atto_csmi_get_cntlr_sts, ptr %0, i32 0, i32 1
  %86 = ptrtoint ptr %offline_reason to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %offline_reason, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end13.sw.bb85_crit_edge, %if.end13.sw.bb85_crit_edge285, %if.end13.sw.bb85_crit_edge286, %if.end13.sw.bb85_crit_edge287, %if.end13.sw.bb85_crit_edge288, %if.end13.sw.bb85_crit_edge289, %if.end13.sw.bb85_crit_edge290, %if.end13.sw.bb85_crit_edge291, %if.end13.sw.bb85_crit_edge292
  %call87 = tail call fastcc zeroext i1 @csmi_ioctl_tunnel(ptr noundef %a, ptr noundef %0, ptr noundef %rq, ptr noundef %sgc, i32 noundef %14, i16 noundef zeroext -1)
  br i1 %call87, label %sw.bb85.cleanup169_crit_edge, label %sw.bb85.sw.epilog_crit_edge

sw.bb85.sw.epilog_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb85.cleanup169_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

sw.bb90:                                          ; preds = %if.end13
  %sas_lun = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, ptr %0, i32 0, i32 1
  %87 = ptrtoint ptr %sas_lun to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %lun91.sroa.0.0.copyload = load i32, ptr %sas_lun, align 1
  %lun91.sroa.8.0.arraydecay92.sroa_idx = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, ptr %0, i32 0, i32 1, i32 4
  %88 = ptrtoint ptr %lun91.sroa.8.0.arraydecay92.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %lun91.sroa.8.0.copyload = load i32, ptr %lun91.sroa.8.0.arraydecay92.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lun91.sroa.8.0.copyload)
  %89 = icmp eq i32 %lun91.sroa.8.0.copyload, 0
  %conv22.i = and i32 %lun91.sroa.0.0.copyload, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %conv22.i, 0
  %or.cond39.i = select i1 %89, i1 %cmp23.i, i1 false
  %90 = and i32 %lun91.sroa.0.0.copyload, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp29.i = icmp eq i32 %90, 0
  %or.cond40.i = select i1 %or.cond39.i, i1 %cmp29.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %lun91.sroa.0.0.copyload)
  %cmp34.i = icmp ult i32 %lun91.sroa.0.0.copyload, 16777216
  %spec.select.i = select i1 %or.cond40.i, i1 %cmp34.i, i1 false
  br i1 %spec.select.i, label %do.body96, label %sw.bb90.sw.epilog_crit_edge

sw.bb90.sw.epilog_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body96:                                        ; preds = %sw.bb90
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #8
  %call104 = tail call ptr @esas2r_targ_db_find_by_sas_addr(ptr noundef %a, ptr noundef %0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call100) #8
  %cmp106 = icmp eq ptr %call104, null
  br i1 %cmp106, label %do.body96.sw.epilog_crit_edge, label %if.end109

do.body96.sw.epilog_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end109:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %host_index = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, ptr %0, i32 0, i32 2
  %91 = ptrtoint ptr %host_index to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %host_index, align 1
  %arrayidx = getelementptr %struct.atto_csmi_get_scsi_addr, ptr %0, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx, align 1
  %lun111 = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, ptr %0, i32 0, i32 5
  %94 = ptrtoint ptr %lun111 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %lun111, align 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call104 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %a to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 120
  %conv.i = trunc i32 %sub.ptr.div.i to i16
  %95 = ptrtoint ptr %target_id15 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i, ptr %target_id15, align 8
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end13
  %96 = ptrtoint ptr %target_id15 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %target_id15, align 8
  %conv119 = zext i16 %97 to i32
  %add.ptr = getelementptr %struct.esas2r_target, ptr %a, i32 %conv119
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %98 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %targetdb_end, align 8
  %cmp120.not = icmp ult ptr %add.ptr, %99
  br i1 %cmp120.not, label %lor.lhs.false, label %sw.bb115.sw.epilog_crit_edge

sw.bb115.sw.epilog_crit_edge:                     ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb115
  %target_state = getelementptr %struct.esas2r_target, ptr %a, i32 %conv119, i32 2
  %100 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %101)
  %cmp123.not = icmp eq i8 %101, 5
  br i1 %cmp123.not, label %lor.lhs.false125, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false125:                                 ; preds = %lor.lhs.false
  %sas_addr126 = getelementptr %struct.esas2r_target, ptr %a, i32 %conv119, i32 10
  %102 = ptrtoint ptr %sas_addr126 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %sas_addr126, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %103)
  %cmp127 = icmp eq i64 %103, 0
  br i1 %cmp127, label %lor.lhs.false125.sw.epilog_crit_edge, label %if.end130

lor.lhs.false125.sw.epilog_crit_edge:             ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end130:                                        ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #10
  %sas_addr132 = getelementptr inbounds %struct.atto_csmi_get_dev_addr, ptr %0, i32 0, i32 4
  %104 = ptrtoint ptr %sas_addr132 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 %103, ptr %sas_addr132, align 1
  %sas_lun134 = getelementptr inbounds %struct.atto_csmi_get_dev_addr, ptr %0, i32 0, i32 5
  %105 = ptrtoint ptr %sas_lun134 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 0, ptr %sas_lun134, align 1
  %106 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vrq, align 8
  %flags137 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %flags137 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %flags137, align 1
  %110 = lshr i32 %109, 24
  %conv138 = trunc i32 %110 to i8
  %arrayidx140 = getelementptr %struct.atto_csmi_get_dev_addr, ptr %0, i32 0, i32 5, i32 1
  %111 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv138, ptr %arrayidx140, align 1
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.end13
  %112 = ptrtoint ptr %target_id15 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %target_id15, align 8
  %conv146 = zext i16 %113 to i32
  %add.ptr147 = getelementptr %struct.esas2r_target, ptr %a, i32 %conv146
  %targetdb_end148 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %114 = ptrtoint ptr %targetdb_end148 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %targetdb_end148, align 8
  %cmp149.not = icmp ult ptr %add.ptr147, %115
  br i1 %cmp149.not, label %lor.lhs.false151, label %sw.bb142.sw.epilog_crit_edge

sw.bb142.sw.epilog_crit_edge:                     ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false151:                                 ; preds = %sw.bb142
  %target_state152 = getelementptr %struct.esas2r_target, ptr %a, i32 %conv146, i32 2
  %116 = ptrtoint ptr %target_state152 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %target_state152, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %117)
  %cmp154.not = icmp eq i8 %117, 5
  br i1 %cmp154.not, label %lor.lhs.false156, label %lor.lhs.false151.sw.epilog_crit_edge

lor.lhs.false151.sw.epilog_crit_edge:             ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false156:                                 ; preds = %lor.lhs.false151
  %118 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %add.ptr147, align 8
  %120 = and i8 %119, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool160.not = icmp eq i8 %120, 0
  br i1 %tobool160.not, label %lor.lhs.false156.sw.epilog_crit_edge, label %if.end162

lor.lhs.false156.sw.epilog_crit_edge:             ; preds = %lor.lhs.false156
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end162:                                        ; preds = %lor.lhs.false156
  %phys_targ_id = getelementptr %struct.esas2r_target, ptr %a, i32 %conv146, i32 8
  %121 = ptrtoint ptr %phys_targ_id to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %phys_targ_id, align 2
  %call164 = tail call fastcc zeroext i1 @csmi_ioctl_tunnel(ptr noundef %a, ptr noundef %0, ptr noundef %rq, ptr noundef %sgc, i32 noundef 29, i16 noundef zeroext %122)
  br i1 %call164, label %if.end162.cleanup169_crit_edge, label %if.end162.sw.epilog_crit_edge

if.end162.sw.epilog_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end162.cleanup169_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup169

sw.epilog:                                        ; preds = %if.end162.sw.epilog_crit_edge, %lor.lhs.false156.sw.epilog_crit_edge, %lor.lhs.false151.sw.epilog_crit_edge, %sw.bb142.sw.epilog_crit_edge, %if.end130, %lor.lhs.false125.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb115.sw.epilog_crit_edge, %if.end109, %do.body96.sw.epilog_crit_edge, %sw.bb90.sw.epilog_crit_edge, %sw.bb85.sw.epilog_crit_edge, %sw.bb76, %sw.bb20, %sw.bb, %if.end13.sw.epilog_crit_edge
  %sts.2 = phi i32 [ 0, %sw.bb76 ], [ 0, %sw.bb20 ], [ 0, %sw.bb ], [ 1, %sw.bb85.sw.epilog_crit_edge ], [ 0, %if.end109 ], [ 2013, %sw.bb90.sw.epilog_crit_edge ], [ 2013, %do.body96.sw.epilog_crit_edge ], [ 0, %if.end130 ], [ 2014, %lor.lhs.false125.sw.epilog_crit_edge ], [ 2014, %lor.lhs.false.sw.epilog_crit_edge ], [ 2014, %sw.bb115.sw.epilog_crit_edge ], [ 2014, %lor.lhs.false156.sw.epilog_crit_edge ], [ 2014, %lor.lhs.false151.sw.epilog_crit_edge ], [ 2014, %sw.bb142.sw.epilog_crit_edge ], [ 1, %if.end162.sw.epilog_crit_edge ], [ 2, %if.end13.sw.epilog_crit_edge ]
  %123 = tail call i32 @llvm.bswap.i32(i32 %sts.2)
  br label %cleanup169.sink.split

cleanup169.sink.split:                            ; preds = %sw.epilog, %if.end9.cleanup169.sink.split_crit_edge
  %.sink = phi i32 [ %123, %sw.epilog ], [ 50331648, %if.end9.cleanup169.sink.split_crit_edge ]
  %func_rsp167 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %124 = ptrtoint ptr %func_rsp167 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.sink, ptr %func_rsp167, align 4
  br label %cleanup169

cleanup169:                                       ; preds = %cleanup169.sink.split, %if.end162.cleanup169_crit_edge, %sw.bb85.cleanup169_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb85.cleanup169_crit_edge ], [ 1, %if.end162.cleanup169_crit_edge ], [ 0, %cleanup169.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @csmi_ioctl_done_callback(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %rq, ptr nocapture noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @esas2r_buffered_ioctl, align 4
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %context, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 27, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call ptr @memcpy(ptr %0, ptr @.str.9, i32 5)
  %major_rev = getelementptr inbounds %struct.atto_csmi_get_driver_info, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %major_rev to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %major_rev, align 2
  %minor_rev = getelementptr inbounds %struct.atto_csmi_get_driver_info, ptr %0, i32 0, i32 3
  %6 = ptrtoint ptr %minor_rev to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %minor_rev, align 2
  %build_rev = getelementptr inbounds %struct.atto_csmi_get_driver_info, ptr %0, i32 0, i32 4
  %7 = ptrtoint ptr %build_rev to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %build_rev, align 2
  %release_rev = getelementptr inbounds %struct.atto_csmi_get_driver_info, ptr %0, i32 0, i32 5
  %8 = ptrtoint ptr %release_rev to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %release_rev, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %9 = ptrtoint ptr %func_rsp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %func_rsp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 9
  %11 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %target_id, align 8
  %conv = trunc i16 %12 to i8
  %target_id2 = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, ptr %0, i32 0, i32 4
  %13 = ptrtoint ptr %target_id2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %target_id2, align 1
  %path_id = getelementptr inbounds %struct.atto_csmi_get_scsi_addr, ptr %0, i32 0, i32 3
  %14 = ptrtoint ptr %path_id to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %path_id, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %func_rsp3 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %15 = ptrtoint ptr %func_rsp3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %func_rsp3, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %status = getelementptr inbounds %struct.atto_csmi, ptr %context, i32 0, i32 1
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %status, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @csmi_ioctl_tunnel(ptr noundef %a, ptr noundef %ci, ptr noundef %rq, ptr noundef %sgc, i32 noundef %ctrl_code, i16 noundef zeroext %target_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq, align 8
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %a, ptr %sgc, align 4
  %first_req.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %7 = ptrtoint ptr %first_req.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rq, ptr %first_req.i, align 4
  %8 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vrq, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 116
  %sge.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %10 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr1.i, ptr %limit.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %sge.i, align 4
  %last.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %last.i, align 4
  %13 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vrq, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i8
  br label %esas2r_sgc_init.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vrq, align 8
  %u.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %u.i, ptr %sge.i, align 4
  %last10.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %last10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %u.i, ptr %last10.i, align 4
  %19 = load ptr, ptr %vrq, align 8
  br label %esas2r_sgc_init.exit

esas2r_sgc_init.exit:                             ; preds = %if.else.i, %if.then.i
  %.sink28.i = phi ptr [ %19, %if.else.i ], [ %14, %if.then.i ]
  %.sink.i = phi i8 [ 44, %if.else.i ], [ %conv.i, %if.then.i ]
  %sg_list_offset12.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %.sink28.i, i32 0, i32 4
  %20 = ptrtoint ptr %sg_list_offset12.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i, ptr %sg_list_offset12.i, align 1
  %chain.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %21 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %chain.i, align 4
  %length = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  tail call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %23, i8 noundef zeroext 1) #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %ctrl_code)
  %25 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %24, ptr %25, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %target_id)
  %target_id3 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %1, i32 0, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %target_id3 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %target_id3, align 1
  %29 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vrq, align 8
  %flags5 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %flags5 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %flags5, align 1
  %33 = lshr i32 %32, 24
  %conv = trunc i32 %33 to i8
  %lun = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %1, i32 0, i32 7, i32 0, i32 2
  %34 = ptrtoint ptr %lun to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %lun, align 1
  %aux_req_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 21
  %35 = ptrtoint ptr %aux_req_cx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ci, ptr %aux_req_cx, align 4
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 13
  %36 = ptrtoint ptr %comp_cb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %comp_cb, align 4
  %aux_req_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 20
  %38 = ptrtoint ptr %aux_req_cb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %aux_req_cb, align 8
  store ptr @esas2r_csmi_ioctl_tunnel_comp_cb, ptr %comp_cb, align 4
  %39 = load ptr, ptr %vrq, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp eq i32 %41, 0
  br i1 %cmp.i, label %esas2r_sgc_init.exit.if.end9_crit_edge, label %esas2r_build_sg_list.exit, !prof !52

esas2r_sgc_init.exit.if.end9_crit_edge:           ; preds = %esas2r_sgc_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

esas2r_build_sg_list.exit:                        ; preds = %esas2r_sgc_init.exit
  %build_sgl.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %42 = ptrtoint ptr %build_sgl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %build_sgl.i, align 8
  %call.i = tail call zeroext i1 %43(ptr noundef %a, ptr noundef %sgc) #8
  br i1 %call.i, label %esas2r_build_sg_list.exit.if.end9_crit_edge, label %esas2r_build_sg_list.exit.cleanup_crit_edge

esas2r_build_sg_list.exit.cleanup_crit_edge:      ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

esas2r_build_sg_list.exit.if.end9_crit_edge:      ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %esas2r_build_sg_list.exit.if.end9_crit_edge, %esas2r_sgc_init.exit.if.end9_crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %esas2r_build_sg_list.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end9 ], [ false, %entry.cleanup_crit_edge ], [ false, %esas2r_build_sg_list.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_targ_db_find_by_sas_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_csmi_ioctl_tunnel_comp_cb(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 3
  %0 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %target_id, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %target_id1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 9
  %3 = ptrtoint ptr %target_id1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %target_id1, align 8
  %lun = getelementptr inbounds %struct.anon.22, ptr %func_rsp, i32 0, i32 2
  %4 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lun, align 2
  %conv = zext i8 %5 to i32
  %6 = shl nuw i32 %conv, 24
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %7 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vrq, align 8
  %flags = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %flags, align 1
  %or = or i32 %10, %6
  store i32 %or, ptr %flags, align 1
  %aux_req_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 20
  %11 = ptrtoint ptr %aux_req_cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aux_req_cb, align 8
  tail call void %12(ptr noundef %a, ptr noundef %rq) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_physaddr_fm_api_header(ptr nocapture noundef readonly %sgc, ptr nocapture noundef writeonly %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgc, align 4
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %2 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_offset, align 4
  %save_offset = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 84
  %4 = ptrtoint ptr %save_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %save_offset, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %header_buff_phys = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 60, i32 6
  %6 = ptrtoint ptr %header_buff_phys to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %header_buff_phys, align 8
  %conv = sext i32 %sub.ptr.sub to i64
  %add = add i64 %7, %conv
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %addr, align 8
  %sub = sub i32 2176, %sub.ptr.sub
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_physaddr_fm_api(ptr nocapture noundef readonly %sgc, ptr nocapture noundef writeonly %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgc, align 4
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %2 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_offset, align 4
  %save_offset = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 84
  %4 = ptrtoint ptr %save_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %save_offset, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %phys = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 60, i32 3
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %phys, align 8
  %conv = sext i32 %sub.ptr.sub to i64
  %add = add i64 %7, %conv
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %addr, align 8
  %orig_len = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 60, i32 4
  %9 = ptrtoint ptr %orig_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orig_len, align 8
  %sub = sub i32 %10, %sub.ptr.sub
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_fm_api_req(ptr noundef %a, ptr nocapture noundef readnone %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_api_command_done = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 64
  %0 = ptrtoint ptr %fm_api_command_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %fm_api_command_done, align 4
  %fm_api_waiter = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 63
  tail call void @__wake_up(ptr noundef %fm_api_waiter, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_fm_api(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1260, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1281, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1291, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1299, i32 6}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1301, i32 31}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1342, i32 32}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1402, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1491, i32 31}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1516, i32 7}
!18 = !{ptr @esas2r_buffered_ioctl, !19, !"esas2r_buffered_ioctl", i1 false, i1 false}
!19 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 54, i32 5}
!20 = !{ptr @esas2r_buffered_ioctl_addr, !21, !"esas2r_buffered_ioctl_addr", i1 false, i1 false}
!21 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 55, i32 12}
!22 = !{ptr @esas2r_buffered_ioctl_size, !23, !"esas2r_buffered_ioctl_size", i1 false, i1 false}
!23 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 56, i32 5}
!24 = !{ptr @esas2r_buffered_ioctl_pcid, !25, !"esas2r_buffered_ioctl_pcid", i1 false, i1 false}
!25 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 57, i32 17}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1220, i32 31}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 1221, i32 26}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 240, i32 7}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/esas2r/esas2r_ioctl.c", i32 59, i32 8}
!34 = !{ptr @buffered_ioctl_semaphore, !33, !"buffered_ioctl_semaphore", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!37 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2153978837, i64 2153978862}
