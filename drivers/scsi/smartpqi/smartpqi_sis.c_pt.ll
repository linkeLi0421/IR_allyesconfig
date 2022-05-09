; ModuleID = '/llk/IR_all_yes/drivers/scsi/smartpqi/smartpqi_sis.c_pt.bc'
source_filename = "../drivers/scsi/smartpqi/smartpqi_sis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pqi_ctrl_info = type <{ i32, ptr, [32 x i8], [17 x i8], [17 x i8], [9 x i8], i8, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i8], i32, i32, ptr, i32, i32, i32, i16, i16, i16, i16, i16, [2 x i8], i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.pqi_admin_queues, [64 x %struct.pqi_queue_group], %struct.pqi_event_queue, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, i8, i8, i8, i16, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.delayed_work, ptr, [4 x i8], i64, ptr, i16, [2 x i8], [7 x %struct.pqi_event], %struct.work_struct, %struct.atomic_t, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.semaphore, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, ptr, %struct.work_struct, %struct.work_struct, i32, i16, [2 x i8] }>
%struct.pqi_admin_queues = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i16 }
%struct.pqi_queue_group = type { ptr, [2 x i16], i16, i16, [2 x ptr], ptr, [2 x i32], i32, [2 x ptr], [2 x i32], [2 x ptr], ptr, [2 x i32], i32, ptr, i32, [2 x %struct.spinlock], [2 x %struct.list_head] }
%struct.pqi_event_queue = type { i16, i16, ptr, ptr, i32, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.pqi_event = type { i8, i8, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pqi_ctrl_registers = type { [32 x i8], i32, [16 x i8], i32, [100 x i8], i32, [0 x i8], i32, [12 x i8], i32, i32, [4 x i8], i32, [12 x i8], i32, [3888 x i8], [8 x i32], [12256 x i8], %struct.pqi_device_registers }
%struct.pqi_device_registers = type { i64, i8, [7 x i8], i8, i8, i8, i8, i16, [2 x i8], i32, i32, i32, [28 x i8], i32, [4 x i8], i64, i64, i64, i64, i64, i64, i8, i8, i16, [4 x i8], i32, [4 x i8], i64, i32, i32, [104 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.78 = type { ptr }
%struct.sis_sync_cmd_params = type { [6 x i32] }
%struct.sis_base_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }

@sis_is_firmware_running._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"controller is offline: status code 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sis_is_firmware_running\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/smartpqi/smartpqi_sis.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis_is_firmware_running._entry_ptr = internal global ptr @sis_is_firmware_running._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sis_wait_for_fw_triage_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"firmware triage condition invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sis_wait_for_fw_triage_completion\00", [62 x i8] zeroinitializer }, align 32
@sis_wait_for_fw_triage_completion._entry_ptr = internal global ptr @sis_wait_for_fw_triage_completion._entry, section ".printk_index", align 4
@sis_wait_for_fw_triage_completion._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 471, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timed out waiting for firmware triage status\0A\00", [50 x i8] zeroinitializer }, align 32
@sis_wait_for_fw_triage_completion._entry_ptr.9 = internal global ptr @sis_wait_for_fw_triage_completion._entry.7, section ".printk_index", align 4
@sis_wait_for_ctrl_ready_with_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sis_wait_for_ctrl_ready_with_timeout\00", [59 x i8] zeroinitializer }, align 32
@sis_wait_for_ctrl_ready_with_timeout._entry_ptr = internal global ptr @sis_wait_for_ctrl_ready_with_timeout._entry, section ".printk_index", align 4
@sis_wait_for_ctrl_ready_with_timeout._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"controller not ready after %u seconds\0A\00", [57 x i8] zeroinitializer }, align 32
@sis_wait_for_ctrl_ready_with_timeout._entry_ptr.13 = internal global ptr @sis_wait_for_ctrl_ready_with_timeout._entry.11, section ".printk_index", align 4
@sis_send_sync_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SIS command failed for command 0x%x: status = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sis_send_sync_cmd\00", [46 x i8] zeroinitializer }, align 32
@sis_send_sync_cmd._entry_ptr = internal global ptr @sis_send_sync_cmd._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sis_wait_for_doorbell_bit_to_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"doorbell register bit 0x%x not cleared\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sis_wait_for_doorbell_bit_to_clear\00", [61 x i8] zeroinitializer }, align 32
@sis_wait_for_doorbell_bit_to_clear._entry_ptr = internal global ptr @sis_wait_for_doorbell_bit_to_clear._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 147, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 459, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 470, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 101, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 111, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 225, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 326, i32 6 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [40 x i8] c"../drivers/scsi/smartpqi/smartpqi_sis.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 371, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @sis_is_firmware_running._entry, ptr @sis_is_firmware_running._entry_ptr, ptr @sis_send_sync_cmd._entry, ptr @sis_send_sync_cmd._entry_ptr, ptr @sis_wait_for_ctrl_ready_with_timeout._entry, ptr @sis_wait_for_ctrl_ready_with_timeout._entry.11, ptr @sis_wait_for_ctrl_ready_with_timeout._entry_ptr, ptr @sis_wait_for_ctrl_ready_with_timeout._entry_ptr.13, ptr @sis_wait_for_doorbell_bit_to_clear._entry, ptr @sis_wait_for_doorbell_bit_to_clear._entry_ptr, ptr @sis_wait_for_fw_triage_completion._entry, ptr @sis_wait_for_fw_triage_completion._entry.7, ptr @sis_wait_for_fw_triage_completion._entry_ptr, ptr @sis_wait_for_fw_triage_completion._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_is_firmware_running._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_wait_for_fw_triage_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_wait_for_fw_triage_completion._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_wait_for_ctrl_ready_with_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_wait_for_ctrl_ready_with_timeout._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_send_sync_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_wait_for_doorbell_bit_to_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_wait_for_ctrl_ready(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sis_wait_for_ctrl_ready_with_timeout(ptr noundef %ctrl_info, i32 noundef 180)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis_wait_for_ctrl_ready_with_timeout(ptr nocapture noundef readonly %ctrl_info, i32 noundef %timeout_secs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %timeout_secs, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, %mul
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %entry
  %1 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %registers, align 4
  %sis_firmware_status = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %2, i32 0, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status) #6, !srcloc !48
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %while.cond.if.end13_crit_edge, label %if.then

while.cond.if.end13_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %while.cond
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers, align 4
  %arrayidx = getelementptr %struct.pqi_ctrl_registers, ptr %8, i32 0, i32 16, i32 7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !48
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %10) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and9 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %while.cond.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev19 = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.12, i32 noundef %timeout_secs) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 10) #6
  br label %while.cond

cleanup:                                          ; preds = %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -110, %do.end18 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_wait_for_ctrl_ready_resume(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sis_wait_for_ctrl_ready_with_timeout(ptr noundef %ctrl_info, i32 noundef 90)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sis_is_firmware_running(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %sis_firmware_status = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.end

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers, align 4
  %arrayidx = getelementptr %struct.pqi_ctrl_registers, ptr %7, i32 0, i32 16, i32 7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !48
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %9) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sis_is_kernel_up(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %sis_firmware_status = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp slt i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_get_product_id(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %sis_product_identifier = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_product_identifier) #6, !srcloc !48
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_get_ctrl_properties(ptr nocapture noundef %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.sis_sync_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #6
  %0 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 4
  %1 = call ptr @memset(ptr %params, i32 0, i32 24)
  %call = call fastcc i32 @sis_send_sync_cmd(ptr noundef %ctrl_info, i32 noundef 25, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  %and6 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and6)
  %cmp.not = icmp eq i32 %and6, 6
  br i1 %cmp.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %and9 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %pqi_reset_quiesce_supported = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 61
  %7 = ptrtoint ptr %pqi_reset_quiesce_supported to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %bf.load = load i16, ptr %pqi_reset_quiesce_supported, align 1
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %pqi_reset_quiesce_supported, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis_send_sync_cmd(ptr nocapture noundef readonly %ctrl_info, i32 noundef %cmd, ptr nocapture noundef %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %registers1 = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %sis_mailbox = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_mailbox, i32 %2) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %arrayidx5 = getelementptr [6 x i32], ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx7 = getelementptr %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 16, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7, i32 %5) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %arrayidx5.1 = getelementptr [6 x i32], ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.1, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx7.1 = getelementptr %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 16, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7.1, i32 %8) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %arrayidx5.2 = getelementptr [6 x i32], ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5.2, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %arrayidx7.2 = getelementptr %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 16, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7.2, i32 %11) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %arrayidx5.3 = getelementptr [6 x i32], ptr %params, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.3, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx7.3 = getelementptr %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7.3, i32 %14) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %sis_ctrl_to_host_doorbell_clear = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_ctrl_to_host_doorbell_clear, i32 1048576) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %sis_interrupt_mask = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_interrupt_mask, i32 -1) #6, !srcloc !56
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_interrupt_mask) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %sis_host_to_ctrl_doorbell = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell, i32 131072) #6, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 30000
  %sis_ctrl_to_host_doorbell = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  tail call void @msleep(i32 noundef 10) #6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_ctrl_to_host_doorbell) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %18 = and i32 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %19
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_mailbox) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp34.not = icmp eq i32 %20, 16777216
  br i1 %cmp34.not, label %if.end39, label %do.end38

do.end38:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %pci_dev = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %22 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %cmd, i32 noundef %21) #9
  br label %cleanup

if.end39:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %params, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx7) #6, !srcloc !48
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx5, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx7.1) #6, !srcloc !48
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %30 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx5.1, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx7.2) #6, !srcloc !48
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %33 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx5.2, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx7.3) #6, !srcloc !48
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %36 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx5.3, align 4
  %arrayidx48.4 = getelementptr %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 16, i32 5
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx48.4) #6, !srcloc !48
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %arrayidx53.4 = getelementptr [6 x i32], ptr %params, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx53.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx53.4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end38, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end38 ], [ 0, %if.end39 ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_get_pqi_capabilities(ptr nocapture noundef %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.sis_sync_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #6
  %0 = call ptr @memset(ptr %params, i32 0, i32 24)
  %call = call fastcc i32 @sis_send_sync_cmd(ptr noundef %ctrl_info, i32 noundef 12288, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 5
  %2 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 4
  %3 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %max_sg_entries = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 12
  %8 = ptrtoint ptr %max_sg_entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_sg_entries, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %max_transfer_size = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 21
  %11 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_transfer_size, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %max_outstanding_requests = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 22
  %14 = ptrtoint ptr %max_outstanding_requests to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_outstanding_requests, align 8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %config_table_offset = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 13
  %17 = ptrtoint ptr %config_table_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %config_table_offset, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %config_table_length = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 14
  %20 = ptrtoint ptr %config_table_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %config_table_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_init_base_struct_addr(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.sis_sync_cmd_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #6
  %0 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 39) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  %add = add i32 %3, 15
  %and = and i32 %add, -16
  %4 = inttoptr i32 %and to ptr
  %error_buffer_dma_handle = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 30
  %5 = ptrtoint ptr %error_buffer_dma_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error_buffer_dma_handle, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 150994944, ptr %4, align 16
  %error_buffer_paddr_low = getelementptr inbounds %struct.sis_base_struct, ptr %4, i32 0, i32 2
  %8 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %9 = ptrtoint ptr %error_buffer_paddr_low to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %error_buffer_paddr_low, align 8
  %error_buffer_paddr_high = getelementptr inbounds %struct.sis_base_struct, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %error_buffer_paddr_high to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %error_buffer_paddr_high, align 4
  %error_buffer_element_length = getelementptr inbounds %struct.sis_base_struct, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %error_buffer_element_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 335609856, ptr %error_buffer_element_length, align 16
  %max_io_slots = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 23
  %12 = ptrtoint ptr %max_io_slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_io_slots, align 4
  %error_buffer_num_elements = getelementptr inbounds %struct.sis_base_struct, ptr %4, i32 0, i32 5
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %error_buffer_num_elements to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %error_buffer_num_elements, align 4
  %pci_dev = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %4) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !65

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %4, i32 noundef 24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %and, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %22, i32 %shr.i
  %and.i = and i32 %add, 4080
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 24, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev5, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.out_crit_edge, label %if.end9

dma_map_single_attrs.exit.out_crit_edge:          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = call ptr @memset(ptr %params, i32 0, i32 24)
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 24, ptr %1, align 4
  %call20 = call fastcc i32 @sis_send_sync_cmd(ptr noundef %ctrl_info, i32 noundef 27, ptr noundef nonnull %params)
  %28 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22, i32 noundef %retval.0.i, i32 noundef 24, i32 noundef 1, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %if.end9, %dma_map_single_attrs.exit.out_crit_edge
  %rc.0 = phi i32 [ %call20, %if.end9 ], [ -12, %dma_map_single_attrs.exit.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sis_enable_msix(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %registers.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i, i32 1073741824) #6, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %2, 30000
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell17.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %4, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell17.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %6 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.i.i = icmp eq i32 %6, 0
  br i1 %cmp19.i.i, label %entry.sis_set_doorbell_bit.exit_crit_edge, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  br label %if.end.i.i

entry.sis_set_doorbell_bit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end.i.i:                                       ; preds = %if.end13.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %7 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers.i, align 4
  %sis_firmware_status.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %8, i32 0, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i, label %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge

if.end.i.i.sis_set_doorbell_bit.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp11.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp11.i.i, label %do.end.i.i, label %if.end13.i.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, i32 noundef 64) #9
  br label %sis_set_doorbell_bit.exit

if.end13.i.i:                                     ; preds = %if.end10.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %14 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %15, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %17 = and i32 %16, 1073741824
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, label %if.end13.i.i.if.end.i.i_crit_edge

if.end13.i.i.if.end.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

sis_set_doorbell_bit.exit:                        ; preds = %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, %do.end.i.i, %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge, %entry.sis_set_doorbell_bit.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sis_enable_intx(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %registers.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i, i32 -2147483648) #6, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %2, 30000
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell17.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %4, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell17.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp19.i.i = icmp sgt i32 %5, -1
  br i1 %cmp19.i.i, label %entry.sis_set_doorbell_bit.exit_crit_edge, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  br label %if.end.i.i

entry.sis_set_doorbell_bit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end.i.i:                                       ; preds = %if.end13.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %6 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers.i, align 4
  %sis_firmware_status.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %7, i32 0, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i, label %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge

if.end.i.i.sis_set_doorbell_bit.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp11.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp11.i.i, label %do.end.i.i, label %if.end13.i.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %11 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, i32 noundef 128) #9
  br label %sis_set_doorbell_bit.exit

if.end13.i.i:                                     ; preds = %if.end10.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %13 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %14, i32 0, i32 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %cmp.i.i = icmp sgt i32 %15, -1
  br i1 %cmp.i.i, label %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, label %if.end13.i.i.if.end.i.i_crit_edge

if.end13.i.i.if.end.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

sis_set_doorbell_bit.exit:                        ; preds = %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, %do.end.i.i, %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge, %entry.sis_set_doorbell_bit.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sis_shutdown_ctrl(ptr nocapture noundef readonly %ctrl_info, i32 noundef %ctrl_shutdown_reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %sis_firmware_status = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %firmware_triage_supported = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 61
  %4 = ptrtoint ptr %firmware_triage_supported to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load = load i16, ptr %firmware_triage_supported, align 1
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not = icmp eq i16 %5, 0
  br i1 %tobool2.not, label %if.end.do.body6_crit_edge, label %do.body

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %ctrl_shutdown_reason)
  %7 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers, align 4
  %sis_ctrl_shutdown_reason_code = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %8, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_ctrl_shutdown_reason_code, i32 %6) #6, !srcloc !56
  br label %do.body6

do.body6:                                         ; preds = %do.body, %if.end.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %registers, align 4
  %sis_host_to_ctrl_doorbell = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell, i32 32768) #6, !srcloc !56
  br label %return

return:                                           ; preds = %do.body6, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_pqi_reset_quiesce(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %registers.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i, i32 1) #6, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %2, 30000
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell17.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %4, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell17.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.i.i = icmp eq i32 %6, 0
  br i1 %cmp19.i.i, label %entry.sis_set_doorbell_bit.exit_crit_edge, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  br label %if.end.i.i

entry.sis_set_doorbell_bit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end.i.i:                                       ; preds = %if.end13.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %7 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers.i, align 4
  %sis_firmware_status.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %8, i32 0, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i, label %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge

if.end.i.i.sis_set_doorbell_bit.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp11.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp11.i.i, label %do.end.i.i, label %if.end13.i.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, i32 noundef 16777216) #9
  br label %sis_set_doorbell_bit.exit

if.end13.i.i:                                     ; preds = %if.end10.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %14 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %15, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %17 = and i32 %16, 1
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, label %if.end13.i.i.if.end.i.i_crit_edge

if.end13.i.i.if.end.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

sis_set_doorbell_bit.exit:                        ; preds = %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, %do.end.i.i, %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge, %entry.sis_set_doorbell_bit.exit_crit_edge
  %rc.0.i.i = phi i32 [ -110, %do.end.i.i ], [ 0, %entry.sis_set_doorbell_bit.exit_crit_edge ], [ 0, %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge ], [ -19, %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge ]
  ret i32 %rc.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_reenable_sis_mode(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %registers.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i, i32 16777216) #6, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %2, 30000
  %3 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell17.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %4, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell17.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.i.i = icmp eq i32 %6, 0
  br i1 %cmp19.i.i, label %entry.sis_set_doorbell_bit.exit_crit_edge, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  br label %if.end.i.i

entry.sis_set_doorbell_bit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end.i.i:                                       ; preds = %if.end13.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %7 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %registers.i, align 4
  %sis_firmware_status.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %8, i32 0, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i, label %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge

if.end.i.i.sis_set_doorbell_bit.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp11.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp11.i.i, label %do.end.i.i, label %if.end13.i.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev.i.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %12 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, i32 noundef 1) #9
  br label %sis_set_doorbell_bit.exit

if.end13.i.i:                                     ; preds = %if.end10.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %14 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers.i, align 4
  %sis_host_to_ctrl_doorbell.i.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %15, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell.i.i) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %17 = and i32 %16, 16777216
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, label %if.end13.i.i.if.end.i.i_crit_edge

if.end13.i.i.if.end.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_set_doorbell_bit.exit

sis_set_doorbell_bit.exit:                        ; preds = %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge, %do.end.i.i, %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge, %entry.sis_set_doorbell_bit.exit_crit_edge
  %rc.0.i.i = phi i32 [ -110, %do.end.i.i ], [ 0, %entry.sis_set_doorbell_bit.exit_crit_edge ], [ 0, %if.end13.i.i.sis_set_doorbell_bit.exit_crit_edge ], [ -19, %if.end.i.i.sis_set_doorbell_bit.exit_crit_edge ]
  ret i32 %rc.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sis_write_driver_scratch(ptr nocapture noundef readonly %ctrl_info, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %1 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %registers, align 4
  %sis_driver_scratch = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %2, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_driver_scratch, i32 %0) #6, !srcloc !56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_read_driver_scratch(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %sis_driver_scratch = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 9
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_driver_scratch) #6, !srcloc !48
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sis_soft_reset(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %registers = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %sis_host_to_ctrl_doorbell = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sis_host_to_ctrl_doorbell, i32 65536) #6, !srcloc !56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sis_wait_for_fw_triage_completion(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 300000
  %registers.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %1 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %registers.i, align 4
  %sis_firmware_status.i = getelementptr inbounds %struct.pqi_ctrl_registers, ptr %2, i32 0, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sis_firmware_status.i) #6, !srcloc !48
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %and.i = and i32 %4, 3
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end4 [
    i32 2, label %while.cond.while.end.sink.split_crit_edge
    i32 0, label %while.cond.while.end_crit_edge
    i32 3, label %while.cond.while.end_crit_edge17
  ]

while.cond.while.end_crit_edge17:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.while.end.sink.split_crit_edge:        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.sink.split

if.end4:                                          ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %if.end4.while.end.sink.split_crit_edge, label %if.end12

if.end4.while.end.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.sink.split

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1000) #6
  br label %while.cond

while.end.sink.split:                             ; preds = %if.end4.while.end.sink.split_crit_edge, %while.cond.while.end.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %while.cond.while.end.sink.split_crit_edge ], [ @.str.8, %if.end4.while.end.sink.split_crit_edge ]
  %rc.0.ph = phi i32 [ -22, %while.cond.while.end.sink.split_crit_edge ], [ -110, %if.end4.while.end.sink.split_crit_edge ]
  %pci_dev10 = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 1
  %7 = ptrtoint ptr %pci_dev10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull %.str.8.sink) #9
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge17
  %rc.0 = phi i32 [ %rc.0.ph, %while.end.sink.split ], [ 0, %while.cond.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge17 ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/smartpqi/smartpqi_sis.c", i32 147, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sis_is_firmware_running._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sis_is_firmware_running._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/smartpqi/smartpqi_sis.c", i32 459, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sis_wait_for_fw_triage_completion._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sis_wait_for_fw_triage_completion._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/smartpqi/smartpqi_sis.c", i32 470, i32 4}
!15 = !{ptr @sis_wait_for_fw_triage_completion._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @sis_wait_for_fw_triage_completion._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/smartpqi/smartpqi_sis.c", i32 101, i32 5}
!19 = !{ptr @sis_wait_for_ctrl_ready_with_timeout._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @sis_wait_for_ctrl_ready_with_timeout._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/smartpqi/smartpqi_sis.c", i32 111, i32 4}
!23 = !{ptr @sis_wait_for_ctrl_ready_with_timeout._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sis_wait_for_ctrl_ready_with_timeout._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/smartpqi/smartpqi_sis.c", i32 225, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sis_send_sync_cmd._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @sis_send_sync_cmd._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/smartpqi/smartpqi_sis.c", i32 371, i32 4}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sis_wait_for_doorbell_bit_to_clear._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sis_wait_for_doorbell_bit_to_clear._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 4999726}
!49 = !{i64 2155043774}
!50 = !{i64 2155046233}
!51 = !{i64 2155048980}
!52 = !{i64 2155051427}
!53 = !{i64 2155052013}
!54 = !{i64 2155052616}
!55 = !{i64 2155052839}
!56 = !{i64 4999308}
!57 = !{i64 2155053261}
!58 = !{i64 2155053740}
!59 = !{i64 2155054176}
!60 = !{i64 2155054899}
!61 = !{i64 2155055141}
!62 = !{i64 2155055919}
!63 = !{i64 2155056798}
!64 = !{i64 2155059656}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2155064747}
!67 = !{i64 2155061604}
!68 = !{i64 2155062190}
!69 = !{i64 2155065549}
!70 = !{i64 2155065821}
!71 = !{i64 2155066341}
!72 = !{i64 2155066816}
!73 = !{i64 2155067603}
!74 = !{i64 2155068615}
!75 = !{i64 2155068358}
