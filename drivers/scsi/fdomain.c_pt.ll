; ModuleID = '/llk/IR_all_yes/drivers/scsi/fdomain.c_pt.bc'
source_filename = "../drivers/scsi/fdomain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fdomain_create\22, \22a\22\09"
module asm "\09.weak\09__crc_fdomain_create\09\09\09\09"
module asm "\09.long\09__crc_fdomain_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fdomain_create:\09\09\09\09\09"
module asm "\09.asciz \09\22fdomain_create\22\09\09\09\09\09"
module asm "__kstrtabns_fdomain_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fdomain_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_fdomain_destroy\09\09\09\09"
module asm "\09.long\09__crc_fdomain_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fdomain_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22fdomain_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_fdomain_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.fdomain = type { i32, ptr, i32, %struct.work_struct }

@fdomain_create.chip_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TMC-1800\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TMC-18C50\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TMC-18C30\00", [22 x i8] zeroinitializer }, align 32
@fdomain_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"card has no IRQ assigned\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fdomain_create\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/fdomain.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fdomain_create._entry_ptr = internal global ptr @fdomain_create._entry, section ".printk_index", align 4
@fdomain_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @fdomain_queue, ptr null, ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @fdomain_abort, ptr null, ptr null, ptr null, ptr @fdomain_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdomain_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.11, ptr null, i32 1, i32 7, i16 64, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@fdomain_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&fd->work)\00", [35 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcmcia\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fdomain\00", [24 x i8] zeroinitializer }, align 32
@fdomain_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 555, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s chip at 0x%x irq %d SCSI ID %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fdomain_create._entry_ptr.15 = internal global ptr @fdomain_create._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TMC-36C70 (PCI bus)\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_fdomain_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_fdomain_create = external dso_local constant [0 x i8], align 1
@__ksymtab_fdomain_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fdomain_create to i32), ptr @__kstrtab_fdomain_create, ptr @__kstrtabns_fdomain_create }, section "___ksymtab_gpl+fdomain_create", align 4
@__kstrtab_fdomain_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fdomain_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_fdomain_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fdomain_destroy to i32), ptr @__kstrtab_fdomain_destroy, ptr @__kstrtabns_fdomain_destroy }, section "___ksymtab_gpl+fdomain_destroy", align 4
@__UNIQUE_ID_author287 = internal constant [45 x i8] c"fdomain.author=Ondrej Zary, Rickard E. Faith\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [64 x i8] c"fdomain.description=Future Domain TMC-16x0/TMC-3260 SCSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [34 x i8] c"fdomain.file=drivers/scsi/fdomain\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [20 x i8] c"fdomain.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Future Domain TMC-16x0\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 24809, i64 24871]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 12]
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"chip_names\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 512, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 513, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 513, i32 14 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 513, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 513, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 527, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"fdomain_template\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 492, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 545, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 547, i32 49 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 550, i32 47 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 553, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [26 x i8] c"../drivers/scsi/fdomain.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 494, i32 12 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__ksymtab_fdomain_create, ptr @__ksymtab_fdomain_destroy, ptr @fdomain_create._entry, ptr @fdomain_create._entry.12, ptr @fdomain_create._entry_ptr, ptr @fdomain_create._entry_ptr.15, ptr @fdomain_create.chip_names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fdomain_template, ptr @fdomain_create.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdomain_create.chip_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdomain_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdomain_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdomain_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdomain_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdomain_create(i32 noundef %base, i32 noundef %irq, i32 noundef %this_id, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %base, 5
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add1.i to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %conv.i = zext i8 %1 to i16
  %add4.i = add i32 %base, 6
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %2 = inttoptr i32 %add6.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %conv10.i = zext i8 %3 to i16
  %shl.i = shl nuw i16 %conv10.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %4 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or.i, label %entry.cleanup_crit_edge [
    i16 24871, label %entry.if.end_crit_edge
    i16 24809, label %do.body.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %add13.i = add i32 %base, 11
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %5 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -128) #6, !srcloc !59
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool.not.i = icmp sgt i8 %6, -1
  br i1 %tobool.not.i, label %do.body.i.if.end44.i_crit_edge, label %do.body26.i

do.body.i.if.end44.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.body26.i:                                      ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #6, !srcloc !59
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp sgt i8 %7, -1
  br i1 %cmp.i, label %do.body26.i.if.end_crit_edge, label %do.body26.i.if.end44.i_crit_edge

do.body26.i.if.end44.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.body26.i.if.end_crit_edge:                     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end44.i:                                       ; preds = %do.body26.i.if.end44.i_crit_edge, %do.body.i.if.end44.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.end44.i, %do.body26.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %do.body26.i.if.end_crit_edge ], [ 1, %entry.if.end_crit_edge ], [ 2, %if.end44.i ]
  tail call fastcc void @fdomain_reset(i32 noundef %base)
  %add.i86 = add i32 %base, 7
  %and.i87 = and i32 %add.i86, 1048575
  %add1.i88 = or i32 %and.i87, -18874368
  %8 = inttoptr i32 %add1.i88 to ptr
  br label %do.body.i90

for.cond.i:                                       ; preds = %do.body.i90
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 255
  br i1 %exitcond.not.i, label %if.end4, label %for.cond.i.do.body.i90_crit_edge

for.cond.i.do.body.i90_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i90

do.body.i90:                                      ; preds = %for.cond.i.do.body.i90_crit_edge, %if.end
  %i.014.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.do.body.i90_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %conv.i89 = trunc i32 %i.014.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv.i89) #6, !srcloc !59
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %conv7.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.014.i, i32 %conv7.i)
  %cmp8.not.i = icmp eq i32 %i.014.i, %conv7.i
  br i1 %cmp8.not.i, label %for.cond.i, label %do.body.i90.cleanup_crit_edge

do.body.i90.cleanup_crit_edge:                    ; preds = %do.body.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool5.not = icmp eq i32 %irq, 0
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @fdomain_template, i32 noundef 56) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %this_id)
  %tobool12.not = icmp eq i32 %this_id, 0
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %this_id, 7
  %this_id14 = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 0, i32 25
  %10 = ptrtoint ptr %this_id14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %this_id14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %irq16 = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 0, i32 47
  %11 = ptrtoint ptr %irq16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %irq, ptr %irq16, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 0, i32 44
  %12 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %base, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 0, i32 45
  %13 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %n_io_port, align 4
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 0, i32 53
  %14 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %base, ptr %hostdata.i, align 4
  %chip19 = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 1, i32 1
  %15 = ptrtoint ptr %chip19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.ph, ptr %chip19, align 4
  %work = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 1, i32 1, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %16 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 1, i32 3, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @fdomain_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry24 = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 1, i32 2
  %17 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 1, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 1, i32 3
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fdomain_work, ptr %func, align 4
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %21, @pci_bus_type
  br i1 %cmp, label %if.end15.if.then31_crit_edge, label %lor.lhs.false

if.end15.if.then31_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end15
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call29 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(7) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %lor.lhs.false.if.then31_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end15.if.then31_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %lor.lhs.false.if.end32_crit_edge
  %irq_flags.0 = phi i32 [ 128, %if.then31 ], [ 0, %lor.lhs.false.if.end32_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @fdomain_irq, ptr noundef null, i32 noundef %irq_flags.0, ptr noundef nonnull @.str.11, ptr noundef %hostdata.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %do.end39, label %if.end32.fail_put_crit_edge

if.end32.fail_put_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_put

do.end39:                                         ; preds = %if.end32
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 0, i32 49
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 8
  %cmp41 = icmp eq ptr %25, @pci_bus_type
  br i1 %cmp41, label %do.end39.cond.end_crit_edge, label %cond.false

do.end39.cond.end_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x ptr], ptr @fdomain_create.chip_names, i32 0, i32 %retval.0.i.ph
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end39.cond.end_crit_edge
  %cond = phi ptr [ %27, %cond.false ], [ @.str.16, %do.end39.cond.end_crit_edge ]
  %this_id42 = getelementptr inbounds %struct.Scsi_Host, ptr %call8, i32 0, i32 25
  %28 = ptrtoint ptr %this_id42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %this_id42, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev, ptr noundef nonnull @.str.13, ptr noundef %cond, i32 noundef %base, i32 noundef %irq, i32 noundef %29) #9
  %call.i92 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call8, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool44.not = icmp eq i32 %call.i92, 0
  br i1 %tobool44.not, label %if.end46, label %fail_free_irq

if.end46:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scsi_scan_host(ptr noundef nonnull %call8) #6
  br label %cleanup

fail_free_irq:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call ptr @free_irq(i32 noundef %irq, ptr noundef %hostdata.i) #6
  br label %fail_put

fail_put:                                         ; preds = %fail_free_irq, %if.end32.fail_put_crit_edge
  tail call void @scsi_host_put(ptr noundef nonnull %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %fail_put, %if.end46, %if.end7.cleanup_crit_edge, %do.end, %do.body.i90.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail_put ], [ %call8, %if.end46 ], [ null, %do.end ], [ null, %if.end7.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %do.body.i90.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdomain_reset(i32 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %add = add i32 %base, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 1) #6, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 0) #6, !srcloc !59
  br label %while.body12

while.body12:                                     ; preds = %while.body12.while.body12_crit_edge, %entry
  %__ms8.030 = phi i32 [ 1150, %entry ], [ %dec10, %while.body12.while.body12_crit_edge ]
  %dec10 = add nsw i32 %__ms8.030, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  %tobool11.not = icmp eq i32 %dec10, 0
  br i1 %tobool11.not, label %while.end13, label %while.body12.while.body12_crit_edge

while.body12.while.body12_crit_edge:              ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body12

while.end13:                                      ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %add16 = add i32 %base, 3
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %22 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %add22 = add i32 %base, 4
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %23 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 8) #6, !srcloc !59
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdomain_work(ptr noundef %work) #0 align 64 {
entry:
  %offset.i381 = alloca i32, align 4
  %len.i382 = alloca i32, align 4
  %offset.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %cur_cmd = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_cmd, align 4
  %host_lock = getelementptr i8, ptr %work, i32 -2392
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 9
  %4 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %phase, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %add = add i32 %7, 2
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %8 = inttoptr i32 %add10 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result.i, align 4
  %and.i = and i32 %12, -16711681
  %or.i = or i32 %and.i, 131072
  store i32 %or.i, ptr %result.i, align 4
  tail call fastcc void @fdomain_finish_cmd(ptr noundef %add.ptr)
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 4, ptr %phase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %add24 = add i32 %15, 2
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %16 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 66) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %add32 = add i32 %18, 1
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %19 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -126) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %this_id, align 8
  %shl = shl nuw i32 1, %25
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 16
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 8
  %shl41 = shl nuw i32 1, %27
  %or = or i32 %shl41, %shl
  %conv42 = trunc i32 %or to i8
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr, align 4
  %add44 = add i32 %29, 8
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %30 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv42) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr, align 4
  %add52 = add i32 %32, 4
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %33 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 24) #6, !srcloc !59
  br label %out

if.else:                                          ; preds = %entry
  %34 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %phase, align 4
  %and58 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  %add112 = add i32 %37, 1
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %38 = inttoptr i32 %add114 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool59.not, label %if.end109, label %if.then60

if.then60:                                        ; preds = %if.else
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool71.not = icmp eq i8 %40, 0
  br i1 %tobool71.not, label %if.then72, label %if.then60.if.end89_crit_edge

if.then60.if.end89_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then72:                                        ; preds = %if.then60
  %device73 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device73, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %id.i369 = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 16
  %45 = ptrtoint ptr %id.i369 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id.i369, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hostdata.i.i, align 4
  %add.i = add i32 %48, 1
  %and.i370 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i370, -18874368
  %49 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 -126) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %this_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 25
  %50 = ptrtoint ptr %this_id.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %this_id.i, align 8
  %shl.i = shl nuw i32 1, %51
  %shl6.i = shl nuw i32 1, %46
  %or.i371 = or i32 %shl.i, %shl6.i
  %conv.i = trunc i32 %or.i371 to i8
  %52 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hostdata.i.i, align 4
  %add8.i = add i32 %53, 8
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %54 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv.i) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hostdata.i.i, align 4
  %add16.i = add i32 %56, 4
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %57 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 8) #6, !srcloc !59
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.end.i.do.body20.i_crit_edge, %if.then72
  %timeout.0.i = phi i32 [ 350, %if.then72 ], [ %dec.i, %if.end.i.do.body20.i_crit_edge ]
  %58 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hostdata.i.i, align 4
  %add22.i = add i32 %59, 1
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %60 = inttoptr i32 %add24.i to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body81

if.end.i:                                         ; preds = %do.body20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #6
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool38.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool38.not.i, label %do.end39.i, label %if.end.i.do.body20.i_crit_edge

if.end.i.do.body20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20.i

do.end39.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hostdata.i.i, align 4
  %add.i.i = add i32 %65, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %66 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hostdata.i.i, align 4
  %add5.i.i = add i32 %68, 3
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %69 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 0) #6, !srcloc !59
  %chip.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 1, i32 1
  %70 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %chip.i.i, align 4
  %72 = and i32 %71, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %switch.i.i = icmp eq i32 %72, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hostdata.i.i, align 4
  %add14.i.i = add i32 %74, 4
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %75 = inttoptr i32 %add16.i.i to ptr
  br i1 %switch.i.i, label %do.body11.i.i, label %do.body18.i.i

do.body11.i.i:                                    ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 41) #6, !srcloc !59
  br label %if.then79

do.body18.i.i:                                    ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 9) #6, !srcloc !59
  br label %if.then79

if.then79:                                        ; preds = %do.body18.i.i, %do.body11.i.i
  %result.i372 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %76 = ptrtoint ptr %result.i372 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %result.i372, align 4
  %and.i373 = and i32 %77, -16711681
  %or.i374 = or i32 %and.i373, 65536
  store i32 %or.i374, ptr %result.i372, align 4
  tail call fastcc void @fdomain_finish_cmd(ptr noundef %add.ptr)
  br label %out

do.body81:                                        ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hostdata.i.i, align 4
  %add33.i = add i32 %79, 1
  %and34.i = and i32 %add33.i, 1048575
  %add35.i = or i32 %and34.i, -18874368
  %80 = inttoptr i32 %add35.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 -128) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr, align 4
  %add85 = add i32 %82, 4
  %and86 = and i32 %add85, 1048575
  %add87 = or i32 %and86, -18874368
  %83 = inttoptr i32 %add87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 24) #6, !srcloc !59
  br label %if.end89

if.end89:                                         ; preds = %do.body81, %if.then60.if.end89_crit_edge
  %84 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 8, ptr %phase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr, align 4
  %add96 = add i32 %86, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %87 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 -110) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr, align 4
  %add104 = add i32 %89, 1
  %and105 = and i32 %add104, 1048575
  %add106 = or i32 %and105, -18874368
  %90 = inttoptr i32 %add106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 -128) #6, !srcloc !59
  br label %out

if.end109:                                        ; preds = %if.else
  %conv118 = zext i8 %39 to i32
  %and119 = and i32 %conv118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end109.if.end207_crit_edge, label %if.then121

if.end109.if.end207_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then121:                                       ; preds = %if.end109
  %and122 = and i32 %conv118, 14
  %91 = zext i32 %and122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and122, label %if.then121.if.end207_crit_edge [
    i32 8, label %do.body123
    i32 0, label %sw.bb132
    i32 4, label %sw.bb149
    i32 12, label %sw.bb169
    i32 10, label %do.body181
    i32 14, label %sw.bb189
  ]

if.then121.if.end207_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

do.body123:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %92 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cmnd, align 4
  %sent_command = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 8
  %94 = ptrtoint ptr %sent_command to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %sent_command, align 4
  %inc = add i32 %95, 1
  store volatile i32 %inc, ptr %sent_command, align 4
  %arrayidx = getelementptr i8, ptr %93, i32 %95
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx, align 1
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr, align 4
  %and129 = and i32 %99, 1048575
  %add130 = or i32 %and129, -18874368
  %100 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 %97) #6, !srcloc !59
  br label %if.end207

sw.bb132:                                         ; preds = %if.then121
  %chip = getelementptr i8, ptr %work, i32 -4
  %101 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp133.not = icmp eq i32 %102, 1
  br i1 %cmp133.not, label %sw.bb132.if.end207_crit_edge, label %land.lhs.true

sw.bb132.if.end207_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

land.lhs.true:                                    ; preds = %sw.bb132
  %have_data_in = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 7
  %103 = ptrtoint ptr %have_data_in to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %have_data_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool136.not = icmp eq i32 %104, 0
  br i1 %tobool136.not, label %if.then137, label %land.lhs.true.if.end207_crit_edge

land.lhs.true.if.end207_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then137:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %have_data_in to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 -1, ptr %have_data_in, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr, align 4
  %add144 = add i32 %107, 4
  %and145 = and i32 %add144, 1048575
  %add146 = or i32 %and145, -18874368
  %108 = inttoptr i32 %add146 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 -40) #6, !srcloc !59
  br label %if.end207

sw.bb149:                                         ; preds = %if.then121
  %chip150 = getelementptr i8, ptr %work, i32 -4
  %109 = ptrtoint ptr %chip150 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chip150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp151.not = icmp eq i32 %110, 1
  br i1 %cmp151.not, label %sw.bb149.if.end207_crit_edge, label %land.lhs.true153

sw.bb149.if.end207_crit_edge:                     ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

land.lhs.true153:                                 ; preds = %sw.bb149
  %have_data_in155 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 7
  %111 = ptrtoint ptr %have_data_in155 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %have_data_in155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool156.not = icmp eq i32 %112, 0
  br i1 %tobool156.not, label %if.then157, label %land.lhs.true153.if.end207_crit_edge

land.lhs.true153.if.end207_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then157:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %have_data_in155 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 1, ptr %have_data_in155, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr, align 4
  %add164 = add i32 %115, 4
  %and165 = and i32 %add164, 1048575
  %add166 = or i32 %and165, -18874368
  %116 = inttoptr i32 %add166 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 -104) #6, !srcloc !59
  br label %if.end207

sw.bb169:                                         ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr, align 4
  %and173 = and i32 %118, 1048575
  %add174 = or i32 %and173, -18874368
  %119 = inttoptr i32 %add174 to ptr
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %119) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %conv178 = zext i8 %120 to i32
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 5
  %121 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 %conv178, ptr %Status, align 4
  br label %if.end207

do.body181:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr, align 4
  %and186 = and i32 %123, 1048575
  %add187 = or i32 %and186, -18874368
  %124 = inttoptr i32 %add187 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 7) #6, !srcloc !59
  br label %if.end207

sw.bb189:                                         ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr, align 4
  %and193 = and i32 %126, 1048575
  %add194 = or i32 %and193, -18874368
  %127 = inttoptr i32 %add194 to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %conv198 = zext i8 %128 to i32
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 6
  %129 = ptrtoint ptr %Message to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %conv198, ptr %Message, align 4
  %130 = load volatile i32, ptr %Message, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp202 = icmp ne i32 %130, 0
  br label %if.end207

if.end207:                                        ; preds = %sw.bb189, %do.body181, %sw.bb169, %if.then157, %land.lhs.true153.if.end207_crit_edge, %sw.bb149.if.end207_crit_edge, %if.then137, %land.lhs.true.if.end207_crit_edge, %sw.bb132.if.end207_crit_edge, %do.body123, %if.then121.if.end207_crit_edge, %if.end109.if.end207_crit_edge
  %tobool260.not = phi i1 [ true, %do.body123 ], [ true, %sw.bb169 ], [ true, %do.body181 ], [ true, %if.then121.if.end207_crit_edge ], [ true, %if.then137 ], [ true, %land.lhs.true.if.end207_crit_edge ], [ true, %sw.bb132.if.end207_crit_edge ], [ true, %if.then157 ], [ true, %land.lhs.true153.if.end207_crit_edge ], [ true, %sw.bb149.if.end207_crit_edge ], [ true, %if.end109.if.end207_crit_edge ], [ %cmp202, %sw.bb189 ]
  %chip208 = getelementptr i8, ptr %work, i32 -4
  %131 = ptrtoint ptr %chip208 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %chip208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp209 = icmp eq i32 %132, 1
  br i1 %cmp209, label %land.lhs.true211, label %if.end207.if.end247_crit_edge

if.end207.if.end247_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

land.lhs.true211:                                 ; preds = %if.end207
  %have_data_in213 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 7
  %133 = ptrtoint ptr %have_data_in213 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %have_data_in213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool214.not = icmp eq i32 %134, 0
  br i1 %tobool214.not, label %land.lhs.true215, label %land.lhs.true211.if.end247_crit_edge

land.lhs.true211.if.end247_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

land.lhs.true215:                                 ; preds = %land.lhs.true211
  %sent_command217 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 8
  %135 = ptrtoint ptr %sent_command217 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %sent_command217, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %137 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cmd_len, align 4
  %conv218 = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %conv218)
  %cmp219.not = icmp slt i32 %136, %conv218
  br i1 %cmp219.not, label %land.lhs.true215.if.end247_crit_edge, label %if.then221

land.lhs.true215.if.end247_crit_edge:             ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

if.then221:                                       ; preds = %land.lhs.true215
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %139 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp222 = icmp eq i32 %140, 1
  br i1 %cmp222, label %if.then224, label %if.else235

if.then224:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %have_data_in213 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 -1, ptr %have_data_in213, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr, align 4
  %add231 = add i32 %143, 4
  %and232 = and i32 %add231, 1048575
  %add233 = or i32 %and232, -18874368
  %144 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 -40) #6, !srcloc !59
  br label %if.end247

if.else235:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %have_data_in213 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 1, ptr %have_data_in213, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr, align 4
  %add242 = add i32 %147, 4
  %and243 = and i32 %add242, 1048575
  %add244 = or i32 %and243, -18874368
  %148 = inttoptr i32 %add244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 -104) #6, !srcloc !59
  br label %if.end247

if.end247:                                        ; preds = %if.else235, %if.then224, %land.lhs.true215.if.end247_crit_edge, %land.lhs.true211.if.end247_crit_edge, %if.end207.if.end247_crit_edge
  %have_data_in249 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 7
  %149 = ptrtoint ptr %have_data_in249 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %have_data_in249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %150)
  %cmp250 = icmp eq i32 %150, -1
  br i1 %cmp250, label %if.then252, label %if.end247.if.end253_crit_edge

if.end247.if.end253_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

if.then252:                                       ; preds = %if.end247
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %151 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 8
  %hostdata.i.i375 = getelementptr inbounds %struct.Scsi_Host, ptr %154, i32 0, i32 53
  %chip.i = getelementptr inbounds %struct.Scsi_Host, ptr %154, i32 1, i32 1
  %155 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %156)
  %cmp.i = icmp eq i32 %156, 3
  %cond.i = select i1 %cmp.i, i32 2048, i32 8192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #6
  %157 = ptrtoint ptr %hostdata.i.i375 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hostdata.i.i375, align 4
  %add58.i = add i32 %158, 14
  %and59.i = and i32 %add58.i, 1048575
  %add160.i = or i32 %and59.i, -18874368
  %159 = inttoptr i32 %add160.i to ptr
  %160 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %159) #6, !srcloc !92
  %161 = tail call i16 @llvm.bswap.i16(i16 %160) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %conv61.i = zext i16 %161 to i32
  %sub62.i = sub nsw i32 %cond.i, %conv61.i
  %162 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %sub62.i, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub62.i)
  %cmp463.i = icmp ugt i32 %sub62.i, 512
  br i1 %cmp463.i, label %while.body.lr.ph.i, label %if.then252.fdomain_write_data.exit_crit_edge

if.then252.fdomain_write_data.exit_crit_edge:     ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdomain_write_data.exit

while.body.lr.ph.i:                               ; preds = %if.then252
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end38.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sub64.i = phi i32 [ %sub62.i, %while.body.lr.ph.i ], [ %sub.i, %if.end38.i.while.body.i_crit_edge ]
  %163 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %length.i.i, align 4
  %165 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %resid_len.i.i, align 4
  %sub8.i = sub i32 %164, %166
  %167 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %sub8.i, ptr %offset.i, align 4
  %add9.i = add i32 %sub8.i, %sub64.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %164)
  %cmp11.i = icmp ugt i32 %add9.i, %164
  br i1 %cmp11.i, label %if.then.i, label %while.body.i.if.end18.i_crit_edge

while.body.i.if.end18.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then.i:                                        ; preds = %while.body.i
  %168 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %166, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp15.i = icmp eq i32 %166, 0
  br i1 %cmp15.i, label %if.then.i.fdomain_write_data.exit_crit_edge, label %if.then.i.if.end18.i_crit_edge

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then.i.fdomain_write_data.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdomain_write_data.exit

if.end18.i:                                       ; preds = %if.then.i.if.end18.i_crit_edge, %while.body.i.if.end18.i_crit_edge
  %169 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sdb.i.i, align 4
  %171 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nents.i.i, align 4
  %call21.i = call ptr @scsi_kmap_atomic_sg(ptr noundef %170, i32 noundef %172, ptr noundef nonnull %offset.i, ptr noundef nonnull %len.i) #6
  %173 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call21.i, i32 %174
  %175 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len.i, align 4
  %and22.i = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i376 = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i376, label %if.end18.i.if.end29.i_crit_edge, label %do.body.i

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

do.body.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  call void @arm_heavy_mb() #6
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %177 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %add.ptr.i, align 1
  %179 = ptrtoint ptr %hostdata.i.i375 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %hostdata.i.i375, align 4
  %add25.i = add i32 %180, 12
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %181 = inttoptr i32 %add27.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 %178) #6, !srcloc !59
  %182 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %.pr.i = load i32, ptr %len.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body.i, %if.end18.i.if.end29.i_crit_edge
  %183 = phi i32 [ %.pr.i, %do.body.i ], [ %176, %if.end18.i.if.end29.i_crit_edge ]
  %ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body.i ], [ %add.ptr.i, %if.end18.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %183)
  %cmp30.i = icmp ugt i32 %183, 1
  br i1 %cmp30.i, label %if.then32.i, label %if.end29.i.if.end38.i_crit_edge

if.end29.i.if.end38.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %184 = ptrtoint ptr %hostdata.i.i375 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %hostdata.i.i375, align 4
  %add34.i = add i32 %185, 12
  %and35.i = and i32 %add34.i, 1048575
  %add36.i = or i32 %and35.i, -18874368
  %186 = inttoptr i32 %add36.i to ptr
  %shr.i = lshr i32 %183, 1
  call void @__raw_writesw(ptr noundef nonnull %186, ptr noundef %ptr.0.i, i32 noundef %shr.i) #6
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end38.i_crit_edge
  %187 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %resid_len.i.i, align 4
  %189 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len.i, align 4
  %sub40.i = sub i32 %188, %190
  store i32 %sub40.i, ptr %resid_len.i.i, align 4
  call void @scsi_kunmap_atomic_sg(ptr noundef %call21.i) #6
  %191 = ptrtoint ptr %hostdata.i.i375 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %hostdata.i.i375, align 4
  %add.i377 = add i32 %192, 14
  %and.i378 = and i32 %add.i377, 1048575
  %add1.i379 = or i32 %and.i378, -18874368
  %193 = inttoptr i32 %add1.i379 to ptr
  %194 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %193) #6, !srcloc !92
  %195 = call i16 @llvm.bswap.i16(i16 %194) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %conv.i380 = zext i16 %195 to i32
  %sub.i = sub nsw i32 %cond.i, %conv.i380
  %196 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %sub.i, ptr %len.i, align 4
  %cmp4.i = icmp ugt i32 %sub.i, 512
  br i1 %cmp4.i, label %if.end38.i.while.body.i_crit_edge, label %if.end38.i.fdomain_write_data.exit_crit_edge

if.end38.i.fdomain_write_data.exit_crit_edge:     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdomain_write_data.exit

if.end38.i.while.body.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

fdomain_write_data.exit:                          ; preds = %if.end38.i.fdomain_write_data.exit_crit_edge, %if.then.i.fdomain_write_data.exit_crit_edge, %if.then252.fdomain_write_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #6
  br label %if.end253

if.end253:                                        ; preds = %fdomain_write_data.exit, %if.end247.if.end253_crit_edge
  %197 = ptrtoint ptr %have_data_in249 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %have_data_in249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp256 = icmp eq i32 %198, 1
  br i1 %cmp256, label %if.then258, label %if.end253.if.end259_crit_edge

if.end253.if.end259_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end259

if.then258:                                       ; preds = %if.end253
  %device.i383 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %199 = ptrtoint ptr %device.i383 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %device.i383, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 8
  %hostdata.i.i384 = getelementptr inbounds %struct.Scsi_Host, ptr %202, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i381) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i382) #6
  %203 = ptrtoint ptr %hostdata.i.i384 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %hostdata.i.i384, align 4
  %add42.i = add i32 %204, 14
  %and43.i = and i32 %add42.i, 1048575
  %add144.i = or i32 %and43.i, -18874368
  %205 = inttoptr i32 %add144.i to ptr
  %206 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %205) #6, !srcloc !92
  %207 = call i16 @llvm.bswap.i16(i16 %206) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %conv45.i = zext i16 %207 to i32
  %208 = ptrtoint ptr %len.i382 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv45.i, ptr %len.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %cmp.not46.i = icmp eq i16 %206, 0
  br i1 %cmp.not46.i, label %if.then258.fdomain_read_data.exit_crit_edge, label %while.body.lr.ph.i389

if.then258.fdomain_read_data.exit_crit_edge:      ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdomain_read_data.exit

while.body.lr.ph.i389:                            ; preds = %if.then258
  %length.i.i385 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %resid_len.i.i386 = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %sdb.i.i387 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %nents.i.i388 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  br label %while.body.i393

while.body.i393:                                  ; preds = %if.end27.i.while.body.i393_crit_edge, %while.body.lr.ph.i389
  %209 = ptrtoint ptr %length.i.i385 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %length.i.i385, align 4
  %211 = ptrtoint ptr %resid_len.i.i386 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %resid_len.i.i386, align 4
  %sub.i390 = sub i32 %210, %212
  %213 = ptrtoint ptr %offset.i381 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %sub.i390, ptr %offset.i381, align 4
  %214 = ptrtoint ptr %sdb.i.i387 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %sdb.i.i387, align 4
  %216 = ptrtoint ptr %nents.i.i388 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %nents.i.i388, align 4
  %call9.i = call ptr @scsi_kmap_atomic_sg(ptr noundef %215, i32 noundef %217, ptr noundef nonnull %offset.i381, ptr noundef nonnull %len.i382) #6
  %218 = ptrtoint ptr %offset.i381 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %offset.i381, align 4
  %add.ptr.i391 = getelementptr i8, ptr %call9.i, i32 %219
  %220 = ptrtoint ptr %len.i382 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %len.i382, align 4
  %and10.i = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i392 = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i392, label %while.body.i393.if.end.i398_crit_edge, label %if.then.i396

while.body.i393.if.end.i398_crit_edge:            ; preds = %while.body.i393
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i398

if.then.i396:                                     ; preds = %while.body.i393
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %hostdata.i.i384 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %hostdata.i.i384, align 4
  %add13.i = add i32 %223, 12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %224 = inttoptr i32 %add15.i to ptr
  %225 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %224) #6, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %incdec.ptr.i394 = getelementptr i8, ptr %add.ptr.i391, i32 1
  %226 = ptrtoint ptr %add.ptr.i391 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %add.ptr.i391, align 1
  %227 = ptrtoint ptr %len.i382 to i32
  call void @__asan_load4_noabort(i32 %227)
  %.pr.i395 = load i32, ptr %len.i382, align 4
  br label %if.end.i398

if.end.i398:                                      ; preds = %if.then.i396, %while.body.i393.if.end.i398_crit_edge
  %228 = phi i32 [ %.pr.i395, %if.then.i396 ], [ %221, %while.body.i393.if.end.i398_crit_edge ]
  %ptr.0.i397 = phi ptr [ %incdec.ptr.i394, %if.then.i396 ], [ %add.ptr.i391, %while.body.i393.if.end.i398_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %228)
  %cmp19.i = icmp ugt i32 %228, 1
  br i1 %cmp19.i, label %if.then21.i, label %if.end.i398.if.end27.i_crit_edge

if.end.i398.if.end27.i_crit_edge:                 ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %hostdata.i.i384 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %hostdata.i.i384, align 4
  %add23.i = add i32 %230, 12
  %and24.i = and i32 %add23.i, 1048575
  %add25.i399 = or i32 %and24.i, -18874368
  %231 = inttoptr i32 %add25.i399 to ptr
  %shr.i400 = lshr i32 %228, 1
  call void @__raw_readsw(ptr noundef nonnull %231, ptr noundef %ptr.0.i397, i32 noundef %shr.i400) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %if.end.i398.if.end27.i_crit_edge
  %232 = ptrtoint ptr %resid_len.i.i386 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %resid_len.i.i386, align 4
  %234 = ptrtoint ptr %len.i382 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %len.i382, align 4
  %sub29.i = sub i32 %233, %235
  store i32 %sub29.i, ptr %resid_len.i.i386, align 4
  call void @scsi_kunmap_atomic_sg(ptr noundef %call9.i) #6
  %236 = ptrtoint ptr %hostdata.i.i384 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %hostdata.i.i384, align 4
  %add.i401 = add i32 %237, 14
  %and.i402 = and i32 %add.i401, 1048575
  %add1.i403 = or i32 %and.i402, -18874368
  %238 = inttoptr i32 %add1.i403 to ptr
  %239 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %238) #6, !srcloc !92
  %240 = call i16 @llvm.bswap.i16(i16 %239) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %conv.i404 = zext i16 %240 to i32
  %241 = ptrtoint ptr %len.i382 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %conv.i404, ptr %len.i382, align 4
  %cmp.not.i = icmp eq i16 %239, 0
  br i1 %cmp.not.i, label %if.end27.i.fdomain_read_data.exit_crit_edge, label %if.end27.i.while.body.i393_crit_edge

if.end27.i.while.body.i393_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i393

if.end27.i.fdomain_read_data.exit_crit_edge:      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdomain_read_data.exit

fdomain_read_data.exit:                           ; preds = %if.end27.i.fdomain_read_data.exit_crit_edge, %if.then258.fdomain_read_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i382) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i381) #6
  br label %if.end259

if.end259:                                        ; preds = %fdomain_read_data.exit, %if.end253.if.end259_crit_edge
  br i1 %tobool260.not, label %if.else268, label %if.then261

if.then261:                                       ; preds = %if.end259
  %Status263 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 5
  %242 = ptrtoint ptr %Status263 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %Status263, align 4
  %result.i405 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %244 = ptrtoint ptr %result.i405 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %result.i405, align 4
  %and.i406 = and i32 %245, -16711936
  %conv.i407 = and i32 %243, 255
  %or.i408 = or i32 %and.i406, %conv.i407
  store i32 %or.i408, ptr %result.i405, align 4
  %Message266 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 6
  %246 = ptrtoint ptr %Message266 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %Message266, align 4
  %conv267 = trunc i32 %247 to i8
  %248 = zext i8 %conv267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %conv267, label %sw.default.i [
    i8 0, label %if.then261.scsi_msg_to_host_byte.exit_crit_edge
    i8 6, label %if.then261.sw.epilog.sink.split.i_crit_edge
    i8 12, label %sw.bb1.i
  ]

if.then261.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.then261.scsi_msg_to_host_byte.exit_crit_edge:  ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  br label %scsi_msg_to_host_byte.exit

sw.bb1.i:                                         ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.default.i:                                     ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i, %sw.bb1.i, %if.then261.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 458752, %sw.default.i ], [ 524288, %sw.bb1.i ], [ 327680, %if.then261.sw.epilog.sink.split.i_crit_edge ]
  %or.i9.i = or i32 %.sink.i, %or.i408
  %249 = ptrtoint ptr %result.i405 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %or.i9.i, ptr %result.i405, align 4
  br label %scsi_msg_to_host_byte.exit

scsi_msg_to_host_byte.exit:                       ; preds = %sw.epilog.sink.split.i, %if.then261.scsi_msg_to_host_byte.exit_crit_edge
  call fastcc void @fdomain_finish_cmd(ptr noundef %add.ptr)
  br label %out

if.else268:                                       ; preds = %if.end259
  %250 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %phase, align 4
  %and271 = and i32 %251, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  %252 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %add.ptr, align 4
  %add295 = add i32 %253, 2
  %and296 = and i32 %add295, 1048575
  %add297 = or i32 %and296, -18874368
  %254 = inttoptr i32 %add297 to ptr
  br i1 %tobool272.not, label %do.body291, label %do.body274

do.body274:                                       ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 -46) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  %255 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %add.ptr, align 4
  %add286 = add i32 %256, 1
  %and287 = and i32 %add286, 1048575
  %add288 = or i32 %and287, -18874368
  %257 = inttoptr i32 %add288 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %257, i8 0) #6, !srcloc !59
  br label %out

do.body291:                                       ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 -110) #6, !srcloc !59
  br label %out

out:                                              ; preds = %do.body291, %do.body274, %scsi_msg_to_host_byte.exit, %if.end89, %if.then79, %if.end, %if.then17
  %258 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %259, i32 noundef %call6) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdomain_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_id, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_id, align 4
  %add6 = add i32 %6, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #6, !srcloc !59
  %cur_cmd = getelementptr inbounds %struct.fdomain, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end11

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.fdomain, ptr %dev_id, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdomain_destroy(ptr noundef %sh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 1, i32 1, i32 1
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  tail call void @scsi_remove_host(ptr noundef %sh) #6
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 47
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 53
  %call3 = tail call ptr @free_irq(i32 noundef %1, ptr noundef %hostdata.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @scsi_host_put(ptr noundef %sh) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdomain_queue(ptr nocapture noundef readonly %sh, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 5
  %4 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %Status, align 4
  %Message = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 6
  %5 = ptrtoint ptr %Message to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %Message, align 4
  %have_data_in = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 7
  %6 = ptrtoint ptr %have_data_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %have_data_in, align 4
  %sent_command = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 8
  %7 = ptrtoint ptr %sent_command to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %sent_command, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 9
  %8 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 2, ptr %phase, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %resid_len.i, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 4
  %12 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_lock, align 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #6
  %cur_cmd = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %cur_cmd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hostdata.i, align 4
  %add.i = add i32 %16, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hostdata.i, align 4
  %add5.i = add i32 %19, 3
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %20 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #6, !srcloc !59
  %chip.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %21 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chip.i, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch.i = icmp eq i32 %23, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hostdata.i, align 4
  %add14.i = add i32 %25, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %26 = inttoptr i32 %add16.i to ptr
  br i1 %switch.i, label %do.body11.i, label %do.body18.i

do.body11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 41) #6, !srcloc !59
  br label %fdomain_make_bus_idle.exit

do.body18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 9) #6, !srcloc !59
  br label %fdomain_make_bus_idle.exit

fdomain_make_bus_idle.exit:                       ; preds = %do.body18.i, %do.body11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hostdata.i, align 4
  %add = add i32 %28, 2
  %and = and i32 %add, 1048575
  %add14 = or i32 %and, -18874368
  %29 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hostdata.i, align 4
  %add20 = add i32 %31, 1
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %32 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 25
  %37 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %this_id, align 8
  %shl = shl nuw i32 1, %38
  %conv29 = trunc i32 %shl to i8
  %39 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hostdata.i, align 4
  %add31 = add i32 %40, 8
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %41 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv29) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hostdata.i, align 4
  %add39 = add i32 %43, 2
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %44 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 32) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hostdata.i, align 4
  %add47 = add i32 %46, 4
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %47 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 28) #6, !srcloc !59
  %48 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %call8) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdomain_abort(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %cur_cmd = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hostdata.i, align 4
  %add.i = add i32 %9, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hostdata.i, align 4
  %add5.i = add i32 %12, 3
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %13 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #6, !srcloc !59
  %chip.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %14 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip.i, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i = icmp eq i32 %16, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hostdata.i, align 4
  %add14.i = add i32 %18, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %19 = inttoptr i32 %add16.i to ptr
  br i1 %switch.i, label %do.body11.i, label %do.body18.i

do.body11.i:                                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 41) #6, !srcloc !59
  br label %fdomain_make_bus_idle.exit

do.body18.i:                                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 9) #6, !srcloc !59
  br label %fdomain_make_bus_idle.exit

fdomain_make_bus_idle.exit:                       ; preds = %do.body18.i, %do.body11.i
  %20 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_cmd, align 4
  %phase = getelementptr inbounds %struct.scsi_cmnd, ptr %21, i32 0, i32 22, i32 9
  %22 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %phase, align 4
  %or = or i32 %23, 32
  store volatile i32 %or, ptr %phase, align 4
  %24 = load ptr, ptr %cur_cmd, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %result.i, align 4
  %and.i17 = and i32 %26, -16711681
  %or.i = or i32 %and.i17, 327680
  store i32 %or.i, ptr %result.i, align 4
  tail call fastcc void @fdomain_finish_cmd(ptr noundef %hostdata.i)
  %27 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %fdomain_make_bus_idle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %fdomain_make_bus_idle.exit ], [ 8195, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdomain_host_reset(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hostdata.i, align 4
  tail call fastcc void @fdomain_reset(i32 noundef %7)
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call3) #6
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdomain_biosparam(ptr nocapture noundef readnone %sdev, ptr noundef %bdev, i64 noundef %capacity, ptr nocapture noundef %geom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_bios_ptable(ptr noundef %bdev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %call, i32 65
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %1)
  %cmp = icmp eq i8 %1, -86
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx3 = getelementptr i8, ptr %call, i32 64
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %3)
  %cmp5 = icmp eq i8 %3, 85
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %arrayidx8 = getelementptr i8, ptr %call, i32 4
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %land.lhs.true7.if.else_crit_edge, label %if.then

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11 = getelementptr i8, ptr %call, i32 5
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv12, 1
  %8 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %geom, align 4
  %arrayidx14 = getelementptr i8, ptr %call, i32 6
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %11 = and i8 %10, 63
  %and = zext i8 %11 to i32
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 8257535, i64 %capacity)
  %cmp17 = icmp ugt i64 %capacity, 8257535
  br i1 %cmp17, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 255, ptr %geom, align 4
  br label %if.end32

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %capacity)
  %cmp23 = icmp ugt i64 %capacity, 2097151
  br i1 %cmp23, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %geom, align 4
  br label %if.end32

if.else28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %geom, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then25, %if.then19, %if.then
  %.sink = phi i32 [ 63, %if.then19 ], [ 32, %if.else28 ], [ 63, %if.then25 ], [ %and, %if.then ]
  %arrayidx21 = getelementptr i32, ptr %geom, i32 1
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %arrayidx21, align 4
  %16 = ptrtoint ptr %geom to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %geom, align 4
  %mul = mul i32 %.sink, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp210 = icmp ult i64 %capacity, 4294967296
  br i1 %cmp210, label %if.then214, label %if.else220, !prof !105

if.then214:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %conv215 = trunc i64 %capacity to i32
  %rem216 = urem i32 %conv215, %mul
  br label %if.end224

if.else220:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %capacity) #11, !srcloc !106
  %asmresult.i324 = extractvalue { i64, i64 } %18, 0
  %shr.i = lshr i64 %asmresult.i324, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end224

if.end224:                                        ; preds = %if.else220, %if.then214
  %__rem.0 = phi i32 [ %rem216, %if.then214 ], [ %conv.i, %if.else220 ]
  %arrayidx226 = getelementptr i32, ptr %geom, i32 2
  %19 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %__rem.0, ptr %arrayidx226, align 4
  tail call void @kfree(ptr noundef %call) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdomain_finish_cmd(ptr nocapture noundef %fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fd, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fd, align 4
  %add.i = add i32 %4, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fd, align 4
  %add5.i = add i32 %7, 3
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %8 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !59
  %chip.i = getelementptr inbounds %struct.fdomain, ptr %fd, i32 0, i32 2
  %9 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip.i, align 4
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch.i = icmp eq i32 %11, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fd, align 4
  %add14.i = add i32 %13, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %14 = inttoptr i32 %add16.i to ptr
  br i1 %switch.i, label %do.body11.i, label %do.body18.i

do.body11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 41) #6, !srcloc !59
  br label %fdomain_make_bus_idle.exit

do.body18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 9) #6, !srcloc !59
  br label %fdomain_make_bus_idle.exit

fdomain_make_bus_idle.exit:                       ; preds = %do.body18.i, %do.body11.i
  %cur_cmd = getelementptr inbounds %struct.fdomain, ptr %fd, i32 0, i32 1
  %15 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_cmd, align 4
  tail call void @scsi_done(ptr noundef %16) #6
  %17 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cur_cmd, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_bios_ptable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_kmap_atomic_sg(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_kunmap_atomic_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/fdomain.c", i32 513, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/fdomain.c", i32 513, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/fdomain.c", i32 513, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/fdomain.c", i32 513, i32 39}
!8 = !{ptr @fdomain_create.chip_names, !9, !"chip_names", i1 false, i1 false}
!9 = !{!"../drivers/scsi/fdomain.c", i32 512, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/fdomain.c", i32 527, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fdomain_create._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @fdomain_create._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @fdomain_create.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/scsi/fdomain.c", i32 545, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/fdomain.c", i32 547, i32 49}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/fdomain.c", i32 550, i32 47}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/fdomain.c", i32 553, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fdomain_create._entry.12, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @fdomain_create._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__ksymtab_fdomain_create, !32, !"__ksymtab_fdomain_create", i1 false, i1 false}
!32 = !{!"../drivers/scsi/fdomain.c", i32 570, i32 1}
!33 = !{ptr @__ksymtab_fdomain_destroy, !34, !"__ksymtab_fdomain_destroy", i1 false, i1 false}
!34 = !{!"../drivers/scsi/fdomain.c", i32 583, i32 1}
!35 = !{ptr @__UNIQUE_ID_author287, !36, !"__UNIQUE_ID_author287", i1 false, i1 false}
!36 = !{!"../drivers/scsi/fdomain.c", i32 597, i32 1}
!37 = !{ptr @__UNIQUE_ID_description288, !38, !"__UNIQUE_ID_description288", i1 false, i1 false}
!38 = !{!"../drivers/scsi/fdomain.c", i32 598, i32 1}
!39 = !{ptr @__UNIQUE_ID_file289, !40, !"__UNIQUE_ID_file289", i1 false, i1 false}
!40 = !{!"../drivers/scsi/fdomain.c", i32 599, i32 1}
!41 = !{ptr @__UNIQUE_ID_license290, !40, !"__UNIQUE_ID_license290", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/fdomain.c", i32 494, i32 12}
!44 = !{ptr @fdomain_template, !45, !"fdomain_template", i1 false, i1 false}
!45 = !{!"../drivers/scsi/fdomain.c", i32 492, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 4630392}
!56 = !{i64 2155014701}
!57 = !{i64 2155014980}
!58 = !{i64 2155015299}
!59 = !{i64 4629997}
!60 = !{i64 2155015699}
!61 = !{i64 2155015992}
!62 = !{i64 2155016392}
!63 = !{i64 2155016683}
!64 = !{i64 2155017079}
!65 = !{i64 2155017396}
!66 = !{i64 2155019020}
!67 = !{i64 2155020664}
!68 = !{i64 2155021109}
!69 = !{i64 2155030562}
!70 = !{i64 2155030971}
!71 = !{i64 2155031525}
!72 = !{i64 2155032189}
!73 = !{i64 2155032754}
!74 = !{i64 2155021659}
!75 = !{i64 2155022229}
!76 = !{i64 2155022682}
!77 = !{i64 2155023090}
!78 = !{i64 2155012725}
!79 = !{i64 2155013059}
!80 = !{i64 2155023493}
!81 = !{i64 2155033716}
!82 = !{i64 2155034276}
!83 = !{i64 2155034718}
!84 = !{i64 2155035782}
!85 = !{i64 2155036571}
!86 = !{i64 2155037330}
!87 = !{i64 2155037902}
!88 = !{i64 2155038292}
!89 = !{i64 2155038946}
!90 = !{i64 2155039614}
!91 = !{i64 2155040291}
!92 = !{i64 4629774}
!93 = !{i64 2155027033}
!94 = !{i64 2155027253}
!95 = !{i64 2155025913}
!96 = !{i64 2155026203}
!97 = !{i64 2155041297}
!98 = !{i64 2155042265}
!99 = !{i64 2155042560}
!100 = !{i64 2155043252}
!101 = !{i64 2155043586}
!102 = !{i64 2155044071}
!103 = !{i64 2155044513}
!104 = !{i64 2155045190}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2148200736, i64 2148201016, i64 2148201350, i64 2148201684}
!107 = !{i64 2155025115}
