; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-quirks.c_pt.bc'
source_filename = "../drivers/hid/hid-quirks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hid_ignore\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_ignore\09\09\09\09"
module asm "\09.long\09__crc_hid_ignore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_ignore\22\09\09\09\09\09"
module asm "__kstrtabns_hid_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hid_quirks_init\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_quirks_init\09\09\09\09"
module asm "\09.long\09__crc_hid_quirks_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_quirks_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_quirks_init\22\09\09\09\09\09"
module asm "__kstrtabns_hid_quirks_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hid_quirks_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_quirks_exit\09\09\09\09"
module asm "\09.long\09__crc_hid_quirks_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_quirks_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_quirks_exit\22\09\09\09\09\09"
module asm "__kstrtabns_hid_quirks_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hid_lookup_quirk\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_lookup_quirk\09\09\09\09"
module asm "\09.long\09__crc_hid_lookup_quirk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_lookup_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_lookup_quirk\22\09\09\09\09\09"
module asm "__kstrtabns_hid_lookup_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.quirks_list_struct = type { %struct.hid_device_id, %struct.list_head }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HOLTEK  B-LINK USB Audio  \00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"www.masterkit.ru MA901\00", [41 x i8] zeroinitializer }, align 32
@elan_acpi_id = internal constant { [53 x %struct.acpi_device_id], [296 x i8] } { [53 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ELAN0000\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0100\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0600\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0601\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0602\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0603\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0604\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0605\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0606\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0607\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0608\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0609\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060B\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060C\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060F\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0610\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0611\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0612\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0615\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0616\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0617\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0618\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0619\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061C\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061D\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061E\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061F\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0620\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0621\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0622\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0623\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0624\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0625\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0626\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0627\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0628\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0629\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062B\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062C\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062D\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062E\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062F\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0631\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0632\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0633\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0634\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0635\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0636\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0637\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN1000\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@hid_mouse_ignore_list = internal constant { [56 x %struct.hid_device_id], [224 x i8] } { [56 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i32 0 }, %struct.hid_device_id zeroinitializer], [224 x i8] zeroinitializer }, align 32
@hid_ignore_list = internal constant { [162 x %struct.hid_device_id], [640 x i8] } { [162 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1120, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1120, i32 8, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1761, i32 41301, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 16, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 32, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 33, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 34, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 35, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 36, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5834, i32 5378, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1423, i32 38688, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5926, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5979, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1994, i32 47104, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4815, i32 28945, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3224, i32 4416, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5751, i32 259, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33162, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33348, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3468, i32 14, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 21760, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 29719, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4293, i32 33178, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 512, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3455, i32 256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 777, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 774, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 127, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 206, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 244, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2417, i32 8197, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1040, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1194, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 25210, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 144, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 257, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 259, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 260, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 261, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 262, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 263, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 264, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 512, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 513, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 514, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 515, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 516, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 517, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 518, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 519, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 768, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 769, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 770, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 771, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 772, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 773, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 774, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 775, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 776, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 777, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1024, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1025, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1026, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1027, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1028, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1029, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1280, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1281, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1282, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1283, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1284, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4096, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4097, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4098, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4099, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4100, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4101, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4102, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4103, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1816, i32 53248, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2830, i32 37712, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2126, i32 4097, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7040, i32 55040, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20483, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1112, i32 88, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4096, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4097, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4112, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4113, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4128, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4129, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4145, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4146, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4147, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4149, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4152, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4160, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4162, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4163, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4224, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4225, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4240, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4272, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4352, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4353, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4608, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4624, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8192, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8208, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8224, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8240, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8272, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8273, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8288, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8304, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8320, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8336, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8352, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 17728, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 118, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 122, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 50, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 51, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 66, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 62199, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1024, i32 50009, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 100, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 120, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 130, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 200, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 208, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 218, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 300, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 400, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 500, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 600, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8482, i32 4660, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1137, i32 1559, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3487, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6109, i32 21760, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 7, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 8, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 9, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 16, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 19, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 27027, i32 45057, i32 0 }, %struct.hid_device_id zeroinitializer], [640 x i8] zeroinitializer }, align 32
@__kstrtab_hid_ignore = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_ignore = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_ignore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_ignore to i32), ptr @__kstrtab_hid_ignore, ptr @__kstrtabns_hid_ignore }, section "___ksymtab_gpl+hid_ignore", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%hx:0x%hx:0x%x\00", [47 x i8] zeroinitializer }, align 32
@hid_quirks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Could not parse HID quirk module param %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_quirks_init\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-quirks.c\00", [39 x i8] zeroinitializer }, align 32
@hid_quirks_init._entry_ptr = internal global ptr @hid_quirks_init._entry, section ".printk_index", align 4
@__kstrtab_hid_quirks_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_quirks_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_quirks_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_quirks_init to i32), ptr @__kstrtab_hid_quirks_init, ptr @__kstrtabns_hid_quirks_init }, section "___ksymtab_gpl+hid_quirks_init", align 4
@__kstrtab_hid_quirks_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_quirks_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_quirks_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_quirks_exit to i32), ptr @__kstrtab_hid_quirks_exit, ptr @__kstrtabns_hid_quirks_exit }, section "___ksymtab_gpl+hid_quirks_exit", align 4
@dquirks_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dquirks_lock, i64 52), ptr getelementptr (i8, ptr @dquirks_lock, i64 52) }, ptr @dquirks_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_hid_lookup_quirk = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_lookup_quirk = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_lookup_quirk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_lookup_quirk to i32), ptr @__kstrtab_hid_lookup_quirk, ptr @__kstrtabns_hid_lookup_quirk }, section "___ksymtab_gpl+hid_lookup_quirk", align 4
@dquirks_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dquirks_list, ptr @dquirks_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dquirks_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dquirks_lock\00", [19 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@hid_exists_dquirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: Found dynamic quirk 0x%lx for HID device 0x%04x:0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid_exists_dquirk\00", [46 x i8] zeroinitializer }, align 32
@hid_exists_dquirk._entry_ptr = internal global ptr @hid_exists_dquirk._entry, section ".printk_index", align 4
@hid_have_special_driver = internal constant { [344 x %struct.hid_device_id], [1376 x i8] } { [344 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 2522, i32 6, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 10, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 26, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 555, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1255, i32 80, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6708, i32 2050, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6708, i32 63237, i32 0 }, %struct.hid_device_id { i16 -1, i16 0, i32 1102, i32 4619, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 772, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 541, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 542, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 543, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 544, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 545, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 546, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 556, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 557, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 558, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 591, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 592, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 593, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 569, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 570, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 571, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 597, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 598, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 599, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 615, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 668, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 666, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33344, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 5184, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33345, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33346, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33347, i32 0 }, %struct.hid_device_id { i16 24, i16 0, i32 2821, i32 34181, i32 0 }, %struct.hid_device_id { i16 24, i16 0, i32 2821, i32 257, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6228, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6199, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 6178, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3141, i32 20754, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1578, i32 20752, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 2821, i32 34050, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1877, i32 9766, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1293, i32 12801, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4128, i32 6, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4546, i32 8712, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4544, i32 21766, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 33664, i32 6224, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8380, i32 21760, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1130, i32 35, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1130, i32 39, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1048, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4387, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4389, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 5153, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3468, i32 34, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6914, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6964, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6974, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 60048, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56929, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56932, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 48289, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 60801, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 17, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 1877, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1390, i32 97, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1390, i32 230, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 251, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 252, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 253, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 254, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 255, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 268, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 269, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1255, i32 9, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1255, i32 48, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8198, i32 280, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1304, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4607, i32 13105, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 88, i32 8192, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1137, i32 8720, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 18, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6000, i32 65280, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 8, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4673, i32 20501, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41045, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41034, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41063, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41072, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41074, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41089, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41154, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 5604, i32 306, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2830, i32 -1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1149, i32 8257, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2342, i32 13107, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 312, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 339, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 16408, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 135, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4673, i32 63335, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24585, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24647, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 6127, i32 24648, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24679, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50451, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50444, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49409, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50948, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49930, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50450, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49685, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49686, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49812, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49674, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49681, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49689, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49743, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49795, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49678, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49811, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49798, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49799, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49813, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51715, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51716, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49816, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49818, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49817, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49819, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49820, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49688, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50723, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50726, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49762, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 781, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 782, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6145, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6147, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6211, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6212, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6214, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1900, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 227, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 59, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 219, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 220, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1821, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 249, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1811, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1840, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 157, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 72, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 180, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1872, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1842, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 1793, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1382, i32 12292, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8146, i32 24583, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1406, i32 774, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1406, i32 816, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1879, i32 2560, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 5, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 6, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 7, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 8, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 9, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 10, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 11, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 12, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 13, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 14, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 15, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 16, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 17, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 18, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 19, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 20, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1444, i32 5888, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1444, i32 8192, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1444, i32 32771, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4643, i32 16135, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3888, i32 273, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 24576, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6321, i32 55, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 49154, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 61442, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1151, i32 -1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19973, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1054, i32 10241, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1027, i32 38849, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24709, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5426, i32 285, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 20082, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12500, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12700, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12900, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11501, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11601, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11710, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11700, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11810, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11600, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11310, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11300, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11510, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12600, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12750, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12850, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11610, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1569, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3275, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3287, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3322, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 3280, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 5893, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 5897, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1049, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1049, i32 1536, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2883, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 5, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34952, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34918, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 26214, i32 34817, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 26214, i32 34818, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 26214, i32 34820, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 774, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 774, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 872, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 873, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 4096, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 981, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 981, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 1071, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 1071, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 774, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 616, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 616, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 1476, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 1476, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2508, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 2508, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2976, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 587, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 884, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4933, i32 12296, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6887, i32 36865, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4152, i32 5136, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1276, i32 1496, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45824, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45828, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45859, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 45860, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46597, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46673, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46675, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46676, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46682, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1103, i32 46685, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 5386, i32 4608, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5386, i32 4609, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5386, i32 4611, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1134, i32 21880, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1134, i32 21879, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1560, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1894, i32 516, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6020, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 25171, i32 256, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8406, i32 51991, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5824, i32 1505, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5824, i32 30177, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3090, i32 5, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3090, i32 48, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5100, i32 6, i32 0 }, %struct.hid_device_id zeroinitializer], [1376 x i8] zeroinitializer }, align 32
@hid_quirks = internal constant { [169 x %struct.hid_device_id], [688 x i8] } { [169 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1750, i32 37, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1750, i32 38, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 5540, i32 36886, i32 268435456 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 2, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 2536, i32 49, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 8209, i32 1813, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1075, i32 4353, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1131, i32 65296, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8708, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8712, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8709, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8706, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8736, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8723, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 32801, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8196, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 45469, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4179, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 2361, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1560, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1534, i32 20, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 211, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 28, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 244, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 243, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 81, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 255, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 242, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 241, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6935, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6969, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6931, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6968, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6921, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6929, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6930, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6964, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6974, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6933, i32 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 1054, i32 12844, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 16700, i32 12314, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 3083, i32 24491, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 2, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 3, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6147, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6211, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6214, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6145, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6144, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3823, i32 1, i32 72 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 -1, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1255, i32 32, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 8198, i32 280, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 10600, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 6, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5242, i32 57406, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5538, i32 79, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1351, i32 28672, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12304, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12307, i32 64 }, %struct.hid_device_id { i16 5, i16 0, i32 10232, i32 3006, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 10232, i32 3007, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 16, i32 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 48, i32 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 32, i32 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41110, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41619, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2634, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2890, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 4938, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2378, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2369, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 1601, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 8010, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 7350, i32 26240, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 4754, i32 18245, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20499, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20497, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20506, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20501, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20505, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 311, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24590, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24717, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24601, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24622, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24723, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49159, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49271, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49741, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49178, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49242, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49258, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 5840, i32 3020, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 203, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2014, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1945, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1959, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1961, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 33410, i32 12801, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 6000, i32 65280, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6017, i32 2717, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 2231, i32 1, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1854, i32 769, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 6256, i32 272, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6438, i32 3, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1539, i32 5634, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 5376, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 1, i32 65600 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5648, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5696, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1523, i32 255, i32 128 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32770, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32771, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32769, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 9488, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19746, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19727, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19813, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 20002, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1455, i32 12386, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12289, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12291, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12296, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 3034, i32 338, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 3, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 241, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 65303, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1884, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 597, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1890, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 2922, i32 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 39, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 35, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5013, i32 44, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 7247, i32 2, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1647, i32 14208, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4144, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 2071, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 37376, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4115, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1072, i32 52651, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 2048, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 4864, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2755, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2808, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 7440, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 6851, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 22288, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 10265, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 28193, i32 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1635, i32 259, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 7165, i32 5768, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34946, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34947, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1578, i32 513, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 24577, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 100, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8569, i32 4, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1281, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1280, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1282, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 26231, i32 34818, i32 72 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34816, i32 72 }, %struct.hid_device_id { i16 3, i16 0, i32 5824, i32 1505, i32 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 2178, i32 8 }, %struct.hid_device_id zeroinitializer], [688 x i8] zeroinitializer }, align 32
@hid_gets_squirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: Found squirk 0x%lx for HID device 0x%04x:0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_gets_squirk\00", [16 x i8] zeroinitializer }, align 32
@hid_gets_squirk._entry_ptr = internal global ptr @hid_gets_squirk._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1133, i64 1267, i64 1984, i64 2903, i64 3141, i64 4303, i64 5570, i64 5824]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1042, i64 1056]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 966, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1001, i32 27 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"elan_acpi_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [38 x i8] c"../include/linux/input/elan-i2c-ids.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 26, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"hid_mouse_ignore_list\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 878, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"hid_ignore_list\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 704, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1171, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1179, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"dquirks_lock\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"dquirks_list\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1032, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1033, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1061, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"hid_have_special_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 214, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"hid_quirks\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 27, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [28 x i8] c"../drivers/hid/hid-quirks.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1231, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_hid_ignore, ptr @__ksymtab_hid_lookup_quirk, ptr @__ksymtab_hid_quirks_exit, ptr @__ksymtab_hid_quirks_init, ptr @hid_exists_dquirk._entry, ptr @hid_exists_dquirk._entry_ptr, ptr @hid_gets_squirk._entry, ptr @hid_gets_squirk._entry_ptr, ptr @hid_quirks_init._entry, ptr @hid_quirks_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @elan_acpi_id, ptr @hid_mouse_ignore_list, ptr @hid_ignore_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dquirks_lock, ptr @dquirks_list, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hid_have_special_driver, ptr @hid_quirks, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_acpi_id to i32), i32 1272, i32 1568, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_mouse_ignore_list to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_ignore_list to i32), i32 2592, i32 3232, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_quirks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquirks_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquirks_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_exists_dquirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_have_special_driver to i32), i32 5504, i32 6880, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_quirks to i32), i32 2704, i32 3392, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_gets_squirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hid_ignore(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end5.sw.epilog_crit_edge [
    i32 1984, label %sw.bb
    i32 1133, label %sw.bb10
    i32 5570, label %sw.bb24
    i32 2903, label %sw.bb32
    i32 3141, label %sw.bb40
    i32 4303, label %sw.bb47
    i32 5824, label %sw.bb60
    i32 1267, label %sw.bb74
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %5 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %product, align 8
  %7 = and i32 %6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 5376, i32 %7)
  %8 = icmp eq i32 %7, 5376
  br i1 %8, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.end5
  %product11 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %9 = ptrtoint ptr %product11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %product11, align 8
  %11 = add i32 %10, -49424
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %12 = icmp ult i32 %11, 64
  br i1 %12, label %sw.bb10.cleanup_crit_edge, label %if.end17

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2574, i32 %10)
  %cmp19 = icmp eq i32 %10, 2574
  br i1 %cmp19, label %land.lhs.true20, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true20:                                  ; preds = %if.end17
  %name = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(27) @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.sw.epilog_crit_edge

land.lhs.true20.sw.epilog_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb24:                                          ; preds = %if.end5
  %product25 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %13 = ptrtoint ptr %product25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %product25, align 8
  %15 = add i32 %14, -52
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %15)
  %16 = icmp ult i32 %15, 19
  br i1 %16, label %sw.bb24.cleanup_crit_edge, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb32:                                          ; preds = %if.end5
  %product33 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %17 = ptrtoint ptr %product33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %product33, align 8
  %19 = add i32 %18, -20480
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %19)
  %20 = icmp ult i32 %19, 16384
  br i1 %20, label %sw.bb32.cleanup_crit_edge, label %sw.bb32.sw.epilog_crit_edge

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb40:                                          ; preds = %if.end5
  %product41 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %21 = ptrtoint ptr %product41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %product41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4112, i32 %22)
  %cmp42 = icmp eq i32 %22, 4112
  br i1 %cmp42, label %land.lhs.true43, label %sw.bb40.sw.epilog_crit_edge

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true43:                                  ; preds = %sw.bb40
  %type = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 13
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp44 = icmp eq i32 %24, 2
  br i1 %cmp44, label %land.lhs.true43.cleanup_crit_edge, label %land.lhs.true43.sw.epilog_crit_edge

land.lhs.true43.sw.epilog_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb47:                                          ; preds = %if.end5
  %product48 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %25 = ptrtoint ptr %product48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %product48, align 8
  %27 = and i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21760, i32 %27)
  %28 = icmp eq i32 %27, 21760
  %29 = add i32 %26, -32865
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %30 = icmp ult i32 %29, 8
  %or.cond = or i1 %28, %30
  br i1 %or.cond, label %sw.bb47.cleanup_crit_edge, label %sw.bb47.sw.epilog_crit_edge

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb60:                                          ; preds = %if.end5
  %product61 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %31 = ptrtoint ptr %product61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %product61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1503, i32 %32)
  %cmp62 = icmp eq i32 %32, 1503
  br i1 %cmp62, label %land.lhs.true63, label %sw.bb60.sw.epilog_crit_edge

sw.bb60.sw.epilog_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true63:                                  ; preds = %sw.bb60
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %34)
  %cmp64 = icmp eq i16 %34, 3
  br i1 %cmp64, label %land.lhs.true66, label %land.lhs.true63.sw.epilog_crit_edge

land.lhs.true63.sw.epilog_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %name67 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %call69 = tail call i32 @strncmp(ptr noundef %name67, ptr noundef nonnull dereferenceable(23) @.str.1, i32 noundef 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %land.lhs.true66.cleanup_crit_edge, label %land.lhs.true66.sw.epilog_crit_edge

land.lhs.true66.sw.epilog_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb74:                                          ; preds = %if.end5
  %product75 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %35 = ptrtoint ptr %product75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %product75, align 8
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %37)
  %switch = icmp eq i32 %37, 1024
  br i1 %switch, label %for.cond.preheader, label %sw.bb74.sw.epilog_crit_edge

sw.bb74.sw.epilog_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.preheader:                               ; preds = %sw.bb74
  %call84153 = tail call i32 @strlen(ptr noundef nonnull @elan_acpi_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84153)
  %tobool85.not154 = icmp eq i32 %call84153, 0
  br i1 %tobool85.not154, label %for.cond.preheader.sw.epilog_crit_edge, label %for.body.lr.ph

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name86 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.0155, 1
  %arrayidx = getelementptr [53 x %struct.acpi_device_id], ptr @elan_acpi_id, i32 0, i32 %inc
  %call84 = tail call i32 @strlen(ptr noundef %arrayidx) #10
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %for.cond.sw.epilog_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %call84157 = phi i32 [ %call84153, %for.body.lr.ph ], [ %call84, %for.cond.for.body_crit_edge ]
  %arrayidx156 = phi ptr [ @elan_acpi_id, %for.body.lr.ph ], [ %arrayidx, %for.cond.for.body_crit_edge ]
  %i.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call95 = tail call i32 @strncmp(ptr noundef %name86, ptr noundef %arrayidx156, i32 noundef %call84157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %for.cond.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %sw.bb74.sw.epilog_crit_edge, %land.lhs.true66.sw.epilog_crit_edge, %land.lhs.true63.sw.epilog_crit_edge, %sw.bb60.sw.epilog_crit_edge, %sw.bb47.sw.epilog_crit_edge, %land.lhs.true43.sw.epilog_crit_edge, %sw.bb40.sw.epilog_crit_edge, %sw.bb32.sw.epilog_crit_edge, %sw.bb24.sw.epilog_crit_edge, %land.lhs.true20.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %type100 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 13
  %38 = ptrtoint ptr %type100 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp101 = icmp eq i32 %39, 1
  br i1 %cmp101, label %land.lhs.true103, label %sw.epilog.if.end107_crit_edge

sw.epilog.if.end107_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.lhs.true103:                                 ; preds = %sw.epilog
  %call104 = tail call ptr @hid_match_id(ptr noundef %hdev, ptr noundef nonnull @hid_mouse_ignore_list) #7
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %land.lhs.true103.if.end107_crit_edge, label %land.lhs.true103.cleanup_crit_edge

land.lhs.true103.cleanup_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true103.if.end107_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.end107:                                        ; preds = %land.lhs.true103.if.end107_crit_edge, %sw.epilog.if.end107_crit_edge
  %call108 = tail call ptr @hid_match_id(ptr noundef %hdev, ptr noundef nonnull @hid_ignore_list) #7
  %tobool109 = icmp ne ptr %call108, null
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %land.lhs.true103.cleanup_crit_edge, %for.body.cleanup_crit_edge, %land.lhs.true66.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool109, %if.end107 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %sw.bb.cleanup_crit_edge ], [ true, %sw.bb10.cleanup_crit_edge ], [ true, %land.lhs.true20.cleanup_crit_edge ], [ true, %sw.bb24.cleanup_crit_edge ], [ true, %sw.bb32.cleanup_crit_edge ], [ true, %land.lhs.true43.cleanup_crit_edge ], [ true, %sw.bb47.cleanup_crit_edge ], [ true, %land.lhs.true66.cleanup_crit_edge ], [ true, %land.lhs.true103.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_match_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hid_quirks_init(ptr nocapture noundef readonly %quirks_param, i16 noundef zeroext %bus, i32 noundef %count) #0 align 64 {
entry:
  %vendor = alloca i16, align 2
  %product = alloca i16, align 2
  %quirks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor) #7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vendor, align 2, !annotation !55
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %product) #7
  %1 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %product, align 2, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quirks) #7
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %quirks, align 4, !annotation !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp25 = icmp sgt i32 %count, 0
  br i1 %cmp25, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %n.026 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %quirks_param, i32 %n.026
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef nonnull %vendor, ptr noundef nonnull %product, ptr noundef nonnull %quirks)
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %product, align 2
  %conv4 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp6.not = icmp eq i32 %call, 3
  br i1 %cmp6.not, label %lor.lhs.false, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4768) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %lor.lhs.false.do.end_crit_edge, label %if.end.i

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 24) #11
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %hid_modify_dquirk.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bus, ptr %call7.i.i, align 8
  %bus6.i = getelementptr inbounds %struct.hid_device, ptr %call7.i.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %bus6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %bus, ptr %bus6.i, align 8
  %group8.i = getelementptr inbounds %struct.hid_device_id, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %group8.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %group8.i, align 2
  %group9.i = getelementptr inbounds %struct.hid_device, ptr %call7.i.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %group9.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %group9.i, align 2
  %vendor11.i = getelementptr inbounds %struct.hid_device_id, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %vendor11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %vendor11.i, align 4
  %vendor12.i = getelementptr inbounds %struct.hid_device, ptr %call7.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %vendor12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %vendor12.i, align 4
  %product14.i = getelementptr inbounds %struct.hid_device_id, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %product14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv4, ptr %product14.i, align 8
  %product15.i = getelementptr inbounds %struct.hid_device, ptr %call7.i.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %product15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv4, ptr %product15.i, align 8
  %driver_data.i = getelementptr inbounds %struct.hid_device_id, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %10, ptr %driver_data.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @dquirks_lock, i32 noundef 0) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4.i
  %.pn.in.i = phi ptr [ @dquirks_list, %if.end4.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @dquirks_list
  br i1 %cmp.not.i, label %if.then28.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %q.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %call18.i = call zeroext i1 @hid_match_one_id(ptr noundef nonnull %call7.i.i.i, ptr noundef %q.0.i) #7
  br i1 %call18.i, label %if.then19.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then19.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %node21.i = getelementptr inbounds %struct.quirks_list_struct, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.i, align 4
  %25 = ptrtoint ptr %node21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %node21.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node21.i, ptr %prev.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev3.i.i, align 4
  %prev4.i.i = getelementptr inbounds %struct.quirks_list_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %prev4.i.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %node21.i, ptr %28, align 4
  call void @kfree(ptr noundef %q.0.i) #7
  br label %hid_modify_dquirk.exit.thread21

if.then28.critedge.i:                             ; preds = %for.cond.i
  %node29.i = getelementptr inbounds %struct.quirks_list_struct, ptr %call7.i.i, i32 0, i32 1
  %31 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dquirks_list, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node29.i, ptr noundef %31, ptr noundef nonnull @dquirks_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then28.critedge.i.hid_modify_dquirk.exit.thread21_crit_edge

if.then28.critedge.i.hid_modify_dquirk.exit.thread21_crit_edge: ; preds = %if.then28.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hid_modify_dquirk.exit.thread21

if.end.i.i.i:                                     ; preds = %if.then28.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %node29.i, ptr getelementptr inbounds (%struct.list_head, ptr @dquirks_list, i32 0, i32 1), align 4
  %32 = ptrtoint ptr %node29.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dquirks_list, ptr %node29.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.quirks_list_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %node29.i, ptr %31, align 4
  br label %hid_modify_dquirk.exit.thread21

hid_modify_dquirk.exit.thread21:                  ; preds = %if.end.i.i.i, %if.then28.critedge.i.hid_modify_dquirk.exit.thread21_crit_edge, %if.then19.i
  call void @mutex_unlock(ptr noundef nonnull @dquirks_lock) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %for.inc

hid_modify_dquirk.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end

do.end:                                           ; preds = %hid_modify_dquirk.exit, %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %36) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %hid_modify_dquirk.exit.thread21
  %inc = add nuw nsw i32 %n.026, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quirks) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %product) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #7
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hid_quirks_exit(i16 noundef zeroext %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dquirks_lock, i32 noundef 0) #7
  %0 = load ptr, ptr @dquirks_list, align 4
  %cmp.not27.i = icmp eq ptr %0, @dquirks_list
  br i1 %cmp.not27.i, label %entry.hid_remove_all_dquirks.exit_crit_edge, label %for.body.lr.ph.i

entry.hid_remove_all_dquirks.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hid_remove_all_dquirks.exit

for.body.lr.ph.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bus)
  %cmp5.i = icmp eq i16 %bus, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in28.i = phi ptr [ %0, %for.body.lr.ph.i ], [ %.pn31.i, %for.inc.i.for.body.i_crit_edge ]
  %q.030.i = getelementptr i8, ptr %.pn.in28.i, i32 -16
  %1 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn31.i = load ptr, ptr %.pn.in28.i, align 4
  br i1 %cmp5.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %2 = ptrtoint ptr %q.030.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %q.030.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %bus)
  %cmp10.i = icmp eq i16 %3, %bus
  br i1 %cmp10.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in28.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %q.030.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn31.i, @dquirks_list
  br i1 %cmp.not.i, label %for.inc.i.hid_remove_all_dquirks.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.hid_remove_all_dquirks.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hid_remove_all_dquirks.exit

hid_remove_all_dquirks.exit:                      ; preds = %for.inc.i.hid_remove_all_dquirks.exit_crit_edge, %entry.hid_remove_all_dquirks.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dquirks_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hid_lookup_quirk(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp = icmp eq i16 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true:                                    ; preds = %entry
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %3)
  %cmp2 = icmp eq i32 %3, 1028
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.land.lhs.true15_crit_edge

land.lhs.true.land.lhs.true15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true15

land.lhs.true4:                                   ; preds = %land.lhs.true
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 8
  %6 = and i32 %5, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %6)
  %7 = icmp eq i32 %6, 768
  br i1 %7, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true15thread-pre-split

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true15thread-pre-split:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %vendor, align 4
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true15thread-pre-split, %land.lhs.true.land.lhs.true15_crit_edge
  %9 = phi i32 [ %.pr, %land.lhs.true15thread-pre-split ], [ %3, %land.lhs.true.land.lhs.true15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2830, i32 %9)
  %cmp17 = icmp eq i32 %9, 2830
  br i1 %cmp17, label %if.then19, label %land.lhs.true15.if.end31_crit_edge

land.lhs.true15.if.end31_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then19:                                        ; preds = %land.lhs.true15
  %product20 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %10 = ptrtoint ptr %product20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %product20, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %11, label %if.then19.if.end31_crit_edge [
    i32 1042, label %sw.bb
    i32 1056, label %sw.bb25
  ]

if.then19.if.end31_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

sw.bb:                                            ; preds = %if.then19
  %version = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 273, i32 %14)
  %cmp21 = icmp ult i32 %14, 273
  br i1 %cmp21, label %sw.bb.cleanup_crit_edge, label %sw.bb.if.end31_crit_edge

sw.bb.if.end31_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb25:                                          ; preds = %if.then19
  %version26 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %15 = ptrtoint ptr %version26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 532, i32 %16)
  %cmp27 = icmp ult i32 %16, 532
  br i1 %cmp27, label %sw.bb25.cleanup_crit_edge, label %sw.bb25.if.end31_crit_edge

sw.bb25.if.end31_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %sw.bb25.if.end31_crit_edge, %sw.bb.if.end31_crit_edge, %if.then19.if.end31_crit_edge, %land.lhs.true15.if.end31_crit_edge, %entry.if.end31_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @dquirks_lock, i32 noundef 0) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end31
  %.pn.in.i = phi ptr [ @dquirks_list, %if.end31 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @dquirks_list
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %q.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %call.i = tail call zeroext i1 @hid_match_one_id(ptr noundef %hdev, ptr noundef %q.0.i) #7
  br i1 %call.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %cmp6.not.i = icmp eq ptr %q.0.i, null
  br i1 %cmp6.not.i, label %for.end.i.if.else_crit_edge, label %do.body.i

for.end.i.if.else_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body.i:                                        ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %18 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.if.then32_crit_edge, label %do.end.i

do.body.i.if.then32_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr i8, ptr %.pn.i, i32 -4
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_data.i, align 4
  %vendor.i = getelementptr i8, ptr %.pn.i, i32 -12
  %21 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vendor.i, align 4
  %product.i = getelementptr i8, ptr %.pn.i, i32 -8
  %23 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %product.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %20, i32 noundef %22, i32 noundef %24) #12
  br label %if.then32

if.then32:                                        ; preds = %do.end.i, %do.body.i.if.then32_crit_edge
  %driver_data = getelementptr i8, ptr %.pn.i, i32 -4
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_data, align 4
  br label %if.end34

if.else:                                          ; preds = %for.end.i.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %call.i47 = tail call ptr @hid_match_id(ptr noundef %hdev, ptr noundef nonnull @hid_ignore_list) #7
  %tobool.not.i48 = icmp eq ptr %call.i47, null
  %spec.select.i = select i1 %tobool.not.i48, i32 0, i32 4
  %call1.i = tail call ptr @hid_match_id(ptr noundef %hdev, ptr noundef nonnull @hid_have_special_driver) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %or4.i = or i32 %spec.select.i, 524288
  %quirks.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %call6.i = tail call ptr @hid_match_id(ptr noundef %hdev, ptr noundef nonnull @hid_quirks) #7
  %cmp.not.i49 = icmp eq ptr %call6.i, null
  br i1 %cmp.not.i49, label %if.else.if.end9.i_crit_edge, label %if.then7.i

if.else.if.end9.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i50 = getelementptr inbounds %struct.hid_device_id, ptr %call6.i, i32 0, i32 4
  %27 = ptrtoint ptr %driver_data.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %driver_data.i50, align 4
  %or8.i = or i32 %28, %quirks.1.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.else.if.end9.i_crit_edge
  %quirks.2.i = phi i32 [ %or8.i, %if.then7.i ], [ %quirks.1.i, %if.else.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quirks.2.i)
  %tobool10.not.i = icmp eq i32 %quirks.2.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end34_crit_edge, label %do.body.i51

if.end9.i.if.end34_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body.i51:                                      ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %29 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.not.i = icmp eq i32 %29, 0
  br i1 %tobool12.not.i, label %do.body.i51.if.end34_crit_edge, label %do.end.i54

do.body.i51.if.end34_crit_edge:                   ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end.i54:                                       ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #9
  %vendor.i52 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %30 = ptrtoint ptr %vendor.i52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vendor.i52, align 4
  %product.i53 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %32 = ptrtoint ptr %product.i53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %product.i53, align 8
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %quirks.2.i, i32 noundef %31, i32 noundef %33) #12
  br label %if.end34

if.end34:                                         ; preds = %do.end.i54, %do.body.i51.if.end34_crit_edge, %if.end9.i.if.end34_crit_edge, %if.then32
  %quirks.0 = phi i32 [ %26, %if.then32 ], [ 0, %if.end9.i.if.end34_crit_edge ], [ %quirks.2.i, %do.body.i51.if.end34_crit_edge ], [ %quirks.2.i, %do.end.i54 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dquirks_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %sw.bb25.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ %quirks.0, %if.end34 ], [ 536870912, %land.lhs.true4.cleanup_crit_edge ], [ 4, %sw.bb.cleanup_crit_edge ], [ 4, %sw.bb25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_match_one_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-quirks.c", i32 966, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-quirks.c", i32 1001, i32 27}
!4 = !{ptr @__ksymtab_hid_ignore, !5, !"__ksymtab_hid_ignore", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-quirks.c", i32 1024, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-quirks.c", i32 1171, i32 31}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-quirks.c", i32 1179, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hid_quirks_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @hid_quirks_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_hid_quirks_init, !15, !"__ksymtab_hid_quirks_init", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-quirks.c", i32 1186, i32 1}
!16 = !{ptr @__ksymtab_hid_quirks_exit, !17, !"__ksymtab_hid_quirks_exit", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-quirks.c", i32 1203, i32 1}
!18 = !{ptr @__ksymtab_hid_lookup_quirk, !19, !"__ksymtab_hid_lookup_quirk", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-quirks.c", i32 1281, i32 1}
!20 = !{ptr @elan_acpi_id, !21, !"elan_acpi_id", i1 false, i1 false}
!21 = !{!"../include/linux/input/elan-i2c-ids.h", i32 26, i32 36}
!22 = !{ptr @hid_mouse_ignore_list, !23, !"hid_mouse_ignore_list", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-quirks.c", i32 878, i32 35}
!24 = !{ptr @hid_ignore_list, !25, !"hid_ignore_list", i1 false, i1 false}
!25 = !{!"../drivers/hid/hid-quirks.c", i32 704, i32 35}
!26 = !{ptr @dquirks_list, !27, !"dquirks_list", i1 false, i1 false}
!27 = !{!"../drivers/hid/hid-quirks.c", i32 1032, i32 8}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-quirks.c", i32 1033, i32 8}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dquirks_lock, !29, !"dquirks_lock", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-quirks.c", i32 1061, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hid_exists_dquirk._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hid_exists_dquirk._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-quirks.c", i32 1231, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hid_gets_squirk._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hid_gets_squirk._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @hid_have_special_driver, !43, !"hid_have_special_driver", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-quirks.c", i32 214, i32 35}
!44 = !{ptr @hid_quirks, !45, !"hid_quirks", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-quirks.c", i32 27, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
