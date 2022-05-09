; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic7xxx_proc.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic7xxx_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.93 = type { i32, i32 }
%struct.seeprom_descriptor = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
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
%struct.ahc_softc = type { i32, %union.bus_space_handle_t, ptr, ptr, %struct.anon.91, i32, [16 x %struct.scb_tailq], %union.ahc_bus_softc, ptr, ptr, ptr, ptr, ptr, [16 x ptr], ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, ptr, i8, i8, i8, i32, [12 x i8], [12 x i8], i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16 }
%union.bus_space_handle_t = type { i32 }
%struct.anon.91 = type { ptr }
%struct.scb_tailq = type { ptr, ptr }
%union.ahc_bus_softc = type { %struct.ahc_pci_softc }
%struct.ahc_pci_softc = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ahc_platform_data = type { [16 x ptr], %struct.spinlock, i32, ptr, ptr, i32, i32, i32 }
%struct.scb_data = type { %struct.anon.83, [256 x ptr], ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, %struct.anon.90, i8, i8, i8 }
%struct.anon.83 = type { ptr }
%struct.anon.90 = type { ptr }
%struct.ahc_initiator_tinfo = type { i8, %struct.ahc_transinfo, %struct.ahc_transinfo, %struct.ahc_transinfo }
%struct.ahc_transinfo = type { i8, i8, i8, i8, i8, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.ahc_linux_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ahc_proc_write_seeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ahc_proc_write_seeprom: incorrect buffer size\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ahc_proc_write_seeprom\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/aic7xxx/aic7xxx_proc.c\00", [60 x i8] zeroinitializer }, align 32
@ahc_proc_write_seeprom._entry_ptr = internal global ptr @ahc_proc_write_seeprom._entry, section ".printk_index", align 4
@ahc_proc_write_seeprom._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ahc_proc_write_seeprom: cksum verification failed\0A\00", [45 x i8] zeroinitializer }, align 32
@ahc_proc_write_seeprom._entry_ptr.5 = internal global ptr @ahc_proc_write_seeprom._entry.3, section ".printk_index", align 4
@ahc_proc_write_seeprom._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ahc_proc_write_seeprom: unsupported adapter type\0A\00", [46 x i8] zeroinitializer }, align 32
@ahc_proc_write_seeprom._entry_ptr.8 = internal global ptr @ahc_proc_write_seeprom._entry.6, section ".printk_index", align 4
@ahc_proc_write_seeprom._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ahc_proc_write_seeprom: No Serial EEPROM\0A\00", [54 x i8] zeroinitializer }, align 32
@ahc_proc_write_seeprom._entry_ptr.11 = internal global ptr @ahc_proc_write_seeprom._entry.9, section ".printk_index", align 4
@ahc_proc_write_seeprom._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"aic7xxx: Unable to allocate serial eeprom buffer.  Write failing\0A\00", [62 x i8] zeroinitializer }, align 32
@ahc_proc_write_seeprom._entry_ptr.14 = internal global ptr @ahc_proc_write_seeprom._entry.12, section ".printk_index", align 4
@ahc_proc_write_seeprom._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aic7xxx: Writing Serial EEPROM\0A\00", [32 x i8] zeroinitializer }, align 32
@ahc_proc_write_seeprom._entry_ptr.17 = internal global ptr @ahc_proc_write_seeprom._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adaptec AIC7xxx driver version: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"7.0\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Allocated SCBs: %d, SG List Length: %d\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No Serial EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial EEPROM:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%.4x \00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Channel %c \00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Target %d Negotiation Settings\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09User: \00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09Goal: \00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09Curr: \00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d.%03dMB/s transfers\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%dKB/s transfers\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" (%d.%03dMHz%s, offset %d\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" DT\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" (\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%dbit)\00", [25 x i8] zeroinitializer }, align 32
@scsi_syncrates = internal constant { [5 x %struct.anon.93], [56 x i8] } { [5 x %struct.anon.93] [%struct.anon.93 { i32 8, i32 625 }, %struct.anon.93 { i32 9, i32 1250 }, %struct.anon.93 { i32 10, i32 2500 }, %struct.anon.93 { i32 11, i32 3030 }, %struct.anon.93 { i32 12, i32 5000 }], [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09Channel %c Target %d Lun %d Settings\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09\09Commands Queued %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09\09Commands Active %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09\09Command Openings %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09\09Max Tagged Openings %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\09\09Device Queue Frozen Count %d\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 205, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 211, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 247, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 252, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 261, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 266, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 297, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 298, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 299, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 302, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 307, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 309, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 314, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 146, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 147, i32 16 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 148, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 154, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 156, i32 14 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 109, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 111, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 114, i32 17 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 117, i32 7 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 117, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 122, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 124, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 126, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"scsi_syncrates\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 60, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 176, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 180, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 181, i32 16 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 182, i32 16 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 183, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [39 x i8] c"../drivers/scsi/aic7xxx/aic7xxx_proc.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 184, i32 16 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @ahc_proc_write_seeprom._entry, ptr @ahc_proc_write_seeprom._entry.12, ptr @ahc_proc_write_seeprom._entry.15, ptr @ahc_proc_write_seeprom._entry.3, ptr @ahc_proc_write_seeprom._entry.6, ptr @ahc_proc_write_seeprom._entry.9, ptr @ahc_proc_write_seeprom._entry_ptr, ptr @ahc_proc_write_seeprom._entry_ptr.11, ptr @ahc_proc_write_seeprom._entry_ptr.14, ptr @ahc_proc_write_seeprom._entry_ptr.17, ptr @ahc_proc_write_seeprom._entry_ptr.5, ptr @ahc_proc_write_seeprom._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @scsi_syncrates, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_proc_write_seeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_proc_write_seeprom._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_proc_write_seeprom._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_proc_write_seeprom._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_proc_write_seeprom._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_proc_write_seeprom._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_syncrates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_proc_write_seeprom(ptr nocapture noundef readonly %shost, ptr noundef %buffer, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %sd = alloca %struct.seeprom_descriptor, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sd) #5
  %2 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 3
  %5 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 4
  %6 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %7 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 6
  %8 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 7
  %9 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 8
  %10 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 9
  %11 = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 10
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 8
  %12 = call ptr @memset(ptr %sd, i32 255, i32 32)
  %13 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %14, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #5
  %call = tail call i32 @ahc_is_paused(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahc_pause(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %length)
  %cmp.not = icmp eq i32 %length, 64
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %done

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ahc_verify_cksum(ptr noundef %buffer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %done

if.end12:                                         ; preds = %if.end3
  %15 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %sd, align 4
  %chip = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip, align 4
  %and = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13.not = icmp eq i32 %and, 0
  br i1 %cmp13.not, label %if.else21, label %if.then14

if.then14:                                        ; preds = %if.end12
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30, ptr %2, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 30, ptr %3, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 30, ptr %4, align 4
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and15 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool16.not, i32 6, i32 8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %5, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 32, ptr %6, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 16, ptr %7, align 2
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 8, ptr %8, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4, ptr %9, align 2
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %10, align 4
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %11, align 2
  %call20 = call i32 @ahc_acquire_seeprom(ptr noundef %1, ptr noundef nonnull %sd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %phi.cmp = icmp eq i32 %call20, 0
  br i1 %phi.cmp, label %do.end48, label %if.then14.if.else51_crit_edge

if.then14.if.else51_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else51

if.else21:                                        ; preds = %if.end12
  %and23 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24.not = icmp eq i32 %and23, 0
  br i1 %cmp24.not, label %do.end39, label %if.then25

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 192, ptr %2, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 193, ptr %3, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 193, ptr %4, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %5, align 4
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %6, align 4
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 128, ptr %7, align 2
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 4, ptr %8, align 4
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %9, align 2
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %10, align 4
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %11, align 2
  br label %if.else51

do.end39:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %done

do.end48:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %done

if.else51:                                        ; preds = %if.then25, %if.then14.if.else51_crit_edge
  %seep_config = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seep_config, align 4
  %cmp52 = icmp eq ptr %41, null
  br i1 %cmp52, label %if.then53, label %if.else51.do.end68_crit_edge

if.else51.do.end68_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

if.then53:                                        ; preds = %if.else51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 2592, i32 noundef 64) #9
  %43 = ptrtoint ptr %seep_config to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i, ptr %seep_config, align 4
  %cmp57 = icmp eq ptr %call7.i, null
  br i1 %cmp57, label %do.end61, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

do.end61:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %done

do.end68:                                         ; preds = %if.then53.do.end68_crit_edge, %if.else51.do.end68_crit_edge
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  %channel = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 29
  %44 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %channel, align 4
  %conv = zext i8 %45 to i32
  %sub = shl nuw nsw i32 %conv, 5
  %mul = add nsw i32 %sub, -2080
  %call71 = call i32 @ahc_write_seeprom(ptr noundef nonnull %sd, ptr noundef %buffer, i32 noundef %mul, i32 noundef 32) #5
  %46 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %seep_config, align 4
  %call73 = call i32 @ahc_read_seeprom(ptr noundef nonnull %sd, ptr noundef %47, i32 noundef %mul, i32 noundef 32) #5
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip, align 4
  %and75 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %if.then78, label %do.end68.done_crit_edge

do.end68.done_crit_edge:                          ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then78:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #7
  call void @ahc_release_seeprom(ptr noundef nonnull %sd) #5
  br label %done

done:                                             ; preds = %if.then78, %do.end68.done_crit_edge, %do.end61, %do.end48, %do.end39, %do.end9, %do.end
  %written.1 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -22, %do.end48 ], [ -22, %do.end39 ], [ -22, %do.end61 ], [ 64, %if.then78 ], [ 64, %do.end68.done_crit_edge ]
  br i1 %tobool.not, label %if.then82, label %done.if.end83_crit_edge

done.if.end83_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then82:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  call void @ahc_unpause(ptr noundef %1) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %done.if.end83_crit_edge
  %50 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %platform_data.i, align 4
  %spin_lock.i111 = getelementptr inbounds %struct.ahc_platform_data, ptr %51, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i111, i32 noundef %call2.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sd) #5
  ret i32 %written.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_verify_cksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_acquire_seeprom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_write_seeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_read_seeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_release_seeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_linux_show_info(ptr noundef %m, ptr nocapture noundef readonly %shost) local_unnamed_addr #0 align 64 {
entry:
  %tstate.i = alloca ptr, align 4
  %ahc_info = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ahc_info) #5
  %2 = call ptr @memset(ptr %ahc_info, i32 255, i32 256)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #5
  %description = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 54
  %3 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %description, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, ptr noundef %4) #5
  call void @ahc_controller_info(ptr noundef %1, ptr noundef nonnull %ahc_info) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, ptr noundef nonnull %ahc_info) #5
  %scb_data = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %scb_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scb_data, align 4
  %numscbs = getelementptr inbounds %struct.scb_data, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %numscbs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %numscbs, align 4
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef 128) #5
  %seep_config = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %seep_config, align 4
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.22) #5
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #5
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.else
  %i.067 = phi i32 [ 0, %if.else ], [ %inc, %if.end.for.body_crit_edge ]
  %rem = and i32 %i.067, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp6 = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.067)
  %cmp8.not = icmp eq i32 %i.067, 0
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
  %11 = ptrtoint ptr %seep_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %seep_config, align 4
  %arrayidx = getelementptr i16, ptr %12, i32 %i.067
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv12 = zext i16 %14 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %conv12) #5
  %inc = add nuw nsw i32 %i.067, 1
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
  %features = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features, align 4
  %and = and i32 %16, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  %spec.store.select = select i1 %cmp14, i32 8, i32 16
  %our_id22 = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 31
  %our_id_b = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 32
  %platform_data.i = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 8
  br label %for.body21

for.body21:                                       ; preds = %ahc_dump_target_state.exit.for.body21_crit_edge, %if.end13
  %i.168 = phi i32 [ 0, %if.end13 ], [ %inc36, %ahc_dump_target_state.exit.for.body21_crit_edge ]
  %17 = ptrtoint ptr %our_id22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %our_id22, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.168)
  %cmp24 = icmp ugt i32 %i.168, 7
  br i1 %cmp24, label %land.lhs.true26, label %for.body21.if.end34_crit_edge

for.body21.if.end34_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true26:                                  ; preds = %for.body21
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %features, align 4
  %and28 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29.not = icmp eq i32 %and28, 0
  br i1 %cmp29.not, label %land.lhs.true26.if.end34_crit_edge, label %if.then31

land.lhs.true26.if.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %our_id_b to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %our_id_b, align 1
  %rem33 = and i32 %i.168, 7
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true26.if.end34_crit_edge, %for.body21.if.end34_crit_edge
  %our_id.0.in = phi i8 [ %22, %if.then31 ], [ %18, %land.lhs.true26.if.end34_crit_edge ], [ %18, %for.body21.if.end34_crit_edge ]
  %target_id.0 = phi i32 [ %rem33, %if.then31 ], [ %i.168, %land.lhs.true26.if.end34_crit_edge ], [ %i.168, %for.body21.if.end34_crit_edge ]
  %channel.0 = phi i8 [ 66, %if.then31 ], [ 65, %land.lhs.true26.if.end34_crit_edge ], [ 65, %for.body21.if.end34_crit_edge ]
  %our_id.0 = zext i8 %our_id.0.in to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstate.i) #5
  %23 = ptrtoint ptr %tstate.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %tstate.i, align 4, !annotation !89
  %call.i = call ptr @ahc_fetch_transinfo(ptr noundef %1, i8 noundef zeroext %channel.0, i32 noundef %our_id.0, i32 noundef %target_id.0, ptr noundef nonnull %tstate.i) #5
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features, align 4
  %and.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end34.if.end.i_crit_edge, label %if.then.i

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %channel.0 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %conv.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end34.if.end.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %target_id.0) #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.27) #5
  %user.i = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call.i, i32 0, i32 3
  call fastcc void @ahc_format_transinfo(ptr noundef %m, ptr noundef %user.i) #5
  %26 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platform_data.i, align 4
  %arrayidx.i = getelementptr [16 x ptr], ptr %27, i32 0, i32 %i.168
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i.ahc_dump_target_state.exit_crit_edge, label %if.end3.i

if.end.i.ahc_dump_target_state.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ahc_dump_target_state.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #5
  %goal.i = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call.i, i32 0, i32 2
  call fastcc void @ahc_format_transinfo(ptr noundef %m, ptr noundef %goal.i) #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.29) #5
  %curr.i = getelementptr inbounds %struct.ahc_initiator_tinfo, ptr %call.i, i32 0, i32 1
  call fastcc void @ahc_format_transinfo(ptr noundef %m, ptr noundef %curr.i) #5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end3.i
  %lun.036.i = phi i32 [ 0, %if.end3.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %conv6.i = zext i32 %lun.036.i to i64
  %call7.i = call ptr @scsi_device_lookup_by_target(ptr noundef nonnull %29, i64 noundef %conv6.i) #5
  %cmp8.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.i, label %for.body.i.cleanup.i_crit_edge, label %if.end11.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i, align 8
  %sdev_data.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %call7.i, i32 0, i32 71
  %transportt.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %transportt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transportt.i.i.i, align 4
  %device_private_offset.i.i.i = getelementptr inbounds %struct.scsi_transport_template, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %device_private_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %device_private_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %sdev_data.i.i.i, i32 %35
  %sdev_target.i.i = getelementptr inbounds %struct.scsi_device, ptr %call7.i, i32 0, i32 37
  %36 = ptrtoint ptr %sdev_target.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev_target.i.i, align 8
  %channel.i.i = getelementptr inbounds %struct.scsi_target, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel.i.i, align 4
  %add.i.i = add i32 %39, 65
  %id.i.i = getelementptr inbounds %struct.scsi_target, ptr %37, i32 0, i32 6
  %40 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id.i.i, align 8
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %call7.i, i32 0, i32 18
  %42 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %lun.i.i, align 8
  %conv.i.i = trunc i64 %43 to i32
  %conv2.i.i = and i32 %conv.i.i, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %add.i.i, i32 noundef %41, i32 noundef %conv2.i.i) #5
  %commands_issued.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %commands_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %commands_issued.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %45) #5
  %46 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %47) #5
  %openings.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %openings.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %openings.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %49) #5
  %maxtags.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %maxtags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %maxtags.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %51) #5
  %qfrozen.i.i = getelementptr inbounds %struct.ahc_linux_device, ptr %add.ptr.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %qfrozen.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qfrozen.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %53) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end11.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %lun.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %cleanup.i.ahc_dump_target_state.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.ahc_dump_target_state.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ahc_dump_target_state.exit

ahc_dump_target_state.exit:                       ; preds = %cleanup.i.ahc_dump_target_state.exit_crit_edge, %if.end.i.ahc_dump_target_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstate.i) #5
  %inc36 = add nuw nsw i32 %i.168, 1
  %exitcond69.not = icmp eq i32 %inc36, %spec.store.select
  br i1 %exitcond69.not, label %for.end37, label %ahc_dump_target_state.exit.for.body21_crit_edge

ahc_dump_target_state.exit.for.body21_crit_edge:  ; preds = %ahc_dump_target_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21

for.end37:                                        ; preds = %ahc_dump_target_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ahc_info) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_controller_info(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local ptr @ahc_fetch_transinfo(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahc_format_transinfo(ptr noundef %m, ptr nocapture noundef readonly %tinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.ahc_transinfo, ptr %tinfo, i32 0, i32 4
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %period = getelementptr inbounds %struct.ahc_transinfo, ptr %tinfo, i32 0, i32 3
  %2 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %period, align 1
  %switch.tableidx = add i8 %3, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %for.inc.4.i

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %period.i = getelementptr [5 x %struct.anon.93], ptr @scsi_syncrates, i32 0, i32 %switch.idx.cast, i32 1
  %5 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %period.i, align 4
  %div.i = udiv i32 100000000, %6
  br label %if.end

for.inc.4.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv2 = zext i8 %3 to i32
  %mul4.i = mul nuw nsw i32 %conv2, 40
  %div5.i = udiv i32 10000000, %mul4.i
  br label %if.end

if.end:                                           ; preds = %for.inc.4.i, %switch.lookup, %entry.if.end_crit_edge
  %speed.0 = phi i32 [ 3300, %entry.if.end_crit_edge ], [ %div.i, %switch.lookup ], [ %div5.i, %for.inc.4.i ]
  %freq.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %div.i, %switch.lookup ], [ %div5.i, %for.inc.4.i ]
  %width = getelementptr inbounds %struct.ahc_transinfo, ptr %tinfo, i32 0, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width, align 1
  %conv3 = zext i8 %8 to i32
  %mul = shl i32 %speed.0, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul)
  %9 = icmp ult i32 %mul, 1000
  br i1 %9, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul.frozen = freeze i32 %mul
  %div = udiv i32 %mul.frozen, 1000
  %10 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %mul.frozen, %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %div, i32 noundef %rem.decomposed) #5
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %mul) #5
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq.0)
  %cmp8.not = icmp eq i32 %freq.0, 0
  br i1 %cmp8.not, label %if.end18, label %if.end18.thread

if.end18:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp21.not = icmp eq i8 %12, 0
  br i1 %cmp21.not, label %if.end18.if.end38_crit_edge, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end18.if.end38_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end18.thread:                                  ; preds = %if.end7
  %freq.0.frozen = freeze i32 %freq.0
  %div11 = udiv i32 %freq.0.frozen, 1000
  %13 = mul i32 %div11, 1000
  %rem12.decomposed = sub i32 %freq.0.frozen, %13
  %ppr_options = getelementptr inbounds %struct.ahc_transinfo, ptr %tinfo, i32 0, i32 5
  %14 = ptrtoint ptr %ppr_options to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ppr_options, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp14.not = icmp eq i8 %16, 0
  %cond = select i1 %cmp14.not, ptr @.str.34, ptr @.str.33
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %offset, align 1
  %conv17 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %div11, i32 noundef %rem12.decomposed, ptr noundef nonnull %cond, i32 noundef %conv17) #5
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp21.not61 = icmp eq i8 %20, 0
  br i1 %cmp21.not61, label %if.then36, label %if.end18.thread.if.end28_crit_edge

if.end18.thread.if.end28_crit_edge:               ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.end18.thread.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  %.str.36.sink = phi ptr [ @.str.35, %if.end18.thread.if.end28_crit_edge ], [ @.str.36, %if.end18.if.end28_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.36.sink) #5
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %width, align 1
  %conv30 = zext i8 %22 to i32
  %mul32 = shl i32 8, %conv30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %mul32) #5
  br label %if.end38

if.then36:                                        ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 41) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end28, %if.end18.if.end38_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 205, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ahc_proc_write_seeprom._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ahc_proc_write_seeprom._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 211, i32 3}
!8 = !{ptr @ahc_proc_write_seeprom._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ahc_proc_write_seeprom._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 247, i32 3}
!12 = !{ptr @ahc_proc_write_seeprom._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ahc_proc_write_seeprom._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 252, i32 3}
!16 = !{ptr @ahc_proc_write_seeprom._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ahc_proc_write_seeprom._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 261, i32 5}
!20 = !{ptr @ahc_proc_write_seeprom._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ahc_proc_write_seeprom._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 266, i32 3}
!24 = !{ptr @ahc_proc_write_seeprom._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ahc_proc_write_seeprom._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 297, i32 16}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 298, i32 5}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 299, i32 16}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 302, i32 16}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 307, i32 15}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 309, i32 15}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 314, i32 18}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 146, i32 17}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 147, i32 16}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 148, i32 14}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 154, i32 14}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 156, i32 14}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 109, i32 17}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 111, i32 17}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 114, i32 17}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 117, i32 7}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 117, i32 15}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 122, i32 16}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 124, i32 16}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 126, i32 17}
!66 = !{ptr @scsi_syncrates, !67, !"scsi_syncrates", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 60, i32 3}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 176, i32 16}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 180, i32 16}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 181, i32 16}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 182, i32 16}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 183, i32 16}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/aic7xxx/aic7xxx_proc.c", i32 184, i32 16}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
