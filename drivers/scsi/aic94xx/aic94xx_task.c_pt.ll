; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_task.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_task.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.79, ptr, i32, %struct.kref, [116 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.79 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.81 }
%union.anon.81 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.82, %union.anon.83, i8, i8, i8, i8, i8, %union.anon.84, i8, i8, i8, i32 }
%union.anon.82 = type { i8 }
%union.anon.83 = type { i8 }
%union.anon.84 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.asd_ha_struct = type { ptr, ptr, %struct.sas_ha_struct, i8, i32, %struct.spinlock, [2 x %struct.asd_ha_addrspace], %struct.hw_profile, [8 x %struct.asd_phy], %struct.spinlock, [8 x %struct.asd_port], [8 x %struct.asd_sas_port], ptr, %struct.asd_seq_data, i32, ptr }
%struct.asd_ha_addrspace = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.hw_profile = type { %struct.bios_struct, %struct.unit_element_struct, %struct.flash_struct, [8 x i8], [13 x i8], i8, [8 x %struct.asd_phy_desc], i32, ptr, i32, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bios_struct = type { i32, i8, i8, i32 }
%struct.unit_element_struct = type { i16, i16, ptr }
%struct.flash_struct = type { i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.asd_phy_desc = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asd_phy = type { %struct.asd_sas_phy, ptr, ptr, ptr, ptr, [1068 x i8] }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.asd_port = type { [8 x i8], [8 x i8], i32, i32 }
%struct.asd_seq_data = type { %struct.spinlock, i16, i32, %struct.list_head, i32, %struct.asd_dma_tok, %struct.spinlock, ptr, ptr, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.asd_dma_tok = type { ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.asd_ascb = type { %struct.list_head, ptr, ptr, %struct.asd_dma_tok, ptr, ptr, i8, %struct.timer_list, ptr, i8, i16, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.85, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.85 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.sas_ata_task = type <{ %struct.host_to_dev_fis, [16 x i8], i8, i8 }>
%struct.host_to_dev_fis = type { i8, i8, i8, i8, i8, %union.anon.86, %union.anon.87, i8, i8, i8, i8, i8, %union.anon.88, i8, i8, i8, i32 }
%union.anon.86 = type { i8 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i8 }
%struct.scb_header = type <{ i64, i16, i8 }>
%struct.scb = type { %struct.scb_header, %union.anon.99 }
%union.anon.99 = type { %struct.initiate_ssp_task }
%struct.initiate_ssp_task = type <{ i8, i32, %struct.ssp_frame_hdr, %struct.ssp_command_iu, i16, i16, i8, i8, i8, [5 x i8], [3 x %struct.sg_el] }>
%struct.ssp_frame_hdr = type { i8, [3 x i8], i8, [3 x i8], i16, i16, i32, i16, i16, i32 }
%struct.ssp_command_iu = type { [8 x i8], i8, %union.anon.100, i8, i8, [16 x i8], [0 x i8] }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i8 }
%struct.sg_el = type { i64, i32, i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.93, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%union.anon.93 = type { ptr }
%struct.sas_ssp_task = type { i8, [8 x i8], i8, i32, i8, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.done_list_struct = type { i16, i8, [4 x i8], i8 }
%struct.page = type { i32, %union.anon.9, %union.anon.55, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.55 = type { %struct.atomic_t }

@asd_execute_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: unknown sas_task proto: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_execute_task\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/aic94xx/aic94xx_task.c\00", [60 x i8] zeroinitializer }, align 32
@asd_execute_task._entry_ptr = internal global ptr @asd_execute_task._entry, section ".printk_index", align 4
@data_dir_flags = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\01\00", [28 x i8] zeroinitializer }, align 32
@asd_task_tasklet_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: %s: dl opcode: 0x%x?\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"asd_task_tasklet_complete\00", [38 x i8] zeroinitializer }, align 32
@asd_task_tasklet_complete._entry_ptr = internal global ptr @asd_task_tasklet_complete._entry, section ".printk_index", align 4
@asd_task_tasklet_complete._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\015aic94xx: task 0x%p done with opcode 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", [36 x i8] zeroinitializer }, align 32
@asd_task_tasklet_complete._entry_ptr.7 = internal global ptr @asd_task_tasklet_complete._entry.5, section ".printk_index", align 4
@asd_get_response_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: Uh-oh! No escb for this dl?!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asd_get_response_tasklet\00", [39 x i8] zeroinitializer }, align 32
@asd_get_response_tasklet._entry_ptr = internal global ptr @asd_get_response_tasklet._entry, section ".printk_index", align 4
@asd_ascb_cache = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@asd_dma_token_cache = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.13 = internal global [37 x i64] [i64 35, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 12, i64 13, i64 14, i64 16, i64 18, i64 20, i64 21, i64 22, i64 24, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 571, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"data_dir_flags\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 29, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 304, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 330, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private constant [39 x i8] c"../drivers/scsi/aic94xx/aic94xx_task.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 165, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 326, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @asd_execute_task._entry, ptr @asd_execute_task._entry_ptr, ptr @asd_get_response_tasklet._entry, ptr @asd_get_response_tasklet._entry_ptr, ptr @asd_task_tasklet_complete._entry, ptr @asd_task_tasklet_complete._entry.5, ptr @asd_task_tasklet_complete._entry_ptr, ptr @asd_task_tasklet_complete._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @data_dir_flags, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_execute_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_dir_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_task_tasklet_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_task_tasklet_complete._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_response_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_execute_task(ptr noundef %task, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  %res = alloca i32, align 4
  %alist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %res, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alist) #5
  %1 = getelementptr inbounds %struct.list_head, ptr %alist, i32 0, i32 1
  %2 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %alist, ptr %alist, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %alist, ptr %1, align 4
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %port = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldd_ha, align 4
  %seq.i = getelementptr inbounds %struct.asd_ha_struct, ptr %11, i32 0, i32 13
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %seq.i) #5
  %can_queue.i = getelementptr inbounds %struct.asd_ha_struct, ptr %11, i32 0, i32 13, i32 4
  %12 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %can_queue.i, align 4
  %sub.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %asd_can_queue.exit, label %if.end

asd_can_queue.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %seq.i, i32 noundef %call2.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %can_queue.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %seq.i, i32 noundef %call2.i) #5
  %15 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %res, align 4
  %call1 = call ptr @asd_ascb_alloc_list(ptr noundef %11, ptr noundef nonnull %res, i32 noundef %gfp_flags) #5
  %16 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not = icmp eq i32 %17, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -12, ptr %res, align 4
  br label %out_err

if.end4:                                          ; preds = %if.end
  %prev5 = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %19 = ptrtoint ptr %prev5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev5, align 4
  %call.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %alist, ptr noundef %20, ptr noundef %call1) #5
  br i1 %call.i, label %if.end.i, label %if.end4.__list_add.exit_crit_edge

if.end4.__list_add.exit_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_add.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %alist, ptr %prev5, align 4
  %22 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1, ptr %alist, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %1, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %alist, ptr %20, align 4
  br label %__list_add.exit

__list_add.exit:                                  ; preds = %if.end.i, %if.end4.__list_add.exit_crit_edge
  %25 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %alist, align 4
  %cmp.not = icmp eq ptr %26, %alist
  br i1 %cmp.not, label %__list_add.exit.for.end_crit_edge, label %for.body

__list_add.exit.for.end_crit_edge:                ; preds = %__list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %__list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %task, ptr %uldd_task, align 4
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %28 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %lldd_task, align 4
  br label %for.end

for.end:                                          ; preds = %for.body, %__list_add.exit.for.end_crit_edge
  %29 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %29)
  %a.0228 = load ptr, ptr %alist, align 4
  %cmp20.not229 = icmp eq ptr %a.0228, %alist
  br i1 %cmp20.not229, label %for.end.for.end57_crit_edge, label %for.end.for.body22_crit_edge

for.end.for.body22_crit_edge:                     ; preds = %for.end
  br label %for.body22

for.end.for.end57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end57

for.body22:                                       ; preds = %do.body41.for.body22_crit_edge, %for.end.for.body22_crit_edge
  %a.0230 = phi ptr [ %a.0, %do.body41.for.body22_crit_edge ], [ %a.0228, %for.end.for.body22_crit_edge ]
  %uldd_task23 = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 13
  %30 = ptrtoint ptr %uldd_task23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uldd_task23, align 4
  %uldd_timer = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 6
  %32 = ptrtoint ptr %uldd_timer to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %uldd_timer, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %uldd_timer, align 4
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 3
  %33 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %task_proto, align 4
  %and = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end27, label %if.end27.thread

if.end27.thread:                                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %task_proto to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %task_proto, align 4
  br label %sw.bb

if.end27:                                         ; preds = %for.body22
  %36 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %sw.epilog.thread223 [
    i32 1, label %if.end27.sw.bb_crit_edge
    i32 4, label %if.end27.sw.bb_crit_edge259
    i32 2, label %sw.epilog.thread
    i32 8, label %sw.bb32
  ]

if.end27.sw.bb_crit_edge259:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end27.sw.bb_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end27.sw.bb_crit_edge, %if.end27.sw.bb_crit_edge259, %if.end27.thread
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %31, align 4
  %scb2.i = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 2
  %39 = ptrtoint ptr %scb2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %scb2.i, align 4
  %41 = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4
  %device_control_reg_update.i = getelementptr inbounds %struct.sas_ata_task, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %device_control_reg_update.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %device_control_reg_update.i, align 1
  %43 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.else.i171, label %if.then.i, !prof !35

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %opcode.i = getelementptr inbounds %struct.scb_header, ptr %40, i32 0, i32 2
  %44 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 11, ptr %opcode.i, align 1
  br label %if.end11.i

if.else.i171:                                     ; preds = %sw.bb
  %45 = getelementptr inbounds %struct.domain_device, ptr %38, i32 0, i32 19
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp.i = icmp eq i32 %47, 3
  %opcode7.i = getelementptr inbounds %struct.scb_header, ptr %40, i32 0, i32 2
  br i1 %cmp.i, label %if.then5.i, label %if.else8.i

if.then5.i:                                       ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %opcode7.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 10, ptr %opcode7.i, align 1
  br label %if.end11.i

if.else8.i:                                       ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %opcode7.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 9, ptr %opcode7.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else8.i, %if.then5.i, %if.then.i
  %50 = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 32, ptr %50, align 1
  %port.i = getelementptr inbounds %struct.domain_device, ptr %38, i32 0, i32 8
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port.i, align 4
  %oob_mode.i = getelementptr inbounds %struct.asd_sas_port, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %oob_mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %oob_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp12.i = icmp eq i32 %55, 2
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.if.end16.i_crit_edge

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %linkrate.i = getelementptr inbounds %struct.domain_device, ptr %38, i32 0, i32 2
  %56 = ptrtoint ptr %linkrate.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %linkrate.i, align 16
  %58 = trunc i32 %57 to i8
  %conv15.i = or i8 %58, 32
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv15.i, ptr %50, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end16.i_crit_edge
  %total_xfer_len.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 7
  %60 = ptrtoint ptr %total_xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %total_xfer_len.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #5
  %total_xfer_len17.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %total_xfer_len17.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %total_xfer_len17.i, align 1
  %fis.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 2
  %64 = call ptr @memcpy(ptr %fis.i, ptr %41, i32 20)
  %65 = ptrtoint ptr %device_control_reg_update.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load20.i = load i8, ptr %device_control_reg_update.i, align 1
  %66 = and i8 %bf.load20.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool23.not.i = icmp eq i8 %66, 0
  br i1 %tobool23.not.i, label %if.then32.i, label %if.end16.i.if.end38.i_crit_edge, !prof !35

if.end16.i.if.end38.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then32.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags34.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags34.i, align 1
  %69 = or i8 %68, -128
  store i8 %69, ptr %flags34.i, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then32.i, %if.end16.i.if.end38.i_crit_edge
  %flags40.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flags40.i, align 1
  %72 = and i8 %71, -16
  store i8 %72, ptr %flags40.i, align 1
  %73 = getelementptr inbounds %struct.domain_device, ptr %38, i32 0, i32 19
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp44.i = icmp eq i32 %75, 3
  br i1 %cmp44.i, label %if.then46.i, label %if.end38.i.if.end49.i_crit_edge

if.end38.i.if.end49.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %atapi_packet.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 3
  %atapi_packet47.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 1
  %76 = call ptr @memcpy(ptr %atapi_packet.i, ptr %atapi_packet47.i, i32 16)
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end38.i.if.end49.i_crit_edge
  %sister_scb.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 4
  %77 = ptrtoint ptr %sister_scb.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 -1, ptr %sister_scb.i, align 1
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %38, i32 0, i32 20
  %78 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lldd_dev.i, align 128
  %80 = ptrtoint ptr %79 to i32
  %conv50.i = trunc i32 %80 to i16
  %81 = call i16 @llvm.bswap.i16(i16 %conv50.i) #5
  %conn_handle.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 5
  %82 = ptrtoint ptr %conn_handle.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %conn_handle.i, align 1
  %83 = ptrtoint ptr %device_control_reg_update.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load52.i = load i8, ptr %device_control_reg_update.i, align 1
  %84 = and i8 %bf.load52.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool55.not.i = icmp eq i8 %84, 0
  br i1 %tobool55.not.i, label %if.then64.i, label %if.end49.i.if.end112.i_crit_edge, !prof !35

if.end49.i.if.end112.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112.i

if.then64.i:                                      ; preds = %if.end49.i
  %85 = lshr i8 %bf.load52.i, 3
  %86 = and i8 %85, 16
  %87 = and i8 %bf.load52.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool77.not.i = icmp eq i8 %87, 0
  br i1 %tobool77.not.i, label %if.then64.i.if.end85.i_crit_edge, label %land.lhs.true.i

if.then64.i.if.end85.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85.i

land.lhs.true.i:                                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %73, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp79.not.i = icmp eq i32 %89, 3
  %90 = or i8 %86, 8
  %spec.select171.i = select i1 %cmp79.not.i, i8 %86, i8 %90
  br label %if.end85.i

if.end85.i:                                       ; preds = %land.lhs.true.i, %if.then64.i.if.end85.i_crit_edge
  %flags.1.i = phi i8 [ %86, %if.then64.i.if.end85.i_crit_edge ], [ %spec.select171.i, %land.lhs.true.i ]
  %data_dir.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 8
  %91 = ptrtoint ptr %data_dir.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load86.i = load i8, ptr %data_dir.i, align 4
  %bf.lshr87.i = lshr i8 %bf.load86.i, 6
  %idxprom.i = zext i8 %bf.lshr87.i to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @data_dir_flags, i32 0, i32 %idxprom.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i, align 1
  %or90170.i = or i8 %93, %flags.1.i
  %ata_flags.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 6
  %94 = ptrtoint ptr %ata_flags.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %or90170.i, ptr %ata_flags.i, align 1
  %retry_count.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 1, i32 4
  %95 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %retry_count.i, align 4
  %retry_count92.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 8
  %97 = ptrtoint ptr %retry_count92.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %retry_count92.i, align 1
  %98 = ptrtoint ptr %device_control_reg_update.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load93.i = load i8, ptr %device_control_reg_update.i, align 1
  %99 = lshr i8 %bf.load93.i, 1
  %100 = and i8 %99, 16
  %101 = shl i8 %bf.load93.i, 1
  %102 = and i8 %101, 32
  %103 = or i8 %102, %100
  %flags111.i = getelementptr inbounds %struct.scb, ptr %40, i32 0, i32 1, i32 0, i32 9, i32 1
  %104 = ptrtoint ptr %flags111.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %flags111.i, align 1
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.end85.i, %if.end49.i.if.end112.i_crit_edge
  %tasklet_complete.i = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 5
  %105 = ptrtoint ptr %tasklet_complete.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @asd_task_tasklet_complete, ptr %tasklet_complete.i, align 4
  %106 = ptrtoint ptr %device_control_reg_update.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load114.i = load i8, ptr %device_control_reg_update.i, align 1
  %107 = and i8 %bf.load114.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool117.not.i = icmp eq i8 %107, 0
  br i1 %tobool117.not.i, label %if.end112.i.sw.epilog_crit_edge, label %sw.epilog.thread240, !prof !35

if.end112.i.sw.epilog_crit_edge:                  ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.thread240:                              ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %res, align 4
  br label %do.body41

sw.epilog.thread:                                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 1
  %109 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ha.i, align 4
  %111 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %31, align 4
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %110, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4
  %call.i174 = call i32 @dma_map_sg_attrs(ptr noundef %dev2.i, ptr noundef %115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %110, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %smp_resp.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 1
  %call5.i = call i32 @dma_map_sg_attrs(ptr noundef %dev4.i, ptr noundef %smp_resp.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %scb6.i = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 2
  %118 = ptrtoint ptr %scb6.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %scb6.i, align 4
  %opcode.i175 = getelementptr inbounds %struct.scb_header, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %opcode.i175 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 12, ptr %opcode.i175, align 1
  %linkrate.i176 = getelementptr inbounds %struct.domain_device, ptr %112, i32 0, i32 2
  %121 = ptrtoint ptr %linkrate.i176 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %linkrate.i176, align 16
  %conv.i = trunc i32 %122 to i8
  %123 = getelementptr inbounds %struct.scb, ptr %119, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv.i, ptr %123, align 1
  %dma_address.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 0, i32 3
  %125 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_address.i, align 4
  %conv8.i = zext i32 %126 to i64
  %127 = call i64 @llvm.bswap.i64(i64 %conv8.i) #5
  %smp_req9.i = getelementptr inbounds %struct.scb, ptr %119, i32 0, i32 1, i32 0, i32 3, i32 5
  %128 = ptrtoint ptr %smp_req9.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 8)
  store i64 %127, ptr %smp_req9.i, align 1
  %dma_length.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 0, i32 4
  %129 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_length.i, align 4
  %sub.i177 = add i32 %130, -4
  %131 = call i32 @llvm.bswap.i32(i32 %sub.i177) #5
  %size.i = getelementptr inbounds %struct.scb, ptr %119, i32 0, i32 1, i32 0, i32 3, i32 5, i32 8
  %132 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 %131, ptr %size.i, align 1
  %dma_address13.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 1, i32 3
  %133 = ptrtoint ptr %dma_address13.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma_address13.i, align 4
  %conv14.i = zext i32 %134 to i64
  %135 = call i64 @llvm.bswap.i64(i64 %conv14.i) #5
  %smp_resp15.i = getelementptr inbounds %struct.scb, ptr %119, i32 0, i32 1, i32 0, i32 10
  %136 = ptrtoint ptr %smp_resp15.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 8)
  store i64 %135, ptr %smp_resp15.i, align 1
  %dma_length18.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 1, i32 4
  %137 = ptrtoint ptr %dma_length18.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dma_length18.i, align 4
  %sub19.i = add i32 %138, -4
  %139 = call i32 @llvm.bswap.i32(i32 %sub19.i) #5
  %size21.i = getelementptr inbounds %struct.scb, ptr %119, i32 0, i32 1, i32 0, i32 10, i32 0, i32 1
  %140 = ptrtoint ptr %size21.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 %139, ptr %size21.i, align 1
  %sister_scb.i178 = getelementptr inbounds %struct.scb, ptr %119, i32 0, i32 1, i32 0, i32 4
  %141 = ptrtoint ptr %sister_scb.i178 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 -1, ptr %sister_scb.i178, align 1
  %lldd_dev.i179 = getelementptr inbounds %struct.domain_device, ptr %112, i32 0, i32 20
  %142 = ptrtoint ptr %lldd_dev.i179 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %lldd_dev.i179, align 128
  %144 = ptrtoint ptr %143 to i32
  %conv22.i = trunc i32 %144 to i16
  %145 = call i16 @llvm.bswap.i16(i16 %conv22.i) #5
  %conn_handle.i180 = getelementptr inbounds %struct.scb, ptr %119, i32 0, i32 1, i32 0, i32 5
  %146 = ptrtoint ptr %conn_handle.i180 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 %145, ptr %conn_handle.i180, align 1
  %tasklet_complete.i181 = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 5
  %147 = ptrtoint ptr %tasklet_complete.i181 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @asd_task_tasklet_complete, ptr %tasklet_complete.i181, align 4
  %148 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %res, align 4
  br label %do.body41

sw.bb32:                                          ; preds = %if.end27
  %149 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %31, align 4
  %scb2.i182 = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 2
  %151 = ptrtoint ptr %scb2.i182 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %scb2.i182, align 4
  %opcode.i183 = getelementptr inbounds %struct.scb_header, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %opcode.i183 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %opcode.i183, align 1
  %154 = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 16, ptr %154, align 1
  %linkrate.i184 = getelementptr inbounds %struct.domain_device, ptr %150, i32 0, i32 2
  %156 = ptrtoint ptr %linkrate.i184 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %linkrate.i184, align 16
  %158 = trunc i32 %157 to i8
  %conv4.i = or i8 %158, 16
  store i8 %conv4.i, ptr %154, align 1
  %total_xfer_len.i185 = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 7
  %159 = ptrtoint ptr %total_xfer_len.i185 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %total_xfer_len.i185, align 4
  %161 = call i32 @llvm.bswap.i32(i32 %160) #5
  %total_xfer_len5.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 1
  %162 = ptrtoint ptr %total_xfer_len5.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %total_xfer_len5.i, align 1
  %ssp_frame.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 2
  %163 = ptrtoint ptr %ssp_frame.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %ssp_frame.i, align 1
  %hashed_dest_addr.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 2, i32 1
  %hashed_sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %150, i32 0, i32 16
  %164 = call ptr @memcpy(ptr %hashed_dest_addr.i, ptr %hashed_sas_addr.i, i32 3)
  %hashed_src_addr.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 2, i32 3
  %port.i186 = getelementptr inbounds %struct.domain_device, ptr %150, i32 0, i32 8
  %165 = ptrtoint ptr %port.i186 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %port.i186, align 4
  %ha.i187 = getelementptr inbounds %struct.asd_sas_port, ptr %166, i32 0, i32 21
  %167 = ptrtoint ptr %ha.i187 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ha.i187, align 4
  %hashed_sas_addr10.i = getelementptr inbounds %struct.sas_ha_struct, ptr %168, i32 0, i32 15
  %169 = call ptr @memcpy(ptr %hashed_src_addr.i, ptr %hashed_sas_addr10.i, i32 3)
  %tptt.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 2, i32 8
  %170 = ptrtoint ptr %tptt.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 2)
  store i16 -1, ptr %tptt.i, align 1
  %ssp_cmd.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 3
  %171 = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4
  %LUN.i = getelementptr inbounds %struct.sas_ssp_task, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %LUN.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 8)
  %173 = load i64, ptr %LUN.i, align 1
  %174 = ptrtoint ptr %ssp_cmd.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 8)
  store i64 %173, ptr %ssp_cmd.i, align 1
  %enable_first_burst.i = getelementptr inbounds %struct.sas_ssp_task, ptr %171, i32 0, i32 2
  %175 = ptrtoint ptr %enable_first_burst.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %bf.load.i188 = load i8, ptr %enable_first_burst.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i188)
  %tobool.not.i189 = icmp sgt i8 %bf.load.i188, -1
  br i1 %tobool.not.i189, label %sw.bb32.asd_build_ssp_ascb.exit_crit_edge, label %if.then.i190

sw.bb32.asd_build_ssp_ascb.exit_crit_edge:        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_build_ssp_ascb.exit

if.then.i190:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %176 = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 3, i32 2
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %176, align 1
  %179 = or i8 %178, -128
  store i8 %179, ptr %176, align 1
  br label %asd_build_ssp_ascb.exit

asd_build_ssp_ascb.exit:                          ; preds = %if.then.i190, %sw.bb32.asd_build_ssp_ascb.exit_crit_edge
  %task_prio.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 0, i32 4
  %180 = ptrtoint ptr %task_prio.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %task_prio.i, align 4
  %shl.i = shl i8 %181, 3
  %182 = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 3, i32 2
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %182, align 1
  %or22.i = or i8 %shl.i, %184
  store i8 %or22.i, ptr %182, align 1
  %task_attr.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 0, i32 3
  %185 = ptrtoint ptr %task_attr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %task_attr.i, align 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 7
  %conv27.i = or i8 %188, %or22.i
  store i8 %conv27.i, ptr %182, align 1
  %cdb.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 3, i32 5
  %cmd.i = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 4, i32 0, i32 1
  %189 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cmd.i, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %190, i32 0, i32 16
  %191 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cmnd.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %190, i32 0, i32 14
  %193 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %cmd_len.i, align 4
  %conv31.i = zext i16 %194 to i32
  %195 = call ptr @memcpy(ptr %cdb.i, ptr %192, i32 %conv31.i)
  %sister_scb.i191 = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 4
  %196 = ptrtoint ptr %sister_scb.i191 to i32
  call void @__asan_storeN_noabort(i32 %196, i32 2)
  store i16 -1, ptr %sister_scb.i191, align 1
  %lldd_dev.i192 = getelementptr inbounds %struct.domain_device, ptr %150, i32 0, i32 20
  %197 = ptrtoint ptr %lldd_dev.i192 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %lldd_dev.i192, align 128
  %199 = ptrtoint ptr %198 to i32
  %conv32.i = trunc i32 %199 to i16
  %200 = call i16 @llvm.bswap.i16(i16 %conv32.i) #5
  %conn_handle.i193 = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 5
  %201 = ptrtoint ptr %conn_handle.i193 to i32
  call void @__asan_storeN_noabort(i32 %201, i32 2)
  store i16 %200, ptr %conn_handle.i193, align 1
  %data_dir.i194 = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 8
  %202 = ptrtoint ptr %data_dir.i194 to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load33.i = load i8, ptr %data_dir.i194, align 4
  %bf.lshr34.i = lshr i8 %bf.load33.i, 6
  %idxprom.i195 = zext i8 %bf.lshr34.i to i32
  %arrayidx.i196 = getelementptr [4 x i8], ptr @data_dir_flags, i32 0, i32 %idxprom.i195
  %203 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i196, align 1
  %data_dir35.i = getelementptr inbounds %struct.scb, ptr %152, i32 0, i32 1, i32 0, i32 6
  %205 = ptrtoint ptr %data_dir35.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %data_dir35.i, align 1
  %tasklet_complete.i197 = getelementptr inbounds %struct.asd_ascb, ptr %a.0230, i32 0, i32 5
  %206 = ptrtoint ptr %tasklet_complete.i197 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @asd_task_tasklet_complete, ptr %tasklet_complete.i197, align 4
  br label %sw.epilog

sw.epilog.thread223:                              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %34) #8
  %207 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -12, ptr %res, align 4
  br label %out_err_unmap

sw.epilog:                                        ; preds = %asd_build_ssp_ascb.exit, %if.end112.i.sw.epilog_crit_edge
  %.sink = phi ptr [ %152, %asd_build_ssp_ascb.exit ], [ %40, %if.end112.i.sw.epilog_crit_edge ]
  %sg_element.i = getelementptr inbounds %struct.scb, ptr %.sink, i32 0, i32 1, i32 0, i32 10
  %call.i172 = call fastcc i32 @asd_map_scatterlist(ptr noundef %31, ptr noundef %sg_element.i, i32 noundef %gfp_flags) #5
  %208 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %call.i172, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool37.not = icmp eq i32 %call.i172, 0
  br i1 %tobool37.not, label %sw.epilog.do.body41_crit_edge, label %sw.epilog.out_err_unmap_crit_edge

sw.epilog.out_err_unmap_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err_unmap

sw.epilog.do.body41_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

do.body41:                                        ; preds = %sw.epilog.do.body41_crit_edge, %sw.epilog.thread, %sw.epilog.thread240
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 1
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #5
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %31, i32 0, i32 2
  %209 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %task_state_flags, align 4
  %or = or i32 %210, 16
  store i32 %or, ptr %task_state_flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call45) #5
  %211 = ptrtoint ptr %a.0230 to i32
  call void @__asan_load4_noabort(i32 %211)
  %a.0 = load ptr, ptr %a.0230, align 4
  %cmp20.not = icmp eq ptr %a.0, %alist
  br i1 %cmp20.not, label %do.body41.for.end57_crit_edge, label %do.body41.for.body22_crit_edge

do.body41.for.body22_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

do.body41.for.end57_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end57

for.end57:                                        ; preds = %do.body41.for.end57_crit_edge, %for.end.for.end57_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %alist) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.end57.list_del_init.exit_crit_edge

for.end57.list_del_init.exit_crit_edge:           ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #7
  %212 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %1, align 4
  %214 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %alist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %213, ptr %prev1.i.i.i, align 4
  %217 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile ptr %215, ptr %213, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.end57.list_del_init.exit_crit_edge
  %218 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %alist, ptr %alist, align 4
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %alist, ptr %1, align 4
  %call58 = call i32 @asd_post_ascb_list(ptr noundef %11, ptr noundef %call1, i32 noundef 1) #5
  %220 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %call58, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %list_del_init.exit.cleanup_crit_edge, label %if.then63, !prof !35

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63:                                        ; preds = %list_del_init.exit
  %221 = ptrtoint ptr %prev5 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %prev5, align 4
  %call.i201 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %alist, ptr noundef %222, ptr noundef %call1) #5
  br i1 %call.i201, label %if.end.i204, label %if.then63.out_err_unmap_crit_edge

if.then63.out_err_unmap_crit_edge:                ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err_unmap

if.end.i204:                                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %223 = ptrtoint ptr %prev5 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %alist, ptr %prev5, align 4
  %224 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call1, ptr %alist, align 4
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %222, ptr %1, align 4
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile ptr %alist, ptr %222, align 4
  br label %out_err_unmap

out_err_unmap:                                    ; preds = %if.end.i204, %if.then63.out_err_unmap_crit_edge, %sw.epilog.out_err_unmap_crit_edge, %sw.epilog.thread223
  %a.1 = phi ptr [ %a.0230, %sw.epilog.thread223 ], [ null, %if.then63.out_err_unmap_crit_edge ], [ null, %if.end.i204 ], [ %a.0230, %sw.epilog.out_err_unmap_crit_edge ]
  %227 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %227)
  %a.2231 = load ptr, ptr %alist, align 4
  %cmp74.not232 = icmp eq ptr %a.2231, %alist
  %cmp79233 = icmp eq ptr %a.2231, %a.1
  %or.cond234 = select i1 %cmp74.not232, i1 true, i1 %cmp79233
  br i1 %or.cond234, label %out_err_unmap.for.end114_crit_edge, label %out_err_unmap.if.end82_crit_edge

out_err_unmap.if.end82_crit_edge:                 ; preds = %out_err_unmap
  br label %if.end82

out_err_unmap.for.end114_crit_edge:               ; preds = %out_err_unmap
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end114

if.end82:                                         ; preds = %sw.epilog106.if.end82_crit_edge, %out_err_unmap.if.end82_crit_edge
  %a.2235 = phi ptr [ %a.2, %sw.epilog106.if.end82_crit_edge ], [ %a.2231, %out_err_unmap.if.end82_crit_edge ]
  %uldd_task83 = getelementptr inbounds %struct.asd_ascb, ptr %a.2235, i32 0, i32 13
  %228 = ptrtoint ptr %uldd_task83 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %uldd_task83, align 4
  %task_state_lock91 = getelementptr inbounds %struct.sas_task, ptr %229, i32 0, i32 1
  %call93 = call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock91) #5
  %task_state_flags98 = getelementptr inbounds %struct.sas_task, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %task_state_flags98 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %task_state_flags98, align 4
  %and99 = and i32 %231, -17
  store i32 %and99, ptr %task_state_flags98, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock91, i32 noundef %call93) #5
  %task_proto101 = getelementptr inbounds %struct.sas_task, ptr %229, i32 0, i32 3
  %232 = ptrtoint ptr %task_proto101 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %task_proto101, align 4
  %234 = zext i32 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %233, label %if.end82.sw.epilog106_crit_edge [
    i32 1, label %if.end82.sw.bb102_crit_edge
    i32 4, label %if.end82.sw.bb102_crit_edge260
    i32 2, label %sw.bb103
    i32 8, label %sw.bb104
  ]

if.end82.sw.bb102_crit_edge260:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102

if.end82.sw.bb102_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102

if.end82.sw.epilog106_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog106

sw.bb102:                                         ; preds = %if.end82.sw.bb102_crit_edge, %if.end82.sw.bb102_crit_edge260
  call fastcc void @asd_unmap_scatterlist(ptr noundef %a.2235) #5
  br label %sw.epilog106

sw.bb103:                                         ; preds = %if.end82
  %235 = ptrtoint ptr %uldd_task83 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %uldd_task83, align 4
  %tobool.not.i206 = icmp eq ptr %236, null
  br i1 %tobool.not.i206, label %do.body4.i, label %asd_unbuild_smp_ascb.exit, !prof !36

do.body4.i:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_task.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 455, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

asd_unbuild_smp_ascb.exit:                        ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #7
  %ha.i207 = getelementptr inbounds %struct.asd_ascb, ptr %a.2235, i32 0, i32 1
  %237 = ptrtoint ptr %ha.i207 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ha.i207, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %240, i32 0, i32 44
  %241 = getelementptr inbounds %struct.sas_task, ptr %236, i32 0, i32 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %241, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %242 = ptrtoint ptr %ha.i207 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ha.i207, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %245, i32 0, i32 44
  %smp_resp.i208 = getelementptr inbounds %struct.sas_task, ptr %236, i32 0, i32 4, i32 0, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %dev12.i, ptr noundef %smp_resp.i208, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  br label %sw.epilog106

sw.bb104:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @asd_unmap_scatterlist(ptr noundef %a.2235) #5
  br label %sw.epilog106

sw.epilog106:                                     ; preds = %sw.bb104, %asd_unbuild_smp_ascb.exit, %sw.bb102, %if.end82.sw.epilog106_crit_edge
  %lldd_task107 = getelementptr inbounds %struct.sas_task, ptr %229, i32 0, i32 11
  %246 = ptrtoint ptr %lldd_task107 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr null, ptr %lldd_task107, align 4
  %247 = ptrtoint ptr %a.2235 to i32
  call void @__asan_load4_noabort(i32 %247)
  %a.2 = load ptr, ptr %a.2235, align 4
  %cmp74.not = icmp eq ptr %a.2, %alist
  %cmp79 = icmp eq ptr %a.2, %a.1
  %or.cond = select i1 %cmp74.not, i1 true, i1 %cmp79
  br i1 %or.cond, label %sw.epilog106.for.end114_crit_edge, label %sw.epilog106.if.end82_crit_edge

sw.epilog106.if.end82_crit_edge:                  ; preds = %sw.epilog106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

sw.epilog106.for.end114_crit_edge:                ; preds = %sw.epilog106
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end114

for.end114:                                       ; preds = %sw.epilog106.for.end114_crit_edge, %out_err_unmap.for.end114_crit_edge
  %call.i.i209 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %alist) #5
  br i1 %call.i.i209, label %if.end.i.i212, label %for.end114.list_del_init.exit214_crit_edge

for.end114.list_del_init.exit214_crit_edge:       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit214

if.end.i.i212:                                    ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #7
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %250 = ptrtoint ptr %alist to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %alist, align 4
  %prev1.i.i.i211 = getelementptr inbounds %struct.list_head, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %prev1.i.i.i211 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %249, ptr %prev1.i.i.i211, align 4
  %253 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile ptr %251, ptr %249, align 4
  br label %list_del_init.exit214

list_del_init.exit214:                            ; preds = %if.end.i.i212, %for.end114.list_del_init.exit214_crit_edge
  %254 = ptrtoint ptr %alist to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile ptr %alist, ptr %alist, align 4
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %alist, ptr %1, align 4
  br label %out_err

out_err:                                          ; preds = %list_del_init.exit214, %if.then3
  %tobool115.not = icmp eq ptr %call1, null
  br i1 %tobool115.not, label %out_err.if.end117_crit_edge, label %if.then116

out_err.if.end117_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then116:                                       ; preds = %out_err
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #5
  %256 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %257 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %list.i, ptr %list.i, align 4
  %258 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %list.i, ptr %256, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %259 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %prev2.i, align 4
  %call.i.i215 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %list.i, ptr noundef %260, ptr noundef nonnull %call1) #5
  br i1 %call.i.i215, label %if.end.i.i216, label %if.then116.__list_add.exit.i_crit_edge

if.then116.__list_add.exit.i_crit_edge:           ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_add.exit.i

if.end.i.i216:                                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %261 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %list.i, ptr %prev2.i, align 4
  %262 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call1, ptr %list.i, align 4
  %263 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %260, ptr %256, align 4
  %264 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %list.i, ptr %260, align 4
  br label %__list_add.exit.i

__list_add.exit.i:                                ; preds = %if.end.i.i216, %if.then116.__list_add.exit.i_crit_edge
  %265 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %list.i, align 4
  %cmp.i.not13.i = icmp eq ptr %266, %list.i
  br i1 %cmp.i.not13.i, label %__list_add.exit.i.asd_ascb_free_list.exit_crit_edge, label %__list_add.exit.i.for.body.i_crit_edge

__list_add.exit.i.for.body.i_crit_edge:           ; preds = %__list_add.exit.i
  br label %for.body.i

__list_add.exit.i.asd_ascb_free_list.exit_crit_edge: ; preds = %__list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_ascb_free_list.exit

for.body.i:                                       ; preds = %asd_ascb_free.exit.i.for.body.i_crit_edge, %__list_add.exit.i.for.body.i_crit_edge
  %pos.014.i = phi ptr [ %n.015.i, %asd_ascb_free.exit.i.for.body.i_crit_edge ], [ %266, %__list_add.exit.i.for.body.i_crit_edge ]
  %267 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %n.015.i = load ptr, ptr %pos.014.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.014.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.014.i, i32 0, i32 1
  %268 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %prev.i.i.i, align 4
  %270 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pos.014.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %269, ptr %prev1.i.i.i.i, align 4
  %273 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %273)
  store volatile ptr %271, ptr %269, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %274 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store volatile ptr %pos.014.i, ptr %pos.014.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pos.014.i, i32 0, i32 1
  %275 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %pos.014.i, ptr %prev.i3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %pos.014.i, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge, label %if.then.i.i

list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_ascb_free.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  %ha.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 1
  %276 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ha.i.i, align 4
  %278 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load volatile ptr, ptr %pos.014.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %279, %pos.014.i
  br i1 %cmp.i.not.i.i, label %do.body13.i.i, label %do.body6.i.i, !prof !35

do.body6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

do.body13.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %277, i32 0, i32 13, i32 6
  %call16.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i.i) #5
  %280 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %ha.i.i, align 4
  %tc_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 12
  %282 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %tc_index.i.i, align 4
  %tc_index_array.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %281, i32 0, i32 13, i32 7
  %284 = ptrtoint ptr %tc_index_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %tc_index_array.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %285, i32 %283
  %286 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %tc_index_bitmap.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %281, i32 0, i32 13, i32 8
  %287 = ptrtoint ptr %tc_index_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %tc_index_bitmap.i.i.i, align 4
  call void @_clear_bit(i32 noundef %283, ptr noundef %288) #5
  %289 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ha.i.i, align 4
  %tc_index_lock25.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %290, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i.i, i32 noundef %call16.i.i) #5
  %scb_pool.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %277, i32 0, i32 12
  %291 = ptrtoint ptr %scb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %scb_pool.i.i, align 4
  %dma_scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 3
  %293 = ptrtoint ptr %dma_scb.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dma_scb.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 3, i32 1
  %295 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %dma_handle.i.i, align 4
  call void @dma_pool_free(ptr noundef %292, ptr noundef %294, i32 noundef %296) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %297 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %297, ptr noundef nonnull %pos.014.i) #5
  br label %asd_ascb_free.exit.i

asd_ascb_free.exit.i:                             ; preds = %do.body13.i.i, %list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.015.i, %list.i
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit.i.asd_ascb_free_list.exit_crit_edge, label %asd_ascb_free.exit.i.for.body.i_crit_edge

asd_ascb_free.exit.i.for.body.i_crit_edge:        ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

asd_ascb_free.exit.i.asd_ascb_free_list.exit_crit_edge: ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_ascb_free_list.exit

asd_ascb_free_list.exit:                          ; preds = %asd_ascb_free.exit.i.asd_ascb_free_list.exit_crit_edge, %__list_add.exit.i.asd_ascb_free_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #5
  br label %if.end117

if.end117:                                        ; preds = %asd_ascb_free_list.exit, %out_err.if.end117_crit_edge
  %call2.i218 = call i32 @_raw_spin_lock_irqsave(ptr noundef %seq.i) #5
  %298 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %can_queue.i, align 4
  %add.i = add i32 %299, 1
  store i32 %add.i, ptr %can_queue.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %seq.i, i32 noundef %call2.i218) #5
  %300 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %list_del_init.exit.cleanup_crit_edge, %asd_can_queue.exit
  %retval.0 = phi i32 [ %301, %if.end117 ], [ -132, %asd_can_queue.exit ], [ 0, %list_del_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alist) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asd_ascb_alloc_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_post_ascb_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_task_tasklet_complete(ptr noundef %ascb, ptr nocapture noundef readonly %dl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 13
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %task_status = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9
  %opcode1 = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 1
  %2 = ptrtoint ptr %opcode1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opcode1, align 1
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha, align 4
  %seq.i = getelementptr inbounds %struct.asd_ha_struct, ptr %5, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seq.i) #5
  %can_queue.i = getelementptr inbounds %struct.asd_ha_struct, ptr %5, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_queue.i, align 4
  %add.i = add i32 %7, 1
  store i32 %add.i, ptr %can_queue.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seq.i, i32 noundef %call2.i) #5
  %status_block53 = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 2
  br label %Again

Again:                                            ; preds = %sw.bb52, %entry
  %opcode.0 = phi i8 [ %3, %entry ], [ %90, %sw.bb52 ]
  %8 = zext i8 %opcode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %opcode.0, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb5
    i8 7, label %Again.sw.bb9_crit_edge
    i8 12, label %Again.sw.bb9_crit_edge311
    i8 4, label %sw.bb12
    i8 3, label %sw.bb34
    i8 9, label %Again.sw.bb37_crit_edge
    i8 13, label %Again.sw.bb37_crit_edge312
    i8 8, label %sw.bb40
    i8 5, label %Again.sw.bb43_crit_edge
    i8 6, label %Again.sw.bb43_crit_edge313
    i8 16, label %Again.sw.bb43_crit_edge314
    i8 20, label %Again.sw.bb43_crit_edge315
    i8 22, label %Again.sw.bb43_crit_edge316
    i8 28, label %Again.sw.bb43_crit_edge317
    i8 18, label %Again.sw.bb46_crit_edge
    i8 14, label %Again.sw.bb46_crit_edge318
    i8 24, label %Again.sw.bb46_crit_edge319
    i8 21, label %Again.sw.bb46_crit_edge320
    i8 26, label %sw.bb49
    i8 27, label %sw.bb52
    i8 42, label %sw.bb55
    i8 43, label %sw.bb58
    i8 35, label %Again.sw.bb61_crit_edge
    i8 30, label %Again.sw.bb61_crit_edge321
    i8 39, label %Again.sw.bb64_crit_edge
    i8 29, label %Again.sw.bb64_crit_edge322
    i8 31, label %Again.sw.bb64_crit_edge323
    i8 32, label %Again.sw.bb64_crit_edge324
    i8 33, label %Again.sw.bb64_crit_edge325
    i8 34, label %Again.sw.bb64_crit_edge326
    i8 38, label %Again.sw.bb64_crit_edge327
    i8 40, label %Again.sw.bb64_crit_edge328
    i8 41, label %Again.sw.bb64_crit_edge329
  ]

Again.sw.bb64_crit_edge329:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge328:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge327:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge326:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge325:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge324:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge323:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge322:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb64_crit_edge:                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

Again.sw.bb61_crit_edge321:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb61

Again.sw.bb61_crit_edge:                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb61

Again.sw.bb46_crit_edge320:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb46

Again.sw.bb46_crit_edge319:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb46

Again.sw.bb46_crit_edge318:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb46

Again.sw.bb46_crit_edge:                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb46

Again.sw.bb43_crit_edge317:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43

Again.sw.bb43_crit_edge316:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43

Again.sw.bb43_crit_edge315:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43

Again.sw.bb43_crit_edge314:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43

Again.sw.bb43_crit_edge313:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43

Again.sw.bb43_crit_edge:                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43

Again.sw.bb37_crit_edge312:                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

Again.sw.bb37_crit_edge:                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

Again.sw.bb9_crit_edge311:                        ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

Again.sw.bb9_crit_edge:                           ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

sw.bb:                                            ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %task_status, align 4
  %stat = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %stat, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %task_status, align 4
  %stat4 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %stat4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 129, ptr %stat4, align 4
  %13 = ptrtoint ptr %status_block53 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %status_block53, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %residual = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %residual to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %residual, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %task_status, align 4
  %stat7 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %stat7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 130, ptr %stat7, align 4
  %residual8 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 4
  %19 = ptrtoint ptr %residual8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %residual8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %Again.sw.bb9_crit_edge, %Again.sw.bb9_crit_edge311
  %conv.le226 = zext i8 %opcode.0 to i32
  %20 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %task_status, align 4
  %stat11 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %stat11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 137, ptr %stat11, align 4
  %22 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ha, align 4
  %24 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uldd_task, align 4
  %flags1.i = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags1.i, align 1
  %28 = lshr i8 %27, 4
  %29 = and i8 %28, 7
  %30 = zext i8 %29 to i32
  %sub.i = add nsw i32 %30, -1
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %23, i32 0, i32 13, i32 6
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %31 = ptrtoint ptr %status_block53 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %status_block53, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #5
  %conv8.i = zext i16 %33 to i32
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %23, i32 0, i32 13, i32 7
  %34 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %35, i32 %conv8.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock.i, i32 noundef %call4.i) #5
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %do.end14.i, label %if.end.i

do.end14.i:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb9
  %buf_valid_size.i = getelementptr inbounds %struct.sas_task, ptr %25, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %buf_valid_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %buf_valid_size.i, align 4
  %edb_arr.i = getelementptr inbounds %struct.asd_ha_struct, ptr %23, i32 0, i32 13, i32 16
  %39 = ptrtoint ptr %edb_arr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %edb_arr.i, align 4
  %edb_index.i = getelementptr inbounds %struct.asd_ascb, ptr %37, i32 0, i32 11
  %41 = ptrtoint ptr %edb_index.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %edb_index.i, align 4
  %add.i179 = add i32 %42, %sub.i
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %add.i179
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %task_proto.i = getelementptr inbounds %struct.sas_task, ptr %25, i32 0, i32 3
  %47 = ptrtoint ptr %task_proto.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %task_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %48)
  %cmp18.i = icmp eq i32 %48, 8
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr21.i = getelementptr i8, ptr %46, i32 40
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %residual.i = getelementptr inbounds %struct.sas_task, ptr %25, i32 0, i32 9, i32 4
  %52 = ptrtoint ptr %residual.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %residual.i, align 4
  %53 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %23, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void @sas_ssp_task_response(ptr noundef %dev.i, ptr noundef %25, ptr noundef %add.ptr21.i) #5
  br label %if.end28.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %buf.i = getelementptr inbounds %struct.sas_task, ptr %25, i32 0, i32 9, i32 3
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %46, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %residual23.i = getelementptr inbounds %struct.sas_task, ptr %25, i32 0, i32 9, i32 4
  %58 = ptrtoint ptr %residual23.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %residual23.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %46, i32 6
  %59 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr24.i, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #5
  %62 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %buf.i, align 2
  %ending_fis.i = getelementptr inbounds %struct.sas_task, ptr %25, i32 0, i32 9, i32 3, i32 2
  %add.ptr26.i = getelementptr i8, ptr %46, i32 16
  %63 = call ptr @memcpy(ptr %ending_fis.i, ptr %add.ptr26.i, i32 24)
  %64 = ptrtoint ptr %buf_valid_size.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 26, ptr %buf_valid_size.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then20.i
  tail call void @asd_invalidate_edb(ptr noundef nonnull %37, i32 noundef %sub.i) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %Again
  %65 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %task_status, align 4
  %stat14 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %stat14 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 135, ptr %stat14, align 4
  %arrayidx = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %68 to i32
  %and = and i32 %conv16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %70 to i32
  %add = add nuw nsw i32 %conv19, 1
  %open_rej_reason = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 5
  %71 = ptrtoint ptr %open_rej_reason to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add, ptr %open_rej_reason, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  %and23 = and i32 %conv16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else31, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx27 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx27, align 1
  %74 = lshr i8 %73, 4
  %narrow = add nuw nsw i8 %74, 10
  %add29 = zext i8 %narrow to i32
  %open_rej_reason30 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 5
  %75 = ptrtoint ptr %open_rej_reason30 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add29, ptr %open_rej_reason30, align 4
  br label %sw.epilog

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %open_rej_reason32 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 5
  %76 = ptrtoint ptr %open_rej_reason32 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %open_rej_reason32, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %task_status, align 4
  %stat36 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %78 = ptrtoint ptr %stat36 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 136, ptr %stat36, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %Again.sw.bb37_crit_edge, %Again.sw.bb37_crit_edge312
  %conv.le220 = zext i8 %opcode.0 to i32
  %79 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %task_status, align 4
  %stat39 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %80 = ptrtoint ptr %stat39 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 138, ptr %stat39, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %task_status, align 4
  %stat42 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %82 = ptrtoint ptr %stat42 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 138, ptr %stat42, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %Again.sw.bb43_crit_edge, %Again.sw.bb43_crit_edge313, %Again.sw.bb43_crit_edge314, %Again.sw.bb43_crit_edge315, %Again.sw.bb43_crit_edge316, %Again.sw.bb43_crit_edge317
  %conv.le216 = zext i8 %opcode.0 to i32
  %83 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %task_status, align 4
  %stat45 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %84 = ptrtoint ptr %stat45 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 131, ptr %stat45, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %Again.sw.bb46_crit_edge, %Again.sw.bb46_crit_edge318, %Again.sw.bb46_crit_edge319, %Again.sw.bb46_crit_edge320
  %conv.le214 = zext i8 %opcode.0 to i32
  %85 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %task_status, align 4
  %stat48 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %stat48 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 128, ptr %stat48, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %task_status, align 4
  %stat51 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %88 = ptrtoint ptr %stat51 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 139, ptr %stat51, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %status_block53 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %status_block53, align 1
  br label %Again

sw.bb55:                                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %task_status, align 4
  %stat57 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %92 = ptrtoint ptr %stat57 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 133, ptr %stat57, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %task_status, align 4
  %stat60 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %94 = ptrtoint ptr %stat60 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 140, ptr %stat60, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %Again.sw.bb61_crit_edge, %Again.sw.bb61_crit_edge321
  %conv.le206 = zext i8 %opcode.0 to i32
  %95 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %task_status, align 4
  %stat63 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %96 = ptrtoint ptr %stat63 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 141, ptr %stat63, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %Again.sw.bb64_crit_edge, %Again.sw.bb64_crit_edge322, %Again.sw.bb64_crit_edge323, %Again.sw.bb64_crit_edge324, %Again.sw.bb64_crit_edge325, %Again.sw.bb64_crit_edge326, %Again.sw.bb64_crit_edge327, %Again.sw.bb64_crit_edge328, %Again.sw.bb64_crit_edge329
  %conv.le = zext i8 %opcode.0 to i32
  %97 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %task_status, align 4
  %stat66 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %98 = ptrtoint ptr %stat66 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 128, ptr %stat66, align 4
  br label %sw.epilog

do.end:                                           ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #7
  %conv.le234 = zext i8 %opcode.0 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv.le234) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb64, %sw.bb61, %sw.bb58, %sw.bb55, %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb34, %if.else31, %if.then25, %if.then, %if.end28.i, %do.end14.i, %sw.bb5, %sw.bb2, %sw.bb
  %conv205 = phi i32 [ %conv.le226, %if.end28.i ], [ %conv.le226, %do.end14.i ], [ 4, %if.then ], [ 4, %if.else31 ], [ 4, %if.then25 ], [ %conv.le234, %do.end ], [ %conv.le, %sw.bb64 ], [ %conv.le206, %sw.bb61 ], [ 43, %sw.bb58 ], [ 42, %sw.bb55 ], [ 26, %sw.bb49 ], [ %conv.le214, %sw.bb46 ], [ %conv.le216, %sw.bb43 ], [ 8, %sw.bb40 ], [ %conv.le220, %sw.bb37 ], [ 3, %sw.bb34 ], [ 2, %sw.bb5 ], [ 1, %sw.bb2 ], [ 0, %sw.bb ]
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 3
  %99 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %task_proto, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %100, label %sw.epilog.do.body75_crit_edge [
    i32 1, label %sw.epilog.sw.bb69_crit_edge
    i32 4, label %sw.epilog.sw.bb69_crit_edge330
    i32 2, label %sw.bb70
    i32 8, label %sw.bb71
  ]

sw.epilog.sw.bb69_crit_edge330:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.do.body75_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

sw.bb69:                                          ; preds = %sw.epilog.sw.bb69_crit_edge, %sw.epilog.sw.bb69_crit_edge330
  tail call fastcc void @asd_unmap_scatterlist(ptr noundef %ascb) #5
  br label %do.body75

sw.bb70:                                          ; preds = %sw.epilog
  %102 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %uldd_task, align 4
  %tobool.not.i181 = icmp eq ptr %103, null
  br i1 %tobool.not.i181, label %do.body4.i, label %asd_unbuild_smp_ascb.exit, !prof !36

do.body4.i:                                       ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_task.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 455, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

asd_unbuild_smp_ascb.exit:                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ha, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %dev.i183 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %108 = getelementptr inbounds %struct.sas_task, ptr %103, i32 0, i32 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i183, ptr noundef %108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %109 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ha, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %smp_resp.i = getelementptr inbounds %struct.sas_task, ptr %103, i32 0, i32 4, i32 0, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev12.i, ptr noundef %smp_resp.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  br label %do.body75

sw.bb71:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @asd_unmap_scatterlist(ptr noundef %ascb) #5
  br label %do.body75

do.body75:                                        ; preds = %sw.bb71, %asd_unbuild_smp_ascb.exit, %sw.bb69, %sw.epilog.do.body75_crit_edge
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 1
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #5
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 2
  %113 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %task_state_flags, align 4
  %and86 = and i32 %114, -20
  %or = or i32 %and86, 2
  store i32 %or, ptr %task_state_flags, align 4
  %and89 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else107, label %if.then93, !prof !35

if.then93:                                        ; preds = %do.body75
  %completion94 = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 8
  %115 = ptrtoint ptr %completion94 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %completion94, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call79) #5
  %117 = ptrtoint ptr %task_status to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %task_status, align 4
  %stat102 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %119 = ptrtoint ptr %stat102 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %stat102, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %conv205, i32 noundef %118, i32 noundef %120) #8
  %tobool104.not = icmp eq ptr %116, null
  br i1 %tobool104.not, label %if.then93.if.end112_crit_edge, label %if.then105

if.then93.if.end112_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then105:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %116) #5
  br label %if.end112

if.else107:                                       ; preds = %do.body75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call79) #5
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 11
  %121 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %lldd_task, align 4
  %tobool.not.i184 = icmp eq ptr %ascb, null
  br i1 %tobool.not.i184, label %if.else107.asd_ascb_free.exit_crit_edge, label %if.then.i

if.else107.asd_ascb_free.exit_crit_edge:          ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_ascb_free.exit

if.then.i:                                        ; preds = %if.else107
  %122 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ha, align 4
  %124 = ptrtoint ptr %ascb to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %ascb, align 4
  %cmp.i.not.i = icmp eq ptr %125, %ascb
  br i1 %cmp.i.not.i, label %do.body13.i, label %do.body6.i, !prof !35

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i186 = getelementptr inbounds %struct.asd_ha_struct, ptr %123, i32 0, i32 13, i32 6
  %call16.i187 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i186) #5
  %126 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ha, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 12
  %128 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i188 = getelementptr inbounds %struct.asd_ha_struct, ptr %127, i32 0, i32 13, i32 7
  %130 = ptrtoint ptr %tc_index_array.i.i188 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tc_index_array.i.i188, align 4
  %arrayidx.i.i189 = getelementptr ptr, ptr %131, i32 %129
  %132 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %arrayidx.i.i189, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %127, i32 0, i32 13, i32 8
  %133 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  tail call void @_clear_bit(i32 noundef %129, ptr noundef %134) #5
  %135 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ha, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %136, i32 0, i32 13, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i187) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %123, i32 0, i32 12
  %137 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %139 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %141 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_pool_free(ptr noundef %138, ptr noundef %140, i32 noundef %142) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %143 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %143, ptr noundef nonnull %ascb) #5
  br label %asd_ascb_free.exit

asd_ascb_free.exit:                               ; preds = %do.body13.i, %if.else107.asd_ascb_free.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %task_done = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 10
  %144 = ptrtoint ptr %task_done to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task_done, align 4
  tail call void %145(ptr noundef %1) #5
  br label %if.end112

if.end112:                                        ; preds = %asd_ascb_free.exit, %if.then105, %if.then93.if.end112_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_map_scatterlist(ptr nocapture noundef readonly %task, ptr nocapture noundef %sg_arr, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %0 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_task, align 4
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %data_dir = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %4 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %data_dir, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.lshr)
  %cmp = icmp eq i8 %bf.lshr, 3
  br i1 %cmp, label %entry.cleanup124_crit_edge, label %if.end

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup124

if.end:                                           ; preds = %entry
  %num_scatter = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 6
  %5 = ptrtoint ptr %num_scatter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_scatter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %scatter = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %7 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scatter, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %total_xfer_len = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 7
  %11 = ptrtoint ptr %total_xfer_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_xfer_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then4
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !35

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %8, i32 noundef %12) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %12, i32 noundef %conv, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %conv9 = zext i32 %retval.0.i to i64
  %19 = tail call i64 @llvm.bswap.i64(i64 %conv9)
  %20 = ptrtoint ptr %sg_arr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %sg_arr, align 1
  %21 = ptrtoint ptr %total_xfer_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_xfer_len, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %size = getelementptr inbounds %struct.sg_el, ptr %sg_arr, i32 0, i32 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %size, align 1
  %flags = getelementptr inbounds %struct.sg_el, ptr %sg_arr, i32 0, i32 4
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags, align 1
  %27 = or i8 %26, 64
  store i8 %27, ptr %flags, align 1
  br label %cleanup124

if.end15:                                         ; preds = %if.end
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %28 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %task_proto, align 4
  %30 = and i32 %29, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %.not = icmp eq i32 %30, 0
  br i1 %.not, label %if.end28, label %if.end15.if.end32_crit_edge

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end28:                                         ; preds = %if.end15
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %scatter21 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %33 = ptrtoint ptr %scatter21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %scatter21, align 4
  %call27 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev20, ptr noundef %34, i32 noundef %6, i32 noundef %conv, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp eq i32 %call27, 0
  br i1 %cmp29, label %if.end28.cleanup124_crit_edge, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end28.cleanup124_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup124

if.end32:                                         ; preds = %if.end28.if.end32_crit_edge, %if.end15.if.end32_crit_edge
  %num_sg.0195 = phi i32 [ %call27, %if.end28.if.end32_crit_edge ], [ %6, %if.end15.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_sg.0195)
  %cmp33 = icmp sgt i32 %num_sg.0195, 3
  br i1 %cmp33, label %if.then35, label %if.else86

if.then35:                                        ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %35 = load ptr, ptr @asd_dma_token_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %35, i32 noundef %gfp_flags) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then35.err_unmap_crit_edge, label %if.then.i192

if.then35.err_unmap_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap

if.then.i192:                                     ; preds = %if.then35
  %mul = shl i32 %num_sg.0195, 4
  %size1.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %size1.i, align 8
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %dma_handle.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i, i32 0, i32 1
  %and.i.i = lshr i32 %gfp_flags, 5
  %39 = and i32 %and.i.i, 256
  %call.i16.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul, ptr noundef %dma_handle.i, i32 noundef %gfp_flags, i32 noundef %39) #5
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i16.i, ptr %call.i.i, align 8
  %tobool5.not.i = icmp eq ptr %call.i16.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %for.body.lr.ph

if.then6.i:                                       ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %41 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef nonnull %call.i.i) #5
  br label %err_unmap

for.body.lr.ph:                                   ; preds = %if.then.i192
  %sg_arr37 = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %sg_arr37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %sg_arr37, align 4
  %scatter42 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %43 = ptrtoint ptr %scatter42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %scatter42, align 4
  %sub = add nsw i32 %num_sg.0195, -1
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %for.body.lr.ph
  %i.0208 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end57.for.body_crit_edge ]
  %sc.0207 = phi ptr [ %44, %for.body.lr.ph ], [ %call58, %if.end57.for.body_crit_edge ]
  %45 = ptrtoint ptr %sg_arr37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sg_arr37, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %arrayidx46 = getelementptr %struct.sg_el, ptr %48, i32 %i.0208
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sc.0207, i32 0, i32 3
  %49 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_address, align 4
  %conv47 = zext i32 %50 to i64
  %51 = tail call i64 @llvm.bswap.i64(i64 %conv47)
  %52 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %arrayidx46, align 1
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sc.0207, i32 0, i32 4
  %53 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_length, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %size49 = getelementptr %struct.sg_el, ptr %48, i32 %i.0208, i32 1
  %56 = ptrtoint ptr %size49 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %size49, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0208, i32 %sub)
  %cmp50 = icmp eq i32 %i.0208, %sub
  br i1 %cmp50, label %if.then52, label %for.body.if.end57_crit_edge

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %flags53 = getelementptr %struct.sg_el, ptr %48, i32 %sub, i32 4
  %57 = ptrtoint ptr %flags53 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags53, align 1
  %59 = or i8 %58, 64
  store i8 %59, ptr %flags53, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %for.body.if.end57_crit_edge
  %inc = add nuw nsw i32 %i.0208, 1
  %call58 = tail call ptr @sg_next(ptr noundef %sc.0207) #5
  %exitcond212.not = icmp eq i32 %inc, %num_sg.0195
  br i1 %exitcond212.not, label %for.end, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %scatter42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scatter42, align 4
  %dma_address64 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dma_address64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_address64, align 4
  %conv65 = zext i32 %63 to i64
  %64 = tail call i64 @llvm.bswap.i64(i64 %conv65)
  %65 = ptrtoint ptr %sg_arr to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %sg_arr, align 1
  %dma_length68 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 4
  %66 = ptrtoint ptr %dma_length68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_length68, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %size70 = getelementptr %struct.sg_el, ptr %sg_arr, i32 0, i32 1
  %69 = ptrtoint ptr %size70 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %size70, align 1
  %call73 = tail call ptr @sg_next(ptr noundef %61) #5
  %dma_address64.1 = getelementptr inbounds %struct.scatterlist, ptr %call73, i32 0, i32 3
  %70 = ptrtoint ptr %dma_address64.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_address64.1, align 4
  %conv65.1 = zext i32 %71 to i64
  %72 = tail call i64 @llvm.bswap.i64(i64 %conv65.1)
  %arrayidx66.1 = getelementptr %struct.sg_el, ptr %sg_arr, i32 1
  %73 = ptrtoint ptr %arrayidx66.1 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %arrayidx66.1, align 1
  %dma_length68.1 = getelementptr inbounds %struct.scatterlist, ptr %call73, i32 0, i32 4
  %74 = ptrtoint ptr %dma_length68.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_length68.1, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %size70.1 = getelementptr %struct.sg_el, ptr %sg_arr, i32 1, i32 1
  %77 = ptrtoint ptr %size70.1 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %size70.1, align 1
  %call73.1 = tail call ptr @sg_next(ptr noundef %call73) #5
  %next_sg_offs = getelementptr %struct.sg_el, ptr %sg_arr, i32 1, i32 3
  %78 = ptrtoint ptr %next_sg_offs to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 32, ptr %next_sg_offs, align 1
  %flags77 = getelementptr %struct.sg_el, ptr %sg_arr, i32 1, i32 4
  %79 = ptrtoint ptr %flags77 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags77, align 1
  %81 = or i8 %80, -128
  store i8 %81, ptr %flags77, align 1
  %arrayidx81 = getelementptr %struct.sg_el, ptr %sg_arr, i32 2
  %82 = call ptr @memset(ptr %arrayidx81, i32 0, i32 16)
  %83 = ptrtoint ptr %sg_arr37 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sg_arr37, align 4
  %dma_handle = getelementptr inbounds %struct.asd_dma_tok, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_handle, align 4
  %conv83 = zext i32 %86 to i64
  %87 = tail call i64 @llvm.bswap.i64(i64 %conv83)
  %88 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %arrayidx81, align 1
  br label %cleanup124

if.else86:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sg.0195)
  %cmp90203 = icmp sgt i32 %num_sg.0195, 0
  br i1 %cmp90203, label %for.body92, label %if.else86.for.end103_crit_edge

if.else86.for.end103_crit_edge:                   ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end103

for.body92:                                       ; preds = %if.else86
  %scatter88 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %89 = ptrtoint ptr %scatter88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %scatter88, align 4
  %dma_address93 = getelementptr inbounds %struct.scatterlist, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %dma_address93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_address93, align 4
  %conv94 = zext i32 %92 to i64
  %93 = tail call i64 @llvm.bswap.i64(i64 %conv94)
  %94 = ptrtoint ptr %sg_arr to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 %93, ptr %sg_arr, align 1
  %dma_length97 = getelementptr inbounds %struct.scatterlist, ptr %90, i32 0, i32 4
  %95 = ptrtoint ptr %dma_length97 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_length97, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %size99 = getelementptr %struct.sg_el, ptr %sg_arr, i32 0, i32 1
  %98 = ptrtoint ptr %size99 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %size99, align 1
  %call102 = tail call ptr @sg_next(ptr noundef %90) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_sg.0195)
  %exitcond.not = icmp eq i32 %num_sg.0195, 1
  br i1 %exitcond.not, label %for.body92.for.end103_crit_edge, label %for.body92.1

for.body92.for.end103_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end103

for.body92.1:                                     ; preds = %for.body92
  %dma_address93.1 = getelementptr inbounds %struct.scatterlist, ptr %call102, i32 0, i32 3
  %99 = ptrtoint ptr %dma_address93.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_address93.1, align 4
  %conv94.1 = zext i32 %100 to i64
  %101 = tail call i64 @llvm.bswap.i64(i64 %conv94.1)
  %arrayidx95.1 = getelementptr %struct.sg_el, ptr %sg_arr, i32 1
  %102 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %101, ptr %arrayidx95.1, align 1
  %dma_length97.1 = getelementptr inbounds %struct.scatterlist, ptr %call102, i32 0, i32 4
  %103 = ptrtoint ptr %dma_length97.1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma_length97.1, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %size99.1 = getelementptr %struct.sg_el, ptr %sg_arr, i32 1, i32 1
  %106 = ptrtoint ptr %size99.1 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %size99.1, align 1
  %call102.1 = tail call ptr @sg_next(ptr noundef %call102) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_sg.0195)
  %exitcond.not.1 = icmp eq i32 %num_sg.0195, 2
  br i1 %exitcond.not.1, label %for.body92.1.for.end103_crit_edge, label %for.body92.2

for.body92.1.for.end103_crit_edge:                ; preds = %for.body92.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end103

for.body92.2:                                     ; preds = %for.body92.1
  call void @__sanitizer_cov_trace_pc() #7
  %dma_address93.2 = getelementptr inbounds %struct.scatterlist, ptr %call102.1, i32 0, i32 3
  %107 = ptrtoint ptr %dma_address93.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dma_address93.2, align 4
  %conv94.2 = zext i32 %108 to i64
  %109 = tail call i64 @llvm.bswap.i64(i64 %conv94.2)
  %arrayidx95.2 = getelementptr %struct.sg_el, ptr %sg_arr, i32 2
  %110 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %109, ptr %arrayidx95.2, align 1
  %dma_length97.2 = getelementptr inbounds %struct.scatterlist, ptr %call102.1, i32 0, i32 4
  %111 = ptrtoint ptr %dma_length97.2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_length97.2, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %size99.2 = getelementptr %struct.sg_el, ptr %sg_arr, i32 2, i32 1
  %114 = ptrtoint ptr %size99.2 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %113, ptr %size99.2, align 1
  %call102.2 = tail call ptr @sg_next(ptr noundef %call102.1) #5
  br label %for.end103

for.end103:                                       ; preds = %for.body92.2, %for.body92.1.for.end103_crit_edge, %for.body92.for.end103_crit_edge, %if.else86.for.end103_crit_edge
  %i87.0.lcssa = phi i32 [ 0, %if.else86.for.end103_crit_edge ], [ %num_sg.0195, %for.body92.2 ], [ %num_sg.0195, %for.body92.1.for.end103_crit_edge ], [ %num_sg.0195, %for.body92.for.end103_crit_edge ]
  %sub104 = add nsw i32 %i87.0.lcssa, -1
  %flags106 = getelementptr %struct.sg_el, ptr %sg_arr, i32 %sub104, i32 4
  %115 = ptrtoint ptr %flags106 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %flags106, align 1
  %117 = or i8 %116, 64
  store i8 %117, ptr %flags106, align 1
  br label %cleanup124

err_unmap:                                        ; preds = %if.then6.i, %if.then35.err_unmap_crit_edge
  %sg_arr37197 = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 4
  %118 = ptrtoint ptr %sg_arr37197 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %sg_arr37197, align 4
  %119 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %task_proto, align 4
  %121 = and i32 %120, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %.not202 = icmp eq i32 %121, 0
  br i1 %.not202, label %err_unmap.cleanup124_crit_edge, label %if.then114

err_unmap.cleanup124_crit_edge:                   ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup124

if.then114:                                       ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %3, align 4
  %dev116 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %scatter117 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %124 = ptrtoint ptr %scatter117 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %scatter117, align 4
  %126 = ptrtoint ptr %num_scatter to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_scatter, align 4
  %128 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load120 = load i8, ptr %data_dir, align 4
  %bf.lshr121 = lshr i8 %bf.load120, 6
  %conv122 = zext i8 %bf.lshr121 to i32
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev116, ptr noundef %125, i32 noundef %127, i32 noundef %conv122, i32 noundef 0) #5
  br label %cleanup124

cleanup124:                                       ; preds = %if.then114, %err_unmap.cleanup124_crit_edge, %for.end103, %for.end, %if.end28.cleanup124_crit_edge, %dma_map_single_attrs.exit, %entry.cleanup124_crit_edge
  %retval.0 = phi i32 [ 0, %dma_map_single_attrs.exit ], [ 0, %entry.cleanup124_crit_edge ], [ -12, %if.end28.cleanup124_crit_edge ], [ 0, %for.end103 ], [ -12, %if.then114 ], [ -12, %err_unmap.cleanup124_crit_edge ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_ssp_task_response(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_invalidate_edb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_unmap_scatterlist(ptr nocapture noundef readonly %ascb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 13
  %2 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uldd_task, align 4
  %data_dir = getelementptr inbounds %struct.sas_task, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %data_dir, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.lshr)
  %cmp = icmp eq i8 %bf.lshr, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_scatter = getelementptr inbounds %struct.sas_task, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %num_scatter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_scatter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %scb = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %7 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scb, align 4
  %sg_element = getelementptr inbounds %struct.scb, ptr %8, i32 0, i32 1, i32 0, i32 10
  %9 = ptrtoint ptr %sg_element to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %sg_element, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %conv5 = trunc i64 %11 to i32
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %total_xfer_len = getelementptr inbounds %struct.sas_task, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %total_xfer_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_xfer_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv5, i32 noundef %15, i32 noundef %conv, i32 noundef 0) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %sg_arr = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 4
  %16 = ptrtoint ptr %sg_arr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sg_arr, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end11.asd_free_coherent.exit_crit_edge, label %if.then.i

if.end11.asd_free_coherent.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_free_coherent.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.asd_dma_tok, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_dma_tok, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %26 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef nonnull %17) #5
  br label %asd_free_coherent.exit

asd_free_coherent.exit:                           ; preds = %if.then.i, %if.end11.asd_free_coherent.exit_crit_edge
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %task_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp12.not = icmp eq i32 %28, 4
  br i1 %cmp12.not, label %asd_free_coherent.exit.cleanup_crit_edge, label %if.then14

asd_free_coherent.exit.cleanup_crit_edge:         ; preds = %asd_free_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %asd_free_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %scatter = getelementptr inbounds %struct.sas_task, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scatter, align 4
  %33 = ptrtoint ptr %num_scatter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_scatter, align 4
  %35 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load19 = load i8, ptr %data_dir, align 4
  %bf.lshr20 = lshr i8 %bf.load19, 6
  %conv21 = zext i8 %bf.lshr20 to i32
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev16, ptr noundef %32, i32 noundef %34, i32 noundef %conv21, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %asd_free_coherent.exit.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic94xx/aic94xx_task.c", i32 571, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @asd_execute_task._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @asd_execute_task._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @data_dir_flags, !7, !"data_dir_flags", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic94xx/aic94xx_task.c", i32 29, i32 17}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/aic94xx/aic94xx_task.c", i32 304, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @asd_task_tasklet_complete._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @asd_task_tasklet_complete._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/aic94xx/aic94xx_task.c", i32 330, i32 3}
!15 = !{ptr @asd_task_tasklet_complete._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @asd_task_tasklet_complete._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/aic94xx/aic94xx_task.c", i32 165, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @asd_get_response_tasklet._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @asd_get_response_tasklet._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2155856823, i64 2155857323, i64 2155856860, i64 2155856916, i64 2155856950, i64 2155856974, i64 2155857015, i64 2155857036, i64 2155857064, i64 2155857098}
!38 = !{i64 2155840959, i64 2155841458, i64 2155840996, i64 2155841052, i64 2155841086, i64 2155841110, i64 2155841151, i64 2155841172, i64 2155841200, i64 2155841234}
!39 = !{i64 2155854382}
