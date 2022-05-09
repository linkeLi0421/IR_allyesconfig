; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_main.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.esas2r_sas_nvram = type { [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [16 x i8], i8, i8, i8, [161 x i8] }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon.84 }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon.84 = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.107, ptr, ptr, i32, i32 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { ptr, ptr, ptr, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.97, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.105 }
%union.anon.97 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.105 = type { ptr }
%struct.atto_vda_scsi_req = type { i32, i8, i8, i8, i8, i32, i32, [16 x i8], %union.anon.85, %union.anon.87 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type <{ i64, i16, i8, i8 }>
%union.anon.87 = type { [245 x i32] }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.106, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%union.anon.106 = type { i32 }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.110, i32 }
%union.anon.110 = type { ptr }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.atto_vda_req = type { %struct.atto_vda_scsi_req }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.atto_vda_buzzer_info = type { i8, [3 x i8], i32, [104 x i8] }
%struct.atto_vda_schedule_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, [15 x i8], [85 x i8] }
%struct.atto_vda_devinfo = type { %struct.atto_dev_addr, [8 x i8], [16 x i8], [4 x i8], i64, i32, i8, %union.anon.99, i8, i8, i8, i8, i16, [32 x i8], %union.anon.100, i16, i16, i8, i8, i16, [2 x i8] }
%struct.atto_dev_addr = type <{ i64, i64, i8, i8, i8, [1 x i8] }>
%union.anon.99 = type { i8 }
%union.anon.100 = type { i16 }
%struct.atto_vda_grp_info = type { i8, [15 x i8], i64, i32, i32, i8, %union.anon.101, i8, i8, i8, i8, i8, i8, %union.anon.102, i16, i8, i8, i8, [3 x i8] }
%union.anon.101 = type { i8 }
%union.anon.102 = type { [32 x i16] }
%struct.atto_vdapart_info = type { i8, [15 x i8], i64, i64, i32, i16, i8, [41 x i8], i8, [7 x i8] }
%struct.atto_vda_dh_info = type { i8, i8, i8, i8, i32, i32, i8, [35 x i8], [1 x %struct.atto_vda_sge] }
%struct.atto_vda_sge = type <{ i32, i64 }>
%struct.atto_vda_metrics_info = type { i8, i8, i8, i8, [32 x i16], [12 x i8], [1 x %struct.atto_vda_sge] }
%struct.atto_vda_date_and_time = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.atto_vda_cfg_init = type { %struct.atto_vda_date_and_time, i32, i32, i32, i32, i32, i32, i32, i32, [72 x i8] }
%struct.atto_vda_ae_raid = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i8, i8, [15 x i8], i8, [100 x i8] }
%struct.esas2r_fw_event_work = type { %struct.list_head, %struct.delayed_work, ptr, i32, [136 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description287 = internal constant [67 x i8] c"esas2r.description=esas2r: ATTO ExpressSAS 6GB RAID Adapter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author288 = internal constant [36 x i8] c"esas2r.author=ATTO Technology, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [39 x i8] c"esas2r.file=drivers/scsi/esas2r/esas2r\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [19 x i8] c"esas2r.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [20 x i8] c"esas2r.version=1.00\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"esas2r\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fw\00", [29 x i8] zeroinitializer }, align 32
@bin_attr_fw = dso_local global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.3, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @read_fw, ptr @write_fw, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@bin_attr_fs = dso_local global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.4, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @read_fs, ptr @write_fs, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vda\00", [28 x i8] zeroinitializer }, align 32
@bin_attr_vda = dso_local global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.5, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @read_vda, ptr @write_vda, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@bin_attr_hw = dso_local global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.6, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @read_hw, ptr @write_hw, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"live_nvram\00", [21 x i8] zeroinitializer }, align 32
@bin_attr_live_nvram = dso_local global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.7, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @read_live_nvram, ptr @write_live_nvram, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default_nvram\00", [18 x i8] zeroinitializer }, align 32
@bin_attr_default_nvram = dso_local global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @read_default_nvram, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sgl_page_size = dso_local global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_str_sgl_page_size = internal constant [21 x i8] c"esas2r.sgl_page_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_sgl_page_size = internal constant %struct.kernel_param { ptr @__param_str_sgl_page_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @sgl_page_size } }, section "__param", align 4
@__UNIQUE_ID_sgl_page_sizetype300 = internal constant [34 x i8] c"esas2r.parmtype=sgl_page_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sgl_page_size301 = internal constant [207 x i8] c"esas2r.parm=sgl_page_size:Scatter/gather list (SGL) page size in number of S/G entries.  If your application is doing a lot of very large transfers, you may want to increase the SGL page size.  Default 512.\00", section ".modinfo", align 1
@num_sg_lists = dso_local global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_str_num_sg_lists = internal constant [20 x i8] c"esas2r.num_sg_lists\00", align 1
@__param_num_sg_lists = internal constant %struct.kernel_param { ptr @__param_str_num_sg_lists, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @num_sg_lists } }, section "__param", align 4
@__UNIQUE_ID_num_sg_liststype302 = internal constant [33 x i8] c"esas2r.parmtype=num_sg_lists:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_sg_lists303 = internal constant [72 x i8] c"esas2r.parm=num_sg_lists:Number of scatter/gather lists.  Default 1024.\00", section ".modinfo", align 1
@sg_tablesize = dso_local global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_str_sg_tablesize = internal constant [20 x i8] c"esas2r.sg_tablesize\00", align 1
@__param_sg_tablesize = internal constant %struct.kernel_param { ptr @__param_str_sg_tablesize, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @sg_tablesize } }, section "__param", align 4
@__UNIQUE_ID_sg_tablesizetype304 = internal constant [33 x i8] c"esas2r.parmtype=sg_tablesize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sg_tablesize305 = internal constant [78 x i8] c"esas2r.parm=sg_tablesize:Maximum number of entries in a scatter/gather table.\00", section ".modinfo", align 1
@num_requests = dso_local global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_str_num_requests = internal constant [20 x i8] c"esas2r.num_requests\00", align 1
@__param_num_requests = internal constant %struct.kernel_param { ptr @__param_str_num_requests, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @num_requests } }, section "__param", align 4
@__UNIQUE_ID_num_requeststype306 = internal constant [33 x i8] c"esas2r.parmtype=num_requests:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_requests307 = internal constant [59 x i8] c"esas2r.parm=num_requests:Number of requests.  Default 256.\00", section ".modinfo", align 1
@num_ae_requests = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_str_num_ae_requests = internal constant [23 x i8] c"esas2r.num_ae_requests\00", align 1
@__param_num_ae_requests = internal constant %struct.kernel_param { ptr @__param_str_num_ae_requests, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @num_ae_requests } }, section "__param", align 4
@__UNIQUE_ID_num_ae_requeststype308 = internal constant [36 x i8] c"esas2r.parmtype=num_ae_requests:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_ae_requests309 = internal constant [83 x i8] c"esas2r.parm=num_ae_requests:Number of VDA asynchronous event requests.  Default 4.\00", section ".modinfo", align 1
@cmd_per_lun = dso_local global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_str_cmd_per_lun = internal constant [19 x i8] c"esas2r.cmd_per_lun\00", align 1
@__param_cmd_per_lun = internal constant %struct.kernel_param { ptr @__param_str_cmd_per_lun, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @cmd_per_lun } }, section "__param", align 4
@__UNIQUE_ID_cmd_per_luntype310 = internal constant [32 x i8] c"esas2r.parmtype=cmd_per_lun:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cmd_per_lun311 = internal constant [73 x i8] c"esas2r.parm=cmd_per_lun:Maximum number of commands per LUN.  Default 64.\00", section ".modinfo", align 1
@can_queue = dso_local global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_str_can_queue = internal constant [17 x i8] c"esas2r.can_queue\00", align 1
@__param_can_queue = internal constant %struct.kernel_param { ptr @__param_str_can_queue, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @can_queue } }, section "__param", align 4
@__UNIQUE_ID_can_queuetype312 = internal constant [30 x i8] c"esas2r.parmtype=can_queue:int\00", section ".modinfo", align 1
@__UNIQUE_ID_can_queue313 = internal constant [76 x i8] c"esas2r.parm=can_queue:Maximum number of commands per adapter.  Default 128.\00", section ".modinfo", align 1
@esas2r_max_sectors = dso_local global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@__param_str_esas2r_max_sectors = internal constant [26 x i8] c"esas2r.esas2r_max_sectors\00", align 1
@__param_esas2r_max_sectors = internal constant %struct.kernel_param { ptr @__param_str_esas2r_max_sectors, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @esas2r_max_sectors } }, section "__param", align 4
@__UNIQUE_ID_esas2r_max_sectorstype314 = internal constant [39 x i8] c"esas2r.parmtype=esas2r_max_sectors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_esas2r_max_sectors315 = internal constant [132 x i8] c"esas2r.parm=esas2r_max_sectors:Maximum number of disk sectors in a single data transfer.  Default 65535 (largest possible setting).\00", section ".modinfo", align 1
@interrupt_mode = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_interrupt_mode = internal constant [22 x i8] c"esas2r.interrupt_mode\00", align 1
@__param_interrupt_mode = internal constant %struct.kernel_param { ptr @__param_str_interrupt_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @interrupt_mode } }, section "__param", align 4
@__UNIQUE_ID_interrupt_modetype316 = internal constant [35 x i8] c"esas2r.parmtype=interrupt_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_interrupt_mode317 = internal constant [109 x i8] c"esas2r.parm=interrupt_mode:Defines the interrupt mode to use.  0 for legacy, 1 for MSI.  Default is MSI (1).\00", section ".modinfo", align 1
@esas2r_proc_host = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s called\00", [22 x i8] zeroinitializer }, align 32
@__func__.esas2r_exit = private unnamed_addr constant [12 x i8] c"esas2r_exit\00", align 1
@esas2r_proc_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unregister proc\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATTONode\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci_unregister_driver() called\00", [33 x i8] zeroinitializer }, align 32
@esas2r_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @esas2r_pci_table, ptr @esas2r_probe, ptr @esas2r_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esas2r_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"esas2r_show_info (%p,%d)\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"ATTO ExpressSAS 6GB RAID Adapter\0ADriver version: 1.00\0AFlash version: %s\0AFirmware version: %s\0ACopyright 2001-2013\0Ahttp://www.attotech.com\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"Adapter information:\0A--------------------\0AModel: %s\0ASAS address: %02X%02X%02X%02X:%02X%02X%02X%02X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\0ADiscovered devices:\0A\0A   #  Target ID\0A---------------\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" %3d   %3d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@esas2r_info.esas2r_info_str = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esas2r_info() called\00", [43 x i8] zeroinitializer }, align 32
@esas2r_proc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esas2r_proc_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register_chrdev (major %d)\00", [37 x i8] zeroinitializer }, align 32
@esas2r_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr null, ptr null, ptr null, ptr @default_llseek, ptr null, ptr null, ptr @esas2r_proc_ioctl, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create_proc_entry\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"ATTO ExpressSAS 6GB RAID Adapter (bus 0x%02X, device 0x%02X, IRQ 0x%02X) driver version: 1.00  firmware version: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eh_abort (%p)\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"host_reset (%p)\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bus_reset (%p)\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_reset (%p)\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"target_reset (%p)\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"request failure - SCSI error %x ASC:%x ASCQ:%x CDB:%x\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"request failure - SCSI error CDB:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"request failure - cdb:%x reqstatus:%d target:%d\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@esas2r_kickoff_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&a->timer)\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"esas2r_queue_fw_event failed to alloc\00", [58 x i8] zeroinitializer }, align 32
@esas2r_queue_fw_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&fw_event->work)->work)\00", [52 x i8] zeroinitializer }, align 32
@esas2r_queue_fw_event.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&fw_event->work)->timer\00", [38 x i8] zeroinitializer }, align 32
@__initcall__kmod_esas2r__318_1908_esas2r_init6 = internal global ptr @esas2r_init, section ".initcall6.init", align 4
@__exitcall_esas2r_exit = internal global ptr @esas2r_exit, section ".exitcall.exit", align 4
@esas2r_adapters = dso_local global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"write_hw kzalloc failed for %zu bytes\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@esas2r_pci_table = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4476, i32 73, i32 4476, i32 73, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4476, i32 73, i32 4476, i32 74, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4476, i32 73, i32 4476, i32 75, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4476, i32 73, i32 4476, i32 76, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4476, i32 73, i32 4476, i32 77, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4476, i32 73, i32 4476, i32 78, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@esas2r_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"esas2r_probe() 0x%02x 0x%02x 0x%02x 0x%02x\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"before pci_enable_device() enable_cnt: %d\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_enable_device() FAIL (%d)\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_enable_device() OK\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"after pci_enable_device() enable_cnt: %d\00", [55 x i8] zeroinitializer }, align 32
@driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @esas2r_queuecommand, ptr null, ptr null, ptr @.str.60, ptr @esas2r_info, ptr @esas2r_ioctl, ptr null, ptr null, ptr @esas2r_eh_abort, ptr @esas2r_device_reset, ptr @esas2r_target_reset, ptr @esas2r_bus_reset, ptr @esas2r_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esas2r_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 128, i32 -1, i16 128, i16 0, i32 65535, i32 0, i32 0, i32 0, i16 64, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi_host_alloc() FAIL\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scsi_host_alloc() OK host: %p\00", [34 x i8] zeroinitializer }, align 32
@found_adapters = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_set_master() called\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to initialize device at PCI bus %x:%x\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi_host_put() called\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci_set_drvdata(%p, %p) called\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi_add_host() called\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scsi_add_host returned %d\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scsi_add_host() FAIL\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pci_set_drvdata(%p, NULL) called\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scsi_scan_host() called\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create sysfs binary file: fw\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create sysfs binary file: fs\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to create sysfs binary file: vda\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create sysfs binary file: hw\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to create sysfs binary file: live_nvram\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to create sysfs binary file: default_nvram\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ATTO ExpressSAS 6GB RAID Adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"esas2r_remove(%p) called; host:%p\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to allocate an abort request for cmd %p\00", [49 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unable to allocate a request for a target reset (%d)!\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"unable to allocate a request for a device reset (%d:%llu)!\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"scsi_remove_device() called for 0:%d:0\00", [57 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scsi_device_put() called\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no target found at id %d\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"scsi device already exists at id %d\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"scsi_add_device() called for 0:%d:0\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"scsi_add_device failed with %d for id %d\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RAID group state change\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mapped destination LU change\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Physical disk inventory change\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Firmware reset\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Event Log message (INFO level)\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Event Log message (WARN level)\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Event Log message (CRIT level)\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Event Log message (FAIL level)\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NVCache change\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Time stamped log message (INFO level)\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Time stamped log message (WARN level)\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Time stamped log message (CRIT level)\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Power management\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mute button pressed\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device attribute change\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"An async event of type \22%s\22 was received from the firmware.  The event contents are:\00", [43 x i8] zeroinitializer }, align 32
@__func__.esas2r_init = private unnamed_addr constant [12 x i8] c"esas2r_init\00", align 1
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"warning: can_queue must be at least 1, value forced.\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"warning: can_queue must be no larger than 2048, value forced.\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"warning: cmd_per_lun must be at least 1, value forced.\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"warning: cmd_per_lun must be no larger than 2048, value forced.\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"warning: sg_tablesize must be at least 32, value forced.\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"warning: esas2r_max_sectors must be at least 1, value forced.\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"warning: esas2r_max_sectors must be no larger than 0xffff, value forced.\00", [55 x i8] zeroinitializer }, align 32
@switch.table.esas2r_firmware_event_work = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 160]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 7, i64 112]
@__sancov_gen_cov_switch_values.96 = internal global [37 x i64] [i64 35, i64 8, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 64, i64 65, i64 66, i64 67, i64 80, i64 81, i64 112, i64 113]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 2, i64 3, i64 6, i64 7, i64 8, i64 10, i64 13, i64 112]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 49, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"bin_attr_fw\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 221, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"bin_attr_fs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 222, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"bin_attr_vda\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 223, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"bin_attr_hw\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 224, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"bin_attr_live_nvram\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 225, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 228, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"bin_attr_default_nvram\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 227, i32 22 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"sgl_page_size\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 258, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"num_sg_lists\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 266, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"sg_tablesize\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 271, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"num_requests\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 276, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"num_ae_requests\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 281, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"cmd_per_lun\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 286, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant [10 x i8] c"can_queue\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 292, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"esas2r_max_sectors\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 297, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"interrupt_mode\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 303, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"esas2r_proc_host\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 626, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 637, i32 30 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"esas2r_proc_major\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 627, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 640, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 642, i32 21 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 649, i32 30 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"esas2r_pci_driver\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 343, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 661, i32 30 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 663, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 671, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 674, i32 16 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 688, i32 14 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 696, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 702, i32 15 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"esas2r_info_str\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 712, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 715, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"esas2r_proc_fops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 613, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 729, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"esas2r_proc_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 618, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 742, i32 13 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 749, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 984, i32 30 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1092, i32 30 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1099, i32 30 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1182, i32 30 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1190, i32 30 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1207, i32 9 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1213, i32 9 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1225, i32 9 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1575, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1833, i32 7 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1854, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [16 x i8] c"esas2r_adapters\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 54, i32 24 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 201, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"esas2r_pci_table\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 310, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 363, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 370, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 377, i32 11 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 383, i32 10 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 385, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"driver_template\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 234, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 390, i32 31 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 398, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant [15 x i8] c"found_adapters\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 53, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 419, i32 30 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 425, i32 7 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 430, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 438, i32 30 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 443, i32 30 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 448, i32 31 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 450, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 458, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 470, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 477, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 483, i32 11 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 489, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 495, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 501, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 508, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 237, i32 13 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 523, i32 10 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 929, i32 14 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1120, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1125, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1679, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1688, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1695, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1643, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1651, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1660, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1711, i32 10 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1715, i32 10 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1719, i32 10 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1723, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1727, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1731, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1735, i32 10 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1739, i32 10 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1743, i32 10 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1747, i32 10 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1751, i32 10 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1755, i32 10 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1759, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1763, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1767, i32 10 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1771, i32 10 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1776, i32 6 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 541, i32 7 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 546, i32 7 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 553, i32 7 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 558, i32 7 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 565, i32 7 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 572, i32 7 }
@___asan_gen_.464 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.465 = private constant [37 x i8] c"../drivers/scsi/esas2r/esas2r_main.c\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 577, i32 7 }
@___asan_gen_.467 = private unnamed_addr constant [40 x i8] c"switch.table.esas2r_firmware_event_work\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_can_queue313, ptr @__UNIQUE_ID_can_queuetype312, ptr @__UNIQUE_ID_cmd_per_lun311, ptr @__UNIQUE_ID_cmd_per_luntype310, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_esas2r_max_sectors315, ptr @__UNIQUE_ID_esas2r_max_sectorstype314, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_interrupt_mode317, ptr @__UNIQUE_ID_interrupt_modetype316, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_num_ae_requests309, ptr @__UNIQUE_ID_num_ae_requeststype308, ptr @__UNIQUE_ID_num_requests307, ptr @__UNIQUE_ID_num_requeststype306, ptr @__UNIQUE_ID_num_sg_lists303, ptr @__UNIQUE_ID_num_sg_liststype302, ptr @__UNIQUE_ID_sg_tablesize305, ptr @__UNIQUE_ID_sg_tablesizetype304, ptr @__UNIQUE_ID_sgl_page_size301, ptr @__UNIQUE_ID_sgl_page_sizetype300, ptr @__UNIQUE_ID_version291, ptr @__exitcall_esas2r_exit, ptr @__initcall__kmod_esas2r__318_1908_esas2r_init6, ptr @__modver_attr, ptr @__param_can_queue, ptr @__param_cmd_per_lun, ptr @__param_esas2r_max_sectors, ptr @__param_interrupt_mode, ptr @__param_num_ae_requests, ptr @__param_num_requests, ptr @__param_num_sg_lists, ptr @__param_sg_tablesize, ptr @__param_sgl_page_size, ptr @esas2r_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bin_attr_fw, ptr @.str.4, ptr @bin_attr_fs, ptr @.str.5, ptr @bin_attr_vda, ptr @.str.6, ptr @bin_attr_hw, ptr @.str.7, ptr @bin_attr_live_nvram, ptr @.str.8, ptr @bin_attr_default_nvram, ptr @sgl_page_size, ptr @num_sg_lists, ptr @sg_tablesize, ptr @num_requests, ptr @num_ae_requests, ptr @cmd_per_lun, ptr @can_queue, ptr @esas2r_max_sectors, ptr @interrupt_mode, ptr @esas2r_proc_host, ptr @.str.9, ptr @esas2r_proc_major, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @esas2r_pci_driver, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @esas2r_info.esas2r_info_str, ptr @.str.20, ptr @esas2r_proc_fops, ptr @.str.21, ptr @esas2r_proc_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @esas2r_kickoff_timer.__key, ptr @.str.32, ptr @.str.33, ptr @esas2r_queue_fw_event.__key, ptr @.str.34, ptr @esas2r_queue_fw_event.__key.35, ptr @.str.36, ptr @esas2r_adapters, ptr @.str.37, ptr @esas2r_pci_table, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @driver_template, ptr @.str.43, ptr @.str.44, ptr @found_adapters, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @switch.table.esas2r_firmware_event_work], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_fw to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_fs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_vda to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_hw to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_live_nvram to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_default_nvram to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgl_page_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_sg_lists to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_tablesize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_requests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ae_requests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_per_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_max_sectors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_proc_host to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_proc_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_info.esas2r_info_str to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_proc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_kickoff_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_queue_fw_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_queue_fw_event.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_adapters to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_pci_table to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @found_adapters to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.esas2r_firmware_event_work to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_fw(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %conv = trunc i64 %off to i32
  %call1 = tail call i32 @esas2r_read_fw(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv, i32 noundef %count) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_fw(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %conv = trunc i64 %off to i32
  %call1 = tail call i32 @esas2r_write_fw(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv, i32 noundef %count) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_fs(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %conv = trunc i64 %off to i32
  %call1 = tail call i32 @esas2r_read_fs(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv, i32 noundef %count) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_fs(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 36)
  %conv = trunc i64 %off to i32
  %call1 = tail call i32 @esas2r_write_fs(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv, i32 noundef %count) #12
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_vda(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %conv = trunc i64 %off to i32
  %call1 = tail call i32 @esas2r_read_vda(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv, i32 noundef %count) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vda(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %conv = trunc i64 %off to i32
  %call1 = tail call i32 @esas2r_write_vda(ptr noundef %hostdata.i, ptr noundef %buf, i32 noundef %conv, i32 noundef %count) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_hw(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %local_atto_ioctl = getelementptr i8, ptr %kobj, i32 35432
  %0 = ptrtoint ptr %local_atto_ioctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_atto_ioctl, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %call2 = tail call zeroext i8 @handle_hba_ioctl(ptr noundef %hostdata.i, ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %cmp.not = icmp eq i8 %call2, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %local_atto_ioctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local_atto_ioctl, align 8
  %4 = call ptr @memcpy(ptr %buf, ptr %3, i32 576)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 576, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_hw(ptr nocapture noundef readnone %file, ptr nocapture noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 576)
  %local_atto_ioctl = getelementptr i8, ptr %kobj, i32 35432
  %1 = ptrtoint ptr %local_atto_ioctl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local_atto_ioctl, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 576) #15
  %4 = ptrtoint ptr %local_atto_ioctl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %local_atto_ioctl, align 8
  %cmp4 = icmp eq ptr %call7.i, null
  br i1 %cmp4, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 576) #12
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %5 = ptrtoint ptr %local_atto_ioctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local_atto_ioctl, align 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 576)
  %8 = load ptr, ptr %local_atto_ioctl, align 8
  %9 = call ptr @memcpy(ptr %8, ptr %buf, i32 %0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5
  %retval.0 = phi i32 [ %0, %if.end7 ], [ -12, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @read_live_nvram(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram = getelementptr i8, ptr %kobj, i32 31932
  %0 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvram, align 4
  %2 = call ptr @memcpy(ptr %buf, ptr %1, i32 256)
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_live_nvram(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  %call1 = tail call ptr @esas2r_alloc_request(ptr noundef %hostdata.i)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @esas2r_write_params(ptr noundef %hostdata.i, ptr noundef nonnull %call1, ptr noundef %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool.not, i32 -14, i32 %count
  tail call void @esas2r_free_request(ptr noundef %hostdata.i, ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_default_nvram(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %kobj, i32 936
  tail call void @esas2r_nvram_get_defaults(ptr noundef %hostdata.i, ptr noundef %buf) #12
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_proc_ioctl(ptr nocapture readnone %fp, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @esas2r_proc_host, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 53
  %1 = inttoptr i32 %arg to ptr
  %call = tail call i32 @esas2r_ioctl_handler(ptr noundef %hostdata, i32 noundef %cmd, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_ioctl_handler(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.esas2r_exit) #12
  %0 = load i32, ptr @esas2r_proc_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.10) #12
  %1 = load ptr, ptr @esas2r_proc_host, align 4
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %proc_dir = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef %5) #12
  %6 = load i32, ptr @esas2r_proc_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %6, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.1) #12
  store i32 0, ptr @esas2r_proc_major, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.12) #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @esas2r_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_show_info(ptr noundef %m, ptr noundef %sh) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 53
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 17
  %0 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_no, align 4
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 4, ptr noundef nonnull @.str.13, ptr noundef %m, i32 noundef %1) #12
  %flash_rev = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 13, i32 50, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %fw_rev = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 13, i32 50, i32 12, i32 4
  %2 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, ptr @.str.15, ptr %fw_rev
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, ptr noundef %flash_rev, ptr noundef %spec.select) #12
  %call4 = tail call ptr @esas2r_get_model_name(ptr noundef %hostdata) #12
  %nvram = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 13, i32 50, i32 0, i32 7, i32 1, i32 4, i32 2
  %4 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvram, align 4
  %sas_addr = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sas_addr, align 1
  %conv6 = zext i8 %7 to i32
  %arrayidx9 = getelementptr %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %arrayidx13 = getelementptr %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %arrayidx17 = getelementptr %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13, i32 3
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %arrayidx21 = getelementptr %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13, i32 4
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %15 to i32
  %arrayidx25 = getelementptr %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13, i32 5
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %arrayidx29 = getelementptr %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13, i32 6
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %19 to i32
  %arrayidx33 = getelementptr %struct.esas2r_sas_nvram, ptr %5, i32 0, i32 13, i32 7
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef %call4, i32 noundef %conv6, i32 noundef %conv10, i32 noundef %conv14, i32 noundef %conv18, i32 noundef %conv22, i32 noundef %conv26, i32 noundef %conv30, i32 noundef %conv34) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.17) #12
  %targetdb_end = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 13, i32 49, i32 15
  %22 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %targetdb_end, align 8
  %cmp73 = icmp ult ptr %hostdata, %23
  br i1 %cmp73, label %for.body.lr.ph, label %entry.if.then46_crit_edge

entry.if.then46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

for.body.lr.ph:                                   ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint ptr %hostdata to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev_count.076 = phi i32 [ 0, %for.body.lr.ph ], [ %dev_count.1, %for.inc.for.body_crit_edge ]
  %t.074 = phi ptr [ %hostdata, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %buffered_target_state = getelementptr inbounds %struct.esas2r_target, ptr %t.074, i32 0, i32 3
  %24 = ptrtoint ptr %buffered_target_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buffered_target_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %25)
  %cmp38 = icmp eq i8 %25, 5
  br i1 %cmp38, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %dev_count.076, 1
  %sub.ptr.lhs.cast = ptrtoint ptr %t.074 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 120
  %conv43 = and i32 %sub.ptr.div, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %inc, i32 noundef %conv43) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %dev_count.1 = phi i32 [ %inc, %if.then ], [ %dev_count.076, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.074, i32 1
  %26 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %targetdb_end, align 8
  %cmp = icmp ult ptr %incdec.ptr, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_count.1)
  %cmp44 = icmp eq i32 %dev_count.1, 0
  br i1 %cmp44, label %for.end.if.then46_crit_edge, label %for.end.if.end47_crit_edge

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

for.end.if.then46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.then46:                                        ; preds = %for.end.if.then46_crit_edge, %entry.if.then46_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.19) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %for.end.if.end47_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_get_model_name(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @esas2r_info(ptr noundef %sh) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 49
  %call = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.20) #12
  %0 = load i32, ptr @esas2r_proc_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  store ptr %sh, ptr @esas2r_proc_host, align 4
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @esas2r_proc_fops) #12
  store i32 %call.i, ptr @esas2r_proc_major, align 4
  %call3 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.21, i32 noundef %call.i) #12
  %1 = load i32, ptr @esas2r_proc_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %if.then
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %proc_dir = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_dir, align 4
  %call6 = tail call ptr @proc_create(ptr noundef nonnull @.str.11, i16 noundef zeroext 0, ptr noundef %5, ptr noundef nonnull @esas2r_proc_ops) #12
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then7, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev, ptr noundef nonnull @.str.22) #12
  store i32 -1, ptr @esas2r_proc_major, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then5.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %pcid = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 13, i32 50, i32 12, i32 10, i32 3, i32 2
  %6 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcid, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %fw_rev = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 13, i32 50, i32 12, i32 4
  %16 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fw_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool15.not, ptr @.str.15, ptr %fw_rev
  %conv = zext i8 %11 to i32
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @esas2r_info.esas2r_info_str, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %13, i32 noundef %15, ptr noundef %spec.select)
  ret ptr @esas2r_info.esas2r_info_str
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log_dev(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_queuecommand(ptr nocapture readnone %host, ptr noundef %cmd) #1 align 64 {
entry:
  %sgc = alloca %struct.esas2r_sg_context, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sgc) #12
  %4 = getelementptr inbounds i8, ptr %sgc, i32 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !314
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %result, align 4
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 49, i32 17
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !315

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65536, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @esas2r_alloc_request(ptr noundef %hostdata)
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end13, !prof !316

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %11 = getelementptr inbounds %struct.esas2r_request, ptr %call5, i32 0, i32 24
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd, ptr %11, align 8
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15.not = icmp eq i32 %14, 0
  br i1 %cmp15.not, label %if.end13.if.end34_crit_edge, label %if.then22, !prof !316

if.end13.if.end34_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then22:                                        ; preds = %if.end13
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %15 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sc_data_direction, align 4
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end34.sink.split, label %if.then22.if.end34_crit_edge

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34.sink.split:                              ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %vrq29 = getelementptr inbounds %struct.esas2r_request, ptr %call5, i32 0, i32 2
  %17 = ptrtoint ptr %vrq29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vrq29, align 8
  %flags30 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %flags30 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %flags30, align 1
  %or = or i32 %20, %16
  store i32 %or, ptr %flags30, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.then22.if.end34_crit_edge, %if.end13.if.end34_crit_edge
  %vrq35 = getelementptr inbounds %struct.esas2r_request, ptr %call5, i32 0, i32 2
  %21 = ptrtoint ptr %vrq35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vrq35, align 8
  %cdb = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %22, i32 0, i32 7
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %23 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %25 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %26 to i32
  %27 = call ptr @memcpy(ptr %cdb, ptr %24, i32 %conv)
  %28 = tail call i32 @llvm.bswap.i32(i32 %14)
  %29 = ptrtoint ptr %vrq35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vrq35, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %28, ptr %30, align 1
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 8
  %conv39 = trunc i32 %35 to i16
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %call5, i32 0, i32 9
  %36 = ptrtoint ptr %target_id to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv39, ptr %target_id, align 8
  %37 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lun, align 8
  %conv41 = trunc i64 %39 to i32
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv41)
  %41 = ptrtoint ptr %vrq35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vrq35, align 8
  %flags43 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %flags43 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %flags43, align 1
  %or44 = or i32 %44, %40
  store i32 %or44, ptr %flags43, align 1
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %45 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sense_buffer, align 4
  %sense_buf = getelementptr inbounds %struct.esas2r_request, ptr %call5, i32 0, i32 5
  %47 = ptrtoint ptr %sense_buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %sense_buf, align 4
  %sense_len = getelementptr inbounds %struct.esas2r_request, ptr %call5, i32 0, i32 11
  %48 = ptrtoint ptr %sense_len to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 96, ptr %sense_len, align 1
  %49 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %hostdata, ptr %sgc, align 4
  %first_req.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %50 = ptrtoint ptr %first_req.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5, ptr %first_req.i, align 4
  %51 = load ptr, ptr %vrq35, align 8
  %add.ptr1.i = getelementptr i8, ptr %51, i32 116
  %limit.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %52 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr1.i, ptr %limit.i, align 4
  %sge.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %53 = load ptr, ptr %vrq35, align 8
  %u.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %u.i, ptr %sge.i, align 4
  %last10.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %55 = ptrtoint ptr %last10.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %u.i, ptr %last10.i, align 4
  %56 = load ptr, ptr %vrq35, align 8
  %sg_list_offset12.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %sg_list_offset12.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 44, ptr %sg_list_offset12.i, align 1
  %chain.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %58 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %chain.i, align 4
  %length45 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %59 = ptrtoint ptr %length45 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %14, ptr %length45, align 4
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %60 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %cur_offset, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %61 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdb.i, align 4
  %cur_sgel = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 6
  %63 = ptrtoint ptr %cur_sgel to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %cur_sgel, align 4
  %exp_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 7
  %64 = ptrtoint ptr %exp_offset to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %exp_offset, align 4
  %call47 = tail call i32 @scsi_dma_map(ptr noundef %cmd) #12
  %num_sgel = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 8
  %65 = ptrtoint ptr %num_sgel to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call47, ptr %num_sgel, align 4
  %sgel_count = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 9
  %66 = ptrtoint ptr %sgel_count to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %sgel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp49 = icmp slt i32 %call47, 0
  br i1 %cmp49, label %if.then57, label %if.end58, !prof !316

if.then57:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @esas2r_free_request(ptr noundef %hostdata, ptr noundef nonnull %call5)
  br label %cleanup

if.end58:                                         ; preds = %if.end34
  %get_phys_addr = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 4
  %67 = ptrtoint ptr %get_phys_addr to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @get_physaddr_from_sgc, ptr %get_phys_addr, align 4
  %68 = ptrtoint ptr %vrq35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vrq35, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %69, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i = icmp eq i32 %71, 0
  br i1 %cmp.i, label %if.end58.if.end69_crit_edge, label %esas2r_build_sg_list.exit, !prof !316

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

esas2r_build_sg_list.exit:                        ; preds = %if.end58
  %build_sgl.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 50, i32 9, i32 5, i32 3
  %72 = ptrtoint ptr %build_sgl.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %build_sgl.i, align 8
  %call.i = call zeroext i1 %73(ptr noundef %hostdata, ptr noundef nonnull %sgc) #12
  br i1 %call.i, label %esas2r_build_sg_list.exit.if.end69_crit_edge, label %if.then68, !prof !315

esas2r_build_sg_list.exit.if.end69_crit_edge:     ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then68:                                        ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @scsi_dma_unmap(ptr noundef %cmd) #12
  call void @esas2r_free_request(ptr noundef %hostdata, ptr noundef nonnull %call5)
  br label %cleanup

if.end69:                                         ; preds = %esas2r_build_sg_list.exit.if.end69_crit_edge, %if.end58.if.end69_crit_edge
  call void @esas2r_start_request(ptr noundef %hostdata, ptr noundef nonnull %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then68, %if.then57, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 4181, %if.then57 ], [ 4181, %if.then68 ], [ 0, %if.end69 ], [ 4181, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @esas2r_alloc_request(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %request_lock) #12
  %avail_request = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 11
  %0 = ptrtoint ptr %avail_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %avail_request, align 4
  %cmp.i.not = icmp eq ptr %1, %avail_request
  br i1 %cmp.i.not, label %if.then, label %if.end, !prof !316

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %request_lock, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %request_lock, i32 noundef %call2) #12
  %vrq1.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %vrq1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vrq1.i, align 8
  %sg_table_head.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sg_table_head.i, ptr %sg_table_head.i, align 4
  %prev.i.i21 = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sg_table_head.i, ptr %prev.i.i21, align 4
  %add.ptr.i = getelementptr %union.atto_vda_req, ptr %11, i32 1
  %14 = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %14, align 8
  %interrupt_cb.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %interrupt_cb.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %interrupt_cb.i, align 8
  %comp_cb.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %comp_cb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i, align 4
  %flags.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %flags.i, align 8
  %timeout.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %timeout.i, align 4
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -2, ptr %req_stat.i, align 1
  %req_type.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %req_type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %req_type.i, align 2
  %func_rsp.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %func_rsp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %func_rsp.i, align 4
  %arrayidx3.i = getelementptr %struct.esas2r_request, ptr %1, i32 0, i32 12, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx3.i, align 4
  %vda_req_sz.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %vda_req_sz.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %vda_req_sz.i, align 2
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %25 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req_table.i, align 4
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 5
  %27 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %28, 65535
  %arrayidx4.i = getelementptr ptr, ptr %26, i32 %idxprom.i
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %arrayidx4.i, align 4
  %cmd_ref_no.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 28
  %30 = ptrtoint ptr %cmd_ref_no.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cmd_ref_no.i, align 2
  %inc.i = add i16 %31, 1
  store i16 %inc.i, ptr %cmd_ref_no.i, align 2
  %conv10.i = zext i16 %31 to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %32 = load i32, ptr %handle.i, align 1
  %conv13.i = and i32 %32, 65535
  %or.i = or i32 %conv13.i, %shl.i
  store i32 %or.i, ptr %handle.i, align 1
  %function.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 1
  %33 = ptrtoint ptr %function.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %function.i, align 1
  %sense_len.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 2
  %34 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -4, ptr %sense_len.i, align 1
  %sg_list_offset.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 4
  %35 = ptrtoint ptr %sg_list_offset.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %sg_list_offset.i, align 1
  %chain_offset.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 3
  %36 = ptrtoint ptr %chain_offset.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %chain_offset.i, align 1
  %flags15.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 6
  %37 = ptrtoint ptr %flags15.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 0, ptr %flags15.i, align 1
  %38 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 8
  %reserved.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %11, i32 0, i32 8, i32 0, i32 3
  %39 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %reserved.i, align 1
  %vrq_md.i = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %vrq_md.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vrq_md.i, align 4
  %phys_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %phys_addr.i, align 8
  %add.i = add i64 %43, 1024
  %44 = tail call i64 @llvm.bswap.i64(i64 %add.i) #12
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %38, align 1
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %1, %list_del.exit ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_free_request(ptr noundef %a, ptr noundef %rq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_table_head.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %0 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i, label %entry.esas2r_rq_destroy_request.exit_crit_edge, label %do.body1.i.i

entry.esas2r_rq_destroy_request.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_rq_destroy_request.exit

do.body1.i.i:                                     ; preds = %entry
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #12
  %2 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %3, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free_sg_list_head.i.i, ptr %7, align 4
  store ptr %7, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sg_table_head.i.i, ptr %sg_table_head.i.i, align 4
  store ptr %sg_table_head.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #12
  br label %esas2r_rq_destroy_request.exit

esas2r_rq_destroy_request.exit:                   ; preds = %list_splice_tail_init.exit.i.i, %entry.esas2r_rq_destroy_request.exit_crit_edge
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %12 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_table.i, align 4
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %14 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vrq.i, align 8
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %17, 65535
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i, align 4
  %19 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 8
  %request_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %request_lock) #12
  %avail_request = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 11
  %21 = ptrtoint ptr %avail_request to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %avail_request, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rq, ptr noundef %avail_request, ptr noundef %22) #12
  br i1 %call.i.i, label %if.end.i.i, label %esas2r_rq_destroy_request.exit.list_add.exit_crit_edge

esas2r_rq_destroy_request.exit.list_add.exit_crit_edge: ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rq, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %rq, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %rq, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %avail_request, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %avail_request to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %rq, ptr %avail_request, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %esas2r_rq_destroy_request.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %request_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_physaddr_from_sgc(ptr nocapture noundef %sgc, ptr nocapture noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %0 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_offset, align 4
  %exp_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 7
  %2 = ptrtoint ptr %exp_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exp_offset, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %if.else13, !prof !315

if.then:                                          ; preds = %entry
  %sgel_count = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 9
  %4 = ptrtoint ptr %sgel_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sgel_count, align 4
  %num_sgel = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 8
  %6 = ptrtoint ptr %num_sgel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sgel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %if.then3, label %if.then.if.end38_crit_edge

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then3:                                         ; preds = %if.then
  %cmp5.not = icmp eq ptr %1, null
  br i1 %cmp5.not, label %if.then3.if.end_crit_edge, label %if.then6

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %cur_sgel = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 6
  %8 = ptrtoint ptr %cur_sgel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_sgel, align 4
  %call = tail call ptr @sg_next(ptr noundef %9) #12
  %10 = ptrtoint ptr %cur_sgel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %cur_sgel, align 4
  %11 = ptrtoint ptr %sgel_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sgel_count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sgel_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3.if.end_crit_edge
  %cur_sgel9 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 6
  %13 = ptrtoint ptr %cur_sgel9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_sgel9, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %18 to i64
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %addr, align 8
  %20 = ptrtoint ptr %exp_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %exp_offset, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %16
  store ptr %add.ptr, ptr %exp_offset, align 4
  br label %if.end38

if.else13:                                        ; preds = %entry
  %cmp16 = icmp ult ptr %1, %3
  br i1 %cmp16, label %if.then18, label %if.else13.if.end38_crit_edge

if.else13.if.end38_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  %cur_sgel19 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 6
  %22 = ptrtoint ptr %cur_sgel19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_sgel19, align 4
  %dma_length20 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length20, align 4
  %dma_address22 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %dma_address22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_address22, align 4
  %conv23 = zext i32 %27 to i64
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv23, ptr %addr, align 8
  %29 = ptrtoint ptr %exp_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %exp_offset, align 4
  %idx.neg = sub i32 0, %25
  %add.ptr25 = getelementptr i8, ptr %30, i32 %idx.neg
  store ptr %add.ptr25, ptr %exp_offset, align 4
  %31 = load i64, ptr %addr, align 8
  %32 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur_offset, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv28 = sext i32 %sub.ptr.sub to i64
  %add = add i64 %31, %conv28
  store i64 %add, ptr %addr, align 8
  %34 = load ptr, ptr %exp_offset, align 4
  %add.ptr30 = getelementptr i8, ptr %34, i32 %25
  store ptr %add.ptr30, ptr %exp_offset, align 4
  %35 = load ptr, ptr %cur_offset, align 4
  %sub.ptr.lhs.cast33 = ptrtoint ptr %add.ptr30 to i32
  %sub.ptr.rhs.cast34 = ptrtoint ptr %35 to i32
  %sub.ptr.sub35 = sub i32 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  br label %if.end38

if.end38:                                         ; preds = %if.then18, %if.else13.if.end38_crit_edge, %if.end, %if.then.if.end38_crit_edge
  %len.0 = phi i32 [ %16, %if.end ], [ %sub.ptr.sub35, %if.then18 ], [ 0, %if.then.if.end38_crit_edge ], [ 0, %if.else13.if.end38_crit_edge ]
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_request(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_eh_abort(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef %cmd) #12
  %flags1 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 49, i32 17
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags1, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %result3 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %7 = ptrtoint ptr %result3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 327680, ptr %result3, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %resid_len.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %cleanup

do.body4:                                         ; preds = %entry
  %queue_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 49, i32 32, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #12
  %defer_list = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 50, i32 0, i32 7, i32 1
  %active_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 50, i32 0, i32 7, i32 0, i32 3, i32 6
  br label %check_active_queue

check_active_queue:                               ; preds = %land.lhs.true.check_active_queue_crit_edge, %do.body4
  %queue.0 = phi ptr [ %defer_list, %do.body4 ], [ %active_list.i, %land.lhs.true.check_active_queue_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %check_active_queue
  %element.0.in.i = phi ptr [ %queue.0, %check_active_queue ], [ %element.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %element.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %element.0.i = load ptr, ptr %element.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %element.0.i, %queue.0
  br i1 %cmp.i.not.i, label %for.cond.i.if.end32_crit_edge, label %for.body.i

for.cond.i.if.end32_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

for.body.i:                                       ; preds = %for.cond.i
  %10 = getelementptr i8, ptr %element.0.i, i32 96
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %cmp.i = icmp eq ptr %12, %cmd
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %add.ptr.le.i = getelementptr i8, ptr %element.0.i, i32 -8
  %cmp3.i = icmp eq ptr %active_list.i, %queue.0
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = tail call ptr @esas2r_alloc_request(ptr noundef %hostdata) #12
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %if.then11, label %if.end.i

if.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %sense_len.i = getelementptr inbounds %struct.esas2r_request, ptr %call5.i, i32 0, i32 11
  %13 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %sense_len.i, align 1
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %call5.i, i32 0, i32 2
  %14 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vrq.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %15, align 1
  %target_id.i = getelementptr i8, ptr %element.0.i, i32 40
  %17 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %target_id.i, align 8
  %target_id9.i = getelementptr inbounds %struct.esas2r_request, ptr %call5.i, i32 0, i32 9
  %19 = ptrtoint ptr %target_id9.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %target_id9.i, align 8
  %vrq10.i = getelementptr i8, ptr %element.0.i, i32 8
  %20 = ptrtoint ptr %vrq10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vrq10.i, align 8
  %flags.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %flags.i, align 1
  %24 = and i32 %23, -16777216
  %25 = load ptr, ptr %vrq.i, align 8
  %flags13.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %flags13.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %flags13.i, align 1
  %or.i = or i32 %27, %24
  store i32 %or.i, ptr %flags13.i, align 1
  %28 = load ptr, ptr %vrq.i, align 8
  %cdb.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %28, i32 0, i32 7
  %29 = call ptr @memset(ptr %cdb.i, i32 0, i32 16)
  %30 = load ptr, ptr %vrq.i, align 8
  %flags16.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %flags16.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %flags16.i, align 1
  %or17.i = or i32 %32, 32768
  store i32 %or17.i, ptr %flags16.i, align 1
  %33 = load ptr, ptr %vrq10.i, align 8
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %handle.i, align 1
  %36 = load ptr, ptr %vrq.i, align 8
  %u.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %35, ptr %u.i, align 1
  br label %land.lhs.true

if.else.i:                                        ; preds = %if.then.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %element.0.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del_init.exit.i_crit_edge

if.else.i.list_del_init.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %element.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %element.0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %element.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.else.i.list_del_init.exit.i_crit_edge
  %44 = ptrtoint ptr %element.0.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %element.0.i, ptr %element.0.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %element.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %element.0.i, ptr %prev.i3.i.i, align 4
  tail call void @esas2r_free_request(ptr noundef %hostdata, ptr noundef %add.ptr.le.i) #12
  br label %land.lhs.true

if.then11:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %host.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 50, i32 12, i32 10, i32 3, i32 3
  %46 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host.i, align 8
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 49
  %call8.i = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.62, ptr noundef %cmd) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call6) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %list_del_init.exit.i, %if.end.i
  %cmp16 = icmp eq ptr %queue.0, %defer_list
  br i1 %cmp16, label %land.lhs.true.check_active_queue_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true.check_active_queue_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_active_queue

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %for.cond.i.if.end32_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call6) #12
  %result33 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %48 = ptrtoint ptr %result33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 327680, ptr %result33, align 4
  %resid_len.i59 = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %49 = ptrtoint ptr %resid_len.i59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %resid_len.i59, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then11, %if.then
  %retval.0 = phi i32 [ 8194, %if.then ], [ 8194, %if.end32 ], [ 8195, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_task_management_request(ptr noundef %a, ptr noundef %rq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %0 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req_stat, align 1
  %2 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 24
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %1, ptr %4, align 1
  tail call void @esas2r_free_request(ptr noundef %a, ptr noundef %rq)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_host_reset(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.25, ptr noundef %cmd) #12
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 49, i32 17
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.esas2r_host_bus_reset.exit_crit_edge

entry.esas2r_host_bus_reset.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_host_bus_reset.exit

if.end.i:                                         ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void @esas2r_reset_adapter(ptr noundef %hostdata.i) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end.i
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  br i1 %tobool6.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  tail call void @msleep(i32 noundef 10) #12
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 8192
  %tobool9.not.i = icmp eq i32 %12, 0
  br i1 %tobool9.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.esas2r_host_bus_reset.exit_crit_edge

while.body.i.esas2r_host_bus_reset.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_host_bus_reset.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not.i = icmp eq i32 %15, 0
  %..i = select i1 %tobool14.not.i, i32 8194, i32 8195
  br label %esas2r_host_bus_reset.exit

esas2r_host_bus_reset.exit:                       ; preds = %while.end.i, %while.body.i.esas2r_host_bus_reset.exit_crit_edge, %entry.esas2r_host_bus_reset.exit_crit_edge
  %retval.0.i = phi i32 [ 8195, %entry.esas2r_host_bus_reset.exit_crit_edge ], [ %..i, %while.end.i ], [ 8195, %while.body.i.esas2r_host_bus_reset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_bus_reset(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.26, ptr noundef %cmd) #12
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 49, i32 17
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.esas2r_host_bus_reset.exit_crit_edge

entry.esas2r_host_bus_reset.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_host_bus_reset.exit

if.end.i:                                         ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void @esas2r_reset_bus(ptr noundef %hostdata.i) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end.i
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  br i1 %tobool6.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  tail call void @msleep(i32 noundef 10) #12
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 8192
  %tobool9.not.i = icmp eq i32 %12, 0
  br i1 %tobool9.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.esas2r_host_bus_reset.exit_crit_edge

while.body.i.esas2r_host_bus_reset.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_host_bus_reset.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not.i = icmp eq i32 %15, 0
  %..i = select i1 %tobool14.not.i, i32 8194, i32 8195
  br label %esas2r_host_bus_reset.exit

esas2r_host_bus_reset.exit:                       ; preds = %while.end.i, %while.body.i.esas2r_host_bus_reset.exit_crit_edge, %entry.esas2r_host_bus_reset.exit_crit_edge
  %retval.0.i = phi i32 [ 8195, %entry.esas2r_host_bus_reset.exit_crit_edge ], [ %..i, %while.end.i ], [ 8195, %while.body.i.esas2r_host_bus_reset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_device_reset(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.27, ptr noundef %cmd) #12
  %call1 = tail call fastcc i32 @esas2r_dev_targ_reset(ptr noundef %cmd, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esas2r_dev_targ_reset(ptr nocapture noundef readonly %cmd, i1 noundef zeroext %target_reset) unnamed_addr #1 align 64 {
entry:
  %task_management_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %task_management_status) #12
  %4 = ptrtoint ptr %task_management_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -2, ptr %task_management_status, align 1
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 13, i32 49, i32 17
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %retry.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  %call169 = call ptr @esas2r_alloc_request(ptr noundef %hostdata)
  %cmp70 = icmp eq ptr %call169, null
  br i1 %cmp70, label %retry.preheader.if.then2_crit_edge, label %retry.preheader.if.end12_crit_edge

retry.preheader.if.end12_crit_edge:               ; preds = %retry.preheader
  br label %if.end12

retry.preheader.if.then2_crit_edge:               ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %if.then42.if.then2_crit_edge, %retry.preheader.if.then2_crit_edge
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  br i1 %target_reset, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.63, i32 noundef %11) #12
  br label %cleanup

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %lun = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun, align 8
  %call10 = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef %11, i64 noundef %13) #12
  br label %cleanup

if.end12:                                         ; preds = %if.then42.if.end12_crit_edge, %retry.preheader.if.end12_crit_edge
  %call171 = phi ptr [ %call1, %if.then42.if.end12_crit_edge ], [ %call169, %retry.preheader.if.end12_crit_edge ]
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %id14 = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id14, align 8
  %conv = trunc i32 %17 to i16
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %call171, i32 0, i32 9
  %18 = ptrtoint ptr %target_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %target_id, align 8
  %19 = load ptr, ptr %device, align 4
  %lun16 = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %lun16 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lun16, align 8
  %conv17 = trunc i64 %21 to i32
  %22 = call i32 @llvm.bswap.i32(i32 %conv17)
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %call171, i32 0, i32 2
  %23 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vrq, align 8
  %flags18 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %flags18 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %flags18, align 1
  %or = or i32 %26, %22
  store i32 %or, ptr %flags18, align 1
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %call171, i32 0, i32 17
  %27 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -2, ptr %req_stat, align 1
  %comp_cb = getelementptr inbounds %struct.esas2r_request, ptr %call171, i32 0, i32 13
  %28 = ptrtoint ptr %comp_cb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @complete_task_management_request, ptr %comp_cb, align 4
  %29 = getelementptr inbounds %struct.esas2r_request, ptr %call171, i32 0, i32 24
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %task_management_status, ptr %29, align 8
  br i1 %target_reset, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end12
  %call21 = call zeroext i1 @esas2r_send_task_mgmt(ptr noundef %hostdata, ptr noundef nonnull %call171, i8 noundef zeroext 32) #12
  br i1 %call21, label %if.then20.if.then28_crit_edge, label %if.then20.while.cond.preheader_crit_edge

if.then20.while.cond.preheader_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.then20.if.then28_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

while.cond.preheader:                             ; preds = %if.end26.while.cond.preheader_crit_edge, %if.then20.while.cond.preheader_crit_edge
  %31 = ptrtoint ptr %task_management_status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %task_management_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %32)
  %cmp3168 = icmp eq i8 %32, -2
  br i1 %cmp3168, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end33_crit_edge

while.cond.preheader.if.end33_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.end26:                                         ; preds = %if.end12
  %call24 = call zeroext i1 @esas2r_send_task_mgmt(ptr noundef %hostdata, ptr noundef nonnull %call171, i8 noundef zeroext 16) #12
  br i1 %call24, label %if.end26.if.then28_crit_edge, label %if.end26.while.cond.preheader_crit_edge

if.end26.while.cond.preheader_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.then20.if.then28_crit_edge
  call void @esas2r_free_request(ptr noundef %hostdata, ptr noundef nonnull %call171)
  br label %if.end33

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @msleep(i32 noundef 10) #12
  %33 = ptrtoint ptr %task_management_status to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %task_management_status, align 1
  %cmp31 = icmp eq i8 %34, -2
  br i1 %cmp31, label %while.body.while.body_crit_edge, label %while.body.if.end33_crit_edge

while.body.if.end33_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end33:                                         ; preds = %while.body.if.end33_crit_edge, %if.then28, %while.cond.preheader.if.end33_crit_edge
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool36.not = icmp eq i32 %37, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %38 = ptrtoint ptr %task_management_status to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %task_management_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp40 = icmp eq i8 %39, 2
  br i1 %cmp40, label %if.then42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @msleep(i32 noundef 100) #12
  %call1 = call ptr @esas2r_alloc_request(ptr noundef %hostdata)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then42.if.then2_crit_edge, label %if.then42.if.end12_crit_edge

if.then42.if.end12_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then42.if.then2_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8195, %entry.cleanup_crit_edge ], [ 8195, %if.else ], [ 8195, %if.then4 ], [ 8194, %if.end38.cleanup_crit_edge ], [ 8195, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %task_management_status) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_target_reset(ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef %cmd) #12
  %call1 = tail call fastcc i32 @esas2r_dev_targ_reset(ptr noundef %cmd, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_log_request_failure(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %rq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %0 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req_stat, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %2 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vrq, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp eq i8 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp7 = icmp eq i8 %1, 8
  br i1 %cmp7, label %if.then9, label %if.else30

if.then9:                                         ; preds = %if.then5
  %sense_len = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 1
  %6 = ptrtoint ptr %sense_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sense_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %7)
  %cmp11 = icmp ugt i8 %7, 12
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %sense_buf = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 5
  %8 = ptrtoint ptr %sense_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sense_buf, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %11 to i32
  %arrayidx16 = getelementptr i8, ptr %9, i32 12
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %arrayidx19 = getelementptr i8, ptr %9, i32 13
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %cdb = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cdb, align 1
  %conv23 = zext i8 %17 to i32
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %conv14, i32 noundef %conv17, i32 noundef %conv20, i32 noundef %conv23) #12
  br label %cleanup

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %cdb25 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %cdb25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cdb25, align 1
  %conv27 = zext i8 %19 to i32
  %call28 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %conv27) #12
  br label %cleanup

if.else30:                                        ; preds = %if.then5
  %cdb32 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %cdb32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cdb32, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %if.then50 [
    i8 18, label %if.else30.lor.lhs.false_crit_edge
    i8 -96, label %if.else30.lor.lhs.false_crit_edge91
  ]

if.else30.lor.lhs.false_crit_edge91:              ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.else30.lor.lhs.false_crit_edge:                ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else30.lor.lhs.false_crit_edge, %if.else30.lor.lhs.false_crit_edge91
  %23 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %1, label %lor.lhs.false.if.else62_crit_edge [
    i8 3, label %lor.lhs.false.cleanup_crit_edge
    i8 112, label %lor.lhs.false.cleanup_crit_edge92
    i8 7, label %land.lhs.true54
  ]

lor.lhs.false.cleanup_crit_edge92:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.else62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else62

if.then50:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp52 = icmp eq i8 %1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %21)
  %cmp59 = icmp eq i8 %21, 18
  %or.cond = select i1 %cmp52, i1 %cmp59, i1 false
  br i1 %or.cond, label %if.then50.cleanup_crit_edge, label %if.then50.if.else62_crit_edge

if.then50.if.else62_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else62

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true54:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %21)
  %cmp59.old = icmp eq i8 %21, 18
  br i1 %cmp59.old, label %land.lhs.true54.cleanup_crit_edge, label %land.lhs.true54.if.else62_crit_edge

land.lhs.true54.if.else62_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else62

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else62:                                        ; preds = %land.lhs.true54.if.else62_crit_edge, %if.then50.if.else62_crit_edge, %lor.lhs.false.if.else62_crit_edge
  %conv66 = zext i8 %21 to i32
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 9
  %24 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %target_id, align 8
  %conv68 = zext i16 %25 to i32
  %call69 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %conv66, i32 noundef %conv, i32 noundef %conv68) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else62, %land.lhs.true54.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge92, %if.else, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_wait_request(ptr noundef %a, ptr nocapture noundef %rq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %0) #12
  %timeout1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 8
  %1 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %spec.select = select i1 %tobool.not, i32 5000, i32 %2
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  tail call void @esas2r_polled_interrupt(ptr noundef %a) #12
  %3 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp.not = icmp eq i8 %4, -1
  br i1 %cmp.not, label %if.end, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %while.cond
  %call5 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call6 = tail call i32 @jiffies_to_msecs(i32 noundef %5) #12
  %sub = sub i32 %call6, %call
  %cmp7 = icmp ugt i32 %sub, %spec.select
  br i1 %cmp7, label %if.then9, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %req_stat, align 1
  %flags.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i.i) #12
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags.i.i) #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.i) #12
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_polled_interrupt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esas2r_map_data_window(ptr nocapture noundef %a, i32 noundef %addr_lo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %addr_lo, -131072
  %window_base = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 33
  %0 = ptrtoint ptr %window_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %window_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %and1)
  %cmp.not = icmp eq i32 %1, %and1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !317
  tail call void @arm_heavy_mb() #12
  %or = or i32 %and1, 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 33848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !318
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 33848
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #12, !srcloc !319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  %8 = ptrtoint ptr %window_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and1, ptr %window_base, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and = and i32 %addr_lo, 131071
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_read_mem_block(ptr nocapture noundef %a, ptr nocapture noundef writeonly %to, i32 noundef %from, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not25 = icmp eq i32 %size, 0
  br i1 %tobool.not25, label %entry.while.end9_crit_edge, label %while.body.lr.ph

entry.while.end9_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end9

while.body.lr.ph:                                 ; preds = %entry
  %window_base.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 33
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %data_window = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 3
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body6.while.cond.loopexit_crit_edge, %esas2r_map_data_window.exit.while.cond.loopexit_crit_edge
  %end.1.lcssa = phi ptr [ %end.026, %esas2r_map_data_window.exit.while.cond.loopexit_crit_edge ], [ %incdec.ptr, %while.body6.while.cond.loopexit_crit_edge ]
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end9_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.loopexit.while.end9_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end9

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %from.addr.028 = phi i32 [ %from, %while.body.lr.ph ], [ %add, %while.cond.loopexit.while.body_crit_edge ]
  %size.addr.027 = phi i32 [ %size, %while.body.lr.ph ], [ %sub3, %while.cond.loopexit.while.body_crit_edge ]
  %end.026 = phi ptr [ %to, %while.body.lr.ph ], [ %end.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %and = and i32 %from.addr.028, -131072
  %0 = ptrtoint ptr %window_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %window_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %and)
  %cmp.not.i = icmp eq i32 %1, %and
  br i1 %cmp.not.i, label %while.body.esas2r_map_data_window.exit_crit_edge, label %do.body.i

while.body.esas2r_map_data_window.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_map_data_window.exit

do.body.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !317
  tail call void @arm_heavy_mb() #12
  %or.i = or i32 %and, 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 33848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #12, !srcloc !318
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 33848
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  %8 = ptrtoint ptr %window_base.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %window_base.i, align 4
  br label %esas2r_map_data_window.exit

esas2r_map_data_window.exit:                      ; preds = %do.body.i, %while.body.esas2r_map_data_window.exit_crit_edge
  %and1 = and i32 %from.addr.028, 131071
  %sub = sub nuw nsw i32 131072, %and1
  %9 = tail call i32 @llvm.umin.i32(i32 %size.addr.027, i32 %sub)
  %add = add i32 %9, %from.addr.028
  %sub3 = sub i32 %size.addr.027, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not21 = icmp eq i32 %9, 0
  br i1 %tobool5.not21, label %esas2r_map_data_window.exit.while.cond.loopexit_crit_edge, label %esas2r_map_data_window.exit.while.body6_crit_edge

esas2r_map_data_window.exit.while.body6_crit_edge: ; preds = %esas2r_map_data_window.exit
  br label %while.body6

esas2r_map_data_window.exit.while.cond.loopexit_crit_edge: ; preds = %esas2r_map_data_window.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %esas2r_map_data_window.exit.while.body6_crit_edge
  %end.124 = phi ptr [ %incdec.ptr, %while.body6.while.body6_crit_edge ], [ %end.026, %esas2r_map_data_window.exit.while.body6_crit_edge ]
  %len.123 = phi i32 [ %dec, %while.body6.while.body6_crit_edge ], [ %9, %esas2r_map_data_window.exit.while.body6_crit_edge ]
  %offset.022 = phi i32 [ %inc, %while.body6.while.body6_crit_edge ], [ %and1, %esas2r_map_data_window.exit.while.body6_crit_edge ]
  %dec = add nsw i32 %len.123, -1
  %10 = ptrtoint ptr %data_window to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_window, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 %offset.022
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !321
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !322
  %incdec.ptr = getelementptr i8, ptr %end.124, i32 1
  %13 = ptrtoint ptr %end.124 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %end.124, align 1
  %inc = add nuw nsw i32 %offset.022, 1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %while.body6.while.cond.loopexit_crit_edge, label %while.body6.while.body6_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body6

while.body6.while.cond.loopexit_crit_edge:        ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

while.end9:                                       ; preds = %while.cond.loopexit.while.end9_crit_edge, %entry.while.end9_crit_edge
  ret i1 true
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_nuxi_mgt_data(i8 noundef zeroext %function, ptr nocapture noundef %data) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %function to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %function, label %entry.sw.epilog_crit_edge [
    i8 112, label %entry.sw.bb_crit_edge
    i8 113, label %entry.sw.bb_crit_edge103
    i8 81, label %entry.sw.bb2_crit_edge
    i8 80, label %entry.sw.bb2_crit_edge104
    i8 1, label %entry.sw.bb4_crit_edge
    i8 2, label %entry.sw.bb4_crit_edge105
    i8 5, label %entry.sw.bb4_crit_edge106
    i8 6, label %entry.sw.bb4_crit_edge107
    i8 7, label %entry.sw.bb4_crit_edge108
    i8 11, label %entry.sw.bb4_crit_edge109
    i8 16, label %entry.sw.bb10_crit_edge
    i8 17, label %entry.sw.bb10_crit_edge110
    i8 18, label %entry.sw.bb10_crit_edge111
    i8 19, label %entry.sw.bb10_crit_edge112
    i8 20, label %entry.sw.bb10_crit_edge113
    i8 21, label %entry.sw.bb10_crit_edge114
    i8 22, label %entry.sw.bb10_crit_edge115
    i8 23, label %entry.sw.bb10_crit_edge116
    i8 24, label %entry.sw.bb10_crit_edge117
    i8 25, label %entry.sw.bb10_crit_edge118
    i8 26, label %entry.sw.bb10_crit_edge119
    i8 27, label %entry.sw.bb10_crit_edge120
    i8 64, label %entry.sw.bb10_crit_edge121
    i8 65, label %entry.sw.bb10_crit_edge122
    i8 66, label %entry.sw.bb10_crit_edge123
    i8 67, label %entry.sw.bb10_crit_edge124
    i8 28, label %entry.sw.bb10_crit_edge125
    i8 48, label %entry.sw.bb22_crit_edge
    i8 49, label %entry.sw.bb22_crit_edge126
    i8 50, label %entry.sw.bb22_crit_edge127
    i8 51, label %entry.sw.bb22_crit_edge128
    i8 52, label %entry.sw.bb22_crit_edge129
    i8 53, label %entry.sw.bb22_crit_edge130
    i8 8, label %sw.bb30
    i8 9, label %entry.for.body38_crit_edge
  ]

entry.for.body38_crit_edge:                       ; preds = %entry
  br label %for.body38

entry.sw.bb22_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

entry.sw.bb22_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

entry.sw.bb22_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

entry.sw.bb22_crit_edge127:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

entry.sw.bb22_crit_edge126:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb22

entry.sw.bb10_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge124:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge122:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge119:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge116:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge115:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

entry.sw.bb4_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb2_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb_crit_edge103:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge103
  %duration = getelementptr inbounds %struct.atto_vda_buzzer_info, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %duration to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %duration, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %duration to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %duration, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge104
  %id = getelementptr inbounds %struct.atto_vda_schedule_info, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %id, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %id, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge105, %entry.sw.bb4_crit_edge106, %entry.sw.bb4_crit_edge107, %entry.sw.bb4_crit_edge108, %entry.sw.bb4_crit_edge109
  %capacity = getelementptr inbounds %struct.atto_vda_devinfo, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %capacity to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %capacity, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %capacity to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %capacity, align 1
  %block_size = getelementptr inbounds %struct.atto_vda_devinfo, ptr %data, i32 0, i32 5
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %block_size, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %block_size to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %block_size, align 1
  %ses_dev_index = getelementptr inbounds %struct.atto_vda_devinfo, ptr %data, i32 0, i32 12
  %17 = ptrtoint ptr %ses_dev_index to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %ses_dev_index, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %ses_dev_index to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %ses_dev_index, align 1
  %21 = getelementptr inbounds %struct.atto_vda_devinfo, ptr %data, i32 0, i32 14
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %21, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %21, align 1
  %lun = getelementptr inbounds %struct.atto_vda_devinfo, ptr %data, i32 0, i32 15
  %26 = ptrtoint ptr %lun to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %lun, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %29 = ptrtoint ptr %lun to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %lun, align 1
  %features = getelementptr inbounds %struct.atto_vda_devinfo, ptr %data, i32 0, i32 16
  %30 = ptrtoint ptr %features to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %features, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = ptrtoint ptr %features to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %features, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge110, %entry.sw.bb10_crit_edge111, %entry.sw.bb10_crit_edge112, %entry.sw.bb10_crit_edge113, %entry.sw.bb10_crit_edge114, %entry.sw.bb10_crit_edge115, %entry.sw.bb10_crit_edge116, %entry.sw.bb10_crit_edge117, %entry.sw.bb10_crit_edge118, %entry.sw.bb10_crit_edge119, %entry.sw.bb10_crit_edge120, %entry.sw.bb10_crit_edge121, %entry.sw.bb10_crit_edge122, %entry.sw.bb10_crit_edge123, %entry.sw.bb10_crit_edge124, %entry.sw.bb10_crit_edge125
  %capacity11 = getelementptr inbounds %struct.atto_vda_grp_info, ptr %data, i32 0, i32 2
  %34 = ptrtoint ptr %capacity11 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %capacity11, align 1
  %36 = tail call i64 @llvm.bswap.i64(i64 %35)
  %37 = ptrtoint ptr %capacity11 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %capacity11, align 1
  %block_size13 = getelementptr inbounds %struct.atto_vda_grp_info, ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %block_size13 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %block_size13, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %block_size13 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %block_size13, align 1
  %interleave = getelementptr inbounds %struct.atto_vda_grp_info, ptr %data, i32 0, i32 4
  %42 = ptrtoint ptr %interleave to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %interleave, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %interleave to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %interleave, align 1
  %features16 = getelementptr inbounds %struct.atto_vda_grp_info, ptr %data, i32 0, i32 14
  %46 = ptrtoint ptr %features16 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %features16, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %features16 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %features16, align 1
  %50 = getelementptr inbounds %struct.atto_vda_grp_info, ptr %data, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb10
  %indvars.iv97 = phi i32 [ 0, %sw.bb10 ], [ %indvars.iv.next98, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i16], ptr %50, i32 0, i32 %indvars.iv97
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %arrayidx, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %arrayidx, align 1
  %indvars.iv.next98 = add nuw nsw i32 %indvars.iv97, 1
  %exitcond99.not = icmp eq i32 %indvars.iv.next98, 32
  br i1 %exitcond99.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge126, %entry.sw.bb22_crit_edge127, %entry.sw.bb22_crit_edge128, %entry.sw.bb22_crit_edge129, %entry.sw.bb22_crit_edge130
  %part_size = getelementptr inbounds %struct.atto_vdapart_info, ptr %data, i32 0, i32 2
  %55 = ptrtoint ptr %part_size to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %part_size, align 1
  %57 = tail call i64 @llvm.bswap.i64(i64 %56)
  %58 = ptrtoint ptr %part_size to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %57, ptr %part_size, align 1
  %start_lba = getelementptr inbounds %struct.atto_vdapart_info, ptr %data, i32 0, i32 3
  %59 = ptrtoint ptr %start_lba to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %start_lba, align 1
  %conv24 = trunc i64 %60 to i32
  %61 = tail call i32 @llvm.bswap.i32(i32 %conv24)
  %conv25 = zext i32 %61 to i64
  %62 = ptrtoint ptr %start_lba to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %conv25, ptr %start_lba, align 1
  %block_size27 = getelementptr inbounds %struct.atto_vdapart_info, ptr %data, i32 0, i32 4
  %63 = ptrtoint ptr %block_size27 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %block_size27, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %block_size27 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %block_size27, align 1
  %target_id = getelementptr inbounds %struct.atto_vdapart_info, ptr %data, i32 0, i32 5
  %67 = ptrtoint ptr %target_id to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %target_id, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %70 = ptrtoint ptr %target_id to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %target_id, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %med_defect_cnt = getelementptr inbounds %struct.atto_vda_dh_info, ptr %data, i32 0, i32 4
  %71 = ptrtoint ptr %med_defect_cnt to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %med_defect_cnt, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %med_defect_cnt to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %med_defect_cnt, align 1
  %info_exc_cnt = getelementptr inbounds %struct.atto_vda_dh_info, ptr %data, i32 0, i32 5
  %75 = ptrtoint ptr %info_exc_cnt to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %info_exc_cnt, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %info_exc_cnt to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %info_exc_cnt, align 1
  br label %sw.epilog

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %entry.for.body38_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body38.for.body38_crit_edge ], [ 0, %entry.for.body38_crit_edge ]
  %arrayidx40 = getelementptr %struct.atto_vda_metrics_info, ptr %data, i32 0, i32 4, i32 %indvars.iv
  %79 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %arrayidx40, align 1
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %82 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %arrayidx40, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.body38.sw.epilog_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38

for.body38.sw.epilog_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body38.sw.epilog_crit_edge, %sw.bb30, %sw.bb22, %for.body.sw.epilog_crit_edge, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @esas2r_nuxi_cfg_data(i8 noundef zeroext %function, ptr nocapture noundef %data) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %function)
  %switch = icmp ult i8 %function, 3
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %year = getelementptr inbounds %struct.atto_vda_date_and_time, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %year to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %year, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %year to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %year, align 1
  %sgl_page_size = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %sgl_page_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sgl_page_size, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %sgl_page_size to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %sgl_page_size, align 1
  %vda_version = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %vda_version to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %vda_version, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %vda_version to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %vda_version, align 1
  %epoch_time = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %epoch_time to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %epoch_time, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %epoch_time to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %epoch_time, align 1
  %ioctl_tunnel = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %data, i32 0, i32 7
  %16 = ptrtoint ptr %ioctl_tunnel to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ioctl_tunnel, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %ioctl_tunnel to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %ioctl_tunnel, align 1
  %num_targets_backend = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %num_targets_backend to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %num_targets_backend, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %num_targets_backend to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %num_targets_backend, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @esas2r_nuxi_ae_data(ptr nocapture noundef %ae) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bytype = getelementptr inbounds %struct.atto_vda_ae_hdr, ptr %ae, i32 0, i32 3
  %0 = ptrtoint ptr %bytype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bytype, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dwflags = getelementptr inbounds %struct.atto_vda_ae_raid, ptr %ae, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %dwevent = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae, i32 0, i32 1
  %3 = ptrtoint ptr %dwevent to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %dwevent, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %dwevent to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %dwevent, align 1
  %wphys_target_id = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae, i32 0, i32 4
  %7 = ptrtoint ptr %wphys_target_id to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wphys_target_id, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %wphys_target_id to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %wphys_target_id, align 1
  %id = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae, i32 0, i32 5
  %11 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %id, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %id, align 1
  %15 = ptrtoint ptr %ae to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ae, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %16)
  %cmp = icmp ugt i8 %16, 23
  br i1 %cmp, label %if.then, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %dwinterleave = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae, i32 0, i32 5, i32 0, i32 3
  %17 = ptrtoint ptr %dwinterleave to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %dwinterleave, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %dwinterleave to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %dwinterleave, align 1
  %dwblock_size = getelementptr inbounds %struct.atto_vda_ae_lu, ptr %ae, i32 0, i32 5, i32 0, i32 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then, %sw.bb
  %dwblock_size.sink30 = phi ptr [ %dwblock_size, %if.then ], [ %dwflags, %sw.bb ]
  %21 = ptrtoint ptr %dwblock_size.sink30 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %dwblock_size.sink30, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %dwblock_size.sink30 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %dwblock_size.sink30, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb2.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_complete_request_cb(ptr noundef %a, ptr noundef %rq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @scsi_dma_unmap(ptr noundef %2) #12
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %3 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then, !prof !315

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %call = tail call i32 @esas2r_req_status_to_error(i8 noundef zeroext %4)
  %shl = shl i32 %call, 16
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %5 = ptrtoint ptr %func_rsp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %func_rsp, align 4
  %conv4 = zext i8 %6 to i32
  %or = or i32 %shl, %conv4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 8
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %result, align 4
  %10 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp7 = icmp eq i8 %11, 7
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 8
  br i1 %cmp7, label %if.then9, label %if.then.if.end11.sink.split_crit_edge

if.then.if.end11.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.sink.split

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %residual_length = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 3
  %14 = ptrtoint ptr %residual_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %residual_length, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then9, %if.then.if.end11.sink.split_crit_edge
  %.sink = phi i32 [ %16, %if.then9 ], [ 0, %if.then.if.end11.sink.split_crit_edge ]
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %13, i32 0, i32 5
  %17 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %resid_len.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %entry.if.end11_crit_edge
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 8
  tail call void @scsi_done(ptr noundef %19) #12
  tail call void @esas2r_free_request(ptr noundef %a, ptr noundef %rq)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @esas2r_req_status_to_error(i8 noundef zeroext %req_stat) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %req_stat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %req_stat, label %sw.epilog [
    i8 6, label %entry.return_crit_edge
    i8 7, label %entry.return_crit_edge5
    i8 0, label %entry.return_crit_edge6
    i8 8, label %entry.return_crit_edge7
    i8 3, label %entry.sw.bb1_crit_edge
    i8 112, label %entry.sw.bb1_crit_edge8
    i8 13, label %sw.bb2
    i8 10, label %sw.bb3
    i8 2, label %sw.bb4
  ]

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge8
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i32 [ 7, %sw.epilog ], [ 2, %sw.bb4 ], [ 5, %sw.bb3 ], [ 8, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge5 ], [ 0, %entry.return_crit_edge6 ], [ 0, %entry.return_crit_edge7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_adapter_tasklet(i32 noundef %context) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %context to ptr
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags2, align 4
  %3 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags2) #12
  tail call void @esas2r_timer_tick(ptr noundef %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags2, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %if.then13, !prof !316

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags2) #12
  tail call void @esas2r_adapter_interrupt(ptr noundef %0) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %0, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end15.if.then17_crit_edge

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false.i:                                  ; preds = %if.end15
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.then17_crit_edge

lor.lhs.false.i.if.then17_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.i = icmp eq i32 %15, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false4.i.if.then17_crit_edge

lor.lhs.false4.i.if.then17_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false4.i
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not.i = icmp eq i32 %18, 0
  br i1 %tobool11.not.i, label %esas2r_is_tasklet_pending.exit, label %lor.lhs.false8.i.if.then17_crit_edge

lor.lhs.false8.i.if.then17_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

esas2r_is_tasklet_pending.exit:                   ; preds = %lor.lhs.false8.i
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %and1.i25.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25.i)
  %tobool14.i.not = icmp eq i32 %and1.i25.i, 0
  br i1 %tobool14.i.not, label %esas2r_is_tasklet_pending.exit.if.end18_crit_edge, label %esas2r_is_tasklet_pending.exit.if.then17_crit_edge

esas2r_is_tasklet_pending.exit.if.then17_crit_edge: ; preds = %esas2r_is_tasklet_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

esas2r_is_tasklet_pending.exit.if.end18_crit_edge: ; preds = %esas2r_is_tasklet_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %esas2r_is_tasklet_pending.exit.if.then17_crit_edge, %lor.lhs.false8.i.if.then17_crit_edge, %lor.lhs.false4.i.if.then17_crit_edge, %lor.lhs.false.i.if.then17_crit_edge, %if.end15.if.then17_crit_edge
  tail call void @esas2r_do_tasklet_tasks(ptr noundef %0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %esas2r_is_tasklet_pending.exit.if.end18_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i50 = icmp eq i32 %23, 0
  br i1 %tobool.not.i50, label %lor.lhs.false.i52, label %if.end18.if.then27_crit_edge

if.end18.if.then27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

lor.lhs.false.i52:                                ; preds = %if.end18
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i51 = icmp eq i32 %26, 0
  br i1 %tobool3.not.i51, label %lor.lhs.false4.i54, label %lor.lhs.false.i52.if.then27_crit_edge

lor.lhs.false.i52.if.then27_crit_edge:            ; preds = %lor.lhs.false.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

lor.lhs.false4.i54:                               ; preds = %lor.lhs.false.i52
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not.i53 = icmp eq i32 %29, 0
  br i1 %tobool7.not.i53, label %lor.lhs.false8.i56, label %lor.lhs.false4.i54.if.then27_crit_edge

lor.lhs.false4.i54.if.then27_crit_edge:           ; preds = %lor.lhs.false4.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

lor.lhs.false8.i56:                               ; preds = %lor.lhs.false4.i54
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not.i55 = icmp eq i32 %32, 0
  br i1 %tobool11.not.i55, label %esas2r_is_tasklet_pending.exit60, label %lor.lhs.false8.i56.if.then27_crit_edge

lor.lhs.false8.i56.if.then27_crit_edge:           ; preds = %lor.lhs.false8.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

esas2r_is_tasklet_pending.exit60:                 ; preds = %lor.lhs.false8.i56
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %and1.i25.i57 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25.i57)
  %tobool14.i58.not = icmp eq i32 %and1.i25.i57, 0
  br i1 %tobool14.i58.not, label %lor.lhs.false, label %esas2r_is_tasklet_pending.exit60.if.then27_crit_edge

esas2r_is_tasklet_pending.exit60.if.then27_crit_edge: ; preds = %esas2r_is_tasklet_pending.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

lor.lhs.false:                                    ; preds = %esas2r_is_tasklet_pending.exit60
  %35 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags2, align 4
  %37 = and i32 %36, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool22.not = icmp eq i32 %37, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %38 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags2, align 4
  %40 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool26.not = icmp eq i32 %40, 0
  br i1 %tobool26.not, label %if.else, label %lor.lhs.false23.if.then27_crit_edge

lor.lhs.false23.if.then27_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false23.if.then27_crit_edge, %lor.lhs.false.if.then27_crit_edge, %esas2r_is_tasklet_pending.exit60.if.then27_crit_edge, %lor.lhs.false8.i56.if.then27_crit_edge, %lor.lhs.false4.i54.if.then27_crit_edge, %lor.lhs.false.i52.if.then27_crit_edge, %if.end18.if.then27_crit_edge
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %flags.i) #12
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i62 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i62, label %if.then.i, label %if.then27.if.end29_crit_edge

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then.i:                                        ; preds = %if.then27
  %state.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %0, i32 0, i32 54, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end29_crit_edge

if.then.i.if.end29_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %tasklet.i = getelementptr inbounds %struct.esas2r_adapter, ptr %0, i32 0, i32 54
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet.i) #12
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %flags.i) #12
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then.i.i, %if.then.i.if.end29_crit_edge, %if.then27.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_timer_tick(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_adapter_interrupt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_do_tasklet_tasks(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_kickoff_timer(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 59
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @esas2r_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @esas2r_kickoff_timer.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 10
  %expires = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 59, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timer) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_timer_callback(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr i8, ptr %t, i32 -792
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags2) #12
  %flags.i = getelementptr i8, ptr %t, i32 -796
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.esas2r_schedule_tasklet.exit_crit_edge

entry.esas2r_schedule_tasklet.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_schedule_tasklet.exit

if.then.i:                                        ; preds = %entry
  %state.i.i = getelementptr i8, ptr %t, i32 -64
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.esas2r_schedule_tasklet.exit_crit_edge

if.then.i.esas2r_schedule_tasklet.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_schedule_tasklet.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %tasklet.i = getelementptr i8, ptr %t, i32 -68
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet.i) #12
  br label %esas2r_schedule_tasklet.exit

esas2r_schedule_tasklet.exit:                     ; preds = %if.then.i.i, %if.then.i.esas2r_schedule_tasklet.exit_crit_edge, %entry.esas2r_schedule_tasklet.exit_crit_edge
  tail call void @init_timer_key(ptr noundef %t, ptr noundef nonnull @esas2r_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @esas2r_kickoff_timer.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 10
  %expires.i = getelementptr i8, ptr %t, i32 8
  %1 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add.i, ptr %expires.i, align 8
  tail call void @add_timer(ptr noundef %t) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_fw_event_off(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_event_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 79
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fw_event_lock) #12
  %fw_events_off = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 80
  %0 = ptrtoint ptr %fw_events_off to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %fw_events_off, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fw_event_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_fw_event_on(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_event_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 79
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fw_event_lock) #12
  %fw_events_off = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 80
  %0 = ptrtoint ptr %fw_events_off to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fw_events_off, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fw_event_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_queue_fw_event(ptr noundef %a, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %data_sz) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 252) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp = icmp eq i32 %type, 4
  %data3 = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1096045647, ptr %data3, align 4
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %2 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcid, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  %bus_number = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %bus_number to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %bus_number, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devfn, align 4
  %conv = trunc i32 %10 to i8
  %devfn5 = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 4, i32 5
  %11 = ptrtoint ptr %devfn5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %devfn5, align 1
  %vda_ae = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 4, i32 8
  %12 = call ptr @memcpy(ptr %vda_ae, ptr %data, i32 128)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = call ptr @memcpy(ptr %data3, ptr %data, i32 %data_sz)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %type9 = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %type9, align 8
  %a10 = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %a10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %a, ptr %a10, align 4
  %fw_event_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 79
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fw_event_lock) #12
  %fw_event_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 78
  %prev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 78, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %17, ptr noundef %fw_event_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %fw_event_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end8.list_add_tail.exit_crit_edge
  %work = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %22 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @esas2r_queue_fw_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry28 = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i68 = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry28, ptr %prev.i68, align 8
  %func = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @esas2r_firmware_event_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.esas2r_fw_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.36, ptr noundef nonnull @esas2r_queue_fw_event.__key.35) #12
  %26 = tail call i32 @llvm.read_register.i32(metadata !304) #12
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %fw_event_q = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 77
  %30 = ptrtoint ptr %fw_event_q to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw_event_q, align 4
  %call42 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef %29, ptr noundef %31, ptr noundef %work, i32 noundef 1) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fw_event_lock, i32 noundef %call15) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_firmware_event_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %a1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a1, align 4
  %data = getelementptr i8, ptr %work, i32 108
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 4
  %fw_events_off = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 80
  %4 = ptrtoint ptr %fw_events_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_events_off, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %entry
  %type = getelementptr i8, ptr %work, i32 104
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %7, label %if.end.done_crit_edge [
    i32 4, label %sw.bb4
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @esas2r_remove_device(ptr noundef %1, i16 noundef zeroext %3)
  tail call fastcc void @esas2r_add_device(ptr noundef %1, i16 noundef zeroext %3)
  br label %done

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @esas2r_add_device(ptr noundef %1, i16 noundef zeroext %3)
  br label %done

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @esas2r_remove_device(ptr noundef %1, i16 noundef zeroext %3)
  br label %done

sw.bb4:                                           ; preds = %if.end
  %bytype.i = getelementptr i8, ptr %work, i32 119
  %9 = ptrtoint ptr %bytype.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bytype.i, align 1
  %switch.tableidx = add i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %switch.tableidx)
  %11 = icmp ult i8 %switch.tableidx, 15
  br i1 %11, label %switch.lookup, label %sw.bb4.esas2r_send_ae_event.exit_crit_edge

sw.bb4.esas2r_send_ae_event.exit_crit_edge:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_send_ae_event.exit

switch.lookup:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %12 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x ptr], ptr @switch.table.esas2r_firmware_event_work, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %esas2r_send_ae_event.exit

esas2r_send_ae_event.exit:                        ; preds = %switch.lookup, %sw.bb4.esas2r_send_ae_event.exit_crit_edge
  %type.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.86, %sw.bb4.esas2r_send_ae_event.exit_crit_edge ]
  %vda_ae.i = getelementptr i8, ptr %work, i32 116
  %call.i = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.87, ptr noundef nonnull %type.0.i) #12
  %14 = ptrtoint ptr %vda_ae.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vda_ae.i, align 4
  %conv17.i = zext i8 %15 to i32
  %call18.i = tail call i32 @esas2r_log_hexdump(i32 noundef 2, ptr noundef %vda_ae.i, i32 noundef %conv17.i) #12
  br label %done

done:                                             ; preds = %esas2r_send_ae_event.exit, %sw.bb3, %sw.bb2, %sw.bb, %if.end.done_crit_edge, %entry.done_crit_edge
  %16 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a1, align 4
  %fw_event_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %17, i32 0, i32 79
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fw_event_lock.i) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %done.esas2r_free_fw_event.exit_crit_edge

done.esas2r_free_fw_event.exit_crit_edge:         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %esas2r_free_fw_event.exit

if.end.i.i.i:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %work, i32 -4
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %esas2r_free_fw_event.exit

esas2r_free_fw_event.exit:                        ; preds = %if.end.i.i.i, %done.esas2r_free_fw_event.exit_crit_edge
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 -4
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fw_event_lock.i, i32 noundef %call3.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_target_state_changed(ptr noundef %a, i16 noundef zeroext %targ_id, i8 noundef zeroext %state) local_unnamed_addr #1 align 64 {
entry:
  %targ_id.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %targ_id.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %targ_id, ptr %targ_id.addr, align 2
  %1 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %state, label %entry.if.end12_crit_edge [
    i8 6, label %entry.if.end12.sink.split_crit_edge
    i8 5, label %if.then5
    i8 0, label %if.then10
  ]

entry.if.end12.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.sink.split

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.sink.split

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then10, %if.then5, %entry.if.end12.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then5 ], [ 3, %if.then10 ], [ 1, %entry.if.end12.sink.split_crit_edge ]
  call void @esas2r_queue_fw_event(ptr noundef %a, i32 noundef %.sink, ptr noundef nonnull %targ_id.addr, i32 noundef 2)
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esas2r_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.esas2r_init) #12
  %0 = load i32, ptr @can_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %entry.if.end5.sink.split_crit_edge, label %if.else

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %0)
  %cmp2 = icmp ugt i32 %0, 2048
  br i1 %cmp2, label %if.else.if.end5.sink.split_crit_edge, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.else.if.end5.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.else.if.end5.sink.split_crit_edge, %entry.if.end5.sink.split_crit_edge
  %.str.89.sink = phi ptr [ @.str.88, %entry.if.end5.sink.split_crit_edge ], [ @.str.89, %if.else.if.end5.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %entry.if.end5.sink.split_crit_edge ], [ 2048, %if.else.if.end5.sink.split_crit_edge ]
  %call4 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull %.str.89.sink) #12
  store i32 %.sink, ptr @can_queue, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.else.if.end5_crit_edge
  %1 = load i32, ptr @cmd_per_lun, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp6 = icmp slt i32 %1, 1
  br i1 %cmp6, label %if.end5.if.end14.sink.split_crit_edge, label %if.else9

if.end5.if.end14.sink.split_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.sink.split

if.else9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %cmp10 = icmp ugt i32 %1, 2048
  br i1 %cmp10, label %if.else9.if.end14.sink.split_crit_edge, label %if.else9.if.end14_crit_edge

if.else9.if.end14_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.else9.if.end14.sink.split_crit_edge:           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else9.if.end14.sink.split_crit_edge, %if.end5.if.end14.sink.split_crit_edge
  %.str.91.sink = phi ptr [ @.str.90, %if.end5.if.end14.sink.split_crit_edge ], [ @.str.91, %if.else9.if.end14.sink.split_crit_edge ]
  %.sink66 = phi i32 [ 1, %if.end5.if.end14.sink.split_crit_edge ], [ 2048, %if.else9.if.end14.sink.split_crit_edge ]
  %call12 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull %.str.91.sink) #12
  store i32 %.sink66, ptr @cmd_per_lun, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else9.if.end14_crit_edge
  %2 = load i32, ptr @sg_tablesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp15 = icmp slt i32 %2, 32
  br i1 %cmp15, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.92) #12
  store i32 32, ptr @sg_tablesize, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %3 = load i32, ptr @esas2r_max_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp19 = icmp slt i32 %3, 1
  br i1 %cmp19, label %if.end18.if.end27.sink.split_crit_edge, label %if.else22

if.end18.if.end27.sink.split_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.sink.split

if.else22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp23 = icmp ugt i32 %3, 65535
  br i1 %cmp23, label %if.else22.if.end27.sink.split_crit_edge, label %if.else22.if.end27_crit_edge

if.else22.if.end27_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.else22.if.end27.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else22.if.end27.sink.split_crit_edge, %if.end18.if.end27.sink.split_crit_edge
  %.str.94.sink = phi ptr [ @.str.93, %if.end18.if.end27.sink.split_crit_edge ], [ @.str.94, %if.else22.if.end27.sink.split_crit_edge ]
  %.sink67 = phi i32 [ 1, %if.end18.if.end27.sink.split_crit_edge ], [ 65535, %if.else22.if.end27.sink.split_crit_edge ]
  %call25 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull %.str.94.sink) #12
  store i32 %.sink67, ptr @esas2r_max_sectors, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else22.if.end27_crit_edge
  %4 = load i32, ptr @sgl_page_size, align 4
  %and = and i32 %4, -16
  store i32 %and, ptr @sgl_page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and)
  %cmp28 = icmp slt i32 %and, 64
  br i1 %cmp28, label %if.end27.if.end34.sink.split_crit_edge, label %if.else30

if.end27.if.end34.sink.split_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.sink.split

if.else30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp31 = icmp ugt i32 %and, 1024
  br i1 %cmp31, label %if.else30.if.end34.sink.split_crit_edge, label %if.else30.if.end34_crit_edge

if.else30.if.end34_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.else30.if.end34.sink.split_crit_edge:          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else30.if.end34.sink.split_crit_edge, %if.end27.if.end34.sink.split_crit_edge
  %.sink68 = phi i32 [ 64, %if.end27.if.end34.sink.split_crit_edge ], [ 1024, %if.else30.if.end34.sink.split_crit_edge ]
  store i32 %.sink68, ptr @sgl_page_size, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else30.if.end34_crit_edge
  %5 = load i32, ptr @num_sg_lists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp35 = icmp slt i32 %5, 8
  br i1 %cmp35, label %if.end34.if.end41.sink.split_crit_edge, label %if.else37

if.end34.if.end41.sink.split_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.sink.split

if.else37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %cmp38 = icmp ugt i32 %5, 2048
  br i1 %cmp38, label %if.else37.if.end41.sink.split_crit_edge, label %if.else37.if.end41_crit_edge

if.else37.if.end41_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.else37.if.end41.sink.split_crit_edge:          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.else37.if.end41.sink.split_crit_edge, %if.end34.if.end41.sink.split_crit_edge
  %.sink69 = phi i32 [ 8, %if.end34.if.end41.sink.split_crit_edge ], [ 2048, %if.else37.if.end41.sink.split_crit_edge ]
  store i32 %.sink69, ptr @num_sg_lists, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else37.if.end41_crit_edge
  %6 = load i32, ptr @num_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp42 = icmp slt i32 %6, 4
  br i1 %cmp42, label %if.end41.if.end48.sink.split_crit_edge, label %if.else44

if.end41.if.end48.sink.split_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.sink.split

if.else44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %cmp45 = icmp ugt i32 %6, 256
  br i1 %cmp45, label %if.else44.if.end48.sink.split_crit_edge, label %if.else44.if.end48_crit_edge

if.else44.if.end48_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.else44.if.end48.sink.split_crit_edge:          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.else44.if.end48.sink.split_crit_edge, %if.end41.if.end48.sink.split_crit_edge
  %.sink70 = phi i32 [ 4, %if.end41.if.end48.sink.split_crit_edge ], [ 256, %if.else44.if.end48.sink.split_crit_edge ]
  store i32 %.sink70, ptr @num_requests, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else44.if.end48_crit_edge
  %7 = load i32, ptr @num_ae_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp49 = icmp slt i32 %7, 2
  br i1 %cmp49, label %if.end48.if.end55.sink.split_crit_edge, label %if.else51

if.end48.if.end55.sink.split_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.sink.split

if.else51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp52 = icmp ugt i32 %7, 8
  br i1 %cmp52, label %if.else51.if.end55.sink.split_crit_edge, label %if.else51.if.end55_crit_edge

if.else51.if.end55_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.else51.if.end55.sink.split_crit_edge:          ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.else51.if.end55.sink.split_crit_edge, %if.end48.if.end55.sink.split_crit_edge
  %.sink71 = phi i32 [ 2, %if.end48.if.end55.sink.split_crit_edge ], [ 8, %if.else51.if.end55.sink.split_crit_edge ]
  store i32 %.sink71, ptr @num_ae_requests, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else51.if.end55_crit_edge
  %8 = call ptr @memset(ptr @esas2r_adapters, i32 0, i32 128)
  %call57 = tail call i32 @__pci_register_driver(ptr noundef nonnull @esas2r_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_read_fw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_write_fw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_read_fs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_write_fs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_read_vda(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_write_vda(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @handle_hba_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_write_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_nvram_get_defaults(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esas2r_probe(ptr noundef %pcid, ptr nocapture noundef readnone %id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_requests, align 4
  %1 = mul i32 %0, 112
  %add1 = add i32 %1, 558904
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  %conv = zext i16 %3 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv2 = zext i16 %5 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor, align 4
  %conv3 = zext i16 %7 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device, align 2
  %conv4 = zext i16 %9 to i32
  %call = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #12
  %enable_cnt = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 51
  %10 = ptrtoint ptr %enable_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_cnt, align 8
  %call6 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %11) #12
  %call7 = tail call i32 @pci_enable_device(ptr noundef %pcid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 1, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call7) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.41) #12
  %12 = ptrtoint ptr %enable_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_cnt, align 8
  %call16 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %13) #12
  %call17 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @driver_template, i32 noundef %add1) #12
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 53
  %14 = call ptr @memset(ptr %hostdata, i32 0, i32 %add1)
  %call25 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.44, ptr noundef nonnull %call17) #12
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 21
  %15 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 22
  %16 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 255, ptr %max_lun, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 24
  %17 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 16, ptr %max_cmd_len, align 4
  %18 = load i32, ptr @can_queue, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 26
  %19 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %can_queue, align 4
  %20 = load i32, ptr @cmd_per_lun, align 4
  %conv26 = trunc i32 %20 to i16
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 27
  %21 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv26, ptr %cmd_per_lun, align 8
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 25
  %22 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 257, ptr %this_id, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 20
  %23 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %max_channel, align 8
  %24 = load i32, ptr @found_adapters, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 23
  %25 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %unique_id, align 8
  %26 = load i32, ptr @sg_tablesize, align 4
  %conv29 = trunc i32 %26 to i16
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 28
  %27 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv29, ptr %sg_tablesize, align 2
  %28 = load i32, ptr @esas2r_max_sectors, align 4
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 30
  %29 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_sectors, align 8
  %call30 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.45) #12
  tail call void @pci_set_master(ptr noundef %pcid) #12
  %30 = load i32, ptr @found_adapters, align 4
  %call31 = tail call i32 @esas2r_init_adapter(ptr noundef nonnull %call17, ptr noundef %pcid, i32 noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 1
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %number, align 4
  %conv33 = zext i8 %34 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 6
  %35 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devfn, align 4
  %call34 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef %conv33, i32 noundef %36) #12
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 49
  %call35 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.47) #12
  tail call void @scsi_host_put(ptr noundef nonnull %call17) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  %call39 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.48, ptr noundef %pcid, ptr noundef %hostdata) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcid, i32 0, i32 44, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call17, ptr %driver_data.i.i, align 4
  %call40 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.49) #12
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call17, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %if.end52, label %if.then44

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str.50, i32 noundef %call.i) #12
  %shost_gendev46 = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 49
  %call47 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 1, ptr noundef %shost_gendev46, ptr noundef nonnull @.str.51) #12
  %call49 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev46, ptr noundef nonnull @.str.47) #12
  tail call void @scsi_host_put(ptr noundef nonnull %call17) #12
  %call51 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev46, ptr noundef nonnull @.str.52, ptr noundef %pcid) #12
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end36
  %fw_event_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 14, i32 50, i32 18
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fw_event_lock.i) #12
  %fw_events_off.i = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 14, i32 50, i32 25
  %39 = ptrtoint ptr %fw_events_off.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %fw_events_off.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fw_event_lock.i, i32 noundef %call2.i) #12
  %shost_gendev53 = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 49
  %call54 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.53) #12
  tail call void @scsi_scan_host(ptr noundef nonnull %call17) #12
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 0, i32 50
  %call55 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @bin_attr_fw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %call59 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.54) #12
  br label %if.end60

if.else:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %sysfs_fw_created = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 229, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %sysfs_fw_created to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %sysfs_fw_created, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %sysfs_fw_created, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then57
  %call63 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @bin_attr_fs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else68, label %if.then65

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %call67 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.55) #12
  br label %if.end72

if.else68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %sysfs_fs_created = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 229, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %sysfs_fs_created to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load69 = load i8, ptr %sysfs_fs_created, align 4
  %bf.set71 = or i8 %bf.load69, 64
  store i8 %bf.set71, ptr %sysfs_fs_created, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then65
  %call75 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @bin_attr_vda) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.else80, label %if.then77

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %call79 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.56) #12
  br label %if.end84

if.else80:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %sysfs_vda_created = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 229, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %sysfs_vda_created to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load81 = load i8, ptr %sysfs_vda_created, align 4
  %bf.set83 = or i8 %bf.load81, 32
  store i8 %bf.set83, ptr %sysfs_vda_created, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.then77
  %call87 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @bin_attr_hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.else92, label %if.then89

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %call91 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.57) #12
  br label %if.end96

if.else92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %sysfs_hw_created = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 229, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %sysfs_hw_created to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load93 = load i8, ptr %sysfs_hw_created, align 4
  %bf.set95 = or i8 %bf.load93, 16
  store i8 %bf.set95, ptr %sysfs_hw_created, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then89
  %call99 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @bin_attr_live_nvram) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.else104, label %if.then101

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %call103 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.58) #12
  br label %if.end108

if.else104:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %sysfs_live_nvram_created = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 229, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %sysfs_live_nvram_created to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load105 = load i8, ptr %sysfs_live_nvram_created, align 4
  %bf.set107 = or i8 %bf.load105, 8
  store i8 %bf.set107, ptr %sysfs_live_nvram_created, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else104, %if.then101
  %call111 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @bin_attr_default_nvram) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.else116, label %if.then113

if.then113:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %call115 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.59) #12
  br label %if.end120

if.else116:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %sysfs_default_nvram_created = getelementptr inbounds %struct.Scsi_Host, ptr %call17, i32 229, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %sysfs_default_nvram_created to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load117 = load i8, ptr %sysfs_default_nvram_created, align 4
  %bf.set119 = or i8 %bf.load117, 4
  store i8 %bf.set119, ptr %sysfs_default_nvram_created, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.else116, %if.then113
  %46 = load i32, ptr @found_adapters, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr @found_adapters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then44, %if.then32, %if.then20, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ -19, %if.then20 ], [ -19, %if.then44 ], [ 0, %if.end120 ], [ 0, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %pdev, ptr noundef %1) #12
  %index = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 13, i32 50, i32 12, i32 10, i32 3, i32 6
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  tail call void @esas2r_kill_adapter(i32 noundef %3) #12
  %4 = load i32, ptr @found_adapters, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr @found_adapters, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_init_adapter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_ioctl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_kill_adapter(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_reset_adapter(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_reset_bus(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @esas2r_send_task_mgmt(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_remove_device(ptr nocapture noundef readonly %a, i16 noundef zeroext %target_id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 8
  %conv = zext i16 %target_id to i32
  %call = tail call ptr @scsi_device_lookup(ptr noundef %1, i32 noundef 0, i32 noundef %conv, i64 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @scsi_device_set_state(ptr noundef nonnull %call, i32 noundef 6) #12
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 55
  %call3 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.65, i32 noundef %conv) #12
  tail call void @scsi_remove_device(ptr noundef nonnull %call) #12
  %call5 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.66) #12
  tail call void @scsi_device_put(ptr noundef nonnull %call) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  %call8 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %shost_gendev, ptr noundef nonnull @.str.67, i32 noundef %conv) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_add_device(ptr nocapture noundef readonly %a, i16 noundef zeroext %target_id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 56
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 8
  %conv = zext i16 %target_id to i32
  %call = tail call ptr @scsi_device_lookup(ptr noundef %1, i32 noundef 0, i32 noundef %conv, i64 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 55
  %call2 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 2, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.68, i32 noundef %conv) #12
  tail call void @scsi_device_put(ptr noundef nonnull %call) #12
  br label %if.end15

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  %call5 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.69, i32 noundef %conv) #12
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 8
  %call8 = tail call i32 @scsi_add_device(ptr noundef %5, i32 noundef 0, i32 noundef %conv, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.if.end15_crit_edge, label %if.then10

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 8
  %shost_gendev12 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  %call14 = tail call i32 (i32, ptr, ptr, ...) @esas2r_log_dev(i32 noundef 1, ptr noundef %shost_gendev12, ptr noundef nonnull @.str.70, i32 noundef %call8, i32 noundef %conv) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.else.if.end15_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log_hexdump(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !37, !39, !41, !43, !44, !46, !48, !50, !51, !53, !55, !57, !58, !60, !62, !64, !65, !67, !69, !71, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !150, !152, !153, !154, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302}
!llvm.named.register.sp = !{!304}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @__UNIQUE_ID_description287, !1, !"__UNIQUE_ID_description287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_author288, !3, !"__UNIQUE_ID_author288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 47, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 48, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 49, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 221, i32 1}
!15 = !{ptr @bin_attr_fw, !14, !"bin_attr_fw", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 222, i32 1}
!18 = !{ptr @bin_attr_fs, !17, !"bin_attr_fs", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 223, i32 1}
!21 = !{ptr @bin_attr_vda, !20, !"bin_attr_vda", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 224, i32 1}
!24 = !{ptr @bin_attr_hw, !23, !"bin_attr_hw", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 225, i32 1}
!27 = !{ptr @bin_attr_live_nvram, !26, !"bin_attr_live_nvram", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 228, i32 20}
!30 = !{ptr @bin_attr_default_nvram, !31, !"bin_attr_default_nvram", i1 false, i1 false}
!31 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 227, i32 22}
!32 = !{ptr @sgl_page_size, !33, !"sgl_page_size", i1 false, i1 false}
!33 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 258, i32 5}
!34 = !{ptr @__param_sgl_page_size, !35, !"__param_sgl_page_size", i1 false, i1 false}
!35 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 259, i32 1}
!36 = !{ptr @__UNIQUE_ID_sgl_page_sizetype300, !35, !"__UNIQUE_ID_sgl_page_sizetype300", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_sgl_page_size301, !38, !"__UNIQUE_ID_sgl_page_size301", i1 false, i1 false}
!38 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 260, i32 1}
!39 = !{ptr @num_sg_lists, !40, !"num_sg_lists", i1 false, i1 false}
!40 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 266, i32 5}
!41 = !{ptr @__param_num_sg_lists, !42, !"__param_num_sg_lists", i1 false, i1 false}
!42 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 267, i32 1}
!43 = !{ptr @__UNIQUE_ID_num_sg_liststype302, !42, !"__UNIQUE_ID_num_sg_liststype302", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_num_sg_lists303, !45, !"__UNIQUE_ID_num_sg_lists303", i1 false, i1 false}
!45 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 268, i32 1}
!46 = !{ptr @sg_tablesize, !47, !"sg_tablesize", i1 false, i1 false}
!47 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 271, i32 5}
!48 = !{ptr @__param_sg_tablesize, !49, !"__param_sg_tablesize", i1 false, i1 false}
!49 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 272, i32 1}
!50 = !{ptr @__UNIQUE_ID_sg_tablesizetype304, !49, !"__UNIQUE_ID_sg_tablesizetype304", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_sg_tablesize305, !52, !"__UNIQUE_ID_sg_tablesize305", i1 false, i1 false}
!52 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 273, i32 1}
!53 = !{ptr @num_requests, !54, !"num_requests", i1 false, i1 false}
!54 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 276, i32 5}
!55 = !{ptr @__param_num_requests, !56, !"__param_num_requests", i1 false, i1 false}
!56 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 277, i32 1}
!57 = !{ptr @__UNIQUE_ID_num_requeststype306, !56, !"__UNIQUE_ID_num_requeststype306", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_num_requests307, !59, !"__UNIQUE_ID_num_requests307", i1 false, i1 false}
!59 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 278, i32 1}
!60 = !{ptr @num_ae_requests, !61, !"num_ae_requests", i1 false, i1 false}
!61 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 281, i32 5}
!62 = !{ptr @__param_num_ae_requests, !63, !"__param_num_ae_requests", i1 false, i1 false}
!63 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 282, i32 1}
!64 = !{ptr @__UNIQUE_ID_num_ae_requeststype308, !63, !"__UNIQUE_ID_num_ae_requeststype308", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_num_ae_requests309, !66, !"__UNIQUE_ID_num_ae_requests309", i1 false, i1 false}
!66 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 283, i32 1}
!67 = !{ptr @cmd_per_lun, !68, !"cmd_per_lun", i1 false, i1 false}
!68 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 286, i32 5}
!69 = !{ptr @__param_cmd_per_lun, !70, !"__param_cmd_per_lun", i1 false, i1 false}
!70 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 287, i32 1}
!71 = !{ptr @__UNIQUE_ID_cmd_per_luntype310, !70, !"__UNIQUE_ID_cmd_per_luntype310", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_cmd_per_lun311, !73, !"__UNIQUE_ID_cmd_per_lun311", i1 false, i1 false}
!73 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 288, i32 1}
!74 = !{ptr @can_queue, !75, !"can_queue", i1 false, i1 false}
!75 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 292, i32 5}
!76 = !{ptr @__param_can_queue, !77, !"__param_can_queue", i1 false, i1 false}
!77 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 293, i32 1}
!78 = !{ptr @__UNIQUE_ID_can_queuetype312, !77, !"__UNIQUE_ID_can_queuetype312", i1 false, i1 false}
!79 = !{ptr @__UNIQUE_ID_can_queue313, !80, !"__UNIQUE_ID_can_queue313", i1 false, i1 false}
!80 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 294, i32 1}
!81 = !{ptr @esas2r_max_sectors, !82, !"esas2r_max_sectors", i1 false, i1 false}
!82 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 297, i32 5}
!83 = !{ptr @__param_esas2r_max_sectors, !84, !"__param_esas2r_max_sectors", i1 false, i1 false}
!84 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 298, i32 1}
!85 = !{ptr @__UNIQUE_ID_esas2r_max_sectorstype314, !84, !"__UNIQUE_ID_esas2r_max_sectorstype314", i1 false, i1 false}
!86 = !{ptr @__UNIQUE_ID_esas2r_max_sectors315, !87, !"__UNIQUE_ID_esas2r_max_sectors315", i1 false, i1 false}
!87 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 299, i32 1}
!88 = !{ptr @interrupt_mode, !89, !"interrupt_mode", i1 false, i1 false}
!89 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 303, i32 5}
!90 = !{ptr @__param_interrupt_mode, !91, !"__param_interrupt_mode", i1 false, i1 false}
!91 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 304, i32 1}
!92 = !{ptr @__UNIQUE_ID_interrupt_modetype316, !91, !"__UNIQUE_ID_interrupt_modetype316", i1 false, i1 false}
!93 = !{ptr @__UNIQUE_ID_interrupt_mode317, !94, !"__UNIQUE_ID_interrupt_mode317", i1 false, i1 false}
!94 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 305, i32 1}
!95 = !{ptr @.str.9, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 637, i32 30}
!97 = !{ptr @__func__.esas2r_exit, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 637, i32 43}
!99 = !{ptr @.str.10, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 640, i32 31}
!101 = !{ptr @.str.11, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 642, i32 21}
!103 = !{ptr @.str.12, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 649, i32 30}
!105 = !{ptr @.str.13, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 661, i32 30}
!107 = !{ptr @.str.14, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 663, i32 16}
!109 = !{ptr @.str.15, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 671, i32 33}
!111 = !{ptr @.str.16, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 674, i32 16}
!113 = !{ptr @.str.17, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 688, i32 14}
!115 = !{ptr @.str.18, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 696, i32 18}
!117 = !{ptr @.str.19, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 702, i32 15}
!119 = !{ptr @esas2r_info.esas2r_info_str, !120, !"esas2r_info_str", i1 false, i1 false}
!120 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 712, i32 14}
!121 = !{ptr @.str.20, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 715, i32 10}
!123 = !{ptr @.str.21, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 729, i32 11}
!125 = !{ptr @.str.22, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 742, i32 13}
!127 = !{ptr @.str.23, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 749, i32 3}
!129 = !{ptr @.str.24, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 984, i32 30}
!131 = !{ptr @.str.25, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1092, i32 30}
!133 = !{ptr @.str.26, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1099, i32 30}
!135 = !{ptr @.str.27, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1182, i32 30}
!137 = !{ptr @.str.28, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1190, i32 30}
!139 = !{ptr @.str.29, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1207, i32 9}
!141 = !{ptr @.str.30, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1213, i32 9}
!143 = !{ptr @.str.31, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1225, i32 9}
!145 = !{ptr @esas2r_kickoff_timer.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1575, i32 2}
!147 = !{ptr @.str.32, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.33, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1833, i32 7}
!150 = !{ptr @esas2r_queue_fw_event.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1854, i32 2}
!152 = !{ptr @.str.34, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @esas2r_queue_fw_event.__key.35, !151, !"__key", i1 false, i1 false}
!154 = !{ptr @.str.36, !151, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @__initcall__kmod_esas2r__318_1908_esas2r_init6, !156, !"__initcall__kmod_esas2r__318_1908_esas2r_init6", i1 false, i1 false}
!156 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1908, i32 1}
!157 = !{ptr @__exitcall_esas2r_exit, !158, !"__exitcall_esas2r_exit", i1 false, i1 false}
!158 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1909, i32 1}
!159 = !{ptr @esas2r_adapters, !160, !"esas2r_adapters", i1 false, i1 false}
!160 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 54, i32 24}
!161 = !{ptr @esas2r_proc_host, !162, !"esas2r_proc_host", i1 false, i1 false}
!162 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 626, i32 26}
!163 = !{ptr @esas2r_proc_major, !164, !"esas2r_proc_major", i1 false, i1 false}
!164 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 627, i32 12}
!165 = !{ptr @.str.37, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 201, i32 8}
!167 = !{ptr @__param_str_sgl_page_size, !35, !"__param_str_sgl_page_size", i1 false, i1 false}
!168 = !{ptr @__param_str_num_sg_lists, !42, !"__param_str_num_sg_lists", i1 false, i1 false}
!169 = !{ptr @__param_str_sg_tablesize, !49, !"__param_str_sg_tablesize", i1 false, i1 false}
!170 = !{ptr @__param_str_num_requests, !56, !"__param_str_num_requests", i1 false, i1 false}
!171 = !{ptr @__param_str_num_ae_requests, !63, !"__param_str_num_ae_requests", i1 false, i1 false}
!172 = !{ptr @__param_str_cmd_per_lun, !70, !"__param_str_cmd_per_lun", i1 false, i1 false}
!173 = !{ptr @__param_str_can_queue, !77, !"__param_str_can_queue", i1 false, i1 false}
!174 = !{ptr @__param_str_esas2r_max_sectors, !84, !"__param_str_esas2r_max_sectors", i1 false, i1 false}
!175 = !{ptr @__param_str_interrupt_mode, !91, !"__param_str_interrupt_mode", i1 false, i1 false}
!176 = !{ptr @esas2r_pci_driver, !177, !"esas2r_pci_driver", i1 false, i1 false}
!177 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 343, i32 2}
!178 = !{ptr @esas2r_pci_table, !179, !"esas2r_pci_table", i1 false, i1 false}
!179 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 310, i32 2}
!180 = !{ptr @.str.38, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 363, i32 10}
!182 = !{ptr @.str.39, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 370, i32 10}
!184 = !{ptr @.str.40, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 377, i32 11}
!186 = !{ptr @.str.41, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 383, i32 10}
!188 = !{ptr @.str.42, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 385, i32 10}
!190 = !{ptr @.str.43, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 390, i32 31}
!192 = !{ptr @.str.44, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 398, i32 30}
!194 = !{ptr @.str.45, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 419, i32 30}
!196 = !{ptr @.str.46, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 425, i32 7}
!198 = !{ptr @.str.47, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 430, i32 11}
!200 = !{ptr @.str.48, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 438, i32 30}
!202 = !{ptr @.str.49, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 443, i32 30}
!204 = !{ptr @.str.50, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 448, i32 31}
!206 = !{ptr @.str.51, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 450, i32 11}
!208 = !{ptr @.str.52, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 458, i32 11}
!210 = !{ptr @.str.53, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 470, i32 10}
!212 = !{ptr @.str.54, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 477, i32 11}
!214 = !{ptr @.str.55, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 483, i32 11}
!216 = !{ptr @.str.56, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 489, i32 11}
!218 = !{ptr @.str.57, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 495, i32 11}
!220 = !{ptr @.str.58, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 501, i32 11}
!222 = !{ptr @.str.59, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 508, i32 11}
!224 = !{ptr @.str.60, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 237, i32 13}
!226 = !{ptr @driver_template, !227, !"driver_template", i1 false, i1 false}
!227 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 234, i32 34}
!228 = !{ptr @found_adapters, !229, !"found_adapters", i1 false, i1 false}
!229 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 53, i32 12}
!230 = !{ptr @.str.61, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 523, i32 10}
!232 = !{ptr @esas2r_proc_fops, !233, !"esas2r_proc_fops", i1 false, i1 false}
!233 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 613, i32 37}
!234 = !{ptr @esas2r_proc_ops, !235, !"esas2r_proc_ops", i1 false, i1 false}
!235 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 618, i32 30}
!236 = !{ptr @.str.62, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 929, i32 14}
!238 = !{ptr @.str.63, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1120, i32 8}
!240 = !{ptr @.str.64, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1125, i32 8}
!242 = !{ptr @.str.65, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1679, i32 4}
!244 = !{ptr @.str.66, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1688, i32 4}
!246 = !{ptr @.str.67, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1695, i32 4}
!248 = !{ptr @.str.68, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1643, i32 4}
!250 = !{ptr @.str.69, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1651, i32 4}
!252 = !{ptr @.str.70, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1660, i32 5}
!254 = !{ptr @.str.71, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1711, i32 10}
!256 = !{ptr @.str.72, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1715, i32 10}
!258 = !{ptr @.str.73, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1719, i32 10}
!260 = !{ptr @.str.74, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1723, i32 10}
!262 = !{ptr @.str.75, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1727, i32 10}
!264 = !{ptr @.str.76, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1731, i32 10}
!266 = !{ptr @.str.77, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1735, i32 10}
!268 = !{ptr @.str.78, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1739, i32 10}
!270 = !{ptr @.str.79, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1743, i32 10}
!272 = !{ptr @.str.80, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1747, i32 10}
!274 = !{ptr @.str.81, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1751, i32 10}
!276 = !{ptr @.str.82, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1755, i32 10}
!278 = !{ptr @.str.83, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1759, i32 10}
!280 = !{ptr @.str.84, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1763, i32 10}
!282 = !{ptr @.str.85, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1767, i32 10}
!284 = !{ptr @.str.86, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1771, i32 10}
!286 = !{ptr @.str.87, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 1776, i32 6}
!288 = !{ptr @__func__.esas2r_init, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 535, i32 43}
!290 = !{ptr @.str.88, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 541, i32 7}
!292 = !{ptr @.str.89, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 546, i32 7}
!294 = !{ptr @.str.90, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 553, i32 7}
!296 = !{ptr @.str.91, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 558, i32 7}
!298 = !{ptr @.str.92, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 565, i32 7}
!300 = !{ptr @.str.93, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 572, i32 7}
!302 = !{ptr @.str.94, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/esas2r/esas2r_main.c", i32 577, i32 7}
!304 = !{!"sp"}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!314 = !{!"auto-init"}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{!"branch_weights", i32 1, i32 2000}
!317 = !{i64 2155237695}
!318 = !{i64 5077366}
!319 = !{i64 5077784}
!320 = !{i64 2155238852}
!321 = !{i64 5077564}
!322 = !{i64 2155239267}
