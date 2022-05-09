; ModuleID = '/llk/IR_all_yes/drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c_pt.bc'
source_filename = "../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.SL_WH_TRIGGERS_EVENT_DATA_T = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.SL_WH_MPI_TRIGGER_T }
%struct.SL_WH_MPI_TRIGGER_T = type { i16, i16, i32 }
%struct.MPT3SAS_ADAPTER = type { %struct.list_head, ptr, i8, i32, [32 x i8], [24 x i8], [64 x i8], ptr, ptr, i32, i32, i32, i8, i32, i8, [20 x i8], ptr, %struct.delayed_work, [20 x i8], ptr, %struct.spinlock, %struct.list_head, ptr, i8, i32, i8, i16, i8, i8, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, ptr, i16, ptr, i32, ptr, i32, i8, i32, i32, %struct.atomic64_t, %struct.atomic64_t, i8, i16, i8, i8, i32, i32, i32, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, ptr, [4 x i32], i32, ptr, [4 x i32], i8, i8, i16, i16, i16, i16, i8, %struct.mpt3sas_facts, %struct.mpt3sas_facts, ptr, %struct._MPI2_CONFIG_PAGE_MAN_0, %struct.Mpi2ManufacturingPage10_t, %struct.Mpi2ManufacturingPage11_t, %struct._MPI2_CONFIG_PAGE_BIOS_2, %struct._MPI2_CONFIG_PAGE_BIOS_3, %struct._MPI2_CONFIG_PAGE_IOC_8, %struct._MPI2_CONFIG_PAGE_IO_UNIT_0, %struct._MPI2_CONFIG_PAGE_IO_UNIT_1, %struct._MPI2_CONFIG_PAGE_IO_UNIT_8, %struct._MPI2_CONFIG_PAGE_IOC_1, %struct._boot_device, %struct._boot_device, %struct._boot_device, %struct._sas_node, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i8, i16, i32, i32, ptr, ptr, i16, ptr, i16, i16, ptr, i32, ptr, i16, i16, i16, i16, ptr, i32, i32, ptr, %struct.spinlock, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.list_head, ptr, i32, i16, i16, i16, i32, i16, i16, i16, ptr, i32, i16, ptr, %struct.list_head, i16, ptr, i32, i16, ptr, %struct.list_head, ptr, i32, ptr, i16, ptr, i32, i32, i32, ptr, i16, ptr, i32, ptr, i32, i16, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, %struct.list_head, i8, i8, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, %struct.mutex, [3 x ptr], [3 x i32], [3 x i32], [3 x i8], [3 x i32], [3 x [23 x i32]], [3 x i32], i32, i32, %struct.htb_rel_query, i8, i8, i8, i8, i8, i8, %struct.spinlock, i8, i8, ptr, %struct.SL_WH_MASTER_TRIGGER_T, %struct.SL_WH_EVENT_TRIGGERS_T, %struct.SL_WH_SCSI_TRIGGERS_T, %struct.SL_WH_MPI_TRIGGERS_T, i8, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct._internal_cmd = type { %struct.mutex, %struct.completion, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mpt3sas_facts = type { i16, i16, i8, i8, i8, i16, i16, i32, i8, i8, i8, i8, i16, i16, i32, %union.mpi3_version_union, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i8 }
%union.mpi3_version_union = type { i32 }
%struct._MPI2_CONFIG_PAGE_MAN_0 = type { %struct._MPI2_CONFIG_PAGE_HEADER, [16 x i8], [8 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct._MPI2_CONFIG_PAGE_HEADER = type { i8, i8, i8, i8 }
%struct.Mpi2ManufacturingPage10_t = type { %struct._MPI2_CONFIG_PAGE_HEADER, i8, i8, i16, i32, i32, i32, i32, i32, i32, [18 x i32] }
%struct.Mpi2ManufacturingPage11_t = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i8, i8, i8, i8, [8 x i32], i16, i8, i8, [7 x i32], i8, i8, i8, i8, i16, i16, i8, i8, i16, i32 }
%struct._MPI2_CONFIG_PAGE_BIOS_2 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i32, i32, i32, i32, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE }>
%union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE = type { %struct._MPI2_BOOT_DEVICE_SAS_WWID }
%struct._MPI2_BOOT_DEVICE_SAS_WWID = type { i64, [8 x i8], i32, i32 }
%struct._MPI2_CONFIG_PAGE_BIOS_3 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, [4 x %struct._MPI2_ADAPTER_INFO], i32, [4 x %struct._MPI2_ADAPTER_ORDER_AUX] }
%struct._MPI2_ADAPTER_INFO = type { i8, i8, i16 }
%struct._MPI2_ADAPTER_ORDER_AUX = type { i64, i32, i32 }
%struct._MPI2_CONFIG_PAGE_IOC_8 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_0 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i64, %union._MPI2_VERSION_UNION, %union._MPI2_VERSION_UNION }>
%union._MPI2_VERSION_UNION = type { i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_8 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i8, i8, i16, [1 x %struct._MPI2_IOUNIT8_SENSOR] }
%struct._MPI2_IOUNIT8_SENSOR = type { i16, i16, [4 x i16], i32, i32, i32 }
%struct._MPI2_CONFIG_PAGE_IOC_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i8, i8, i8, i8, i32, i32 }
%struct._boot_device = type { i32, ptr }
%struct._sas_node = type { %struct.list_head, ptr, i8, i64, i16, i64, i16, i64, i8, i8, ptr, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.htb_rel_query = type { i16, i16, i32, [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.SL_WH_MASTER_TRIGGER_T = type { i32 }
%struct.SL_WH_EVENT_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_EVENT_TRIGGER_T] }
%struct.SL_WH_EVENT_TRIGGER_T = type { i16, i16 }
%struct.SL_WH_SCSI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_SCSI_TRIGGER_T] }
%struct.SL_WH_SCSI_TRIGGER_T = type { i8, i8, i8, i8 }
%struct.SL_WH_MPI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_MPI_TRIGGER_T] }
%struct.list_head = type { ptr, ptr }
%struct._MPI2_EVENT_NOTIFICATION_REPLY = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, i32, [1 x i32] }

@mpt3sas_process_trigger_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: %s: enter\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mpt3sas_process_trigger_data\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c\00", [52 x i8] zeroinitializer }, align 32
@mpt3sas_process_trigger_data._entry_ptr = internal global ptr @mpt3sas_process_trigger_data._entry, section ".printk_index", align 4
@mpt3sas_process_trigger_data._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016%s: %s: Releasing the trace buffer. Trigger_Type 0x%08x, Data[0] 0x%08x, Data[1] 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@mpt3sas_process_trigger_data._entry_ptr.5 = internal global ptr @mpt3sas_process_trigger_data._entry.3, section ".printk_index", align 4
@mpt3sas_process_trigger_data._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: %d - Is not a valid Trigger type\0A\00", [56 x i8] zeroinitializer }, align 32
@mpt3sas_process_trigger_data._entry_ptr.8 = internal global ptr @mpt3sas_process_trigger_data._entry.6, section ".printk_index", align 4
@mpt3sas_process_trigger_data._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: %s: exit\0A\00", [16 x i8] zeroinitializer }, align 32
@mpt3sas_process_trigger_data._entry_ptr.11 = internal global ptr @mpt3sas_process_trigger_data._entry.9, section ".printk_index", align 4
@mpt3sas_trigger_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: %s: enter - trigger_bitmask = 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mpt3sas_trigger_master\00", [41 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_master._entry_ptr = internal global ptr @mpt3sas_trigger_master._entry, section ".printk_index", align 4
@mpt3sas_trigger_master._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: %s: setting diag_trigger_active flag\0A\00", [52 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_master._entry_ptr.16 = internal global ptr @mpt3sas_trigger_master._entry.14, section ".printk_index", align 4
@mpt3sas_trigger_master._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.13, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_master._entry_ptr.18 = internal global ptr @mpt3sas_trigger_master._entry.17, section ".printk_index", align 4
@mpt3sas_trigger_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s: %s: enter - event = 0x%04x, log_entry_qualifier = 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mpt3sas_trigger_event\00", [42 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_event._entry_ptr = internal global ptr @mpt3sas_trigger_event._entry, section ".printk_index", align 4
@mpt3sas_trigger_event._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_event._entry_ptr.22 = internal global ptr @mpt3sas_trigger_event._entry.21, section ".printk_index", align 4
@mpt3sas_trigger_event._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_event._entry_ptr.24 = internal global ptr @mpt3sas_trigger_event._entry.23, section ".printk_index", align 4
@mpt3sas_trigger_event._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.20, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_event._entry_ptr.26 = internal global ptr @mpt3sas_trigger_event._entry.25, section ".printk_index", align 4
@mpt3sas_trigger_scsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s: %s: enter - sense_key = 0x%02x, asc = 0x%02x, ascq = 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mpt3sas_trigger_scsi\00", [43 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_scsi._entry_ptr = internal global ptr @mpt3sas_trigger_scsi._entry, section ".printk_index", align 4
@mpt3sas_trigger_scsi._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.28, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_scsi._entry_ptr.30 = internal global ptr @mpt3sas_trigger_scsi._entry.29, section ".printk_index", align 4
@mpt3sas_trigger_scsi._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.28, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_scsi._entry_ptr.32 = internal global ptr @mpt3sas_trigger_scsi._entry.31, section ".printk_index", align 4
@mpt3sas_trigger_mpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: %s: enter - ioc_status = 0x%04x, loginfo = 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mpt3sas_trigger_mpi\00", [44 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_mpi._entry_ptr = internal global ptr @mpt3sas_trigger_mpi._entry, section ".printk_index", align 4
@mpt3sas_trigger_mpi._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.34, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_mpi._entry_ptr.36 = internal global ptr @mpt3sas_trigger_mpi._entry.35, section ".printk_index", align 4
@mpt3sas_trigger_mpi._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.34, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_trigger_mpi._entry_ptr.38 = internal global ptr @mpt3sas_trigger_mpi._entry.37, section ".printk_index", align 4
@_mpt3sas_raise_sigio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_mpt3sas_raise_sigio\00", [43 x i8] zeroinitializer }, align 32
@_mpt3sas_raise_sigio._entry_ptr = internal global ptr @_mpt3sas_raise_sigio._entry, section ".printk_index", align 4
@_mpt3sas_raise_sigio._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: %s: add to driver event log\0A\00", [61 x i8] zeroinitializer }, align 32
@_mpt3sas_raise_sigio._entry_ptr.42 = internal global ptr @_mpt3sas_raise_sigio._entry.40, section ".printk_index", align 4
@_mpt3sas_raise_sigio._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: %s: clearing diag_trigger_active flag\0A\00", [51 x i8] zeroinitializer }, align 32
@_mpt3sas_raise_sigio._entry_ptr.45 = internal global ptr @_mpt3sas_raise_sigio._entry.43, section ".printk_index", align 4
@_mpt3sas_raise_sigio._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.39, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_mpt3sas_raise_sigio._entry_ptr.47 = internal global ptr @_mpt3sas_raise_sigio._entry.46, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 118, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 127, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 159, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 166, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 205, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 219, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 244, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 281, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 305, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 314, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 323, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 361, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 389, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 399, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 435, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 462, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 471, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 75, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 87, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 96, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private constant [47 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 102, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @_mpt3sas_raise_sigio._entry, ptr @_mpt3sas_raise_sigio._entry.40, ptr @_mpt3sas_raise_sigio._entry.43, ptr @_mpt3sas_raise_sigio._entry.46, ptr @_mpt3sas_raise_sigio._entry_ptr, ptr @_mpt3sas_raise_sigio._entry_ptr.42, ptr @_mpt3sas_raise_sigio._entry_ptr.45, ptr @_mpt3sas_raise_sigio._entry_ptr.47, ptr @mpt3sas_process_trigger_data._entry, ptr @mpt3sas_process_trigger_data._entry.3, ptr @mpt3sas_process_trigger_data._entry.6, ptr @mpt3sas_process_trigger_data._entry.9, ptr @mpt3sas_process_trigger_data._entry_ptr, ptr @mpt3sas_process_trigger_data._entry_ptr.11, ptr @mpt3sas_process_trigger_data._entry_ptr.5, ptr @mpt3sas_process_trigger_data._entry_ptr.8, ptr @mpt3sas_trigger_event._entry, ptr @mpt3sas_trigger_event._entry.21, ptr @mpt3sas_trigger_event._entry.23, ptr @mpt3sas_trigger_event._entry.25, ptr @mpt3sas_trigger_event._entry_ptr, ptr @mpt3sas_trigger_event._entry_ptr.22, ptr @mpt3sas_trigger_event._entry_ptr.24, ptr @mpt3sas_trigger_event._entry_ptr.26, ptr @mpt3sas_trigger_master._entry, ptr @mpt3sas_trigger_master._entry.14, ptr @mpt3sas_trigger_master._entry.17, ptr @mpt3sas_trigger_master._entry_ptr, ptr @mpt3sas_trigger_master._entry_ptr.16, ptr @mpt3sas_trigger_master._entry_ptr.18, ptr @mpt3sas_trigger_mpi._entry, ptr @mpt3sas_trigger_mpi._entry.35, ptr @mpt3sas_trigger_mpi._entry.37, ptr @mpt3sas_trigger_mpi._entry_ptr, ptr @mpt3sas_trigger_mpi._entry_ptr.36, ptr @mpt3sas_trigger_mpi._entry_ptr.38, ptr @mpt3sas_trigger_scsi._entry, ptr @mpt3sas_trigger_scsi._entry.29, ptr @mpt3sas_trigger_scsi._entry.31, ptr @mpt3sas_trigger_scsi._entry_ptr, ptr @mpt3sas_trigger_scsi._entry_ptr.30, ptr @mpt3sas_trigger_scsi._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.19, ptr @.str.20, ptr @.str.27, ptr @.str.28, ptr @.str.33, ptr @.str.34, ptr @.str.39, ptr @.str.41, ptr @.str.44], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_process_trigger_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_process_trigger_data._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_process_trigger_data._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_process_trigger_data._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_master._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_master._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_event._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_event._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_event._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_scsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_scsi._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_scsi._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_mpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_mpi._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_trigger_mpi._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mpt3sas_raise_sigio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mpt3sas_raise_sigio._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mpt3sas_raise_sigio._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mpt3sas_raise_sigio._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_process_trigger_data(ptr noundef %ioc, ptr noundef readonly %event_data) local_unnamed_addr #0 align 64 {
entry:
  %issue_reset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %issue_reset) #5
  %0 = ptrtoint ptr %issue_reset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %issue_reset, align 1
  %u = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %1 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %logging_level, align 8
  %and = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %diag_buffer_status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216
  %3 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diag_buffer_status, align 4
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %do.end6, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name8 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %6 = ptrtoint ptr %event_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_data, align 4
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %u, align 4
  %arrayidx11 = getelementptr %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name8, ptr noundef nonnull @.str.1, i32 noundef %7, i32 noundef %9, i32 noundef %11) #8
  %call13 = call i32 @mpt3sas_send_diag_release(ptr noundef %ioc, i8 noundef zeroext 0, ptr noundef nonnull %issue_reset) #5
  br label %if.end14

if.end14:                                         ; preds = %do.end6, %if.end.if.end14_crit_edge
  %htb_rel = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222
  %12 = ptrtoint ptr %htb_rel to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 5, ptr %htb_rel, align 4
  %tobool15.not = icmp eq ptr %event_data, null
  br i1 %tobool15.not, label %if.end14.if.end44_crit_edge, label %if.then16

if.end14.if.end44_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then16:                                        ; preds = %if.end14
  %13 = ptrtoint ptr %event_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event_data, align 4
  %trigger_type19 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 2
  %15 = ptrtoint ptr %trigger_type19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %trigger_type19, align 4
  %16 = load i32, ptr %event_data, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end38 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb23
    i32 1, label %sw.bb27
    i32 2, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %trigger_info_dwords = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 3
  %18 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %u, align 4
  %20 = ptrtoint ptr %trigger_info_dwords to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %trigger_info_dwords, align 4
  br label %if.end44

sw.bb23:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %trigger_info_dwords25 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 3
  %21 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %u, align 4
  %23 = ptrtoint ptr %trigger_info_dwords25 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %trigger_info_dwords25, align 4
  br label %if.end44

sw.bb27:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %u, align 4
  %trigger_info_dwords30 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 3
  %26 = ptrtoint ptr %trigger_info_dwords30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %trigger_info_dwords30, align 4
  br label %if.end44

sw.bb32:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %trigger_info_dwords34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 3
  %27 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %u, align 4
  %29 = ptrtoint ptr %trigger_info_dwords34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %trigger_info_dwords34, align 4
  br label %if.end44

do.end38:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %name40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name40, i32 noundef %16) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %sw.bb32, %sw.bb27, %sw.bb23, %sw.bb, %if.end14.if.end44_crit_edge
  call fastcc void @_mpt3sas_raise_sigio(ptr noundef %ioc, ptr noundef %event_data)
  %30 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %logging_level, align 8
  %and46 = and i32 %31, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end56_crit_edge, label %do.end51

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %name53 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name53, ptr noundef nonnull @.str.1) #8
  br label %if.end56

if.end56:                                         ; preds = %do.end51, %if.end44.if.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %issue_reset) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_send_diag_release(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_mpt3sas_raise_sigio(ptr noundef %ioc, ptr nocapture noundef readonly %event_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.39) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #9
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.do.body18_crit_edge, label %if.end4

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.end4:                                          ; preds = %if.end
  %Event = getelementptr inbounds %struct._MPI2_EVENT_NOTIFICATION_REPLY, ptr %call7.i.i, i32 0, i32 12
  %3 = ptrtoint ptr %Event to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 28160, ptr %Event, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1024, ptr %call7.i.i, align 8
  %EventData = getelementptr inbounds %struct._MPI2_EVENT_NOTIFICATION_REPLY, ptr %call7.i.i, i32 0, i32 15
  %5 = call ptr @memcpy(ptr %EventData, ptr %event_data, i32 12)
  %6 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logging_level, align 8
  %and6 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end16_crit_edge, label %do.end11

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %name13 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name13, ptr noundef nonnull @.str.39) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %if.end4.if.end16_crit_edge
  tail call void @mpt3sas_ctl_add_to_event_log(ptr noundef %ioc, ptr noundef nonnull %call7.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %do.body18

do.body18:                                        ; preds = %if.end16, %if.end.do.body18_crit_edge
  %diag_trigger_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 229
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #5
  %8 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logging_level, align 8
  %and28 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body18.if.end38_crit_edge, label %do.end33

do.body18.if.end38_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end33:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %name35 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name35, ptr noundef nonnull @.str.39) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end33, %do.body18.if.end38_crit_edge
  %diag_trigger_active = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 230
  %10 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %diag_trigger_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call22) #5
  %11 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logging_level, align 8
  %and41 = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end38.if.end51_crit_edge, label %do.end46

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %name48 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name48, ptr noundef nonnull @.str.39) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end46, %if.end38.if.end51_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_trigger_master(ptr noundef %ioc, i32 noundef %trigger_bitmask) local_unnamed_addr #0 align 64 {
entry:
  %event_data = alloca %struct.SL_WH_TRIGGERS_EVENT_DATA_T, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event_data) #5
  %0 = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1
  %diag_trigger_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 229
  %1 = call ptr @memset(ptr %event_data, i32 255, i32 12)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #5
  %2 = and i32 %trigger_bitmask, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.by_pass_checks_crit_edge

entry.by_pass_checks_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %by_pass_checks

if.end:                                           ; preds = %entry
  %diag_buffer_status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216
  %4 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %diag_buffer_status, align 4
  %conv7 = zext i8 %5 to i32
  %and8 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %and17 = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end13.by_pass_checks_crit_edge, label %if.then19

if.end13.by_pass_checks_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %by_pass_checks

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

by_pass_checks:                                   ; preds = %if.end13.by_pass_checks_crit_edge, %entry.by_pass_checks_crit_edge
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %6 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logging_level, align 8
  %and22 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %by_pass_checks.if.end30_crit_edge, label %do.end27

by_pass_checks.if.end30_crit_edge:                ; preds = %by_pass_checks
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end27:                                         ; preds = %by_pass_checks
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef %trigger_bitmask) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %by_pass_checks.if.end30_crit_edge
  %diag_trigger_active = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 230
  %8 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %diag_trigger_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool31.not = icmp eq i8 %9, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

if.end34:                                         ; preds = %if.end30
  %diag_trigger_master = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 233
  %10 = ptrtoint ptr %diag_trigger_master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %diag_trigger_master, align 8
  %and35 = and i32 %11, %trigger_bitmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %out.critedge, label %if.then37

if.then37:                                        ; preds = %if.end34
  %12 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %diag_trigger_active, align 8
  %13 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logging_level, align 8
  %and40 = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then37.if.end55_crit_edge, label %do.end45

if.then37.if.end55_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.end45:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %name47 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name47, ptr noundef nonnull @.str.13) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end45, %if.then37.if.end55_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  %15 = getelementptr inbounds i8, ptr %event_data, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  %17 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %event_data, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %trigger_bitmask, ptr %0, align 4
  br i1 %3, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end55
  %trigger_type63 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 2
  %19 = ptrtoint ptr %trigger_type63 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %trigger_type63, align 4
  %trigger_info_dwords = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 3
  %20 = ptrtoint ptr %trigger_info_dwords to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %trigger_bitmask, ptr %trigger_info_dwords, align 4
  %reset_from_user = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 223
  %21 = ptrtoint ptr %reset_from_user to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reset_from_user, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool66.not = icmp eq i8 %22, 0
  br i1 %tobool66.not, label %if.then62.if.end71_crit_edge, label %if.then67

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then67:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx70 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.then62.if.end71_crit_edge
  call fastcc void @_mpt3sas_raise_sigio(ptr noundef %ioc, ptr noundef nonnull %event_data)
  br label %out

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpt3sas_send_trigger_data_event(ptr noundef %ioc, ptr noundef nonnull %event_data) #5
  br label %out

out.critedge:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

out:                                              ; preds = %out.critedge, %if.else, %if.end71, %if.then32
  %24 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %logging_level, align 8
  %and74 = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %out.cleanup_crit_edge, label %do.end79

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end79:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %name81 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name81, ptr noundef nonnull @.str.13) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %out.cleanup_crit_edge, %if.then19, %if.then11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_send_trigger_data_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_trigger_event(ptr noundef %ioc, i16 noundef zeroext %event, i16 noundef zeroext %log_entry_qualifier) local_unnamed_addr #0 align 64 {
entry:
  %event_data = alloca %struct.SL_WH_TRIGGERS_EVENT_DATA_T, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event_data) #5
  %0 = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1, i32 0, i32 1
  %diag_trigger_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 229
  %2 = call ptr @memset(ptr %event_data, i32 255, i32 12)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #5
  %diag_buffer_status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216
  %3 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diag_buffer_status, align 4
  %conv5 = zext i8 %4 to i32
  %and = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and12 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %5 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logging_level, align 8
  %and16 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end26_crit_edge, label %do.end21

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %conv23 = zext i16 %event to i32
  %conv24 = zext i16 %log_entry_qualifier to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull @.str.20, i32 noundef %conv23, i32 noundef %conv24) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end21, %if.end15.if.end26_crit_edge
  %diag_trigger_active = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 230
  %7 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %diag_trigger_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool27.not = icmp eq i8 %8, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

if.end30:                                         ; preds = %if.end26
  %diag_trigger_event = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 234
  %9 = ptrtoint ptr %diag_trigger_event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %diag_trigger_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp33132.not = icmp eq i32 %10, 0
  br i1 %cmp33132.not, label %out.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end30
  %EventTriggerEntry = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 234, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %event)
  %cmp43 = icmp eq i16 %event, 33
  %name62 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %event_trigger.0135 = phi ptr [ %EventTriggerEntry, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %event_trigger.0135 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %event_trigger.0135, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %event)
  %cmp38.not = icmp eq i16 %12, %event
  br i1 %cmp38.not, label %if.end41, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end41:                                         ; preds = %for.body
  br i1 %cmp43, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %LogEntryQualifier = getelementptr inbounds %struct.SL_WH_EVENT_TRIGGER_T, ptr %event_trigger.0135, i32 0, i32 1
  %13 = ptrtoint ptr %LogEntryQualifier to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %LogEntryQualifier, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %log_entry_qualifier)
  %cmp48 = icmp eq i16 %14, %log_entry_qualifier
  %spec.select = zext i1 %cmp48 to i8
  br label %for.inc

if.end52:                                         ; preds = %if.end41
  %15 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %diag_trigger_active, align 8
  %16 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logging_level, align 8
  %and55 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end52.for.end.thread_crit_edge, label %do.end60

if.end52.for.end.thread_crit_edge:                ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name62, ptr noundef nonnull @.str.20) #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %do.end60, %if.end52.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %if.end69

for.inc:                                          ; preds = %if.then45, %for.body.for.inc_crit_edge
  %found_match.1 = phi i8 [ 0, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then45 ]
  %inc = add nuw i32 %i.0134, 1
  %incdec.ptr = getelementptr %struct.SL_WH_EVENT_TRIGGER_T, ptr %event_trigger.0135, i32 1
  %18 = ptrtoint ptr %diag_trigger_event to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %diag_trigger_event, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %19)
  %cmp33 = icmp ult i32 %inc, %19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %found_match.1)
  %tobool35.not = icmp eq i8 %found_match.1, 0
  %or.cond = select i1 %cmp33, i1 %tobool35.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br i1 %tobool35.not, label %for.end.out_crit_edge, label %for.end.if.end69_crit_edge

for.end.if.end69_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end69:                                         ; preds = %for.end.if.end69_crit_edge, %for.end.thread
  %20 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %logging_level, align 8
  %and71 = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end69.if.end81_crit_edge, label %do.end76

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name62, ptr noundef nonnull @.str.20) #8
  br label %if.end81

if.end81:                                         ; preds = %do.end76, %if.end69.if.end81_crit_edge
  %22 = getelementptr inbounds i8, ptr %event_data, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 4
  %24 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %event_data, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %event, ptr %0, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %log_entry_qualifier, ptr %1, align 2
  call void @mpt3sas_send_trigger_data_event(ptr noundef %ioc, ptr noundef nonnull %event_data) #5
  br label %out

out.critedge:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

out:                                              ; preds = %out.critedge, %if.end81, %for.end.out_crit_edge, %if.then28
  %27 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %logging_level, align 8
  %and86 = and i32 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %out.cleanup_crit_edge, label %do.end91

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end91:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %name93 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name93, ptr noundef nonnull @.str.20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %out.cleanup_crit_edge, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event_data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_trigger_scsi(ptr noundef %ioc, i8 noundef zeroext %sense_key, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) local_unnamed_addr #0 align 64 {
entry:
  %event_data = alloca %struct.SL_WH_TRIGGERS_EVENT_DATA_T, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event_data) #5
  %0 = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1, i32 0, i32 1
  %diag_trigger_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 229
  %2 = call ptr @memset(ptr %event_data, i32 255, i32 12)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #5
  %diag_buffer_status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216
  %3 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diag_buffer_status, align 4
  %conv5 = zext i8 %4 to i32
  %and = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and12 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %5 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logging_level, align 8
  %and16 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end27_crit_edge, label %do.end21

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %conv23 = zext i8 %sense_key to i32
  %conv24 = zext i8 %asc to i32
  %conv25 = zext i8 %ascq to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef nonnull @.str.28, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %conv25) #8
  br label %if.end27

if.end27:                                         ; preds = %do.end21, %if.end15.if.end27_crit_edge
  %diag_trigger_active = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 230
  %7 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %diag_trigger_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

if.end31:                                         ; preds = %if.end27
  %diag_trigger_scsi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 235
  %9 = ptrtoint ptr %diag_trigger_scsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %diag_trigger_scsi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp34137.not = icmp eq i32 %10, 0
  br i1 %cmp34137.not, label %out.critedge, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end31
  %SCSITriggerEntry = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 235, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %scsi_trigger.0139 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %SCSITriggerEntry, %for.body.preheader ]
  %i.0138 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %SenseKey = getelementptr inbounds %struct.SL_WH_SCSI_TRIGGER_T, ptr %scsi_trigger.0139, i32 0, i32 2
  %11 = ptrtoint ptr %SenseKey to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %SenseKey, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %sense_key)
  %cmp39.not = icmp eq i8 %12, %sense_key
  br i1 %cmp39.not, label %if.end42, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end42:                                         ; preds = %for.body
  %ASC = getelementptr inbounds %struct.SL_WH_SCSI_TRIGGER_T, ptr %scsi_trigger.0139, i32 0, i32 1
  %13 = ptrtoint ptr %ASC to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ASC, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp44 = icmp eq i8 %14, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %asc)
  %cmp49 = icmp eq i8 %14, %asc
  %or.cond135 = or i1 %cmp44, %cmp49
  br i1 %or.cond135, label %if.end52, label %if.end42.for.inc_crit_edge

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end52:                                         ; preds = %if.end42
  %15 = ptrtoint ptr %scsi_trigger.0139 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scsi_trigger.0139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp54 = icmp eq i8 %16, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %ascq)
  %cmp60 = icmp eq i8 %16, %ascq
  %or.cond136 = or i1 %cmp54, %cmp60
  br i1 %or.cond136, label %if.end68, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end52.for.inc_crit_edge, %if.end42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0138, 1
  %incdec.ptr = getelementptr %struct.SL_WH_SCSI_TRIGGER_T, ptr %scsi_trigger.0139, i32 1
  %cmp34 = icmp ult i32 %inc, %10
  br i1 %cmp34, label %for.inc.for.body_crit_edge, label %for.end.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

if.end68:                                         ; preds = %if.end52
  %17 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %diag_trigger_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  %18 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %logging_level, align 8
  %and70 = and i32 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end80_crit_edge, label %do.end75

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %name77 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name77, ptr noundef nonnull @.str.28) #8
  br label %if.end80

if.end80:                                         ; preds = %do.end75, %if.end68.if.end80_crit_edge
  %20 = getelementptr inbounds i8, ptr %event_data, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %20, align 4
  %22 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %event_data, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %sense_key, ptr %1, align 2
  %ASC83 = getelementptr inbounds %struct.SL_WH_SCSI_TRIGGER_T, ptr %0, i32 0, i32 1
  %24 = ptrtoint ptr %ASC83 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %asc, ptr %ASC83, align 1
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %ascq, ptr %0, align 4
  call void @mpt3sas_send_trigger_data_event(ptr noundef %ioc, ptr noundef nonnull %event_data) #5
  br label %out

out.critedge:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

out:                                              ; preds = %out.critedge, %if.end80, %for.end.thread, %if.then29
  %26 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %logging_level, align 8
  %and87 = and i32 %27, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %out.cleanup_crit_edge, label %do.end92

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end92:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %name94 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name94, ptr noundef nonnull @.str.28) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %out.cleanup_crit_edge, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event_data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_trigger_mpi(ptr noundef %ioc, i16 noundef zeroext %ioc_status, i32 noundef %loginfo) local_unnamed_addr #0 align 64 {
entry:
  %event_data = alloca %struct.SL_WH_TRIGGERS_EVENT_DATA_T, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event_data) #5
  %0 = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.SL_WH_TRIGGERS_EVENT_DATA_T, ptr %event_data, i32 0, i32 1, i32 0, i32 2
  %diag_trigger_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 229
  %2 = call ptr @memset(ptr %event_data, i32 255, i32 12)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #5
  %diag_buffer_status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216
  %3 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diag_buffer_status, align 4
  %conv5 = zext i8 %4 to i32
  %and = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and12 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %5 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logging_level, align 8
  %and16 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end25_crit_edge, label %do.end21

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %conv23 = zext i16 %ioc_status to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, ptr noundef nonnull @.str.34, i32 noundef %conv23, i32 noundef %loginfo) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %if.end15.if.end25_crit_edge
  %diag_trigger_active = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 230
  %7 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %diag_trigger_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool26.not = icmp eq i8 %8, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

if.end29:                                         ; preds = %if.end25
  %diag_trigger_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 236
  %9 = ptrtoint ptr %diag_trigger_mpi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %diag_trigger_mpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp32114.not = icmp eq i32 %10, 0
  br i1 %cmp32114.not, label %out.critedge, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end29
  %MPITriggerEntry = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 236, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %mpi_trigger.0116 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %MPITriggerEntry, %for.body.preheader ]
  %i.0115 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %11 = ptrtoint ptr %mpi_trigger.0116 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mpi_trigger.0116, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %ioc_status)
  %cmp37.not = icmp eq i16 %12, %ioc_status
  br i1 %cmp37.not, label %if.end40, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %IocLogInfo = getelementptr inbounds %struct.SL_WH_MPI_TRIGGER_T, ptr %mpi_trigger.0116, i32 0, i32 2
  %13 = ptrtoint ptr %IocLogInfo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %IocLogInfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp41 = icmp eq i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %loginfo)
  %cmp44 = icmp eq i32 %14, %loginfo
  %or.cond113 = or i1 %cmp41, %cmp44
  br i1 %or.cond113, label %if.end52, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0115, 1
  %incdec.ptr = getelementptr %struct.SL_WH_MPI_TRIGGER_T, ptr %mpi_trigger.0116, i32 1
  %cmp32 = icmp ult i32 %inc, %10
  br i1 %cmp32, label %for.inc.for.body_crit_edge, label %for.end.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

if.end52:                                         ; preds = %if.end40
  %15 = ptrtoint ptr %diag_trigger_active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %diag_trigger_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  %16 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logging_level, align 8
  %and54 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end64_crit_edge, label %do.end59

if.end52.if.end64_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %name61 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name61, ptr noundef nonnull @.str.34) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end59, %if.end52.if.end64_crit_edge
  %18 = getelementptr inbounds i8, ptr %event_data, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %20 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %event_data, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %ioc_status, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %loginfo, ptr %1, align 4
  call void @mpt3sas_send_trigger_data_event(ptr noundef %ioc, ptr noundef nonnull %event_data) #5
  br label %out

out.critedge:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call2) #5
  br label %out

out:                                              ; preds = %out.critedge, %if.end64, %for.end.thread, %if.then27
  %23 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %logging_level, align 8
  %and69 = and i32 %24, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %out.cleanup_crit_edge, label %do.end74

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end74:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %name76 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name76, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %out.cleanup_crit_edge, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_ctl_add_to_event_log(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 118, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mpt3sas_process_trigger_data._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mpt3sas_process_trigger_data._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 127, i32 3}
!8 = !{ptr @mpt3sas_process_trigger_data._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mpt3sas_process_trigger_data._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 159, i32 4}
!12 = !{ptr @mpt3sas_process_trigger_data._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mpt3sas_process_trigger_data._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 166, i32 2}
!16 = !{ptr @mpt3sas_process_trigger_data._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mpt3sas_process_trigger_data._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 205, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mpt3sas_trigger_master._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mpt3sas_trigger_master._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 219, i32 3}
!25 = !{ptr @mpt3sas_trigger_master._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mpt3sas_trigger_master._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mpt3sas_trigger_master._entry.17, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 244, i32 2}
!29 = !{ptr @mpt3sas_trigger_master._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 281, i32 2}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mpt3sas_trigger_event._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mpt3sas_trigger_event._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @mpt3sas_trigger_event._entry.21, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 305, i32 3}
!37 = !{ptr @mpt3sas_trigger_event._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mpt3sas_trigger_event._entry.23, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 314, i32 2}
!40 = !{ptr @mpt3sas_trigger_event._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mpt3sas_trigger_event._entry.25, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 323, i32 2}
!43 = !{ptr @mpt3sas_trigger_event._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 361, i32 2}
!46 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mpt3sas_trigger_scsi._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mpt3sas_trigger_scsi._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mpt3sas_trigger_scsi._entry.29, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 389, i32 2}
!51 = !{ptr @mpt3sas_trigger_scsi._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mpt3sas_trigger_scsi._entry.31, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 399, i32 2}
!54 = !{ptr @mpt3sas_trigger_scsi._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 435, i32 2}
!57 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mpt3sas_trigger_mpi._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mpt3sas_trigger_mpi._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @mpt3sas_trigger_mpi._entry.35, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 462, i32 2}
!62 = !{ptr @mpt3sas_trigger_mpi._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mpt3sas_trigger_mpi._entry.37, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 471, i32 2}
!65 = !{ptr @mpt3sas_trigger_mpi._entry_ptr.38, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 75, i32 2}
!68 = !{ptr @_mpt3sas_raise_sigio._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @_mpt3sas_raise_sigio._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 87, i32 2}
!72 = !{ptr @_mpt3sas_raise_sigio._entry.40, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @_mpt3sas_raise_sigio._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 96, i32 2}
!76 = !{ptr @_mpt3sas_raise_sigio._entry.43, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @_mpt3sas_raise_sigio._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @_mpt3sas_raise_sigio._entry.46, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/scsi/mpt3sas/mpt3sas_trigger_diag.c", i32 102, i32 2}
!80 = !{ptr @_mpt3sas_raise_sigio._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
