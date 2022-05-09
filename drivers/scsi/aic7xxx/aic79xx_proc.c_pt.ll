; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic79xx_proc.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic79xx_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.102 = type { i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ahd_softc = type { [2 x i32], [2 x %union.bus_space_handle_t], %struct.scb_data, ptr, ptr, %struct.anon.99, i32, i32, i32, i32, ptr, ptr, ptr, [16 x ptr], ptr, ptr, %struct.timer_list, i32, [4 x i32], i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, [512 x i16], i16, i8, i8, ptr, i32, ptr, %struct.anon.101, i8, i8, ptr, i8, i8, i8, i32, i32, [12 x i8], [12 x i8], i32, i32, i32, ptr, ptr, %struct.map_node, %struct.ahd_suspend_state, i32, i32, i32, [4 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.bus_space_handle_t = type { i32 }
%struct.scb_data = type { %struct.scb_tailq, [1024 x %struct.scb_list], %struct.scb_list, [512 x ptr], ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, %struct.anon.98, i32, i32, i32, i16, i16, i8 }
%struct.scb_tailq = type { ptr, ptr }
%struct.scb_list = type { ptr }
%struct.anon.96 = type { ptr }
%struct.anon.97 = type { ptr }
%struct.anon.98 = type { ptr }
%struct.anon.99 = type { ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.map_node = type { i32, i32, ptr, %struct.anon.95 }
%struct.anon.95 = type { ptr }
%struct.ahd_suspend_state = type { [2 x %struct.ahd_suspend_channel_state], %struct.ahd_suspend_pci_state, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.ahd_suspend_channel_state = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ahd_suspend_pci_state = type { i32, i8, i8 }
%struct.ahd_platform_data = type { [16 x ptr], %struct.spinlock, ptr, ptr, i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.ahd_transinfo, %struct.ahd_transinfo, %struct.ahd_transinfo }
%struct.ahd_transinfo = type { i8, i8, i8, i8, i8, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.ahd_linux_device = type { %struct.anon.94, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32 }
%struct.anon.94 = type { ptr, ptr }

@ahd_proc_write_seeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ahd_proc_write_seeprom: incorrect buffer size\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ahd_proc_write_seeprom\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/aic7xxx/aic79xx_proc.c\00", [60 x i8] zeroinitializer }, align 32
@ahd_proc_write_seeprom._entry_ptr = internal global ptr @ahd_proc_write_seeprom._entry, section ".printk_index", align 4
@ahd_proc_write_seeprom._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ahd_proc_write_seeprom: cksum verification failed\0A\00", [45 x i8] zeroinitializer }, align 32
@ahd_proc_write_seeprom._entry_ptr.5 = internal global ptr @ahd_proc_write_seeprom._entry.3, section ".printk_index", align 4
@ahd_proc_write_seeprom._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ahd_proc_write_seeprom: No Serial EEPROM\0A\00", [54 x i8] zeroinitializer }, align 32
@ahd_proc_write_seeprom._entry_ptr.8 = internal global ptr @ahd_proc_write_seeprom._entry.6, section ".printk_index", align 4
@ahd_proc_write_seeprom._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"aic79xx: Unable to allocate serial eeprom buffer.  Write failing\0A\00", [62 x i8] zeroinitializer }, align 32
@ahd_proc_write_seeprom._entry_ptr.11 = internal global ptr @ahd_proc_write_seeprom._entry.9, section ".printk_index", align 4
@ahd_proc_write_seeprom._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aic79xx: Writing Serial EEPROM\0A\00", [32 x i8] zeroinitializer }, align 32
@ahd_proc_write_seeprom._entry_ptr.14 = internal global ptr @ahd_proc_write_seeprom._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec AIC79xx driver version: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Allocated SCBs: %d, SG List Length: %d\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No Serial EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial EEPROM:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%.4x \00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Target %d Negotiation Settings\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09User: \00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09Goal: \00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09Curr: \00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Renegotiation Pending\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d.%03dMB/s transfers\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%dKB/s transfers\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (%d.%03dMHz\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" RDSTRM\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"|DT\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" DT\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"|IU\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IU\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"|RTI\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" RTI\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"|QAS\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" QAS\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" (\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%dbit)\00", [25 x i8] zeroinitializer }, align 32
@scsi_syncrates = internal constant { [5 x %struct.anon.102], [56 x i8] } { [5 x %struct.anon.102] [%struct.anon.102 { i32 8, i32 625 }, %struct.anon.102 { i32 9, i32 1250 }, %struct.anon.102 { i32 10, i32 2500 }, %struct.anon.102 { i32 11, i32 3030 }, %struct.anon.102 { i32 12, i32 5000 }], [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09Channel %c Target %d Lun %d Settings\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09\09Commands Queued %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09\09Commands Active %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09\09Command Openings %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09\09Max Tagged Openings %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\09\09Device Queue Frozen Count %d\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 227, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 233, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 239, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 248, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 253, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 282, i32 16 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 283, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 284, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 287, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 293, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 295, i32 15 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 300, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 167, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 168, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 174, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 176, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 100, i32 15 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 112, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 114, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 120, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 122, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 126, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 126, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 130, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 130, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 134, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 134, i32 43 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 138, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 138, i32 43 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 145, i32 16 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 147, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 149, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"scsi_syncrates\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 59, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 196, i32 16 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 200, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 201, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 202, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 203, i32 16 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [39 x i8] c"../drivers/scsi/aic7xxx/aic79xx_proc.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 204, i32 16 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @ahd_proc_write_seeprom._entry, ptr @ahd_proc_write_seeprom._entry.12, ptr @ahd_proc_write_seeprom._entry.3, ptr @ahd_proc_write_seeprom._entry.6, ptr @ahd_proc_write_seeprom._entry.9, ptr @ahd_proc_write_seeprom._entry_ptr, ptr @ahd_proc_write_seeprom._entry_ptr.11, ptr @ahd_proc_write_seeprom._entry_ptr.14, ptr @ahd_proc_write_seeprom._entry_ptr.5, ptr @ahd_proc_write_seeprom._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @scsi_syncrates, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_proc_write_seeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_proc_write_seeprom._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_proc_write_seeprom._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_proc_write_seeprom._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_proc_write_seeprom._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_syncrates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_proc_write_seeprom(ptr nocapture noundef readonly %shost, ptr noundef %buffer, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %3, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #5
  %call = tail call i32 @ahd_is_paused(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahd_pause(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call zeroext i8 @ahd_save_modes(ptr noundef %1) #5
  tail call void @ahd_set_modes(ptr noundef %1, i32 noundef 3, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %length)
  %cmp.not = icmp eq i32 %length, 64
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %done

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ahd_verify_cksum(ptr noundef %buffer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %done

if.end13:                                         ; preds = %if.end4
  %call14 = tail call i32 @ahd_acquire_seeprom(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end19, label %if.else

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %done

if.else:                                          ; preds = %if.end13
  %seep_config = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seep_config, align 4
  %cmp22 = icmp eq ptr %5, null
  br i1 %cmp22, label %if.then23, label %if.else.do.end38_crit_edge

if.else.do.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

if.then23:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 64) #9
  %7 = ptrtoint ptr %seep_config to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %seep_config, align 4
  %cmp27 = icmp eq ptr %call7.i, null
  br i1 %cmp27, label %do.end31, label %if.then23.do.end38_crit_edge

if.then23.do.end38_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

do.end31:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %done

do.end38:                                         ; preds = %if.then23.do.end38_crit_edge, %if.else.do.end38_crit_edge
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  %channel = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channel, align 4
  %conv = zext i8 %9 to i32
  %sub = shl nuw nsw i32 %conv, 5
  %mul = add nsw i32 %sub, -2080
  %call41 = tail call i32 @ahd_write_seeprom(ptr noundef %1, ptr noundef %buffer, i32 noundef %mul, i32 noundef 32) #5
  %10 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seep_config, align 4
  %call43 = tail call i32 @ahd_read_seeprom(ptr noundef %1, ptr noundef %11, i32 noundef %mul, i32 noundef 32, i32 noundef 0) #5
  tail call void @ahd_release_seeprom(ptr noundef %1) #5
  br label %done

done:                                             ; preds = %do.end38, %do.end31, %do.end19, %do.end10, %do.end
  %written.1 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end19 ], [ -22, %do.end31 ], [ 64, %do.end38 ]
  tail call void @ahd_restore_modes(ptr noundef %1, i8 noundef zeroext %call1) #5
  br i1 %tobool.not, label %if.then46, label %done.if.end47_crit_edge

done.if.end47_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then46:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahd_unpause(ptr noundef %1) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %done.if.end47_crit_edge
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i76 = getelementptr inbounds %struct.ahd_platform_data, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i76, i32 noundef %call2.i) #5
  ret i32 %written.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ahd_save_modes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_set_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_verify_cksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_acquire_seeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_write_seeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_read_seeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_release_seeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_restore_modes(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_linux_show_info(ptr noundef %m, ptr nocapture noundef readonly %shost) local_unnamed_addr #0 align 64 {
entry:
  %tstate.i = alloca ptr, align 4
  %ahd_info = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ahd_info) #5
  %2 = call ptr @memset(ptr %ahd_info, i32 255, i32 256)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #5
  %description = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 60
  %3 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %description, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, ptr noundef %4) #5
  call void @ahd_controller_info(ptr noundef %1, ptr noundef nonnull %ahd_info) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, ptr noundef nonnull %ahd_info) #5
  %numscbs = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 2, i32 13
  %5 = ptrtoint ptr %numscbs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %numscbs, align 4
  %conv = zext i16 %6 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef 128) #5
  %seep_config = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seep_config, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.19) #5
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.20) #5
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.else
  %i.050 = phi i32 [ 0, %if.else ], [ %inc, %if.end.for.body_crit_edge ]
  %rem = and i32 %i.050, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp6 = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.050)
  %cmp8.not = icmp eq i32 %i.050, 0
  %or.cond = or i1 %cmp8.not, %cmp6
  br i1 %or.cond, label %for.body.if.end_crit_edge, label %if.then10

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  br label %if.end

if.end:                                           ; preds = %if.then10, %for.body.if.end_crit_edge
  %9 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %seep_config, align 4
  %arrayidx = getelementptr i16, ptr %10, i32 %i.050
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %conv12 = zext i16 %12 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %conv12) #5
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.then
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  %features = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp14, i32 8, i32 16
  %our_id = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 38
  %platform_data.i = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 10
  br label %for.body21

for.body21:                                       ; preds = %ahd_dump_target_state.exit.for.body21_crit_edge, %if.end13
  %i.151 = phi i32 [ 0, %if.end13 ], [ %inc24, %ahd_dump_target_state.exit.for.body21_crit_edge ]
  %15 = ptrtoint ptr %our_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %our_id, align 1
  %conv22 = zext i8 %16 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate.i) #5
  %17 = ptrtoint ptr %tstate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate.i, align 4, !annotation !99
  %call.i = call ptr @ahd_fetch_transinfo(ptr noundef %1, i8 noundef zeroext 65, i32 noundef %conv22, i32 noundef %i.151, ptr noundef nonnull %tstate.i) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef %i.151) #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #5
  %user.i = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call.i, i32 0, i32 2
  call fastcc void @ahd_format_transinfo(ptr noundef %m, ptr noundef %user.i) #5
  %18 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i, align 4
  %arrayidx.i = getelementptr [16 x ptr], ptr %19, i32 0, i32 %i.151
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %21, null
  br i1 %cmp.i, label %for.body21.ahd_dump_target_state.exit_crit_edge, label %if.end.i

for.body21.ahd_dump_target_state.exit_crit_edge:  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %ahd_dump_target_state.exit

if.end.i:                                         ; preds = %for.body21
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #5
  %goal.i = getelementptr inbounds %struct.ahd_initiator_tinfo, ptr %call.i, i32 0, i32 1
  call fastcc void @ahd_format_transinfo(ptr noundef %m, ptr noundef %goal.i) #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.25) #5
  call fastcc void @ahd_format_transinfo(ptr noundef %m, ptr noundef %call.i) #5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i
  %lun.01.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %conv.i = zext i32 %lun.01.i to i64
  %call3.i = call ptr @scsi_device_lookup_by_target(ptr noundef nonnull %21, i64 noundef %conv.i) #5
  %cmp4.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.i, label %for.body.i.cleanup.i_crit_edge, label %if.end7.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call3.i, align 8
  %sdev_data.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %call3.i, i32 0, i32 71
  %transportt.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %transportt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transportt.i.i.i, align 4
  %device_private_offset.i.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %device_private_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device_private_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %sdev_data.i.i.i, i32 %27
  %sdev_target.i.i = getelementptr inbounds %struct.scsi_device, ptr %call3.i, i32 0, i32 37
  %28 = ptrtoint ptr %sdev_target.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev_target.i.i, align 8
  %channel.i.i = getelementptr inbounds %struct.scsi_target, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel.i.i, align 4
  %add.i.i = add i32 %31, 65
  %id.i.i = getelementptr inbounds %struct.scsi_target, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i.i, align 8
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %call3.i, i32 0, i32 18
  %34 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %lun.i.i, align 8
  %conv.i.i = trunc i64 %35 to i32
  %conv2.i.i = and i32 %conv.i.i, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %add.i.i, i32 noundef %33, i32 noundef %conv2.i.i) #5
  %commands_issued.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %commands_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %commands_issued.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %37) #5
  %active.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %active.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %39) #5
  %openings.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %openings.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %openings.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %41) #5
  %maxtags.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %maxtags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %maxtags.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %43) #5
  %qfrozen.i.i = getelementptr inbounds %struct.ahd_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %qfrozen.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qfrozen.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %45) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end7.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %lun.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %cleanup.i.ahd_dump_target_state.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.ahd_dump_target_state.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ahd_dump_target_state.exit

ahd_dump_target_state.exit:                       ; preds = %cleanup.i.ahd_dump_target_state.exit_crit_edge, %for.body21.ahd_dump_target_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate.i) #5
  %inc24 = add nuw nsw i32 %i.151, 1
  %exitcond52.not = icmp eq i32 %inc24, %spec.select
  br i1 %exitcond52.not, label %for.end25, label %ahd_dump_target_state.exit.for.body21_crit_edge

ahd_dump_target_state.exit.for.body21_crit_edge:  ; preds = %ahd_dump_target_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21

for.end25:                                        ; preds = %ahd_dump_target_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ahd_info) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_controller_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahd_fetch_transinfo(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahd_format_transinfo(ptr noundef %m, ptr nocapture noundef readonly %tinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %period = getelementptr inbounds %struct.ahd_transinfo, ptr %tinfo, i32 0, i32 3
  %0 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %period, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.26) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ahd_transinfo, ptr %tinfo, i32 0, i32 4
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3.not = icmp eq i8 %3, 0
  br i1 %cmp3.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %switch.tableidx = add i8 %1, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %for.inc.4.i

switch.lookup:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %period.i = getelementptr [5 x %struct.anon.102], ptr @scsi_syncrates, i32 0, i32 %switch.idx.cast, i32 1
  %5 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %period.i, align 4
  %div.i = udiv i32 100000000, %6
  br label %if.end8

for.inc.4.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %mul4.i = mul nuw nsw i32 %conv, 40
  %div5.i = udiv i32 10000000, %mul4.i
  br label %if.end8

if.end8:                                          ; preds = %for.inc.4.i, %switch.lookup, %if.end.if.end8_crit_edge
  %speed.0 = phi i32 [ 3300, %if.end.if.end8_crit_edge ], [ %div.i, %switch.lookup ], [ %div5.i, %for.inc.4.i ]
  %freq.0 = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ %div.i, %switch.lookup ], [ %div5.i, %for.inc.4.i ]
  %width = getelementptr inbounds %struct.ahd_transinfo, ptr %tinfo, i32 0, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width, align 1
  %conv9 = zext i8 %8 to i32
  %mul = shl i32 %speed.0, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul)
  %9 = icmp ult i32 %mul, 1000
  br i1 %9, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %mul.frozen = freeze i32 %mul
  %div = udiv i32 %mul.frozen, 1000
  %10 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %mul.frozen, %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %div, i32 noundef %rem.decomposed) #5
  br label %if.end13

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %mul) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq.0)
  %cmp14.not = icmp eq i32 %freq.0, 0
  br i1 %cmp14.not, label %if.end62.thread, label %if.then16

if.then16:                                        ; preds = %if.end13
  %freq.0.frozen = freeze i32 %freq.0
  %div17 = udiv i32 %freq.0.frozen, 1000
  %11 = mul i32 %div17, 1000
  %rem18.decomposed = sub i32 %freq.0.frozen, %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %div17, i32 noundef %rem18.decomposed) #5
  %ppr_options = getelementptr inbounds %struct.ahd_transinfo, ptr %tinfo, i32 0, i32 5
  %12 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ppr_options, align 1
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp20.not = icmp eq i8 %14, 0
  br i1 %cmp20.not, label %if.then16.if.end23_crit_edge, label %if.then22

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.30) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then16.if.end23_crit_edge
  %printed_options.0 = phi i32 [ 1, %if.then22 ], [ 0, %if.then16.if.end23_crit_edge ]
  %15 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppr_options, align 1
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp27.not = icmp eq i8 %17, 0
  br i1 %cmp27.not, label %if.end23.if.end31_crit_edge, label %if.then29

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %cmp20.not, ptr @.str.32, ptr @.str.31
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %cond) #5
  %inc30 = add nuw nsw i32 %printed_options.0, 1
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end23.if.end31_crit_edge
  %printed_options.1 = phi i32 [ %inc30, %if.then29 ], [ %printed_options.0, %if.end23.if.end31_crit_edge ]
  %18 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ppr_options, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp35.not = icmp eq i8 %20, 0
  br i1 %cmp35.not, label %if.end31.if.end41_crit_edge, label %if.then37

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %printed_options.1)
  %tobool38.not = icmp eq i32 %printed_options.1, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.34, ptr @.str.33
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %cond39) #5
  %inc40 = add nuw nsw i32 %printed_options.1, 1
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end31.if.end41_crit_edge
  %printed_options.2 = phi i32 [ %inc40, %if.then37 ], [ %printed_options.1, %if.end31.if.end41_crit_edge ]
  %21 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ppr_options, align 1
  %23 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp45.not = icmp eq i8 %23, 0
  br i1 %cmp45.not, label %if.end41.if.end51_crit_edge, label %if.then47

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %printed_options.2)
  %tobool48.not = icmp eq i32 %printed_options.2, 0
  %cond49 = select i1 %tobool48.not, ptr @.str.36, ptr @.str.35
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %cond49) #5
  %inc50 = add nuw nsw i32 %printed_options.2, 1
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end41.if.end51_crit_edge
  %printed_options.3 = phi i32 [ %inc50, %if.then47 ], [ %printed_options.2, %if.end41.if.end51_crit_edge ]
  %24 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ppr_options, align 1
  %26 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp55.not = icmp eq i8 %26, 0
  br i1 %cmp55.not, label %if.end51.if.end62_crit_edge, label %if.then57

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %printed_options.3)
  %tobool58.not = icmp eq i32 %printed_options.3, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.38, ptr @.str.37
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %cond59) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end51.if.end62_crit_edge
  %27 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp65.not = icmp eq i8 %28, 0
  br i1 %cmp65.not, label %if.then80, label %if.end62.if.end72_crit_edge

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end62.thread:                                  ; preds = %if.end13
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp65.not125 = icmp eq i8 %30, 0
  br i1 %cmp65.not125, label %if.end62.thread.if.end82_crit_edge, label %if.end62.thread.if.end72_crit_edge

if.end62.thread.if.end72_crit_edge:               ; preds = %if.end62.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end62.thread.if.end82_crit_edge:               ; preds = %if.end62.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.end72:                                         ; preds = %if.end62.thread.if.end72_crit_edge, %if.end62.if.end72_crit_edge
  %.str.40.sink = phi ptr [ @.str.39, %if.end62.if.end72_crit_edge ], [ @.str.40, %if.end62.thread.if.end72_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.40.sink) #5
  %31 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %width, align 1
  %conv74 = zext i8 %32 to i32
  %mul76 = shl i32 8, %conv74
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %mul76) #5
  br label %if.end82

if.then80:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 41) #5
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end72, %if.end62.thread.if.end82_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup_by_target(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 227, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ahd_proc_write_seeprom._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ahd_proc_write_seeprom._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 233, i32 3}
!8 = !{ptr @ahd_proc_write_seeprom._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ahd_proc_write_seeprom._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 239, i32 3}
!12 = !{ptr @ahd_proc_write_seeprom._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ahd_proc_write_seeprom._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 248, i32 5}
!16 = !{ptr @ahd_proc_write_seeprom._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ahd_proc_write_seeprom._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 253, i32 3}
!20 = !{ptr @ahd_proc_write_seeprom._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ahd_proc_write_seeprom._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 282, i32 16}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 283, i32 5}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 284, i32 16}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 287, i32 16}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 293, i32 15}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 295, i32 15}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 300, i32 18}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 167, i32 16}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 168, i32 14}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 174, i32 14}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 176, i32 14}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 100, i32 15}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 112, i32 17}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 114, i32 17}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 120, i32 17}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 122, i32 16}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 126, i32 34}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 126, i32 42}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 130, i32 34}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 130, i32 42}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 134, i32 34}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 134, i32 43}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 138, i32 34}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 138, i32 43}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 145, i32 16}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 147, i32 16}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 149, i32 17}
!76 = !{ptr @scsi_syncrates, !77, !"scsi_syncrates", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 59, i32 3}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 196, i32 16}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 200, i32 16}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 201, i32 16}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 202, i32 16}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 203, i32 16}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/aic7xxx/aic79xx_proc.c", i32 204, i32 16}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
